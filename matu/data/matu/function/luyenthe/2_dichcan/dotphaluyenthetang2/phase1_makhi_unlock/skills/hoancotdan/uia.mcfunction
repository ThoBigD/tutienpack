# Xóa 1 viên Cửu U Hoán Cốt Đan
clear @s minecraft:paper[custom_data={matu:{id:"hoan_cot_dan"}}] 1

# Gắn tag đã ăn đan hoán cốt
tag @s add hoancotdan_eat

# Nâng Ma Khí lên 200 để vượt qua ngưỡng khóa 199
scoreboard players set @s MaTu_MaKhi 200

# Âm thanh & hiệu ứng
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0.8
playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1.5 0.6
particle dust{color:[0.15,0.0,0.25],scale:2.0} ~ ~1 ~ 0.5 0.8 0.5 0.05 100

# Thông báo hiển thị
title @s title {"text":"Hoán Cốt Tái Sinh!","color":"dark_purple","bold":true}
title @s subtitle {"text":"Ma căn thức tỉnh, giới hạn Ma Khí nâng lên 300!","color":"light_purple"}
tellraw @s ["\n",{"text":"[ĐỘT PHÁ THÀNH CÔNG] ","color":"dark_purple","bold":true},{"text":"U minh ma hỏa thiêu rụi phàm cốt, đúc lại ma tủy! Giới hạn Ma Khí tối đa đã nâng lên 300.","color":"light_purple"},"\n"]
