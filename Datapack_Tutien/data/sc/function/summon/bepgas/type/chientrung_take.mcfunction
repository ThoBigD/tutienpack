execute on target run give @s minecraft:coal[custom_name=[{"text":"Trứng Chiên","italic":false}],minecraft:custom_data={trungchien:0b},minecraft:custom_model_data={strings:['trungchien']}] 1
execute on target run give @s minecraft:coal[custom_name=[{"text":"Cái Chảo Dơ","italic":false}],minecraft:custom_data={food:0b},minecraft:custom_model_data={strings:['caichao']}] 1

tag @s remove trung
tag @s remove dauan
scoreboard players reset @s bepgas_counting
scoreboard players reset @s bepgas_item
scoreboard players reset @s bepgas_codo
scoreboard players reset @s bepgas_chien
scoreboard players reset @s bepgas_nau
scoreboard players reset #break_bepgas bepgas.global
scoreboard players operation #break_bepgas bepgas.global = @s bepgas.global
execute at @s as @e[type=minecraft:item_display,tag=bepgas_display_item] run execute if score @s bepgas.global = #break_bepgas bepgas.global run kill @s