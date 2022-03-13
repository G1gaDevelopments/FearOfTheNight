#Take the seed
scoreboard players operation $out LCG.main = #seed LCG.consts

#Do the operations to get the raw number
scoreboard players operation $out LCG.main *= #multiplier LCG.consts
scoreboard players operation $out LCG.main += #increment LCG.consts

#Use int overflow to get the next seed
scoreboard players operation #seed LCG.consts = $out LCG.main

#If there ISN'T a modulus and mid override, use the default one
execute unless score $modulus LCG.main = $modulus LCG.main run scoreboard players operation $out LCG.main %= #modulus LCG.consts
execute unless score $modulus LCG.main = $modulus LCG.main run scoreboard players operation $out LCG.main -= #modulus LCG.consts
execute unless score $mid LCG.main = $mid LCG.main run scoreboard players operation $out LCG.main += #mid LCG.consts

#If there IS a modulus and mid override, use it instead
execute if score $modulus LCG.main = $modulus LCG.main run scoreboard players operation $out LCG.main %= $modulus LCG.main
execute if score $modulus LCG.main = $modulus LCG.main run scoreboard players operation $out LCG.main -= #modulus LCG.consts
execute if score $mid LCG.main = $mid LCG.main run scoreboard players operation $out LCG.main += $mid LCG.main

#Reset the override automatically (see Notes for disabling that)
scoreboard players reset $modulus LCG.main