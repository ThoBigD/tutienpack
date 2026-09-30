#id
scoreboard players add global bucthien_1.global 1
#scoreboard vao entity
scoreboard players operation @s bucthien_1.global = global bucthien_1.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.stone.place master @s ~ ~ ~ 1 0.4 1
summon item_display ~ ~0.5 ~ {Tags:["bucthien_1","new"],item:{id:"minecraft:dirt",count:1,components:{"minecraft:custom_model_data":{strings:["bucthien_1"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags: ["bucthien_1_it","new"], height: 1.01f,width:1.01f}
setblock ~ ~ ~ minecraft:glass
#scoreboard
execute as @e[tag=new] at @s run scoreboard players operation @s bucthien_1.global = global bucthien_1.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
#reset
execute as @e[tag=new] at @s run tag @s remove new
kill @s