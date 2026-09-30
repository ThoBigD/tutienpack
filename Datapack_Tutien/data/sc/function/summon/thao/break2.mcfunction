scoreboard players reset #break_thao thao.global
scoreboard players reset #break_thao thao.global
scoreboard players operation #break_thao thao.global = @s thao.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thao.global = #break_thao thao.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:coal[custom_name=[{"text":"Thao Thịt Ướp","italic":false}],minecraft:custom_model_data={strings:['thao_thituop']},minecraft:custom_data={thao_thituop:1b}] 1
kill @s
