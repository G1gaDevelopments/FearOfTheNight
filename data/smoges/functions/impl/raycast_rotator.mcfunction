# Util function to rotate raycasts to face the closest player.
execute as @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @s facing entity @p eyes run tag @s add rcs_rotated