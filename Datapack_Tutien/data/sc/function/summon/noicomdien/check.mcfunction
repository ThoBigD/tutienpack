scoreboard players reset #noicomdien_codo noicomdien_codo
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['noicom_longcogao']}] run scoreboard players set #noicomdien_codo noicomdien_codo 1
execute on target run execute if items entity @s weapon.mainhand coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['noicom_longcogao']}] run clear @s coal[minecraft:custom_data={food:1b},minecraft:custom_model_data={strings:['noicom_longcogao']}] 1
scoreboard players operation @s noicomdien_codo = #noicomdien_codo noicomdien_codo
execute if score #noicomdien_codo noicomdien_codo matches 1 run function sc:summon/noicomdien/tp_item_display
