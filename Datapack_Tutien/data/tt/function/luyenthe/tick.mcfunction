execute as @a[scores={lt_die=1..}] at @s run function tt:luyenthe/reset
execute as @a[tag=tu] at @s run function tt:luyenthe/monphai/tu
execute as @a[tag=luyenthe,scores={status_luyenthe=1}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/1
execute as @a[tag=luyenthe,scores={status_luyenthe=2}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/2
execute as @a[tag=luyenthe,scores={status_luyenthe=3}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/3
execute as @a[tag=luyenthe,scores={status_luyenthe=4}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/4
execute as @a[tag=luyenthe,scores={status_luyenthe=5}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/5
execute as @a[tag=luyenthe,scores={status_luyenthe=6}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/6
execute as @a[tag=luyenthe,scores={status_luyenthe=7}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/7
execute as @a[tag=luyenthe,scores={status_luyenthe=8}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/8
execute as @a[tag=luyenthe,scores={status_luyenthe=9}] at @s run function tt:luyenthe/monphai/9tang_luyenthe/9

#tyle
scoreboard players add value luyenthe_tyle_thanhcong 1
execute if score value luyenthe_tyle_thanhcong matches 11.. run scoreboard players reset value luyenthe_tyle_thanhcong
#execute as @a[tag=lt_tang1] at @s run function tt:luyenthe/monphai/coban/tang1/tick