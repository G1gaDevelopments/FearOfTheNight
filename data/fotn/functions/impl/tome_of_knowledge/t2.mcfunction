# Upgrades a player's Tome of Knowledge from 1 to 2.
# @s - The player whose ToK is being upgraded.

scoreboard players set @s tome_of_knowledge 2
tellraw @s [{"text":"Your Tome of Knowledge level has increased to ","color":"blue","italic":false},{"text":"II","color":"gold","bold":true,"italic":false},{"text":"!","color":"blue","italic":false}]
clear @s book{tk_tier:2} 1
execute at @s run playsound minecraft:entity.player.levelup master @s
function fotn:impl/util/swap_offhand