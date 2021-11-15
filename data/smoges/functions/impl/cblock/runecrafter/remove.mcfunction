# Summons custom drops
summon item ~ ~0.5 ~ {Item:{id:"minecraft:glow_item_frame",tag:{display:{Name:'{"text":"Runecrafter","color":"gold","bold":true,"italic":true}'},CustomModelData:6164010,EntityTag:{Silent:1b,Tags:["runecrafter"],Item:{id:"minecraft:glow_item_frame",Count:1b,tag:{CustomModelData:6164010}},Invulnerable:1b,Invisible:1b,Fixed:1b}}}}
# Kill tinted glass drop
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=0..2,sort=nearest,limit=1]
# Kill item frame
kill @s