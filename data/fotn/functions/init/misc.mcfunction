# Misc. scoreboards
tellraw @a {"text":"Initialising misc scoreboards...","color":"dark_gray"}

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