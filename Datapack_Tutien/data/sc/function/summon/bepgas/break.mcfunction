
scoreboard players reset #break_bepgas bepgas.global
scoreboard players operation #break_bepgas bepgas.global = @s bepgas.global
setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s bepgas.global = #break_bepgas bepgas.global run kill @s
execute as @p[sort=nearest,limit=1] at @s run give @s minecraft:zombie_spawn_egg[entity_data={id:"minecraft:armor_stand",Tags:["bepgas_new"]},minecraft:custom_model_data={strings:['bepgas_on']},custom_name=[{"text":"Bếp Gas","italic":false}]] 1
kill @s
