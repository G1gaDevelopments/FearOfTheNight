# Util function to rotate raycasts to face the closest player.
execute as @s[tag=rcs_nearest] facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @s[tag=rcs_random] facing entity @r[distance=..40] eyes run tp @s ~ ~ ~ ~ ~


execute as @s run tag @s add rcs_rotated