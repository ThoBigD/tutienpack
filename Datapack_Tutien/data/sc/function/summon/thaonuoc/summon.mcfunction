#id
scoreboard players add global thaonuoc.global 1
#scoreboard vao entity
scoreboard players operation @s thaonuoc.global = global thaonuoc.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.place master @s ~ ~ ~ 1 0.4 1
summon item_display ~ ~0.5 ~ {Tags:["thaonuoc","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["thaonuoc"]}}}}
summon minecraft:interaction ~ ~ ~ {Tags: ["thaonuoc_it","new"], height: 1.01f,width:1.01f}
setblock ~ ~ ~ minecraft:glass
#scoreboard
execute as @e[tag=new] at @s run scoreboard players operation @s thaonuoc.global = global thaonuoc.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
execute as @e[tag=new,type=minecraft:interaction] at @s run scoreboard players set @s thaonuoc_sl 10
#reset
execute as @e[tag=new] at @s run tag @s remove new
kill @s