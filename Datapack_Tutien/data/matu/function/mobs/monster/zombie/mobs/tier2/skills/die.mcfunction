particle dust{color:[0.5,0.0,0.0],scale:1.5} ~ ~1 ~ 0.3 0.5 0.3 0.05 30
playsound minecraft:entity.wither.death master @a
execute as @a[distance=..3] at @s run damage @s 12 minecraft:player_attack

damage @s 1000 minecraft:generic
