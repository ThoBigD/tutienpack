scoreboard players reset #comsuong_break comsuong.global
scoreboard players operation #comsuong_break comsuong.global = @s comsuong.global
give @s minecraft:carrot_on_a_stick[minecraft:custom_name='Cơm Sườn',minecraft:custom_data={linh:cang},minecraft:custom_model_data={strings:['comsuong_full']}] 1
execute at @s as @e[type=minecraft:item_display] run execute if score @s comsuong.global = #comsuong_break comsuong.global run setblock ~ ~ ~ air
execute at @s as @e[type=minecraft:item_display] run execute if score @s comsuong.global = #comsuong_break comsuong.global run kill @s
kill @s