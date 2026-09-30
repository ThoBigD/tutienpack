#phanchan
execute at @s run function tt:skill/luyenthe/batdongminhvuong/phanchan/phanentity
execute if score @s phanchan_skill1_hoichieu matches 1.. run scoreboard players remove @s phanchan_skill1_hoichieu 1
execute unless score @s phanchan_skill1_hoichieu matches 1.. run particle minecraft:dust{color:[1,1,1],scale:0.5} ~ ~2 ~ 0 0 0 0 0
execute unless score @s phanchan_skill1_hoichieu matches 1.. run execute if entity @s[nbt={HurtTime:10s}] run function tt:skill/luyenthe/batdongminhvuong/phanchan/check
#phanchan_entity
execute if entity @s[nbt={HurtTime:9s}] run function tt:skill/luyenthe/batdongminhvuong/phanchan/phanchan_entity
#reset
scoreboard players reset @s phanchan_onhit




