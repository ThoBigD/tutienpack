execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_codo 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['dualeo']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['cachua']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 2
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['cucthit']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 3
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['gung']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 4
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['thit_khumui']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 5
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['sa']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 6
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['toi']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 7
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['hanhtim']},minecraft:custom_data={food:1b}] run scoreboard players set #have tamthot_item 8

execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #have tamthot_codo 0
execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #have tamthot_item 0
scoreboard players operation @s tamthot_codo = #have tamthot_codo
scoreboard players operation @s tamthot_item = #have tamthot_item
scoreboard players operation #check tamthot.global = @s tamthot.global
execute if score @s tamthot_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["dualeo"]}}}}
execute if score @s tamthot_item matches 2 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["cachua"]}}}}
execute if score @s tamthot_item matches 3 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["cucthit"]}}}}
execute if score @s tamthot_item matches 4 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["gung"]}}}}
execute if score @s tamthot_item matches 5 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit_khumui"]}}}}
execute if score @s tamthot_item matches 6 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["sa"]}}}}
execute if score @s tamthot_item matches 7 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["toi"]}}}}
execute if score @s tamthot_item matches 8 run summon item_display ~ ~0.55 ~ {Tags:["tamthot_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["hanhtim"]}}}}
execute as @e[tag=tamthot_display_item,tag=new] at @s run scoreboard players operation @s tamthot.global = #check tamthot.global
execute as @e[tag=tamthot_display_item,tag=new] at @s run tag @s remove new


execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['dualeo']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['dualeo']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['cachua']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['cachua']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['cucthit']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['cucthit']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['gung']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['gung']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['thit_khumui']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['thit_khumui']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['sa']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['sa']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['toi']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['toi']}] 1
execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_model_data={strings:['hanhtim']},minecraft:custom_data={food:1b}] run clear @s minecraft:carrot[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['hanhtim']}] 1

scoreboard players set #have tamthot_codo 0
scoreboard players set #have tamthot_item 0