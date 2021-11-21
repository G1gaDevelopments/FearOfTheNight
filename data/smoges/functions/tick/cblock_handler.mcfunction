# Handles placing and breaking custom blocks

# PLACEMENTS
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=!cblock_placed] at @s run function smoges:impl/cblock/blazeborn_spawner/place
execute as @e[type=glow_item_frame,tag=runecrafter,tag=!cblock_placed] at @s run function smoges:impl/cblock/runecrafter/place
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=!cblock_placed] at @s run function smoges:impl/cblock/levi_spawner/place

# REMOVAL
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function smoges:impl/cblock/blazeborn_spawner/remove
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function smoges:impl/cblock/levi_spawner/remove
execute as @e[type=glow_item_frame,tag=runecrafter,tag=cblock_placed] at @s unless block ~ ~ ~ dropper run function smoges:impl/cblock/runecrafter/remove