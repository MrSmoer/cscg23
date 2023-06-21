 
  long lVar1;
  undefined8 *puVar2;
  long *plVar3;
  char cVar4;
  ulong uVar5;
  ulong uVar6;
  undefined *puVar7;
  undefined *puVar8;
  uint *puVar9;
  long lVar10;
  undefined8 *puVar11;
  ulong uVar12;
  undefined8 extraout_RDX;
  undefined8 uVar13;
  ulong extraout_RDX_00;
  undefined8 *puVar14;
  undefined8 extraout_RDX_01;
  undefined8 *puVar15;
  ulong uVar16;
  undefined8 uVar17;
  undefined8 *puVar18;
  undefined4 uVar19;
  long in_FS_OFFSET;
  byte bVar20;
  undefined4 extraout_XMM0_Da;
  undefined4 uVar21;
  undefined4 extraout_XMM0_Da_00;
  undefined auVar22 [16];
  
  cVar4 = DAT_004aa078;
  bVar20 = 0;
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  uVar16 = (ulong)(DAT_004aa078 == '\0');
  uVar12 = uVar16;
  uVar5 = FUN_004330d0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8,
                       DAT_004aa078 == '\0');
  if (cVar4 == '\0') {
    FUN_00412850();
    FUN_00418060();
    uVar6 = FUN_00432d10();
    if ((int)uVar6 != 0) {
      uVar19 = *(undefined4 *)(in_FS_OFFSET + -0x48);
      auVar22 = FUN_004180e0(uVar12,param_10,extraout_RDX_00);
      FUN_004128a0(uVar12,param_10,SUB168(auVar22 >> 0x40,0));
      uVar21 = extraout_XMM0_Da_00;
      goto LAB_004328a2;
    }
    _DAT_004a9700 = 1;
    DAT_004b0a80 = 0;
    _DAT_004b0fc0 = 0;
    _DAT_004b0fa8 = _DAT_004b0fa8 + 4;
    FUN_00418160();
    for (puVar7 = FUN_00412810(); puVar8 = (undefined *)FUN_00412820(), puVar7 != puVar8;
        puVar7 = (undefined *)FUN_00412830((long)puVar7)) {
      puVar9 = (uint *)FUN_00412840(puVar7);
      if ((*puVar9 & 0x8000) == 0) {
        lVar10 = FUN_00412840(puVar7);
        puVar2 = *(undefined8 **)(lVar10 + 0x88);
        *puVar2 = 0;
        puVar2[1] = 0;
      }
    }
    FUN_004128e0();
  }
  else {
    uVar6 = FUN_00432d10();
    if ((int)uVar6 != 0) {
      uVar19 = *(undefined4 *)(in_FS_OFFSET + -0x48);
      uVar21 = extraout_XMM0_Da;
LAB_004328a2:
      uVar6 = uVar6 & 0xffffffff;
      uVar17 = 2;
      FUN_00433240(uVar21,param_2,param_3,param_4,param_5,param_6,param_7,param_8,2,uVar16,uVar5);
      uVar13 = extraout_RDX;
      if ((int)uVar6 < 0) {
        *(undefined4 *)(in_FS_OFFSET + -0x48) = uVar19;
      }
      goto LAB_004328bb;
    }
    _DAT_004b0fa8 = _DAT_004b0fa8 + 4;
  }
  _DAT_004aa140 = 0;
                    /* WARNING: Read-only address (ram,0x004aa134) is written */
                    /* WARNING: Read-only address (ram,0x004aa138) is written */
                    /* WARNING: Read-only address (ram,0x004aa13c) is written */
  _UNK_004aa134 = 0;
  _UNK_004aa138 = 0;
  _UNK_004aa13c = 0;
                    /* WARNING: Read-only address (ram,0x004aa0b4) is written */
                    /* WARNING: Read-only address (ram,0x004aa0b8) is written */
                    /* WARNING: Read-only address (ram,0x004aa0bc) is written */
  _UNK_004aa0b4 = 0;
  _UNK_004aa0b8 = 0;
  _UNK_004aa0bc = 0;
  _DAT_004aa130 = 1;
  _DAT_004aa0c0 = 0;
  _DAT_004aa0b0 = 1;
                    /* WARNING: Read-only address (ram,0x004aa124) is written */
                    /* WARNING: Read-only address (ram,0x004aa128) is written */
                    /* WARNING: Read-only address (ram,0x004aa12c) is written */
  _DAT_004aa120 = 0;
  _UNK_004aa124 = 0;
  _UNK_004aa128 = 0;
  _UNK_004aa12c = 0;
                    /* WARNING: Read-only address (ram,0x004aa0a4) is written */
                    /* WARNING: Read-only address (ram,0x004aa0a8) is written */
                    /* WARNING: Read-only address (ram,0x004aa0ac) is written */
  _DAT_004aa0a0 = 0;
  _UNK_004aa0a4 = 0;
  _UNK_004aa0a8 = 0;
  _UNK_004aa0ac = 0;
  puVar2 = *(undefined8 **)(in_FS_OFFSET + 0x10);
  if (DAT_004b0a88 != 0) {
    puVar14 = (undefined8 *)(DAT_004b0a88 & 0xfffffffffffffffe);
    if ((DAT_004b0a88 & 1) == 0) {
      param_12 = (undefined8 *)*puVar14;
      puVar14 = (undefined8 *)puVar14[1];
      param_12[1] = puVar14;
      *puVar14 = param_12;
LAB_00432c72:
      DAT_004b0a88 = 0;
    }
    else {
      param_12 = &DAT_004b0ac0;
      puVar11 = (undefined8 *)DAT_004b0ac0[1];
      puVar15 = DAT_004b0ac0;
      if ((undefined8 **)puVar11 == &DAT_004b0ac0) {
        param_12 = &DAT_004b0aa0;
        puVar11 = (undefined8 *)DAT_004b0aa0[1];
        puVar15 = DAT_004b0aa0;
        if ((undefined8 **)puVar11 == &DAT_004b0aa0) goto LAB_00432c72;
      }
      if (puVar11 != puVar14) {
                    /* WARNING: Subroutine does not return */
        FUN_00404f60("l->next->prev == elem","../sysdeps/nptl/fork.h",0x53,"reclaim_stacks");
      }
      *puVar11 = puVar15;
      DAT_004b0a88 = 0;
      puVar11[1] = param_12;
      *param_12 = puVar11;
    }
  }
  puVar11 = DAT_004b0ac0;
  param_14 = &DAT_004b0ac0;
  puVar14 = DAT_004b0ac0;
  if ((undefined8 **)DAT_004b0ac0 != &DAT_004b0ac0) {
    do {
      if (puVar2 != puVar14 + -0x58) {
        DAT_004b0a90 = DAT_004b0a90 + puVar14[0x7b];
        *(undefined4 *)(puVar14 + 2) = 0;
        if (*(char *)(puVar14 + 0x6a) != '\0') {
          puVar15 = puVar14 + 0x4b;
          puVar14[10] = 0;
          puVar14[0x49] = 0;
          param_13 = puVar14 + 0x6a;
          puVar18 = (undefined8 *)((ulong)(puVar14 + 0xb) & 0xfffffffffffffff8);
          for (uVar12 = (ulong)(((int)puVar14 -
                                (int)(undefined8 *)((ulong)(puVar14 + 0xb) & 0xfffffffffffffff8)) +
                                0x250U >> 3); uVar12 != 0; uVar12 = uVar12 - 1) {
            *puVar18 = 0;
            puVar18 = puVar18 + (ulong)bVar20 * -2 + 1;
          }
          *(undefined *)(puVar14 + 0x6a) = 0;
          do {
            param_12 = (undefined8 *)*puVar15;
            if (param_12 != (undefined8 *)0x0) {
              puVar18 = param_12 + 1;
              *param_12 = 0;
              param_12[0x3f] = 0;
              param_12 = (undefined8 *)
                         (ulong)(((int)param_12 -
                                 (int)(undefined8 *)((ulong)puVar18 & 0xfffffffffffffff8)) + 0x200U
                                >> 3);
              puVar18 = (undefined8 *)((ulong)puVar18 & 0xfffffffffffffff8);
              for (; param_12 != (undefined8 *)0x0; param_12 = (undefined8 *)((long)param_12 + -1))
              {
                *puVar18 = 0;
                puVar18 = puVar18 + (ulong)bVar20 * -2 + 1;
              }
              *(undefined *)(puVar14 + 0x6a) = 1;
            }
            puVar15 = puVar15 + 1;
          } while (puVar15 != param_13);
        }
      }
      puVar14 = (undefined8 *)*puVar14;
    } while ((undefined8 **)puVar14 != &DAT_004b0ac0);
    puVar11[1] = &DAT_004b0aa0;
    *DAT_004b0ac8 = DAT_004b0aa0;
    DAT_004b0aa0[1] = DAT_004b0ac8;
    DAT_004b0aa0 = DAT_004b0ac0;
  }
  lVar10 = puVar2[0x58];
  plVar3 = (long *)puVar2[0x59];
  *(long **)(lVar10 + 8) = plVar3;
  *plVar3 = lVar10;
  DAT_004b0ac0 = &DAT_004b0ac0;
  DAT_004b0ac8 = &DAT_004b0ac0;
  DAT_004b0ab0 = &DAT_004b0ab0;
  _DAT_004b0ab8 = &DAT_004b0ab0;
  puVar14 = puVar2 + 0x58;
  if (*(char *)(in_FS_OFFSET + 0x612) == '\0') {
    puVar2[0x58] = &DAT_004b0ac0;
    puVar2[0x59] = &DAT_004b0ac0;
    DAT_004b0ac0 = puVar14;
    DAT_004b0ac8 = puVar14;
  }
  else {
    _DAT_004b0ab8 = puVar14;
    puVar2[0x58] = &DAT_004b0ab0;
    puVar2[0x59] = &DAT_004b0ab0;
    DAT_004b0ab0 = puVar14;
  }
  uVar17 = 1;
  uVar6 = 0;
  FUN_00433240(0x4b0ac0,0x4b0ab0,param_3,param_4,param_5,param_6,param_7,param_8,1,uVar16,uVar5);
  uVar13 = extraout_RDX_01;
LAB_004328bb:
  if (lVar1 == *(long *)(in_FS_OFFSET + 0x28)) {
    return uVar6;
  }
                    /* WARNING: Subroutine does not return */
  FUN_004363d0(uVar17,uVar16,uVar13,param_12,param_13,param_14);
}


