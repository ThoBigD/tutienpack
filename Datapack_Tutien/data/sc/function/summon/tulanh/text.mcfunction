scoreboard players operation #tulanh_text tulanh.global = @s tulanh.global
summon text_display ~ ~1.1 ~ {billboard:"center",background:0,Tags:["tulanh_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"tulanh_uop"},"shadow_color":5635925}}
execute as @e[type=minecraft:text_display,tag=new] at @s run scoreboard players operation @s tulanh.global = #tulanh_text tulanh.global 
execute as @e[type=minecraft:text_display,tag=new] at @s run tag @s remove new
