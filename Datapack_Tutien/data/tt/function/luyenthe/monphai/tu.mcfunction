#bdmv
execute if entity @s[tag=luyenthe_bdmv] run title @s actionbar ["",{"text":"Tiến Trình Luyện Thể :  ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lt_tientrinh"}},{"text":" / "},{"text":" 50"}]
execute if entity @s[tag=luyenthe_bdmv] run execute if entity @a[nbt={HurtTime:10s}] run scoreboard players add @s lt_tientrinh 1
execute if entity @s[tag=luyenthe_bdmv] run execute if score @s lt_tientrinh matches 50.. run function tt:luyenthe/monphai/batdongminhvuong/luyenthanhcong
#bth
execute if entity @s[tag=luyenthe_bt] run title @s actionbar ["",{"text":"Tiến Trình Luyện Thể :  ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"lt_tientrinh"}},{"text":" / "},{"text":" 50"}]
execute if entity @s[tag=luyenthe_bt] run execute if entity @a[nbt={HurtTime:10s}] run scoreboard players add @s lt_tientrinh 1
execute if entity @s[tag=luyenthe_bt] run execute if score @s lt_tientrinh matches 50.. run function tt:luyenthe/monphai/binhthuong/luyenthanhcong


