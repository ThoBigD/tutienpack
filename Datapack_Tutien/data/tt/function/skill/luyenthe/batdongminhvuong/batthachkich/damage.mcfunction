
scoreboard players operation #btk_id batthachkich_id = @s batthachkich_id
execute at @s as @a if score #btk_id batthachkich_id = @s batthachkich_id run tag @s add this

execute rotated ~ 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~22.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~45 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~67.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~90 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~112.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~135 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~157.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~180 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~202.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~225 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~247.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~270 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~292.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~315 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
execute rotated ~337.5 0 run particle minecraft:explosion ^2 ^ ^ 0 0 0 0 1
playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 1 1.2


execute as @a[distance=..6,tag=!this] at @s run damage @s 15 minecraft:player_attack by @p[tag=this]
execute as @e[distance=..6,type=!#tt:entitycam] at @s run damage @s 20 minecraft:player_attack by @p[tag=this]
function tt:skill/luyenthe/batdongminhvuong/batthachkich/fill_on
execute at @s as @a if score #btk_id batthachkich_id = @s batthachkich_id run tag @s remove this
scoreboard players reset #btk_id batthachkich_id
kill @s
