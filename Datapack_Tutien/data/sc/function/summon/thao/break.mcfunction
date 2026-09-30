scoreboard players reset #break_thao thao.global
scoreboard players reset #break_thao thao.global
scoreboard players operation #break_thao thao.global = @s thao.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thao.global = #break_thao thao.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["thao_new"]},minecraft:custom_model_data={strings:['thao']},custom_name=[{"text":"Cái Thao","italic":false}],minecraft:custom_data={food:0b}] 1
kill @s
