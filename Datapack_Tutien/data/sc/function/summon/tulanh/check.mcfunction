#which_item
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_model_data={strings:['thao_thituop']}] run scoreboard players set #tulanh_codo tulanh_codo 1

#clear item
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_model_data={strings:['thao_thituop']}] run clear @s coal[minecraft:custom_model_data={strings:['thao_thituop']}] 1


#co do
execute if score #tulanh_codo tulanh_codo matches 1 run function sc:summon/tulanh/text
execute if score #tulanh_codo tulanh_codo matches 1 run scoreboard players set @s tulanh_uop 1
scoreboard players operation @s tulanh_codo = #tulanh_codo tulanh_codo
scoreboard players reset #tulanh_codo tulanh_codo