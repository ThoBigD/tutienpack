$execute as @e[tag=ma_kiem_display] if data entity @s data{owner_uuid:"$(player_profile)"} run kill @s
$execute as @e[tag=ma_kiem_carrier] if data entity @s data{owner_uuid:"$(player_profile)"} run kill @s
