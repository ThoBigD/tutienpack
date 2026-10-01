
execute at @s rotated ~ 0 positioned ^ ^ ^-1.5 positioned ~ ~-1 ~ run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:golden_pickaxe[enchantments={silk_touch:1}]
execute at @s as @e[distance=..5,limit=1,sort=nearest,type=item] at @s run function tt:skill/luyenthe/batdongminhvuong/batthachkich/make_imperfect_hole
execute at @s run data modify storage tutien:batthachkich block_id set from entity @e[distance=..5,limit=1,sort=nearest,type=item] Item.id
function tt:skill/luyenthe/batdongminhvuong/batthachkich/summon with storage tutien:batthachkich
execute at @s as @e[distance=..5,limit=1,sort=nearest,type=item] run kill @s
particle cloud ~ ~0.2 ~ 0.2 0.6 0.2 0.1 25
particle gust ~ ~0.2 ~ 0.1 0.1 0.1 0 1
particle crit ~ ~0.5 ~ 0.2 0.5 0.2 0.2 15
execute at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.5
 