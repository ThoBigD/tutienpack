advancement revoke @s only tt:lt_bt
execute if entity @s[tag=!tu,tag=!luyenthe] run attribute @s minecraft:max_health base set 4
execute if entity @s[tag=!tu,tag=!luyenthe] run scoreboard players set @s lt_tientrinh 0
execute if entity @s[tag=!tu,tag=!luyenthe] run clear @s book[minecraft:custom_data={lt:bt}] 1
execute if entity @s[tag=!tu,tag=!luyenthe] run tag @s add luyenthe_bt
execute if entity @s[tag=!tu,tag=!luyenthe] run tag @s add tu
