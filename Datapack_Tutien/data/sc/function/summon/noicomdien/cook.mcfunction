summon text_display ~ ~1 ~ {billboard:"center",background:0,Tags:["noicomdien_counting","new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.1f,0.1f,0.1f],scale:[0.5f,0.5f,0.5f]},text:{"score":{"name":"@s","objective":"noicomdien_cooking"},"shadow_color":5635925}}
scoreboard players operation #noicomdien_id noicomdien.global = @s noicomdien.global
execute as @e[tag=new] at @s run scoreboard players operation @s noicomdien.global = #noicomdien_id noicomdien.global
scoreboard players set @s noicomdien_cooking 1
execute as @e[tag=new] at @s run tag @s remove new