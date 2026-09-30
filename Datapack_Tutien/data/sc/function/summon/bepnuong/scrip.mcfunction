execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s bepnuong_codo matches 1 run function sc:summon/bepnuong/take
execute unless score @s bepnuong_codo matches 1 run function sc:summon/bepnuong/check




data remove entity @s interaction