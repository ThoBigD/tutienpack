scoreboard players reset #noicomdien_break noicomdien.global
scoreboard players operation #noicomdien_break noicomdien.global = @s noicomdien.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_nap] run execute if score @s noicomdien.global = #noicomdien_break noicomdien.global run kill @s
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_rice] run execute if score @s noicomdien.global = #noicomdien_break noicomdien.global run kill @s
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_full] run execute if score @s noicomdien.global = #noicomdien_break noicomdien.global run kill @s
execute at @s as @e[type=minecraft:text_display,tag=noicomdien_counting] run execute if score @s noicomdien.global = #noicomdien_break noicomdien.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["noicomdien_new"]},minecraft:custom_model_data={strings:['noicom_full']},custom_name=[{"text":"Nồi Cơm Điện Hiệu BigD","italic":false}]] 1
kill @s