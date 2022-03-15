# Timers.
scoreboard objectives add time dummy
scoreboard objectives add blazeborn_atk dummy
scoreboard objectives add nocturnus_p2_atk dummy
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
scoreboard objectives add egl_ammo dummy

# Scoreboards for Queen's Satchel
scoreboard objectives add qst_uses dummy
scoreboard objectives add qst_totems dummy
scoreboard objectives add health health

# Projectile math. I hate this fuck you Timber Forge
scoreboard objectives add PJ_x1 dummy
scoreboard objectives add PJ_x2 dummy
scoreboard objectives add PJ_y1 dummy
scoreboard objectives add PJ_y2 dummy
scoreboard objectives add PJ_z1 dummy
scoreboard objectives add PJ_z2 dummy

# Comparing UUIDS
scoreboard objectives add uuid1b trigger
scoreboard objectives add uuid2b trigger
scoreboard objectives add uuid3b trigger
scoreboard objectives add uuid4b trigger

# Nocturnus
scoreboard objectives add nt_remtgts dummy

# LCG
function fotn:impl/util/lcg/lcg_init

# Tome of Knowledge
scoreboard objectives add tome_of_knowledge dummy

# Bossbars
bossbar add blazeborn {"text":"Blazeborn of the Depths","color":"gold","bold":true}
bossbar set blazeborn color yellow
bossbar add queen {"text":"Queen Elizabeth the Second","color":"green","bold":true}
bossbar set queen color green
bossbar add leviathan {"text":"Leviathan","color":"dark_green","bold":true}
bossbar set leviathan color green
bossbar add egglord {"text":"The New Egg Lord","color":"yellow","bold":true}
bossbar set egglord color yellow
bossbar add nocturnus_phase1 {"text":"Remaining Targets","color":"dark_blue","bold":true}
bossbar set nocturnus_phase1 style notched_10
bossbar set nocturnus_phase1 color blue
bossbar add nocturnus {"text":"Nocturnus, Monstrosity of the Night","color":"dark_blue","bold":true}
bossbar set nocturnus color blue

tellraw @p ["",{"text":"Fear Of The Night ","bold":true,"color":"blue"},{"text":"by G1glovaniac","color":"gray"},"\n",{"text":"Version ","color":"gray"},{"text":"1.3.1-BETA","color":"red"},"\n",{"text":"GitHub","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Errorcrafter/FearOfTheNight"}},{"text":" | ","color":"gray"},{"text":"Patch Notes","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Errorcrafter/FearOfTheNight/releases/tag/v1.3.1-BETA"}},{"text":" | ","color":"gray"},{"text":"Wiki (coming soon!)","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/Errorcrafter/FearOfTheNight/wiki"}}]