# Timers.
scoreboard objectives add time dummy
scoreboard objectives add blazeborn_atk dummy
scoreboard objectives add nocturnus_atk dummy
scoreboard objectives add queen_atk dummy
scoreboard objectives add levi_atk dummy
scoreboard objectives add egglord_atk dummy

scoreboard objectives add coas minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add botb_cooldown dummy
scoreboard objectives add rgs_cooldown dummy
scoreboard objectives add qst_cooldown dummy
scoreboard objectives add el_asb_cooldown dummy
scoreboard objectives add egl_cooldown dummy
scoreboard objectives add egl_bursts dummy

# Scoreboards for Queen's Satchel
scoreboard objectives add qst_uses dummy
scoreboard objectives add health health

# Projectile math. I hate this fuck you Timber Forge
scoreboard objectives add FB_x1 dummy
scoreboard objectives add FB_x2 dummy
scoreboard objectives add FB_y1 dummy
scoreboard objectives add FB_y2 dummy
scoreboard objectives add FB_z1 dummy
scoreboard objectives add FB_z2 dummy

scoreboard objectives add AR_x1 dummy
scoreboard objectives add AR_x2 dummy
scoreboard objectives add AR_y1 dummy
scoreboard objectives add AR_y2 dummy
scoreboard objectives add AR_z1 dummy
scoreboard objectives add AR_z2 dummy

scoreboard objectives add EG_x1 dummy
scoreboard objectives add EG_x2 dummy
scoreboard objectives add EG_y1 dummy
scoreboard objectives add EG_y2 dummy
scoreboard objectives add EG_z1 dummy
scoreboard objectives add EG_z2 dummy

# Comparing UUIDS
scoreboard objectives add uuid1o dummy
scoreboard objectives add uuid2o dummy
scoreboard objectives add uuid3o dummy
scoreboard objectives add uuid4o dummy

scoreboard objectives add uuid1t dummy
scoreboard objectives add uuid2t dummy
scoreboard objectives add uuid3t dummy
scoreboard objectives add uuid4t dummy

scoreboard objectives add uuid1b trigger
scoreboard objectives add uuid2b trigger
scoreboard objectives add uuid3b trigger
scoreboard objectives add uuid4b trigger

# Scheduler engine by PeerHeer#0910. Credit to vdvman1#9510 for additional help
scoreboard objectives add launch_time dummy
scoreboard players set $shoot_interval launch_time 5

# Bossbars
bossbar add blazeborn {"text":"Blazeborn of the Depths","color":"gold","bold":true}
bossbar set blazeborn color yellow
bossbar add nocturnus {"text":"Nocturnus, Monstrosity of the Night","color":"dark_blue","bold":true}
bossbar set nocturnus color blue
bossbar add queen {"text":"Queen Elizabeth the Second","color":"green","bold":true}
bossbar set queen color green
bossbar add leviathan {"text":"Leviathan","color":"dark_green","bold":true}
bossbar set leviathan color green
bossbar add egglord {"text":"The New Egg Lord","color":"yellow","bold":true}
bossbar set egglord color yellow

say Smoges Pack by G1galovaniac
say Version 1.2-BETA
say Changelogs available on Github