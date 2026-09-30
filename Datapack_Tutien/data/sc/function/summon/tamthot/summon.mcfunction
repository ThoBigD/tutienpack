#id
scoreboard players add global tamthot.global 1
#scoreboard vao entity
scoreboard players operation @s tamthot.global = global tamthot.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.place master @s ~ ~ ~ 1 0.4 1
summon item_display ~ ~0.35 ~ {Tags:["tamthot_display","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["tamthot"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags: ["tamthot_it","new"], height: 1.0f}
#scoreboard
execute as @e[type=minecraft:interaction,tag=new] at @s run scoreboard players operation @s tamthot.global = global tamthot.global
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players operation @s tamthot.global = global tamthot.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
#reset
execute as @e[type=minecraft:interaction,tag=new] at @s run tag @s remove new
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new
kill @s