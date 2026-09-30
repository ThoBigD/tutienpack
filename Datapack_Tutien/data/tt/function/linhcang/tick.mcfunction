execute if items entity @s[scores={linhcang_detect=1..},tag=!linhcang] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={comsuong:1b}] run function tt:linhcang/an
execute if score @s linhcang_random matches 1.. run function tt:linhcang/random
execute if score @s linhcang_random matches ..0 run scoreboard players reset @s linhcang_random






scoreboard players reset @s linhcang_detect