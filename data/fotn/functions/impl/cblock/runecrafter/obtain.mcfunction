# Gives player the Runecrafter and lets them craft it multiple times
recipe take @s fotn:runecrafter
advancement revoke @s only fotn:runecrafter_craft_adv
clear @s knowledge_book
function fotn:spawn/item/runecrafter