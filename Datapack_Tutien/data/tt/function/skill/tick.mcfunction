#luyenthe
execute as @a[tag=bdmv] at @s run execute if score @s phanchan_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/phanchan/tick
execute as @a[tag=bdmv] at @s run execute if score @s batthachkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/batthachkich/tick
execute as @a[tag=bdmv] at @s run execute if score @s sonnhactrongkich_on matches 1 run function tt:skill/luyenthe/batdongminhvuong/sonnhactrongkich/tick

function tt:skill/entity