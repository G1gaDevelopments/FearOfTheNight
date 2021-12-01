# Projectiles shot in the direction the enemies are facing.
execute as @e[tag=bb_fireball, tag=!moving_pj] at @s rotated as @e[type=wither_skeleton,tag=blazeborn] run function smoges:impl/projectile_motion
execute as @e[tag=qn_arrow,tag=!moving_pj] at @s rotated as @e[type=stray,tag=queen] run function smoges:impl/projectile_motion
execute as @e[tag=el_eggspam,tag=!moving_pj] at @s rotated as @e[type=skeleton,tag=egglord] run function smoges:impl/projectile_motion
execute as @e[tag=botb_fireball, tag=!moving_pj] at @s rotated as @e[type=player,sort=nearest,limit=1] run function smoges:impl/projectile_motion
execute as @e[tag=egl_egg,tag=!moving_pj] at @s rotated as @e[type=player,sort=nearest,limit=1] run function smoges:impl/projectile_motion

# Projectiles shot towards the nearest player
execute as @e[type=wither_skull,tag=nt2_skull,tag=rotated_proj,tag=!moving_pj] at @s facing entity @p eyes run function smoges:impl/projectile_motion