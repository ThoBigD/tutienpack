summon item_display ~ ~2.5 ~ {Tags:["batthachkich","new"],item:{id:"minecraft:dirt",count:1,components:{"minecraft:custom_model_data":{strings:["cucdat"]}}}}

scoreboard players add #global batthachkich_id 1
scoreboard players operation @s batthachkich_id = #global batthachkich_id
execute as @e[tag=new] at @s run scoreboard players operation @s batthachkich_id = #global batthachkich_id
execute as @e[tag=new] at @s run tag @s remove new