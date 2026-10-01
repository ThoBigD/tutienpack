#luyenthe
execute as @a[tag=bdmv] at @s run execute if score @s phanchan_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/phanchan/tick
execute as @a[tag=bdmv] at @s run execute if score @s batthachkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/batthachkich/tick
execute as @a[tag=bdmv] at @s run execute if score @s sonnhactrongkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/sonnhactrongkich/tick

#entity
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] run scoreboard players add @s batthachkich_fly 1
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute if block ^ ^ ^2 #tt:nuocvsair run tp @s ^ ^ ^2
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute at @s run function tt:skill/particle_1
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute unless block ^ ^ ^2 #tt:nuocvsair run function tt:skill/luyenthe/batdongminhvuong/batthachkich/damage
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute as @a at @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run tag @s add this
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute if entity @e[distance=0.01..2,tag=!this] run function tt:skill/luyenthe/batdongminhvuong/batthachkich/damage
execute as @a at @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run tag @s remove this
scoreboard players reset #btk_id batthachkich_id
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=50..}] run kill @s
