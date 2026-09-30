scoreboard players operation #thaonuoc_id_display thaonuoc.global = @s thaonuoc.global
execute if score @s thaonuoc_sl matches 10 run summon item_display ~ ~0.6 ~0.6 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 9 run summon item_display ~ ~0.6 ~0.55 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 8 run summon item_display ~ ~0.6 ~0.5 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 7 run summon item_display ~ ~0.6 ~0.45 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 6 run summon item_display ~ ~0.6 ~0.4 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 5 run summon item_display ~ ~0.6 ~0.35 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 4 run summon item_display ~ ~0.6 ~0.3 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 3 run summon item_display ~ ~0.6 ~0.25 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 2 run summon item_display ~ ~0.6 ~0.2 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute if score @s thaonuoc_sl matches 1 run summon item_display ~ ~0.6 ~0.15 {Tags:["thaonuoc_display_item","new"],item:{id:"minecraft:carrot",count:1,components:{"minecraft:custom_model_data":{strings:["thit"]}}}}
execute as @e[tag=new] at @s run scoreboard players operation @s thaonuoc.global = #thaonuoc_id_display thaonuoc.global
execute as @e[tag=new] at @s run tp @s ~ ~ ~ ~ 60
execute as @e[tag=new] at @s run tag @s remove new
scoreboard players reset #thaonuoc_id_display thaonuoc.global