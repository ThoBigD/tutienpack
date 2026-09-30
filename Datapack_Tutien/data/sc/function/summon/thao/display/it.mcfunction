scoreboard players operation #thao_id_display thao.global = @s thao.global

execute unless entity @s[scores={thao_nuocmam_dp=1}] run execute if score @s thao_nuocmam matches 1.. run summon item_display ~ ~0.55 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_nuocmam"]}}}}
execute unless entity @s[scores={thao_nuoctuong_dp=1}] run execute if score @s thao_nuoctuong matches 1.. run summon item_display ~ ~0.6 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_nuoctuong"]}}}}
execute unless entity @s[scores={thao_dauhao_dp=1}] run execute if score @s thao_dauhao matches 1.. run summon item_display ~ ~0.65 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_dauhao"]}}}}
execute unless entity @s[scores={thao_matong_dp=1}] run execute if score @s thao_matong matches 1.. run summon item_display ~ ~0.7 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_matong"]}}}}
execute unless entity @s[scores={thao_tieuxay_dp=1}] run execute if score @s thao_tieuxay matches 1.. run particle minecraft:ash ~ ~1 ~ 0.1 0.1 0.1 1 50
execute unless entity @s[scores={thao_suadac_dp=1}] run execute if score @s thao_suadac matches 1.. run summon item_display ~ ~0.75 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_suadac"]}}}}
execute unless entity @s[scores={thao_daudieu_dp=1}] run execute if score @s thao_daudieu matches 1.. run summon item_display ~ ~0.8 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_daudieu"]}}}}
execute unless entity @s[scores={thao_toibam_dp=1}] run execute if score @s thao_toibam matches 1.. run summon item_display ~ ~0.9 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["toibam"]}}}}
execute unless entity @s[scores={thao_sabam_dp=1}] run execute if score @s thao_sabam matches 1.. run summon item_display ~ ~0.9 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["sabam"]}}}}
execute unless entity @s[scores={thao_hanhtimbam_dp=1}] run execute if score @s thao_hanhtimbam matches 1.. run summon item_display ~ ~0.9 ~ {Tags:["thao_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["hanhtimbam"]}}}}
execute if score @s thao_thit matches 1.. run execute if score #value thao_thit matches 1.. run function sc:summon/thao/display

execute unless entity @s[scores={thao_nuocmam_dp=1}] run execute if score @s thao_nuocmam matches 1.. run scoreboard players set @s thao_nuocmam_dp 1
execute unless entity @s[scores={thao_nuoctuong_dp=1}] run execute if score @s thao_nuoctuong matches 1.. run scoreboard players set @s thao_nuoctuong_dp 1
execute unless entity @s[scores={thao_dauhao_dp=1}] run execute if score @s thao_dauhao matches 1.. run scoreboard players set @s thao_dauhao_dp 1
execute unless entity @s[scores={thao_matong_dp=1}] run execute if score @s thao_matong matches 1.. run scoreboard players set @s thao_matong_dp 1
execute unless entity @s[scores={thao_tieuxay_dp=1}] run execute if score @s thao_tieuxay matches 1.. run scoreboard players set @s thao_tieuxay_dp 1
execute unless entity @s[scores={thao_suadac_dp=1}] run execute if score @s thao_suadac matches 1.. run scoreboard players set @s thao_suadac_dp 1
execute unless entity @s[scores={thao_daudieu_dp=1}] run execute if score @s thao_daudieu matches 1.. run scoreboard players set @s thao_daudieu_dp 1
execute unless entity @s[scores={thao_toibam_dp=1}] run execute if score @s thao_toibam matches 1.. run scoreboard players set @s thao_toibam_dp 1
execute unless entity @s[scores={thao_sabam_dp=1}] run execute if score @s thao_sabam matches 1.. run scoreboard players set @s thao_sabam_dp 1
execute unless entity @s[scores={thao_hanhtimbam_dp=1}] run execute if score @s thao_hanhtimbam matches 1.. run scoreboard players set @s thao_hanhtimbam_dp 1

execute as @e[tag=thit,tag=new] at @s run tp @s ~ ~ ~ ~ 60
execute as @e[tag=new] at @s run scoreboard players operation @s thao.global = #thao_id_display thao.global
execute as @e[tag=new] at @s run tag @s remove new
scoreboard players reset #thao_id_display thao.global