#Pretty straight forward, gets the first int from the int array of the aec's UUID NBT
summon marker ~ ~ ~ {Tags:["LCG.seed"]}
execute store result score #seed LCG.consts run data get entity @e[type=marker,tag=LCG.seed,distance=0,limit=1] UUID[0]
kill @e[type=marker,tag=LCG.seed,distance=0,limit=1]