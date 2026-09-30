

scoreboard players operation #cut_take tamthot_item = @s tamthot_item

execute if score #cut_take tamthot_item matches 1.. run execute unless score #cut_take tamthot_item matches 5 run function sc:summon/tamthot/cat_dap/cat
execute if score #cut_take tamthot_item matches 5 run function sc:summon/tamthot/cat_dap/dap



scoreboard players operation #break tamthot.global = @s tamthot.global
execute at @s as @e[type=minecraft:item_display,tag=tamthot_display_item] run execute if score @s tamthot.global = #break tamthot.global run kill @s
scoreboard players reset #break tamthot.global
scoreboard players reset @s tamthot_codo
scoreboard players reset #cut_take tamthot_item
data remove entity @s interaction
data remove entity @s attack