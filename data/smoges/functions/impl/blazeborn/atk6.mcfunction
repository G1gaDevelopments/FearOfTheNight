# Shoots many smaller fireballs.
say small fireballs
execute as @s[scores={blazeborn_atk=130..159}] at @s anchored eyes run summon small_fireball ^ ^ ^0.5 {Tags:["bb_fireball"]}
execute as @s[scores={blazeborn_atk=160}] at @s anchored eyes run summon fireball ^ ^ ^0.5 {Tags:["bb_fireball"]}