time set noon
gamerule doDaylightCycle false

summon stray ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"fotn:entities/elizabeth_loot",PersistenceRequired:1b,Health:130f,Tags:["scanned","queen"],CustomName:'{"text":"Queen Elizabeth the Second","color":"green","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Royal Rapier","color":"green","bold":false,"italic":false}'},Damage:1,CustomModelData:6164002,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:knockback",lvl:3s},{id:"minecraft:sweeping",lvl:10s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:5,Operation:0,UUID:[I;1028927083,116539660,-1703070127,473143165],Slot:'mainhand'},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.3,Operation:1,UUID:[I;1688418035,-1112979310,-2024259214,175487389],Slot:'mainhand'},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:30,Operation:0,UUID:[I;1891411145,-1365883252,-1543941785,1546595909],Slot:'mainhand'},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:3,Operation:2,UUID:[I;1577284862,1028475608,-1762084018,-876223483],Slot:'mainhand'}]}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Regal Sceptre","color":"green","bold":false,"italic":false}'},Unbreakable:1b,Damage:1,CustomModelData:6164003,Enchantments:[{}]}}],HandDropChances:[0.400F,0.400F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2228060},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:feather_falling",lvl:100s},{id:"minecraft:frost_walker",lvl:100s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s},{id:"minecraft:soul_speed",lvl:100s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2228060},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2228060},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1423922971,105795411,-1608281814,948461832],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUzZTJhMzY3NjNkNzc3YmE3MTU3NjMxOTBiZTVkZGViYjFkZTc3NzA0ZTQ4NTQ3MmNkOTc2NWRmYzEzNTE4YyJ9fX0='}]}}}}],ArmorDropChances:[0.085F,0.085F,-327.670F,-327.670F],ActiveEffects:[{Id:2b,Amplifier:1b,Duration:9999},{Id:8b,Amplifier:3b,Duration:9999},{Id:10b,Amplifier:1b,Duration:9999},{Id:11b,Amplifier:2b,Duration:9999},{Id:12b,Amplifier:2b,Duration:9999},{Id:18b,Amplifier:2b,Duration:9999}],Attributes:[{Name:"generic.max_health",Base:130}]}

scoreboard players add @e[tag=queen,type=stray] queen_atk 0
execute if entity @e[tag=queen,type=stray,limit=1] run bossbar set queen visible true
execute as @e[tag=queen,type=stray] run say You are not fit to rule this kingdom!