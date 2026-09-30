scoreboard players reset #comsuong_break comsuong.global
scoreboard players operation #comsuong_break comsuong.global = @s comsuong.global

execute at @s as @e[type=minecraft:item_display] run execute if score @s comsuong.global = #comsuong_break comsuong.global run setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s comsuong.global = #comsuong_break comsuong.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["comsuong_new"]},minecraft:custom_model_data={strings:['dia_com']},custom_name=[{"text":"Dĩa Cơm","italic":false}]] 1
kill @s