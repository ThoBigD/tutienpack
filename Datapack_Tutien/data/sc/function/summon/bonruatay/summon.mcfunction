#id
scoreboard players add global bonruatay.global 1
#scoreboard vao entity
scoreboard players operation @s bonruatay.global = global bonruatay.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 0.01 1
summon item_display ~ ~0.5 ~ {Tags:["bonruatay_display","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["bonruatay"]}}}}
setblock ~ ~ ~ minecraft:glass
summon minecraft:interaction ~ ~ ~ {Tags: ["bonruatay_it","new"], height: 1.01f,width:1.01f}
#scoreboard
execute as @e[type=minecraft:interaction,tag=new] at @s run scoreboard players operation @s bonruatay.global = global bonruatay.global
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players operation @s bonruatay.global = global bonruatay.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
#reset
execute as @e[type=minecraft:interaction,tag=new] at @s run tag @s remove new
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new
kill @s