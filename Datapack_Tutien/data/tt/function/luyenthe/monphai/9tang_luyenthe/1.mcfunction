title @s actionbar ["",{"text":"Tiến Trình Luyện Thể :  ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lt_tientrinh"}},{"text":" / "},{"text":" 100"}]

execute if score @s lt_tientrinh matches 100.. run execute if score value luyenthe_tyle_thanhcong matches 1..5 run function tt:luyenthe/monphai/9tang_luyenthe/tc_t1
execute if score @s lt_tientrinh matches 100.. run execute if score value luyenthe_tyle_thanhcong matches 6..10 run tellraw @s ["",{text:"[Hệ Thống]",bold:true,color:"red"},{text:" Luyện thể tầng 2 thất bại"}]
execute if score @s lt_tientrinh matches 100.. run execute if score value luyenthe_tyle_thanhcong matches 6..10 run scoreboard players reset @s lt_tientrinh