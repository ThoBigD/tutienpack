tag @s add this
execute if score @s status_luyenthe matches 1 run execute if entity @e[type=!#tt:entitycam,distance=..6] run execute as @e[type=!#tt:entitycam,distance=..6] run damage @s 10 generic by @p[tag=this]
execute if score @s status_luyenthe matches 2 run execute if entity @e[type=!#tt:entitycam,distance=..6] run execute as @e[type=!#tt:entitycam,distance=..6] run damage @s 20 generic by @p[tag=this]
execute if score @s status_luyenthe matches 3 run execute if entity @e[type=!#tt:entitycam,distance=..6] run execute as @e[type=!#tt:entitycam,distance=..6] run damage @s 30 generic by @p[tag=this]
execute if entity @e[type=!#tt:entitycam,distance=..6] run execute as @e[type=!#tt:entitycam,distance=..6] run playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1.2
execute if entity @e[type=!#tt:entitycam,distance=..6] run execute as @e[type=!#tt:entitycam,distance=..6] run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.1 10
tag @s remove this