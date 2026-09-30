scoreboard players reset #noicomdien_hehe noicomdien.global
scoreboard players operation #noicomdien_hehe noicomdien.global = @s noicomdien.global
summon item_display ~ ~1 ~ {Tags:["noicomdien_display_rice","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["noicom_rice"]}}}}
execute as @e[tag=new] at @s run scoreboard players operation @s noicomdien.global = #noicomdien_hehe noicomdien.global
execute as @e[tag=new] at @s run tag @s remove new
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_nap] run execute if score @s noicomdien.global = #noicomdien_hehe noicomdien.global run tp @s ~ ~2 ~ ~ 0
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_nap] run execute if score @s noicomdien.global = #noicomdien_hehe noicomdien.global run tp @s ^ ^1.06 ^0
