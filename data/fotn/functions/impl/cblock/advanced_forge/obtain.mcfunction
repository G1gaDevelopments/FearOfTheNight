# Gives player the Advanced Forge and lets them craft it multiple times
recipe take @s fotn:advanced_forge
advancement revoke @s only fotn:util/advanced_forge_craft
clear @s knowledge_book
function fotn:spawn/item/advanced_forge