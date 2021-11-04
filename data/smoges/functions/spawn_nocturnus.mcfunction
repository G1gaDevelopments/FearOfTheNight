time set night
gamerule doDaylightCycle false

summon phantom ~ ~20 ~ {Glowing:1b,CustomNameVisible:1b,DeathLootTable:"smoges:entities/nocturnus_loot",PersistenceRequired:1b,AbsorptionAmount:25f,Health:300f,Size:40,Tags:["nocturnus"],CustomName:'{"text":"Nocturnus, Monstrosity of the Night","color":"dark_blue","bold":true}',ActiveEffects:[{Id:5b,Amplifier:3b,Duration:999999},{Id:10b,Amplifier:1b,Duration:999999},{Id:11b,Amplifier:1b,Duration:999999}],Attributes:[{Name:"generic.max_health",Base:300}]}
scoreboard players add @e[tag=nocturnus,type=phantom] nocturnus_atk 0

execute if entity @e[tag=nocturnus,type=phantom,limit=1] run bossbar set nocturnus visible true