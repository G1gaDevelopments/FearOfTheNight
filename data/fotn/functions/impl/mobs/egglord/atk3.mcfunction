# The horde
execute as @s[scores={egglord_atk=85}] if predicate fotn:rng/chance50 run say ATTTAAAAAAAACCCKKKKKKKKK
execute as @s[scores={egglord_atk=70..85}] at @s anchored eyes if predicate fotn:rng/chance25 run function fotn:spawn/mob/minion/chicken_horde_soldier

execute as @s[scores={egglord_atk=70..85}] at @s anchored eyes if predicate fotn:rng/chance25 run function fotn:spawn/mob/minion/chicken_horde_archer

execute as @s[scores={egglord_atk=70}] at @s anchored eyes run function fotn:spawn/mob/minion/chicken_horde_paladin

execute as @s[scores={egglord_atk=70}] at @s anchored eyes run function fotn:spawn/mob/minion/chicken_horde_bombardier