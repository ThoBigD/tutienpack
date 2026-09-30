summon item_display ~ ~1 ~ {Tags:["zombie_luyenthe_t1_skill","new"],item:{id:"minecraft:dirt",count:1,components:{"minecraft:custom_model_data":{strings:["chem"]}}}}
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players set @s zombie_luyenthe_t1_skill 1
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new

scoreboard players add @s zombie_luyenthe_t1 1