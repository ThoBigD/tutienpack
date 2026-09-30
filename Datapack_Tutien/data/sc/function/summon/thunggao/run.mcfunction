execute if score @s thunggao_sl matches 1.. run scoreboard players remove @s thunggao_sl 1
scoreboard players reset #sl thunggao_sl
scoreboard players operation #sl thunggao_sl = @s thunggao_sl
scoreboard players reset #break thunggao.global
scoreboard players operation #break thunggao.global = @s thunggao.global
execute at @s as @e[type=minecraft:item_display] run execute if score @s thunggao.global = #break thunggao.global run function sc:summon/thunggao/display