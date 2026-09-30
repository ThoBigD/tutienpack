#which_item
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:thit}] run scoreboard players set #thaonuoc_codo thaonuoc_codo 1

#clear item
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:thit}] run clear @s minecraft:carrot[custom_name=[{"text":"Thịt Cắt Lát","italic":false}],minecraft:custom_data={food:thit},minecraft:custom_model_data={strings:['thit']}] 1

execute if score @s thaonuoc_sl matches 1.. run execute if score #thaonuoc_codo thaonuoc_codo matches 1 run function sc:summon/thaonuoc/display
execute if score @s thaonuoc_sl matches 1.. run execute if score #thaonuoc_codo thaonuoc_codo matches 1 run scoreboard players remove @s thaonuoc_sl 1
#co do
scoreboard players operation @s thaonuoc_codo = #thaonuoc_codo thaonuoc_codo
execute if score @s thaonuoc_sl matches 1.. run scoreboard players reset @s thaonuoc_codo
scoreboard players reset #thaonuoc_codo thaonuoc_codo