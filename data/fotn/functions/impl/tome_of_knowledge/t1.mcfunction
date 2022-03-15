# Upgrades a player's Tome of Knowledge from 0 to 1.
# @s - The player whose ToK is being upgraded.

scoreboard players set @s tome_of_knowledge 1
tellraw @s [{"text":"Your Tome of Knowledge level has increased to ","color":"blue","italic":false},{"text":"I","color":"gold","bold":true,"italic":false},{"text":"!","color":"blue","italic":false}]
clear @s book{tk_tier:1} 1
function fotn:impl/util/swap_offhand