
tag @s add this
execute unless score @s matu_hp_display matches -2147483648..2147483647 run scoreboard players set @s matu_hp_display 0
scoreboard players operation .old matu_hp_display = @s matu_hp_display
scoreboard players operation .old_max matu_hp_display = @s matu_hp_max_disp
execute store result score .new matu_hp_display run data get entity @s Health
execute store result score .new_max matu_hp_display run attribute @s max_health base get
execute unless entity @s[tag=matu_hp_init] run data remove storage matu_hp_display MobName
execute unless entity @s[tag=matu_hp_init] at @s run function matu:system/hp_display/get_name
execute unless entity @s[tag=matu_hp_init] run tag @s add matu_hp_init
execute if score .old matu_hp_display matches 0 unless score @s matu_hp_id matches 1.. run scoreboard players operation @s matu_hp_id = #current_id matu_hp_id
execute if score .old matu_hp_display matches 0 run scoreboard players add #current_id matu_hp_id 1
execute if score .old matu_hp_display matches 0 store result storage matu_hp_display Temp.value int 1 run scoreboard players get @s matu_hp_id
execute if score .old matu_hp_display matches 0 run function matu:system/hp_display/save_name with storage matu_hp_display Temp
execute if score .old matu_hp_display matches 1.. run function matu:system/hp_display/old
execute store result storage matu_hp_display Temp.value int 1 run scoreboard players get @s matu_hp_id
function matu:system/hp_display/render_text with storage matu_hp_display Temp
scoreboard players operation @s matu_hp_display = .new matu_hp_display
scoreboard players operation @s matu_hp_max_disp = .new_max matu_hp_display
data modify entity @s CustomName set from entity @e[type=text_display,tag=matu_hp_display,limit=1] text
data modify entity @s CustomNameVisible set value 1b
tag @s remove this

