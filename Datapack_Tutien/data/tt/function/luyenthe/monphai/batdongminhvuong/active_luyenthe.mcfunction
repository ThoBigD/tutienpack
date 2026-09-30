advancement revoke @s only tt:right_click


#dang luyen the ma click vao thi
execute if entity @s[tag=luyenthe,tag=!bdmv] run tag @s remove luyenthe_bt
execute if entity @s[tag=luyenthe,tag=!bdmv] run clear @s book[minecraft:custom_data={lt:bdmv}] 1
execute if entity @s[tag=luyenthe,tag=!bdmv] run tag @s add bdmv
#kich hoat tu luyen
execute if entity @s[tag=!tu,tag=!luyenthe] run attribute @s minecraft:max_health base set 4
execute if entity @s[tag=!tu,tag=!luyenthe] run scoreboard players set @s lt_tientrinh 0
execute if entity @s[tag=!tu,tag=!luyenthe] run clear @s book[minecraft:custom_data={lt:bdmv}] 1
execute if entity @s[tag=!tu,tag=!luyenthe] run tag @s add tu
execute if entity @s[tag=!tu,tag=!luyenthe] run tag @s add luyenthe_bdmv