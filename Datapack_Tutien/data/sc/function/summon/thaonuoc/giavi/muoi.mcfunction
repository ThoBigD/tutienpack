scoreboard players reset #thaonuoc_giavi_muoi thaonuoc_giavi_muoi
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_model_data={strings:['hu_muoi']}] run scoreboard players set #thaonuoc_giavi_muoi thaonuoc_giavi_muoi 1
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_model_data={strings:['hu_muoi']}] run clear @s coal[minecraft:custom_model_data={strings:['hu_muoi']}] 1
execute if score #thaonuoc_giavi_muoi thaonuoc_giavi_muoi matches 1.. run particle minecraft:white_ash ~0.2 ~0.7 ~ 0.1 0.1 0.1 0 100
execute if score #thaonuoc_giavi_muoi thaonuoc_giavi_muoi matches 1.. run scoreboard players operation @s thaonuoc_giavi_muoi = #thaonuoc_giavi_muoi thaonuoc_giavi_muoi