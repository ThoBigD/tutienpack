scoreboard players add value zombie_random 1
execute if score value zombie_random matches 50.. run scoreboard players reset value zombie_random
scoreboard players add value villager_random 1
execute if score value villager_random matches 30.. run scoreboard players reset value villager_random
#check
execute as @e[type=minecraft:zombie,tag=!change] at @s run function tt:mobs/zombie/zombie_luyenthe_tang1
execute as @e[type=minecraft:villager,tag=!change,nbt={Age:0}] at @s run function tt:mobs/villager/trader



#run
execute as @e[type=minecraft:zombie,tag=zombie_luyenthe_t1] at @s run function tt:mobs/zombie/zombie_luyenthe_tang1/tick
execute as @e[type=minecraft:item_display,tag=zombie_luyenthe_t1_skill] at @s run function tt:mobs/zombie/zombie_luyenthe_tang1/fly