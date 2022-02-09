# Redirects to appropriate raycast handler function
execute if entity @s[tag=rcs_slowness] as @s at @s run function fotn:impl/raycast/slowness_raycast
execute if entity @s[tag=rcs_fire] as @s at @s run function fotn:impl/raycast/fire_raycast