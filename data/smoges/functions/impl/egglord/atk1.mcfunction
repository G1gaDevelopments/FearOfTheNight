# Egg spam
execute as @s[scores={egglord_atk=30}] if predicate smoges:chance25 run say YOU CAN'T KILL ME, I HAVE THE POWER OF E G G
execute as @s[scores={egglord_atk=0..30}] at @s anchored eyes run summon egg ^ ^ ^0.5 {Tags:["el_eggspam"],NoGravity:1b}

# Resets the attack timer (7s)
scoreboard players set @s[scores={egglord_atk=0}] egglord_atk 140