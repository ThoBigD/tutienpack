execute if score value linhcang_random+ matches 1 run execute if entity @s[tag=kim] run scoreboard players add @s linhcang_random 1
execute if score value linhcang_random+ matches 2 run execute if entity @s[tag=moc] run scoreboard players add @s linhcang_random 1
execute if score value linhcang_random+ matches 3 run execute if entity @s[tag=thuy] run scoreboard players add @s linhcang_random 1
execute if score value linhcang_random+ matches 4 run execute if entity @s[tag=hoa] run scoreboard players add @s linhcang_random 1
execute if score value linhcang_random+ matches 5 run execute if entity @s[tag=tho] run scoreboard players add @s linhcang_random 1


execute if score value linhcang_random+ matches 1 run tag @s add kim
execute if score value linhcang_random+ matches 2 run tag @s add moc
execute if score value linhcang_random+ matches 3 run tag @s add thuy
execute if score value linhcang_random+ matches 4 run tag @s add hoa
execute if score value linhcang_random+ matches 5 run tag @s add tho

scoreboard players remove @s linhcang_random 1