scoreboard players reset #break bonruatay.global
scoreboard players operation #break bonruatay.global = @s bonruatay.global

execute at @s as @e[type=minecraft:text_display,tag=bonruatay_counting] run execute if score @s bonruatay.global = #break bonruatay.global run kill @s
execute at @s as @e[type=minecraft:item_display] run execute if score @s bonruatay.global = #break bonruatay.global run setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s bonruatay.global = #break bonruatay.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["bonruatay_new"]},minecraft:custom_model_data={strings:['bonruatay']},custom_name=[{"text":"Bồn Rửa Tay","italic":false}]] 1
kill @s