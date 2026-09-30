
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m0","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m1","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m2","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m3","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m4","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m5","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m6","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m7","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m8","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m9","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m10","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m11","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m12","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m13","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m14","new"]}
execute if score @s circle_size matches 0 run summon marker ~ ~ ~ {Tags:["circle_marker","m15","new"]}

execute if score @s circle_size matches 0 as @e[tag=new] run tp @s ~ ~ ~ ~ 0
execute if score @s circle_size matches 0 as @e[tag=m0,tag=new] run tp @s ~ ~ ~ 0 0
execute if score @s circle_size matches 0 as @e[tag=m1,tag=new] run tp @s ~ ~ ~ 22.5 0
execute if score @s circle_size matches 0 as @e[tag=m2,tag=new] run tp @s ~ ~ ~ 45 0
execute if score @s circle_size matches 0 as @e[tag=m3,tag=new] run tp @s ~ ~ ~ 67.5 0
execute if score @s circle_size matches 0 as @e[tag=m4,tag=new] run tp @s ~ ~ ~ 90 0
execute if score @s circle_size matches 0 as @e[tag=m5,tag=new] run tp @s ~ ~ ~ 112.5 0
execute if score @s circle_size matches 0 as @e[tag=m6,tag=new] run tp @s ~ ~ ~ 135 0
execute if score @s circle_size matches 0 as @e[tag=m7,tag=new] run tp @s ~ ~ ~ 157.5 0
execute if score @s circle_size matches 0 as @e[tag=m8,tag=new] run tp @s ~ ~ ~ 180 0
execute if score @s circle_size matches 0 as @e[tag=m9,tag=new] run tp @s ~ ~ ~ 202.5 0
execute if score @s circle_size matches 0 as @e[tag=m10,tag=new] run tp @s ~ ~ ~ 225 0
execute if score @s circle_size matches 0 as @e[tag=m11,tag=new] run tp @s ~ ~ ~ 247.5 0
execute if score @s circle_size matches 0 as @e[tag=m12,tag=new] run tp @s ~ ~ ~ 270 0
execute if score @s circle_size matches 0 as @e[tag=m13,tag=new] run tp @s ~ ~ ~ 292.5 0
execute if score @s circle_size matches 0 as @e[tag=m14,tag=new] run tp @s ~ ~ ~ 315 0
execute if score @s circle_size matches 0 as @e[tag=m15,tag=new] run tp @s ~ ~ ~ 337.5 0

execute as @e[tag=new] run tag @s remove new
scoreboard players set @s circle_size 0

execute as @e[tag=circle_marker] at @s run tp @s ^ ^ ^1.5

execute as @e[tag=circle_marker] at @s if score @s circle_size matches 0 run particle minecraft:dust{color:[1,1,1],scale:2.5} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 1 run particle minecraft:dust{color:[1,1,1],scale:2.2} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 2 run particle minecraft:dust{color:[1,1,1],scale:1.9} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 3 run particle minecraft:dust{color:[1,1,1],scale:1.6} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 4 run particle minecraft:dust{color:[1,1,1],scale:1.3} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 5 run particle minecraft:dust{color:[1,1,1],scale:1.0} ~ ~0.1 ~ 0 0 0 0 0
execute as @e[tag=circle_marker] at @s if score @s circle_size matches 6 run particle minecraft:dust{color:[1,1,1],scale:0.7} ~ ~0.1 ~ 0 0 0 0 0

execute as @e[tag=circle_marker] run scoreboard players add @s circle_size 1

execute as @e[tag=circle_marker] if score @s circle_size matches ..7 run schedule function tt:skill/luyenthe/batdongminhvuong/phanchan/circle 1t

execute as @e[tag=circle_marker] if score @s circle_size matches 8.. run kill @s