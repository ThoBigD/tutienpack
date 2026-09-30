scoreboard players reset #break_thunggao thunggao.global
scoreboard players reset #break_thunggao thunggao.global
scoreboard players operation #break_thunggao thunggao.global = @s thunggao.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thunggao.global = #break_thunggao thunggao.global run kill @s
function sc:summon/thunggao/break_sl
kill @s
