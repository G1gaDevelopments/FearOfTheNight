# Handles placing and breaking custom blocks

# PLACEMENTS
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=!cblock_placed] at @s run function smoges:impl/cblock/blazeborn_spawner/place

# REMOVAL
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function smoges:impl/cblock/blazeborn_spawner/remove