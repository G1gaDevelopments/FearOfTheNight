# Does all the preperation for Phase 2
tag @s remove nocturnus_phase1
tag @s add nocturnus_phase2
data merge entity @s {NoAI:0b,Invulnerable:0b}
bossbar set nocturnus_phase1 visible false
bossbar set nocturnus visible true