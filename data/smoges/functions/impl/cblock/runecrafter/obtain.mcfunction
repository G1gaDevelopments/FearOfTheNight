# Gives player the Runecrafter and lets them craft it multiple times
recipe take @s smoges:runecrafter
advancement revoke @s only smoges:runecrafter_craft_adv
clear @s knowledge_book
function smoges:spawn/item/runecrafter