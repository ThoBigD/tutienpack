
scoreboard players reset #break_tulanh tulanh.global
scoreboard players operation #break_tulanh tulanh.global = @s tulanh.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s tulanh.global = #break_tulanh tulanh.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["tulanh_new"]},minecraft:custom_model_data={strings:['tulanh']},custom_name=[{"text":"Tủ Lạnh","italic":false}]] 1
kill @s
