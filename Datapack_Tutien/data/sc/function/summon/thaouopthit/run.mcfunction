execute if score @s thaouopthit_sl matches 1.. run scoreboard players remove @s thaouopthit_sl 1
scoreboard players reset #sl_thaouopthit thaouopthit_sl
scoreboard players operation #sl_thaouopthit thaouopthit_sl = @s thaouopthit_sl
scoreboard players reset #break_thaouopthit thaouopthit.global
scoreboard players operation #break_thaouopthit thaouopthit.global = @s thaouopthit.global
execute at @s as @e[type=minecraft:item_display] run execute if score @s thaouopthit.global = #break_thaouopthit thaouopthit.global run function sc:summon/thaouopthit/display