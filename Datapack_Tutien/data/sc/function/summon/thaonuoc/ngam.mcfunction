execute if score @s thaonuoc_ngam matches ..700 run scoreboard players add @s thaonuoc_ngam 1

scoreboard players operation #thaonuoc_id_ngam thaonuoc.global = @s thaonuoc.global
scoreboard players operation #thaonuoc_hienthi thaonuoc_ngam = @s thaonuoc_ngam
execute at @s as @e[type=minecraft:text_display,tag=thaonuoc_ngam] run execute if score @s thaonuoc.global = #thaonuoc_id_ngam thaonuoc.global run scoreboard players operation @s thaonuoc_ngam = #thaonuoc_hienthi thaonuoc_ngam
scoreboard players reset #thaonuoc_id_ngam thaonuoc.global
scoreboard players reset #thaonuoc_hienthi thaonuoc_ngam


execute as @e[type=minecraft:text_display,tag=thaonuoc_ngam] at @s run data merge entity @s {text:[{"score":{"name":"@s","objective":"thaonuoc_ngam"},"shadow_color":-11141291}," / 700"]}

execute if score @s thaonuoc_ngam matches 700 run function sc:summon/thaonuoc/kill_text