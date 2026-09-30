execute if score @s batthachkich_phase matches 1.. run function tt:skill/luyenthe/batdongminhvuong/batthachkich/tp 
execute unless score @s batthachkich_phase matches 1.. run clear @s paper[minecraft:custom_data={btk:throw}]
execute unless score @s batthachkich_phase matches 1.. run execute if entity @s[scores={batthachkich_shift=20..}] run function tt:skill/luyenthe/batdongminhvuong/batthachkich/active
kill @e[type=item, nbt={Item:{tag:{btk:{"throw":1b}}}}]


execute if score @s batthachkich_shift matches 20.. run scoreboard players reset @s batthachkich_shift