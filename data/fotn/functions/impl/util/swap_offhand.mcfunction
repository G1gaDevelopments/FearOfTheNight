# Logic:
# 1) Place a temporary shulker box for manipulation
# 2) Put your mainhand's item in there
# 3) Replace your mainhand's item with the item in the offhand
# 4) Replace your offhand item with the item that is in the shulker box 
# 5) Remove the shulker box

#add a container in 0 200 0 for manipulation
setblock 0 200 0 shulker_box
#replace the temporary container's slot 0 with the item from your offhand
item replace block 0 200 0 container.0 from entity @s weapon.mainhand
#replace your mainhand's item with the item in the offhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
#replace your offhand item with the one that is in the shulker box
item replace entity @s weapon.offhand from block 0 200 0 container.0
#replace the temporary container back to air
setblock 0 200 0 air