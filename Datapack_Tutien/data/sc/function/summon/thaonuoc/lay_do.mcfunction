execute on target run give @s minecraft:carrot[custom_name=[{"text":"Cục Thịt Khử Mùi ","italic":false}],minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['thit_khumui']}] 10
scoreboard players set @s thaonuoc_codo 4
scoreboard players reset #break_thaonuoc3 thaonuoc.global
scoreboard players operation #break_thaonuoc3 thaonuoc.global = @s thaonuoc.global
execute at @s as @e[type=minecraft:item_display,tag=thaonuoc_display_item] run execute if score @s thaonuoc.global = #break_thaonuoc3 thaonuoc.global run kill @s

