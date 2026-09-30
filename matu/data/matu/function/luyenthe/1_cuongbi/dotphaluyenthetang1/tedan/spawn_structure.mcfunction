# Khi công trình tự spawn, con Marker nằm trong đó sẽ xuất hiện. Hệ thống lập tức biến nó thành khối tương tác rồi xóa Marker đi.
execute at @e[tag=Loi_Tran_Phap] run summon interaction ~ ~ ~ {width:3.0f,height:3f,Tags:["TranPhap_Tang1"],CustomName:["Tế Đàn Đột Phá Tầng 1"]}
kill @e[tag=Loi_Tran_Phap]

execute as @e[tag=TranPhap_Tang1] if data entity @s interaction on target run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/get_uuid
execute as @e[tag=TranPhap_Tang1] if data entity @s attack on attacker run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/get_uuid

execute as @e[tag=TranPhap_Tang1] run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/anti_double_spawn with storage matu:get_profile