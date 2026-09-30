execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s bonruatay_codo matches 1 run function sc:summon/bonruatay/take
execute unless score @s bonruatay_codo matches 1 run function sc:summon/bonruatay/check



data remove entity @s interaction