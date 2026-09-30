execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s noicomdien_codo matches 1 run function sc:summon/noicomdien/cook
execute unless score @s noicomdien_codo matches 1.. run function sc:summon/noicomdien/check
execute if score @s noicomdien_codo matches 2 run function sc:summon/noicomdien/muccom

data remove entity @s interaction  