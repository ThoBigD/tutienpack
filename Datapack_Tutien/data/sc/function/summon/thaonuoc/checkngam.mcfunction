scoreboard players set @s thaonuoc_ngam 1
scoreboard players set @s thaonuoc_codo 2
summon text_display ~ ~0.5 ~ {billboard:"center",background:0,Tags:["thaonuoc_ngam","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"thaonuoc_ngam"},"shadow_color":5635925}}
scoreboard players operation @e[tag=new] thaonuoc.global = @s thaonuoc.global
execute as @e[tag=new] run tag @s remove new