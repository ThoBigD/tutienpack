execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s tamthot_codo matches 1 run function sc:summon/tamthot/take
execute unless score @s tamthot_codo matches 1 run function sc:summon/tamthot/check



data remove entity @s interaction