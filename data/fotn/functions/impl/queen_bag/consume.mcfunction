scoreboard players remove @s qst_uses 1
effect give @s absorption 10
effect give @s regeneration 10 2
effect give @s instant_health 1
execute as @s at @s run playsound minecraft:item.totem.use player @a[distance=..5]
execute as @s at @s run particle totem_of_undying ~ ~ ~ 0.25 0.25 0.25 0.5 45 force @a

scoreboard players set @s qst_cooldown 80