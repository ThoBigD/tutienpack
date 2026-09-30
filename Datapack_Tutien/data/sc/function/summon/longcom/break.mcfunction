scoreboard players reset #break longcom.global
scoreboard players operation #break longcom.global = @s longcom.global

execute at @s as @e[type=minecraft:item_display] run execute if score @s longcom.global = #break longcom.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["longcom_new"]},minecraft:custom_model_data={strings:['noicom_long']},custom_name=[{"text":"Vỉ Hấp","italic":false}],minecraft:custom_data={mucgao:1b}] 1
kill @s
