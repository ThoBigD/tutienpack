scoreboard players reset #bepnuong_break bepnuong.global
scoreboard players operation #bepnuong_break bepnuong.global = @s bepnuong.global

execute at @s as @e[type=minecraft:item_display] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["bepnuong_new"]},minecraft:custom_model_data={strings:['bepnuong_macdinh']},custom_name=[{"text":"Bếp Nướng","italic":false}]] 1
kill @s