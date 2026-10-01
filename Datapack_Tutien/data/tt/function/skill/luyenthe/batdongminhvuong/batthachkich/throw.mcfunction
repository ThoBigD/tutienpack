scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute at @s as @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run scoreboard players add @s batthachkich_fly 1
scoreboard players reset #btk_id batthachkich_id
execute as @a[distance=..40] at @s run playsound minecraft:item.trident.throw master @a ~ ~ ~ 1 0.1 1
clear @s paper[minecraft:custom_data={btk:throw}]
scoreboard players reset @s batthachkich_phase