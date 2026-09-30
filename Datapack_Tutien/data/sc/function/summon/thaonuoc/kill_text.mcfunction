scoreboard players reset #kill_text_thaonuoc thaonuoc.global
scoreboard players operation #kill_text_thaonuoc thaonuoc.global = @s thaonuoc.global
execute at @s as @e[type=minecraft:text_display] run execute if score @s thaonuoc.global = #kill_text_thaonuoc thaonuoc.global run kill @s
scoreboard players set @s thaonuoc_codo 3