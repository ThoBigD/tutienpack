tellraw @s ["",{text:"[Hệ Thống]",bold:true,color:"yellow"},{text:" Luyện thể tầng 3 thành công"}]
attribute @s minecraft:armor base set 30
attribute @s minecraft:attack_damage base set 40
scoreboard players add @s status_luyenthe 1
scoreboard players reset @s lt_damge
scoreboard players add @s tuoi_tong 100
execute as @a[distance=..20] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.1 1
effect give @s minecraft:glowing 2 1 true
particle dust{color:[0.83,1.0,0.0],scale:1} ~ ~1 ~ 2 2 2 1 1000
scoreboard players reset @s lt_tientrinh