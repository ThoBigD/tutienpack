scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute at @s as @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run scoreboard players add @s batthachkich_fly 1
scoreboard players reset #btk_id batthachkich_id

clear @s paper[minecraft:custom_data={btk:throw}]
scoreboard players reset @s batthachkich_phase