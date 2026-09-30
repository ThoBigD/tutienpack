tellraw @s ["",{text:"[Hệ Thống]",bold:true,color:"yellow"},{text:" Luyện thể tầng 2 thành công"}]
attribute @s minecraft:armor base set 15
attribute @s minecraft:attack_damage base set 20
scoreboard players add @s tuoi_tong 50
scoreboard players add @s status_luyenthe 1
execute as @a[distance=..20] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.1 1
effect give @s minecraft:glowing 2 1 true
particle dust{color:[0.83,1.0,0.0],scale:1} ~ ~1 ~ 2 2 2 1 1000
scoreboard players reset @s lt_tientrinh