# Projectiles shot in the direction the enemies are facing.
execute as @e[tag=projectile,tag=!moving_pj] at @s rotated as @e[tag=proj_shooter,sort=nearest,limit=1] run function fotn:impl/util/projectile_motion

# Projectiles shot by players
execute as @e[tag=botb_fireball, tag=!moving_pj] at @s rotated as @e[type=player,sort=nearest,limit=1] run function fotn:impl/util/projectile_motion
execute as @e[tag=egl_egg,tag=!moving_pj] at @s rotated as @e[type=player,sort=nearest,limit=1] run function fotn:impl/util/projectile_motion

# Projectiles shot towards the nearest player
execute as @e[type=wither_skull,tag=nt2_skull,tag=rotated_proj,tag=!moving_pj] at @s facing entity @p eyes run function fotn:impl/util/projectile_motion