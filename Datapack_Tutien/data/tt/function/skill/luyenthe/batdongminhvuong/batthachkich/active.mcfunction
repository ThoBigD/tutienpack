function tt:skill/luyenthe/batdongminhvuong/batthachkich/fill
function tt:skill/luyenthe/batdongminhvuong/batthachkich/summon
scoreboard players add @s batthachkich_phase 1
scoreboard players reset @s batthachkich_counting
item replace entity @s weapon.offhand with minecraft:paper[consumable={consume_seconds:10000000},minecraft:food={nutrition:0,saturation:0,eat_seconds:1000000,can_always_eat:true},minecraft:custom_data={btk:throw}]
