scoreboard players add @s zombie_luyenthe_t1_skill 1
execute if block ^ ^ ^1 #tt:nuocvsair run tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #tt:nuocvsair run function tt:skill/luyenthe/batdongminhvuong/batthachkich/fill
execute unless block ^ ^ ^1 #tt:nuocvsair run kill @s
execute as @p[distance=..2] at @s run damage @s 6 minecraft:mob_attack by @e[type=minecraft:zombie,tag=zombie_luyenthe_t1,sort=nearest,limit=1]
execute if entity @p[distance=..2] run kill @s
execute if score @s zombie_luyenthe_t1_skill matches 30.. run kill @s