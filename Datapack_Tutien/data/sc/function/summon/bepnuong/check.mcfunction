#kiemtranguoi choi tren tay cam gi
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thit_dauop_ngon']}] run scoreboard players set #bepnuong_have bepnuong_codo 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thit_dauop_ngon']}] run scoreboard players set #bepnuong_have bepnuong_item 1

#neu khong cam gi thi reset
execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #bepnuong_have bepnuong_codo 0
execute on target run execute unless items entity @s weapon.mainhand * run scoreboard players set #bepnuong_have bepnuong_item 0
scoreboard players operation @s bepnuong_codo = #bepnuong_have bepnuong_codo
scoreboard players operation @s bepnuong_item = #bepnuong_have bepnuong_item



#summon va them id cho item
scoreboard players operation #check bepnuong.global = @s bepnuong.global
execute if score @s bepnuong_item matches 1 run summon item_display ~ ~1.4 ~ {Tags:["bepnuong_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit_dauop_ngon"]}}}}

execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thit_dauop_ngon']}] run summon text_display ~ ~0.9 ~ {billboard:"center",background:0,Tags:["bepnuong_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"bonruatay_washing"},"shadow_color":5635925}}
execute as @e[type=minecraft:text_display,tag=new] at @s run scoreboard players operation @s bepnuong.global = #check bepnuong.global
execute as @e[tag=bepnuong_display_item,tag=new] at @s run scoreboard players operation @s bepnuong.global = #check bepnuong.global
execute as @e[type=minecraft:text_display,tag=new] at @s run tag @s remove new
execute as @e[tag=bepnuong_display_item,tag=new] at @s run tag @s remove new



# nhan item cua nguoi choi
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:['thit_dauop_ngon']}] run clear @s minecraft:carrot[minecraft:custom_model_data={strings:['thit_dauop_ngon']}] 1

#reset lai scoreboard ao
scoreboard players set #bepnuong_have bepnuong_codo 0
scoreboard players set #bepnuong_have bepnuong_item 0