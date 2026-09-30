
scoreboard players operation #break tamthot.global = @s tamthot.global
execute at @s as @e[type=minecraft:item_display] run execute if score @s tamthot.global = #break tamthot.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["tamthot_new"]},minecraft:custom_model_data={strings:['tamthot']},custom_name=[{"text":"Tấm Thớt","italic":false}]] 1
kill @s