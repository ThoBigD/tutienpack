execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute unless score @s tulanh_codo matches 1 run function sc:summon/tulanh/check
execute if score @s tulanh_codo matches 1 run execute if score @s tulanh_uop matches 1001 run function sc:summon/tulanh/lay_do
data remove entity @s interaction