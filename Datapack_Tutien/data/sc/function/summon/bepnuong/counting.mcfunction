execute if score @s bepnuong_cooking matches ..200 run scoreboard players add @s bepnuong_cooking 1
execute if score @s bepnuong_cooking matches 200 run scoreboard players operation #bepnuong_break bepnuong.global = @s bepnuong.global
execute if score @s bepnuong_cooking matches 200 run execute at @s as @e[type=minecraft:text_display,tag=bepnuong_counting] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run kill @s

scoreboard players operation #bepnuong_break bepnuong.global = @s bepnuong.global
scoreboard players operation #bepnuong_counting bepnuong_cooking = @s bepnuong_cooking
execute at @s as @e[type=minecraft:text_display,tag=bepnuong_counting] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run scoreboard players operation @s bepnuong_cooking = #bepnuong_counting bepnuong_cooking
scoreboard players reset #bepnuong_break bepnuong.global
scoreboard players reset #bepnuong_counting bepnuong_cooking
execute if score @s bepnuong_cooking matches ..150 run execute as @e[type=minecraft:text_display,tag=bepnuong_counting] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"bepnuong_cooking"},"shadow_color":-11141291}," / 100"]}
execute if score @s bepnuong_cooking matches 150.. run execute as @e[type=minecraft:text_display,tag=bepnuong_counting] at @s run data merge entity @s {text:[{"color":"red","score":{"name":"@s","objective":"bepnuong_cooking"},"shadow_color":-11141291}," / 100!!!"]}
execute if score @s bepnuong_cooking matches ..200 run particle minecraft:campfire_signal_smoke ~ ~3.5 ~ 0 1 0 0 1
execute if score @s bepnuong_cooking matches 1 run function sc:summon/bepnuong/display
execute if score @s bepnuong_cooking matches 1 run execute as @a[distance=..15] at @s run playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.5 1 0.1
execute if score @s bepnuong_cooking matches 50 run execute as @a[distance=..15] at @s run playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.5 1 0.1
execute if score @s bepnuong_cooking matches 70 run execute as @a[distance=..15] at @s run playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.5 1 0.1