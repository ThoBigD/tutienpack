execute if score @s bepgas_counting matches ..500 run scoreboard players add @s bepgas_counting 1
execute if score @s bepgas_counting matches ..500 run particle minecraft:smoke ~ ~0.5 ~ 
execute if score @s bepgas_counting matches 500 run scoreboard players set @s bepgas_nuocmam 10
execute if score @s bepgas_counting matches 500 run scoreboard players operation #bepgas_break_nuocmam bepgas.global = @s bepgas.global
execute if score @s bepgas_counting matches 500 run execute at @s as @e[type=minecraft:text_display,tag=bepgas_counting] run execute if score @s bepgas.global = #bepgas_break_nuocmam bepgas.global run kill @s

scoreboard players operation #bepgas_break_nuocmam bepgas.global = @s bepgas.global
scoreboard players operation #counting_nuocmam bepgas_counting = @s bepgas_counting
execute at @s as @e[type=minecraft:text_display,tag=bepgas_counting] run execute if score @s bepgas.global = #bepgas_break_nuocmam bepgas.global run scoreboard players operation @s bepgas_counting = #counting_nuocmam bepgas_counting
execute as @e[type=minecraft:text_display,tag=bepgas_counting] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"bepgas_counting"},"shadow_color":-11141291}," / 500"]}
execute if score @s bepgas_counting matches 1 run execute as @a[distance=..15] at @s run playsound minecraft:block.campfire.crackle master @s ~ ~ ~ 0.5 1 0.1
execute if score @s bepgas_counting matches 1 run summon text_display ~ ~1 ~ {billboard:"center",background:0,Tags:["bepgas_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"bepgas_counting"},"shadow_color":5635925}}
execute if score @s bepgas_counting matches 1 run execute as @e[tag=new] at @s run scoreboard players operation @s bepgas.global = #bepgas_break_nuocmam bepgas.global
execute if score @s bepgas_counting matches 1 run execute as @e[tag=new] at @s run tag @s remove new
scoreboard players reset #bepgas_break_nuocmam bepgas.global
scoreboard players reset #counting_nuocmam bepgas_counting
