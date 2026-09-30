
scoreboard players reset #break_thaonuoc2 thaonuoc.global
scoreboard players operation #break_thaonuoc2 thaonuoc.global = @s thaonuoc.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s thaonuoc.global = #break_thaonuoc2 thaonuoc.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:coal[minecraft:custom_model_data={strings:['thaonuoc']},custom_name=[{"text":"Cái Thao Nước Dơ","italic":false}],minecraft:custom_data={food:0b}] 1
kill @s
