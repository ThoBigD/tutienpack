execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={chao:1b}] run scoreboard players set #value bepgas_chien 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={noi:1b}] run scoreboard players set #value bepgas_nau 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={chao:1b}] run clear @s minecraft:coal[minecraft:custom_data={chao:1b}] 1
execute on target run execute if items entity @s weapon.mainhand *[minecraft:custom_data={noi:1b}] run clear @s minecraft:coal[minecraft:custom_data={noi:1b}] 1

scoreboard players operation @s bepgas_chien = #value bepgas_chien
scoreboard players operation @s bepgas_nau = #value bepgas_nau
execute if score @s bepgas_chien matches 1 run summon item_display ~ ~ ~ {Tags:["bepgas_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["caichao"]}}}}
execute if score @s bepgas_nau matches 1 run summon item_display ~ ~1.3 ~ {Tags:["bepgas_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["cainoi"]}}}}
scoreboard players operation #active_bepgas bepgas.global = @s bepgas.global

execute at @e[type=minecraft:item_display,tag=bepgas,sort=nearest,limit=1] as @e[tag=new] run tp @s ~ ~0.26 ~ ~ ~
execute as @e[tag=new] at @s run scoreboard players operation @s bepgas.global = #active_bepgas bepgas.global
execute as @e[tag=new] at @s run tag @s remove new
execute if score @s bepgas_chien matches 1 run scoreboard players set @s bepgas_codo 1
execute if score @s bepgas_nau matches 1 run scoreboard players set @s bepgas_codo 1
scoreboard players reset #value bepgas_chien
scoreboard players reset #value bepgas_nau
scoreboard players reset #active_bepgas bepgas.global
data remove entity @s interaction