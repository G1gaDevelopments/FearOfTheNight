# Despawns a mob into the void.
# @s - the mob to despawn

execute at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.25 30 force @a
tp @s 0 -6164 0
kill @s