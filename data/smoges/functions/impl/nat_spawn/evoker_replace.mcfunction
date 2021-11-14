# 10% chance to replace evokers with illusioners
execute if predicate smoges:chance10 run tag @s add replace_with_ilsr
execute as @e[tag=replace_with_ilsr] as @s run summon illusioner
tag @s add scanned

execute as @e[tag=replace_with_ilsr] as @s run tp @s ~ -6164 ~