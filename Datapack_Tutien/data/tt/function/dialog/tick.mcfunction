#capquyen
scoreboard players enable @a luyenthe
scoreboard players enable @a menu
scoreboard players enable @a batdongminhvuong
scoreboard players enable @a phanchan
scoreboard players enable @a batthachkich
scoreboard players enable @a sonnhactrongkich_dialog
#thuc thi
execute as @a[scores={luyenthe=1}] at @s run function tt:dialog/luyenthe
execute as @a[scores={menu=1}] at @s run function tt:dialog/menu
execute as @a[scores={batdongminhvuong=1}] at @s run function tt:dialog/batdongminhvuong/open
#skill luyenthe
#bdmv
execute as @a[scores={phanchan=1}] at @s run function tt:dialog/batdongminhvuong/phanchan 
execute as @a[scores={batthachkich=1}] at @s run function tt:dialog/batdongminhvuong/batthachkich
execute as @a[scores={sonnhactrongkich_dialog=1}] at @s run function tt:dialog/batdongminhvuong/sonnhactrongkich