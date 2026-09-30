execute if score #cut_take tamthot_item matches 5 run give @s minecraft:carrot[custom_name=[{"text":"Thịt Khử Mùi Đã Đập","italic":false}],minecraft:custom_data={food:thitkhumui_dadap},minecraft:custom_model_data={strings:['thitkhumui_dadap']}] 1

execute as @a[distance=..15] at @s run playsound minecraft:item.mace.smash_air master @s ~ ~ ~ 0.2 2 1
particle block{block_state:{Name:stripped_birch_wood}} ~ ~ ~ 0 0 0 0 10 