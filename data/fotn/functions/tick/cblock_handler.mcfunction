# Handles placing and breaking custom blocks

# PLACEMENTS
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=!cblock_placed] at @s run function fotn:impl/cblock/blazeborn_spawner/place
execute as @e[type=glow_item_frame,tag=runecrafter,tag=!cblock_placed] at @s run function fotn:impl/cblock/runecrafter/place
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=!cblock_placed] at @s run function fotn:impl/cblock/levi_spawner/place
execute as @e[type=glow_item_frame,tag=eg_spawner,tag=!cblock_placed] at @s run function fotn:impl/cblock/egglord_spawner/place

# REMOVAL
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/cblock/blazeborn_spawner/remove
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/cblock/levi_spawner/remove
execute as @e[type=glow_item_frame,tag=runecrafter,tag=cblock_placed] at @s unless block ~ ~ ~ dropper run function fotn:impl/cblock/runecrafter/remove
execute as @e[type=glow_item_frame,tag=eg_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/cblock/egglord_spawner/remove