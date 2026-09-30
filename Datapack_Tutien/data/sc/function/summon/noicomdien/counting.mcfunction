execute if score @s noicomdien_cooking matches ..700 run scoreboard players add @s noicomdien_cooking 1
particle minecraft:smoke 




execute if score @s noicomdien_cooking matches 700 run function sc:summon/noicomdien/done
scoreboard players operation #noicomdien_counting noicomdien_cooking = @s noicomdien_cooking
execute as @e[type=minecraft:text_display,tag=noicomdien_counting] at @s run scoreboard players operation @s noicomdien_cooking = #noicomdien_counting noicomdien_cooking
execute as @e[type=minecraft:text_display,tag=noicomdien_counting] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"noicomdien_cooking"},"shadow_color":-11141291}," / 700"]}
data remove entity @s attack