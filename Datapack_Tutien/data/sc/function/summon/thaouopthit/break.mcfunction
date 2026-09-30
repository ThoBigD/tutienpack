scoreboard players reset #break_thaouopthit thaouopthit.global
scoreboard players reset #break_thaouopthit thaouopthit.global
scoreboard players operation #break_thaouopthit thaouopthit.global = @s thaouopthit.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thaouopthit.global = #break_thaouopthit thaouopthit.global run kill @s
function sc:summon/thaouopthit/break_sl
kill @s
