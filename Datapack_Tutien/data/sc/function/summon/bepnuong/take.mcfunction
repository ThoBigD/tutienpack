execute if score @s bepnuong_cooking matches ..100 run function sc:summon/bepnuong/item/soon
execute if score @s bepnuong_cooking matches 150..200 run function sc:summon/bepnuong/item/done
execute if score @s bepnuong_cooking matches 201 run function sc:summon/bepnuong/item/khet

scoreboard players operation #bepnuong_break bepnuong.global = @s bepnuong.global
execute at @s as @e[type=minecraft:text_display,tag=bepnuong_counting] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run kill @s
execute at @s as @e[type=minecraft:item_display,tag=bepnuong_display_item] run execute if score @s bepnuong.global = #bepnuong_break bepnuong.global run kill @s
scoreboard players reset #bepnuong_break bepnuong.global
scoreboard players reset @s bepnuong_codo
scoreboard players reset @s bepnuong_cooking
scoreboard players reset #bepnuong_cut_take bepnuong_item
data remove entity @s interaction
data remove entity @s attack