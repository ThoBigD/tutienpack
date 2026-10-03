scoreboard players add global matu_zombie_random 1
execute if score global matu_zombie_random matches 200.. run scoreboard players set global matu_zombie_random 0

execute as @e[type=zombie,tag=!change] at @s run function matu:mobs/monster/zombie/spawn
