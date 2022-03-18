# Slowness raycasts.
say slowness rays

execute as @s[scores={nocturnus_p2_atk=340..360}] if predicate fotn:rng/chance25 at @s run summon area_effect_cloud ~ ~ ~ {Tags:["rcs_slowness","raycast","rcs_nearest"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}