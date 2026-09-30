
scoreboard players reset #break_thaonuoc thaonuoc.global
scoreboard players operation #break_thaonuoc thaonuoc.global = @s thaonuoc.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thaonuoc.global = #break_thaonuoc thaonuoc.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["thaonuoc_new"]},minecraft:custom_model_data={strings:['thaonuoc']},custom_name=[{"text":"Cái Thao Nước","italic":false}]] 1
kill @s
