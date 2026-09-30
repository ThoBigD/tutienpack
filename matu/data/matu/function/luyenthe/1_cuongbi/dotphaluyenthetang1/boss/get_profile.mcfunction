# UUID
data modify storage matu:get_profile player_profile set from entity @s UUID
# Storage Name
setblock ~ 254 ~ minecraft:chest
loot insert ~ 254 ~ loot matu:get_name
data modify storage matu:get_profile player_name set from block ~ 254 ~ Items[0].components."minecraft:custom_name"
setblock ~ 254 ~ minecraft:air
# Storage HP
data modify storage matu:get_profile player_hp set from entity @s Health
# Get Item trong Inventory
function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/get_inventory
# Summon
function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/summon with storage matu:get_profile
scoreboard players set #Boss_State MaTu_Battle 1