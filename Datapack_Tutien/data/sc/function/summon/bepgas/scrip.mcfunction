execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute unless score @s bepgas_counting matches 1.. run execute if score @s bepgas_chien matches 1 run function sc:summon/bepgas/chien
execute unless score @s bepgas_counting matches 1.. run execute if score @s bepgas_nau matches 1 run function sc:summon/bepgas/nau
execute if score @s bepgas_codo matches 1 run execute unless score @s bepgas_item matches 1.. run function sc:summon/bepgas/take
execute unless score @s bepgas_codo matches 1 run function sc:summon/bepgas/check
execute if entity @s[tag=trung,tag=dauan,scores={bepgas_counting=101}] run function sc:summon/bepgas/type/chientrung_take
execute if entity @s[tag=nuocmam,tag=duong,tag=nuocchanh,tag=nuoc,scores={bepgas_counting=501}] run function sc:summon/bepgas/type/nuocmam_take

data remove entity @s interaction