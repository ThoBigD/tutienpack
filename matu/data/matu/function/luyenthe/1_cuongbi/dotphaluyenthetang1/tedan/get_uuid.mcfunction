data modify storage matu:get_profile player_profile set from entity @s UUID
data modify storage matu:get_profile player_uuid set from entity @s UUID 
tag @s add active_tedan1

execute as @e[tag=TranPhap_Tang1,sort=nearest,limit=1] at @s run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/set_uuid_to_interaction with storage matu:get_profile

# execute as @e[tag=TranPhap_Tang1,sort=nearest,limit=1] if data entity @s attack run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/set_uuid_to_interaction with storage matu:get_uuid

execute as @e[tag=TranPhap_Tang1] at @s run data remove entity @s interaction
execute as @e[tag=TranPhap_Tang1] at @s run data remove entity @s attack
