# Summons custom drops
loot spawn ~ ~ ~ loot fotn:admin/advanced_forge
# Kill item drop
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=0..2,sort=nearest,limit=1]
# Kill item frame
kill @s