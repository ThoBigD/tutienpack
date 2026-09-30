scoreboard players reset @s lt_tientrinh
tag @s remove tu
attribute @s minecraft:max_health base set 40
attribute @s minecraft:knockback_resistance base set 1.0
attribute @s minecraft:step_height base set 2
attribute @s minecraft:attack_damage base set 10
tag @s add luyenthe
scoreboard players set @s status_luyenthe 1
tag @s add bdmv
execute as @a[distance=..20] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.1 1
#effect

effect give @s minecraft:glowing 2 1 true
particle dust{color:[0.83,1.0,0.0],scale:1} ~ ~1 ~ 2 2 2 1 1000