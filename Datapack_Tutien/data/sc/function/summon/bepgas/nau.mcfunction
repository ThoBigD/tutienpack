execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra

#kiem tra item tren tay
execute unless entity @s[tag=nuocmam] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_model_data={strings:['nuocmam']}] run scoreboard players set #nuocmam bepgas_item 1
execute unless entity @s[tag=nuocmam] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_model_data={strings:['nuocmam']}] run clear @s minecraft:honey_bottle[minecraft:custom_model_data={strings:['nuocmam']}] 1

execute unless entity @s[tag=duong] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['hu_duong']}] run scoreboard players set #duong bepgas_item 1
execute unless entity @s[tag=duong] run execute on target run execute if items entity @s weapon.mainhand minecraft:coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['hu_duong']}] run clear @s minecraft:coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['hu_duong']}] 1

execute unless entity @s[tag=nuocchanh] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['nuocchanh']}] run scoreboard players set #nuocchanh bepgas_item 1
execute unless entity @s[tag=nuocchanh] run execute on target run execute if items entity @s weapon.mainhand minecraft:honey_bottle[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['nuocchanh']}] run clear @s minecraft:honey_bottle[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['nuocchanh']}] 1

execute unless entity @s[tag=nuoc] run execute on target run execute if items entity @s weapon.mainhand minecraft:water_bucket run scoreboard players set #nuoc bepgas_item 1
execute unless entity @s[tag=nuoc] run execute on target run execute if items entity @s weapon.mainhand minecraft:water_bucket run give @s minecraft:bucket
execute unless entity @s[tag=nuoc] run execute on target run execute if items entity @s weapon.mainhand minecraft:water_bucket run clear @s minecraft:water_bucket 1

#addchoblock
execute if score #nuocmam bepgas_item matches 1 run tag @s add nuocmam
execute if score #duong bepgas_item matches 1 run tag @s add duong
execute if score #nuocchanh bepgas_item matches 1 run tag @s add nuocchanh
execute if score #nuoc bepgas_item matches 1 run tag @s add nuoc

scoreboard players reset #active_bepgas bepgas.global
scoreboard players operation #active_bepgas bepgas.global = @s bepgas.global
execute as @e[tag=new] at @s run scoreboard players operation @s bepgas.global = #active_bepgas bepgas.global
execute as @e[tag=new] at @s run tag @s remove new

execute if score #nuocmam bepgas_item matches 1 run scoreboard players set @s bepgas_item 1
execute if score #duong bepgas_item matches 1 run scoreboard players set @s bepgas_item 1
execute if score #nuocchanh bepgas_item matches 1 run scoreboard players set @s bepgas_item 1
execute if score #nuoc bepgas_item matches 1 run scoreboard players set @s bepgas_item 1
#reset
scoreboard players reset #nuocmam bepgas_item
scoreboard players reset #duong bepgas_item
scoreboard players reset #nuocchanh bepgas_item
scoreboard players reset #nuoc bepgas_item
data remove entity @s interaction