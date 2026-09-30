scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute at @s as @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run execute unless score @s batthachkich_fly matches 1.. run function tt:skill/luyenthe/batdongminhvuong/batthachkich/fill_on
execute at @s as @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run kill @s
scoreboard players reset @s batthachkich_phase
scoreboard players reset @s batthachkich_counting
clear @s paper[minecraft:custom_data={btk:throw}]
scoreboard players reset #btk_id batthachkich_id