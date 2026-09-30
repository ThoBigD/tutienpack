scoreboard players reset #chen_nuocmam bepgas_nuocmam
execute if score @s bepgas_nuocmam matches 1.. run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={chen:1b},minecraft:custom_model_data={strings:['chen']}] run scoreboard players set #chen_nuocmam bepgas_nuocmam 1

execute if score #chen_nuocmam bepgas_nuocmam matches 1 run execute on target run clear @s minecraft:coal[minecraft:custom_data={chen:1b},minecraft:custom_model_data={strings:['chen']}] 1
execute if score #chen_nuocmam bepgas_nuocmam matches 1 run execute if score @s bepgas_nuocmam matches 1.. run execute on target run give @s minecraft:coal[custom_name=[{"text":"Chén Nước Mắm","italic":false}],minecraft:custom_data={nuocmam:1b},minecraft:custom_model_data={strings:['chen_nuocmam']}] 1
execute if score #chen_nuocmam bepgas_nuocmam matches 1 run execute if score @s bepgas_nuocmam matches 1.. run scoreboard players remove @s bepgas_nuocmam 1
execute if score @s bepgas_nuocmam matches ..0 run function sc:summon/bepgas/type/nuocmam_reset

scoreboard players reset #chen_nuocmam bepgas_nuocmam