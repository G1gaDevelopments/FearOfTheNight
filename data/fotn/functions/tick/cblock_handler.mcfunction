# Handles placing and breaking custom blocks

# PLACEMENTS
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=!cblock_placed] at @s run function fotn:impl/block/blazeborn_spawner/place
execute as @e[type=glow_item_frame,tag=advanced_forge,tag=!cblock_placed] at @s run function fotn:impl/block/advanced_forge/place
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=!cblock_placed] at @s run function fotn:impl/block/levi_spawner/place
execute as @e[type=glow_item_frame,tag=eg_spawner,tag=!cblock_placed] at @s run function fotn:impl/block/egglord_spawner/place

# REMOVAL
execute as @e[type=glow_item_frame,tag=bb_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/block/blazeborn_spawner/remove
execute as @e[type=glow_item_frame,tag=lv_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/block/levi_spawner/remove
execute as @e[type=glow_item_frame,tag=advanced_forge,tag=cblock_placed] at @s unless block ~ ~ ~ dropper run function fotn:impl/block/advanced_forge/remove
execute as @e[type=glow_item_frame,tag=eg_spawner,tag=cblock_placed] at @s unless block ~ ~ ~ bedrock run function fotn:impl/block/egglord_spawner/remove