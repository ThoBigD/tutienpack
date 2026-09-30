execute if score @s bonruatay_washing matches ..100 run scoreboard players add @s bonruatay_washing 1
execute if score @s bonruatay_washing matches 100 run scoreboard players operation #break bonruatay.global = @s bonruatay.global
execute if score @s bonruatay_washing matches 100 run execute at @s as @e[type=minecraft:text_display,tag=bonruatay_counting] run execute if score @s bonruatay.global = #break bonruatay.global run kill @s

scoreboard players operation #break bonruatay.global = @s bonruatay.global
scoreboard players operation #counting bonruatay_washing = @s bonruatay_washing
execute at @s as @e[type=minecraft:text_display,tag=bonruatay_counting] run execute if score @s bonruatay.global = #break bonruatay.global run scoreboard players operation @s bonruatay_washing = #counting bonruatay_washing
scoreboard players reset #break bonruatay.global
scoreboard players reset #counting bonruatay_washing
execute as @e[type=minecraft:text_display,tag=bonruatay_counting] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"bonruatay_washing"},"shadow_color":-11141291}," / 100"]}

execute if score @s bonruatay_washing matches ..100 run particle minecraft:falling_water ~ ~1 ~ 0 0 0 1 1
execute if score @s bonruatay_washing matches ..100 run execute as @a at @s run playsound minecraft:block.pointed_dripstone.drip_water