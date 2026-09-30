execute if entity @s[tag=!change] run scoreboard players set @s hotaytuy 100
particle minecraft:bubble_pop ~ ~ ~ 1 1 1 1 1
execute if entity @p[tag=!luyenthe,distance=..4] run scoreboard players add @s hotaytuy_delay 1
execute if entity @p[tag=luyenthe,scores={status_luyenthe=1},distance=..4] run scoreboard players add @s hotaytuy_delay 1
execute if entity @p[tag=luyenthe,scores={status_luyenthe=2},distance=..4] run scoreboard players add @s hotaytuy_delay 1
execute if score @s hotaytuy_delay matches 20.. run execute if entity @p[tag=luyenthe,scores={status_luyenthe=1},distance=..4] run scoreboard players remove @s hotaytuy 1
execute if score @s hotaytuy_delay matches 20.. run execute if entity @p[tag=luyenthe,scores={status_luyenthe=2},distance=..4] run scoreboard players remove @s hotaytuy 2
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=1},limit=1] at @s run scoreboard players add @s lt_tientrinh 1
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=2},limit=1] at @s run scoreboard players add @s lt_tientrinh 1
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=1},limit=1] at @s run function tt:congtrinh/hotaytuy/particle
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=2},limit=1] at @s run function tt:congtrinh/hotaytuy/particle
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=1},limit=1] at @s run damage @s 2 minecraft:drown
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=luyenthe,scores={status_luyenthe=2},limit=1] at @s run damage @s 1 minecraft:drown

execute if score @s hotaytuy_delay matches 20.. run execute if entity @p[tag=!luyenthe,distance=..4] run scoreboard players remove @s hotaytuy 1
execute if score @s hotaytuy_delay matches 20.. run execute as @a[tag=!luyenthe] at @s run damage @s 10 minecraft:drown
execute if score @s hotaytuy_delay matches 20.. run scoreboard players reset @s hotaytuy_delay

execute if score @s hotaytuy matches ..0 run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 mud replace water
execute if score @s hotaytuy matches ..0 run kill @s
tag @s add change
execute unless block ~ ~ ~ water run kill @s