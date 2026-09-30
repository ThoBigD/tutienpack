
execute if score @s bepgas_chien matches 1 run give @p[sort=nearest,limit=1] minecraft:coal[custom_name=[{"text":"Cái Chảo","italic":false}],minecraft:custom_data={chao:1b},minecraft:custom_model_data={strings:['caichao']}] 1
execute if score @s bepgas_nau matches 1 run give @p[sort=nearest,limit=1] minecraft:coal[custom_name=[{"text":"Cái Nồi","italic":false}],minecraft:custom_data={noi:1b},minecraft:custom_model_data={strings:['cainoi']}] 1
scoreboard players reset #break_bepgas bepgas.global
scoreboard players operation #break_bepgas bepgas.global = @s bepgas.global
execute at @s as @e[type=minecraft:item_display,tag=bepgas_display_item] run execute if score @s bepgas.global = #break_bepgas bepgas.global run kill @s
scoreboard players reset @s bepgas_chien
scoreboard players reset @s bepgas_nau
scoreboard players reset @s bepgas_codo
data remove entity @s interaction
