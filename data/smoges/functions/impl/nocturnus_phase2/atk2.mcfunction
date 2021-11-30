# TNT rain
say tnt rain

execute as @s[scores={nocturnus_p2_atk=121..150}] at @s run summon armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["nt2_tnthere"]}
execute as @s[scores={nocturnus_p2_atk=120}] at @s run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=nt2_tnthere]
execute as @s[scores={nocturnus_p2_atk=119}] at @e[type=armor_stand,tag=nt2_tnthere,nbt={OnGround:1b}] run summon tnt ~ ~15 ~
execute as @s[scores={nocturnus_p2_atk=100}] at @s run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=nt2_tnthere]
execute as @s[scores={nocturnus_p2_atk=99}] at @e[type=armor_stand,tag=nt2_tnthere,nbt={OnGround:1b}] run summon tnt ~ ~15 ~
execute as @s[scores={nocturnus_p2_atk=80}] at @s run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=nt2_tnthere]
execute as @s[scores={nocturnus_p2_atk=79}] at @e[type=armor_stand,tag=nt2_tnthere,nbt={OnGround:1b}] run summon tnt ~ ~15 ~
execute as @s[scores={nocturnus_p2_atk=61}] at @s run spreadplayers ~ ~ 5 30 false @e[type=armor_stand,tag=nt2_tnthere]
execute as @s[scores={nocturnus_p2_atk=60}] at @e[type=armor_stand,tag=nt2_tnthere,nbt={OnGround:1b}] run summon tnt ~ ~15 ~
execute as @e[type=armor_stand,tag=nt2_tnthere,nbt={OnGround:1b}] run kill @s