#id
scoreboard players add global thaouopthit.global 1
#scoreboard vao entity
scoreboard players operation @s thaouopthit.global = global thaouopthit.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.place master @s ~ ~ ~ 1 0.4 1
summon minecraft:interaction ~ ~ ~ {Tags: ["thaouopthit_it","new"], height: 1.01f,width:1.01f}
function sc:summon/thaouopthit/summon_sl
setblock ~ ~ ~ minecraft:glass
#scoreboard
execute as @e[type=minecraft:interaction,tag=new] at @s run scoreboard players operation @s thaouopthit.global = global thaouopthit.global
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players operation @s thaouopthit.global = global thaouopthit.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
#reset
execute as @e[type=minecraft:interaction,tag=new] at @s run tag @s remove new
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new
kill @s