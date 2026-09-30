
scoreboard players reset #break_bucthien_1 bucthien_1.global
scoreboard players operation #break_bucthien_1 bucthien_1.global = @s bucthien_1.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s bucthien_1.global = #break_bucthien_1 bucthien_1.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["bucthien_1_new"]},minecraft:custom_model_data={strings:['bucthien_1']},custom_name=[{"text":"Bục Thiền","italic":false}]] 1
kill @s
