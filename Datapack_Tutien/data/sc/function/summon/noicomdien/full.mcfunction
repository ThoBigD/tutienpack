summon item_display ~ ~0.5 ~ {Tags:["noicomdien_display_full","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["noicom_body"]}}}}
summon item_display ~ ~1.1 ~ {Tags:["noicomdien_display_nap","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["noicom_nap"]}}}}
execute at @e[type=minecraft:interaction,tag=new] as @e[type=minecraft:item_display,tag=noicomdien_display_nap,tag=new] run tp @s ^ ^1 ^-0.3
execute as @e[type=minecraft:item_display,tag=noicomdien_display_nap,tag=new] at @s run tp ~ ~0.2 ~
