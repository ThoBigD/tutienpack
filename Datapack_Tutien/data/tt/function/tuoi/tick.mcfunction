execute as @a[tag=!tuoi] at @s run scoreboard players set @s tuoi_tong 100
execute as @a[tag=!tuoi] at @s run tag @s add tuoi

execute as @a[tag=tuoi] at @s run scoreboard players add @s tuoi_tick 1
execute as @a[tag=tuoi] at @s run execute if score @s tuoi_tick matches 2400.. run scoreboard players remove @s tuoi_tong 1
execute as @a[tag=tuoi] at @s run execute if score @s tuoi_tick matches 2400.. run scoreboard players add @s tuoi_that 1
execute as @a[tag=tuoi] at @s run execute if score @s tuoi_tick matches 2400.. run scoreboard players reset @s tuoi_tick


execute as @a[tag=tuoi] at @s run execute if score @s tuoi_tong matches ..0 run kill @s