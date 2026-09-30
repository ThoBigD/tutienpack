execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra

#kiem tra item tren tay
execute unless entity @s[tag=thit] run execute on target run execute if items entity @s weapon.mainhand minecraft:cooked_beef run scoreboard players set #thit comsuong_item 1
execute unless entity @s[tag=thit] run execute on target run execute if items entity @s weapon.mainhand minecraft:cooked_beef run clear @s cooked_beef 1

execute unless entity @s[tag=lat_dualeo] run execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:latdualeo},minecraft:custom_model_data={strings:['lat_dualeo']}] run scoreboard players set #lat_dualeo comsuong_item 1
execute unless entity @s[tag=lat_dualeo] run execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:latdualeo},minecraft:custom_model_data={strings:['lat_dualeo']}] run clear @s minecraft:carrot[minecraft:custom_data={food:latdualeo},minecraft:custom_model_data={strings:['lat_dualeo']}] 1

execute unless entity @s[tag=lat_cachua] run execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:latcachua},minecraft:custom_model_data={strings:['lat_cachua']}] run scoreboard players set #lat_cachua comsuong_item 1
execute unless entity @s[tag=lat_cachua] run execute on target run execute if items entity @s weapon.mainhand minecraft:carrot[minecraft:custom_data={food:latcachua},minecraft:custom_model_data={strings:['lat_cachua']}] run clear @s minecraft:carrot[minecraft:custom_data={food:latcachua},minecraft:custom_model_data={strings:['lat_cachua']}] 1

execute unless entity @s[tag=chen_nuocmam] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={nuocmam:1b},minecraft:custom_model_data={strings:['chen_nuocmam']}] run scoreboard players set #chen_nuocmam comsuong_item 1
execute unless entity @s[tag=chen_nuocmam] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={nuocmam:1b},minecraft:custom_model_data={strings:['chen_nuocmam']}] run clear @s minecraft:coal[minecraft:custom_data={nuocmam:1b},minecraft:custom_model_data={strings:['chen_nuocmam']}] 1

execute unless entity @s[tag=trung_chien] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={trungchien:0b},minecraft:custom_model_data={strings:['trungchien']}] run scoreboard players set #trung_chien comsuong_item 1
execute unless entity @s[tag=trung_chien] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={trungchien:0b},minecraft:custom_model_data={strings:['trungchien']}] run clear @s coal[minecraft:custom_data={trungchien:0b},minecraft:custom_model_data={strings:['trungchien']}] 1
#addchoblock
execute if score #thit comsuong_item matches 1 run tag @s add thit
execute if score #lat_dualeo comsuong_item matches 1 run tag @s add lat_dualeo
execute if score #lat_cachua comsuong_item matches 1 run tag @s add lat_cachua
execute if score #chen_nuocmam comsuong_item matches 1 run tag @s add chen_nuocmam
execute if score #trung_chien comsuong_item matches 1 run tag @s add trung_chien

execute if score #thit comsuong_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["comsuong_display_item","new"],item:{id:"minecraft:cooked_beef",count:1,components:{"minecraft:custom_model_data":{strings:["comsuong_thit"]}}}}
execute if score #lat_dualeo comsuong_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["comsuong_display_item","new"],item:{id:"minecraft:cooked_beef",count:1,components:{"minecraft:custom_model_data":{strings:["comsuong_dualeo"]}}}}
execute if score #lat_cachua comsuong_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["comsuong_display_item","new"],item:{id:"minecraft:cooked_beef",count:1,components:{"minecraft:custom_model_data":{strings:["comsuong_cachua"]}}}}
execute if score #chen_nuocmam comsuong_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["comsuong_display_item","new"],item:{id:"minecraft:cooked_beef",count:1,components:{"minecraft:custom_model_data":{strings:["comsuong_nuocmam"]}}}}
execute if score #trung_chien comsuong_item matches 1 run summon item_display ~ ~0.55 ~ {Tags:["comsuong_display_item","new"],item:{id:"minecraft:cooked_beef",count:1,components:{"minecraft:custom_model_data":{strings:["comsuong_trungchien"]}}}}

scoreboard players reset #active_comsuong comsuong.global
scoreboard players operation #active_comsuong comsuong.global = @s comsuong.global
execute as @e[tag=new] at @s run scoreboard players operation @s comsuong.global = #active_comsuong comsuong.global
execute as @e[tag=new] at @s run tag @s remove new

execute if score #thit comsuong_item matches 1 run scoreboard players set @s comsuong_item 1
execute if score #lat_dualeo comsuong_item matches 1 run scoreboard players set @s comsuong_item 1
execute if score #lat_cachua comsuong_item matches 1 run scoreboard players set @s comsuong_item 1
execute if score #chen_nuocmam comsuong_item matches 1 run scoreboard players set @s comsuong_item 1
execute if score #trung_chien comsuong_item matches 1 run scoreboard players set @s comsuong_item 1

execute if score #thit comsuong_item matches 1 run scoreboard players set @s comsuong_codo 1
execute if score #lat_dualeo comsuong_item matches 1 run scoreboard players set @s comsuong_codo 1
execute if score #lat_cachua comsuong_item matches 1 run scoreboard players set @s comsuong_codo 1
execute if score #chen_nuocmam comsuong_item matches 1 run scoreboard players set @s comsuong_codo 1
execute if score #trung_chien comsuong_item matches 1 run scoreboard players set @s comsuong_codo 1
#reset
scoreboard players reset #thit comsuong_item
scoreboard players reset #lat_dualeo comsuong_item
scoreboard players reset #lat_cachua comsuong_item
scoreboard players reset #chen_nuocmam comsuong_item
scoreboard players reset #trung_chien comsuong_item
data remove entity @s interaction