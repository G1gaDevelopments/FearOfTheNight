# Handles when a player right-clicks with a carrot on a stick
# @s - the player who right-clicked the COAS

# Baton of the Blazeborn
execute as @s[scores={held_fotn_item=1,botb_cooldown=..0}] at @s anchored eyes run summon fireball ^ ^ ^1 {ExplosionPower:2b,Tags:["botb_fireball","player_proj"]}
data modify entity @e[type=fireball,tag=botb_fireball,sort=nearest,limit=1,tag=!owner_set] Owner set from entity @s UUID
tag @e[type=fireball,tag=botb_fireball,tag=!owner_set] add owner_set
execute as @s[scores={held_fotn_item=1,botb_cooldown=..0}] run scoreboard players set @s botb_cooldown 15

# Regal Sceptre
execute as @s[scores={held_fotn_item=3,rgs_cooldown=..0}] at @s at @e[type=!#fotn:nonmob,distance=1..15,limit=20] run summon lightning_bolt
execute as @s[scores={held_fotn_item=3,rgs_cooldown=..0}] run scoreboard players set @s rgs_cooldown 60

# Queen's Satchel
execute as @s[scores={held_fotn_item=6,qst_cooldown=..0,qst_totems=1..}] run function fotn:impl/queen_bag/refill

# Egg Launcher
execute as @s[scores={held_fotn_item=16,egl_cooldown=..0,egl_ammo=5..}] run function fotn:impl/egg_launcher/burst

# Resets COAS score
execute as @s run scoreboard players remove @s coas 1