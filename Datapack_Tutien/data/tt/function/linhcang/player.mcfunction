execute as @a at @s run function tt:linhcang/tick
scoreboard players add value linhcang_random 1
execute if score value linhcang_random matches 10.. run scoreboard players reset value linhcang_random
scoreboard players add value linhcang_random+ 1
execute if score value linhcang_random+ matches 6.. run scoreboard players reset value linhcang_random+
scoreboard players add value linhcang_random_nguy 1
execute if score value linhcang_random_nguy matches 3.. run scoreboard players reset value linhcang_random_nguy
scoreboard players add value linhcang_random_bien 1
execute if score value linhcang_random_bien matches 4.. run scoreboard players reset value linhcang_random_bien
