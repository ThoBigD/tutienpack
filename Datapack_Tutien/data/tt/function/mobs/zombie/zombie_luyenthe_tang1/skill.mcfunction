summon item_display ~ ~2 ~ {Tags:["zombie_luyenthe_t1_skill","new"],glow_color_override:16777215,item:{id:"minecraft:dirt",count:1,components:{"minecraft:custom_model_data":{strings:["chem"]}}}}
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1,gamemode=survival]
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new
execute as @p[distance=..30] at @s run playsound minecraft:entity.player.attack.sweep master @s
scoreboard players add @s zombie_luyenthe_t1 1