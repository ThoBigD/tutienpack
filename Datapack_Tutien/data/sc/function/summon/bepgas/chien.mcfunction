execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra

#kiem tra item tren tay
execute unless entity @s[tag=trung] run execute on target run execute if items entity @s weapon.mainhand minecraft:egg run scoreboard players set #trung bepgas_item 1
execute unless entity @s[tag=trung] run execute on target run execute if items entity @s weapon.mainhand minecraft:egg run clear @s egg 1
execute unless entity @s[tag=dauan] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_data={dauan:1b}] run scoreboard players set #dauan bepgas_item 1
execute unless entity @s[tag=dauan] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_data={dauan:1b}] run clear @s minecraft:honey_bottle[minecraft:custom_data={dauan:1b}] 1
#addchoblock
execute if score #trung bepgas_item matches 1 run tag @s add trung
execute if score #dauan bepgas_item matches 1 run tag @s add dauan
execute if score #trung bepgas_item matches 1 run summon item_display ~ ~0.81 ~ {Tags:["bepgas_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_trung"]}}}}
execute if score #dauan bepgas_item matches 1 run summon item_display ~ ~0.8 ~ {Tags:["bepgas_display_item","new"],item:{id:"minecraft:coal",count:1,components:{"minecraft:custom_model_data":{strings:["display_dauan"]}}}}


scoreboard players reset #active_bepgas bepgas.global
scoreboard players operation #active_bepgas bepgas.global = @s bepgas.global
execute as @e[tag=new] at @s run scoreboard players operation @s bepgas.global = #active_bepgas bepgas.global
execute as @e[tag=new] at @s run tag @s remove new

execute if score #trung bepgas_item matches 1 run scoreboard players set @s bepgas_item 1
execute if score #dauan bepgas_item matches 1 run scoreboard players set @s bepgas_item 1

#reset
scoreboard players reset #trung bepgas_item
scoreboard players reset #dauan bepgas_item
data remove entity @s interaction