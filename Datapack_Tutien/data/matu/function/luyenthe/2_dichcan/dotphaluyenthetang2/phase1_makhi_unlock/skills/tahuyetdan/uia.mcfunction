# Xóa 1 viên Tà Huyết Phá Chướng Đan
clear @s minecraft:paper[custom_data={matu:{id:"ta_huyet_dan"}}] 1

# Gắn tag đã ăn đan để mở khóa giới hạn Ma Khí
tag @s add tahuyetdan_eat

# Tăng Ma Khí lên 100 để vượt qua mốc khóa 99
scoreboard players set @s MaTu_MaKhi 100

# Âm thanh và hiệu ứng
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 1
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 2 1.2
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.4 0.6 0.4 1 80
particle dust{color:[0.85,0.0,0.0],scale:1.8} ~ ~1 ~ 0.5 0.8 0.5 0.05 60

# Thông báo hiển thị
title @s title {"text":"Phá Chướng Thành Công!","color":"dark_red","bold":true}
title @s subtitle {"text":"Kinh mạch khai mở, giới hạn Ma Khí nâng lên 199!","color":"red"}
tellraw @s ["\n",{"text":"[ĐỘT PHÁ THÀNH CÔNG] ","color":"dark_red","bold":true},{"text":"Dược lực cuồng bạo của Tà Huyết Phá Chướng Đan xé tan bế tắc! Giới hạn Ma Khí đã mở rộng lên 199.","color":"gray"},"\n"]
