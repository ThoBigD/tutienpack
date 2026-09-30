execute if score @s tulanh_uop matches ..1000 run scoreboard players add @s tulanh_uop 1
execute if score @s tulanh_uop matches 1000 run scoreboard players operation #tulanh_break tulanh.global = @s tulanh.global
execute if score @s tulanh_uop matches 1000 run execute at @s as @e[type=minecraft:text_display,tag=tulanh_counting] run execute if score @s tulanh.global = #tulanh_break tulanh.global run kill @s

scoreboard players operation #tulanh_break tulanh.global = @s tulanh.global
scoreboard players operation #tulanh_counting tulanh_uop = @s tulanh_uop
execute at @s as @e[type=minecraft:text_display,tag=tulanh_counting] run execute if score @s tulanh.global = #tulanh_break tulanh.global run scoreboard players operation @s tulanh_uop = #tulanh_counting tulanh_uop
scoreboard players reset #tulanh_break tulanh.global
scoreboard players reset #tulanh_counting tulanh_uop
execute as @e[type=minecraft:text_display,tag=tulanh_counting] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"tulanh_uop"},"shadow_color":-11141291}," / 1000"]}
