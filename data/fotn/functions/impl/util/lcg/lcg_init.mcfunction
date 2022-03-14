# LCG Generator by TCasseBloc#1649
# original: https://canary.discord.com/channels/154777837382008833/157097006500806656/743172271123857545

#Add the objectives
scoreboard objectives add LCG.consts dummy
scoreboard objectives add LCG.main dummy
#Set the constants (THOSE SHALL NEVER BE CHNAGED!)
scoreboard players set #increment LCG.consts 12345
scoreboard players set #multiplier LCG.consts 1103515245

# #modulus will be the difference between max and min value
scoreboard players set #modulus LCG.consts 15
# #mid is exactly what it says it does
scoreboard players set #mid LCG.consts 6

#Get the original seed from an aec's UUID (allows for a different LCG for each world)
execute unless score #seed LCG.consts = #seed LCG.consts run function fotn:impl/util/lcg/get_seed