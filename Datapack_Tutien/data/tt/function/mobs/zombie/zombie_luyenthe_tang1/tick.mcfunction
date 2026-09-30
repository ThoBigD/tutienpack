execute if entity @p[distance=..30,gamemode=survival] run scoreboard players add @s zombie_luyenthe_t1 1

execute if score @s zombie_luyenthe_t1 matches 1 run function tt:mobs/zombie/zombie_luyenthe_tang1/skill
execute if score @s zombie_luyenthe_t1 matches 300.. run scoreboard players reset @s zombie_luyenthe_t1