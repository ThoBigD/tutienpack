$summon item_display ~ ~2.5 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},Tags:["batthachkich","new"],item:{id:"$(block_id)",count:1}}

scoreboard players add #global batthachkich_id 1
scoreboard players operation @s batthachkich_id = #global batthachkich_id
execute as @e[tag=new] at @s run scoreboard players operation @s batthachkich_id = #global batthachkich_id
execute as @e[tag=new] at @s run tag @s remove new