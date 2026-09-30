scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute at @s as @e[type=minecraft:item_display,tag=batthachkich] if score #btk_id batthachkich_id = @s batthachkich_id run execute unless score @s batthachkich_fly matches 1.. run tp @s ~ ~2.9 ~ ~ ~
scoreboard players add @s batthachkich_counting 1
execute if score @s batthachkich_counting matches 500.. run function tt:skill/luyenthe/batdongminhvuong/batthachkich/reset
scoreboard players reset #btk_id batthachkich_id