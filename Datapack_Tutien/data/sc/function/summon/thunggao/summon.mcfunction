#id
scoreboard players add global thunggao.global 1
#scoreboard vao entity
scoreboard players operation @s thunggao.global = global thunggao.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.place master @s ~ ~ ~ 1 0.4 1
summon minecraft:interaction ~ ~ ~ {Tags: ["thunggao_it","new"], height: 1.01f,width:1.01f}
function sc:summon/thunggao/summon_sl
setblock ~ ~ ~ minecraft:glass
#scoreboard
execute as @e[type=minecraft:interaction,tag=new] at @s run scoreboard players operation @s thunggao.global = global thunggao.global
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players operation @s thunggao.global = global thunggao.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
#reset
execute as @e[type=minecraft:interaction,tag=new] at @s run tag @s remove new
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new
kill @s