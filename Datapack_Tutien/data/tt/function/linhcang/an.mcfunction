execute if score value linhcang_random matches 10.. run scoreboard players set value linhcang_random 1
execute if score value linhcang_random_nguy matches 3.. run scoreboard players set value linhcang_random_nguy 1
execute if score value linhcang_random_bien matches 4.. run scoreboard players set value linhcang_random_bien 1

execute if score value linhcang_random matches 1 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Kim Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 2 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Mộc Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 3 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Thủy Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 4 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Hỏa Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 5 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Thổ Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 6 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Thiên Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 7 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Chân Linh Căn",bold:true,color:"white"}]
execute if score value linhcang_random matches 8 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Ngụy Linh Căn",bold:true,color:"white"}]


execute if score value linhcang_random matches 1 run tag @s add kim
execute if score value linhcang_random matches 2 run tag @s add moc
execute if score value linhcang_random matches 3 run tag @s add thuy
execute if score value linhcang_random matches 4 run tag @s add hoa
execute if score value linhcang_random matches 5 run tag @s add tho
execute if score value linhcang_random matches 6 run tag @s add thien
execute if score value linhcang_random matches 7 run tag @s add chan
execute if score value linhcang_random matches 8 run tag @s add nguy
execute if score value linhcang_random matches 9 run tag @s add bien

execute if entity @s[tag=chan] run scoreboard players set @s linhcang_random 3

execute unless score value linhcang_random_nguy matches 1..2 run scoreboard players set value linhcang_random_nguy 1
execute if score value linhcang_random_nguy matches 1 run execute if entity @s[tag=nguy] run scoreboard players set @s linhcang_random 5
execute if score value linhcang_random_nguy matches 2 run execute if entity @s[tag=nguy] run tag @s add kim
execute if score value linhcang_random_nguy matches 2 run execute if entity @s[tag=nguy] run tag @s add moc
execute if score value linhcang_random_nguy matches 2 run execute if entity @s[tag=nguy] run tag @s add thuy
execute if score value linhcang_random_nguy matches 2 run execute if entity @s[tag=nguy] run tag @s add hoa
execute if score value linhcang_random_nguy matches 2 run execute if entity @s[tag=nguy] run tag @s add tho


execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 1 run tag @s add phong
execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 2 run tag @s add loi
execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 3 run tag @s add bang

execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 1 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Phong Linh Căn",bold:true,color:"white"}]
execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 2 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Lôi Linh Căn",bold:true,color:"white"}]
execute if entity @s[tag=bien] run execute if score value linhcang_random_bien matches 3 run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Đã có được Băng Linh Căn",bold:true,color:"white"}]



execute if entity @s[tag=!kim,tag=!moc,tag=!thuy,tag=!hoa,tag=!tho,tag=!thien,tag=!chan,tag=!nguy,tag=!bien] run tellraw @s ["",{text:"[Hệ Thông]",bold:true,color:"yellow"},{text:"Bạn Không Có Linh Căn",bold:true,color:"white"}]
tag @s add linhcang
playsound minecraft:entity.player.burp master @a[distance=..40] ~ ~ ~ 1 1 1
particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.05 100 normal
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
clear @s minecraft:carrot_on_a_stick[minecraft:custom_data={linh:cang}] 1