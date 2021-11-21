# Egg spam
say eggspam
execute as @s[scores={egglord_atk=0..30}] at @s anchored eyes run summon egg ^ ^ ^0.5 {Tags:["el_eggspam"],NoGravity:1b}

# Resets the attack timer (7s)
scoreboard players set @s[scores={egglord_atk=0}] egglord_atk 140