#kiemtranguoi choi tren tay cam gi
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_codo 1
execute on target run execute if items entity @s weapon.mainhand bucket run scoreboard players set #have bonruatay_codo 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['dualeo']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['cachua']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 2
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['noicom_longcogao']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 3
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thao']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 4
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['sa']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 5
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['toi']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 6
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['hanhtim']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 7
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thaonuoc']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 8
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['caichao']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 9
execute on target run execute if items entity @s weapon.mainhand bucket run scoreboard players set #have bonruatay_item 10
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['cainoi']},minecraft:custom_data={food:0b}] run scoreboard players set #have bonruatay_item 11
#neu khong cam gi thi reset
execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #have bonruatay_codo 0
execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #have bonruatay_item 0
scoreboard players operation @s bonruatay_codo = #have bonruatay_codo
scoreboard players operation @s bonruatay_item = #have bonruatay_item



#summon va them id cho item
scoreboard players operation #check bonruatay.global = @s bonruatay.global
execute if score @s bonruatay_item matches 1 run summon item_display ~ ~1.3 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["dualeo"]}}}}
execute if score @s bonruatay_item matches 2 run summon item_display ~ ~1.3 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["cachua"]}}}}
execute if score @s bonruatay_item matches 3 run summon item_display ~ ~1.3 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["noicom_longcogao"]}}}}
execute if score @s bonruatay_item matches 4 run summon item_display ~ ~1.5 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["thao"]}}}}
execute if score @s bonruatay_item matches 5 run summon item_display ~ ~1.32 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["sa"]}}}}
execute if score @s bonruatay_item matches 6 run summon item_display ~ ~1.32 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["toi"]}}}}
execute if score @s bonruatay_item matches 7 run summon item_display ~ ~1.32 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["hanhtim"]}}}}
execute if score @s bonruatay_item matches 8 run summon item_display ~ ~1.5 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["thaonuoc"]}}}}
execute if score @s bonruatay_item matches 9 run summon item_display ~ ~1.5 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["caichao"]}}}}
execute if score @s bonruatay_item matches 10 run summon item_display ~ ~1 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:bucket",count:1}}
execute if score @s bonruatay_item matches 11 run summon item_display ~ ~1 ~ {Tags:["bonruatay_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["cainoi"]}}}}
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={food:0b}] run summon text_display ~ ~1.5 ~ {billboard:"center",background:0,Tags:["bonruatay_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"bonruatay_washing"},"shadow_color":5635925}}
execute on target run execute if items entity @s weapon.mainhand bucket run summon text_display ~ ~1.5 ~ {billboard:"center",background:0,Tags:["bonruatay_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"bonruatay_washing"},"shadow_color":5635925}}
execute as @e[type=minecraft:text_display,tag=new] at @s run scoreboard players operation @s bonruatay.global = #check bonruatay.global
execute as @e[tag=bonruatay_display_item,tag=new] at @s run scoreboard players operation @s bonruatay.global = #check bonruatay.global
execute as @e[type=minecraft:text_display,tag=new] at @s run tag @s remove new
execute as @e[tag=bonruatay_display_item,tag=new] at @s run tag @s remove new



# nhan item cua nguoi choi
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['dualeo']},minecraft:custom_data={food:0b}] run clear @s minecraft:carrot[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['dualeo']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['cachua']},minecraft:custom_data={food:0b}] run clear @s minecraft:carrot[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['cachua']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['noicom_longcogao']},minecraft:custom_data={food:0b}] run clear @s minecraft:coal[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['noicom_longcogao']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thao']},minecraft:custom_data={food:0b}] run clear @s minecraft:zombie_spawn_egg[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['thao']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['sa']},minecraft:custom_data={food:0b}] run clear @s minecraft:carrot[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['sa']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['toi']},minecraft:custom_data={food:0b}] run clear @s minecraft:carrot[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['toi']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['hanhtim']},minecraft:custom_data={food:0b}] run clear @s minecraft:carrot[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['hanhtim']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thaonuoc']},minecraft:custom_data={food:0b}] run clear @s minecraft:coal[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['thaonuoc']}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['caichao']},minecraft:custom_data={food:0b}] run clear @s minecraft:coal[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['caichao']}] 1
execute on target run execute if items entity @s weapon.mainhand bucket run clear @s bucket 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['cainoi']},minecraft:custom_data={food:0b}] run clear @s minecraft:coal[minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['cainoi']}] 1
#reset lai scoreboard ao
scoreboard players set #have bonruatay_codo 0
scoreboard players set #have bonruatay_item 0