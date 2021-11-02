# Makes it rain obsidian.#
say obbyrain
execute as @s[scores={nocturnus_atk=177..180}] run summon phantom ~ ~ ~ {Health:1f,Tags:["nt_obbyrain"],Attributes:[{Name:"generic.max_health",Base:1}]}
#execute as @s[scores={nocturnus_atk=141..160}] at @e[tag=nt_obbyrain] run say hi
execute as @s[scores={nocturnus_atk=141..170}] at @e[tag=nt_obbyrain] run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:obsidian"},Time:1,DropItem:0b,HurtEntities:1b}
execute as @s[scores={nocturnus_atk=140}] as @e[tag=nt_obbyrain] run kill @s