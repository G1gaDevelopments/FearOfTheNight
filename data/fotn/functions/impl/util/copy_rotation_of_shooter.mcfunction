# Copies the rotation of the closest entity with proj_shooter tag to itself.

# Enemy projectiles
execute if entity @s[tag=projectile] run data modify entity @s Rotation set from entity @e[tag=proj_shooter,sort=nearest,limit=1] Rotation
# Player projectiles
execute if entity @s[tag=player_proj] run data modify entity @s Rotation set from entity @p Rotation