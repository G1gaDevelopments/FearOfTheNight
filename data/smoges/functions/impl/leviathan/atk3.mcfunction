# GROUND POUNDDDDDD
say groundpund
execute as @s[scores={levi_atk=180}] at @s run summon creeper ~ ~ ~ {Fuse:0}
execute as @s[scores={levi_atk=180}] at @s run data modify entity @s Motion[1] set value 30.0d
execute as @s[scores={levi_atk=150..175}] at @s run fill ~-5 ~ ~-5 ~5 ~-2 ~5 air replace #smoges:allow_breaking
execute as @s[scores={levi_atk=150..175}] at @s run particle explosion ~ ~ ~ 1.25 1.25 1.25 0.5 45 force @a