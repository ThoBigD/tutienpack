execute as @e[type=minecraft:armor_stand,tag=bucthien_1_new] at @s run function tt:thien/bucthien_1/summon
execute as @e[type=minecraft:interaction,tag=bucthien_1_it] at @s run execute if data entity @s interaction run function tt:thien/bucthien_1/scrip
execute as @e[type=minecraft:interaction,tag=bucthien_1_it] at @s run execute if data entity @s attack run function tt:thien/bucthien_1/break
execute as @e[type=minecraft:interaction,tag=bucthien_1_it] at @s run execute on passengers run function tt:thien/bucthien_1/tu