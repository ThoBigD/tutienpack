execute on target run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["longcom_new"]},minecraft:custom_model_data={strings:['noicom_long']},custom_name=[{"text":"Vỉ Hấp","italic":false}],minecraft:custom_data={mucgao:1b}] 1
scoreboard players reset @s noicomdien_codo
scoreboard players reset @s noicomdien_cooking
scoreboard players reset @s noicomdien_sl
scoreboard players reset #break noicomdien.global
scoreboard players operation #break noicomdien.global = @s noicomdien.global
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_rice] run execute if score @s noicomdien.global = #break noicomdien.global run kill @s
execute at @s as @e[type=text_display] run execute if score @s noicomdien.global = #break noicomdien.global run kill @s