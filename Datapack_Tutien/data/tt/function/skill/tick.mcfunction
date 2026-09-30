#luyenthe
execute as @a[tag=bdmv] at @s run execute if score @s phanchan_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/phanchan/tick
execute as @a[tag=bdmv] at @s run execute if score @s batthachkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/batthachkich/tick
execute as @a[tag=bdmv] at @s run execute if score @s sonnhactrongkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/sonnhactrongkich/tick

#entity
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] run scoreboard players add @s batthachkich_fly 1
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute if block ^ ^ ^1 #tt:nuocvsair run tp @s ^ ^ ^1
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute at @s run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~1 ~ 0.1 0.1 0.1 0.1 10
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute unless block ^ ^ ^1 #tt:nuocvsair run function tt:skill/luyenthe/batdongminhvuong/batthachkich/damage
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=1..}] at @s run execute if entity @e[distance=0.01..2] run function tt:skill/luyenthe/batdongminhvuong/batthachkich/damage
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=7..}] at @s run execute if entity @a[distance=..2] run function tt:skill/luyenthe/batdongminhvuong/batthachkich/damage
execute as @e[type=minecraft:item_display,tag=batthachkich,scores={batthachkich_fly=50..}] run kill @s
 