# Shoots many smaller fireballs.
execute as @s[scores={blazeborn_atk=130..159}] at @s run playsound minecraft:entity.blaze.shoot hostile @a[distance=..30]
execute as @s[scores={blazeborn_atk=130..159}] at @s anchored eyes run summon small_fireball ^ ^ ^0.5 {Tags:["bb_fireball","projectile"]}
execute as @s[scores={blazeborn_atk=160}] if predicate smoges:chance50 run say Decimation of this world.
execute as @s[scores={blazeborn_atk=160}] at @s run playsound minecraft:entity.wither.shoot hostile @a[distance=..30]
execute as @s[scores={blazeborn_atk=160}] at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["bb_fireball","projectile"]}