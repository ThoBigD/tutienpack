execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
scoreboard players reset #thaonuoc_codo thaonuoc_codo
#kiemtra

execute if score @s thaonuoc_codo matches 3 run function sc:summon/thaonuoc/lay_do
execute if score @s thaonuoc_codo matches 1 run function sc:summon/thaonuoc/giavi
execute unless score @s thaonuoc_codo matches 1.. run function sc:summon/thaonuoc/check


data remove entity @s interaction