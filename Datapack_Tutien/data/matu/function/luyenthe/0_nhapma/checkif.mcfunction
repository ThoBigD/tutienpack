execute at @s[scores={MaTu_MaKhi=100}] run advancement grant @s until matu:dang_cap/nhapma

execute at @s[scores={MaTu_MaKhi=100,MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ma_huyet_dan"}}}}}] run function matu:luyenthe/0_nhapma/nhapma

# Nếu dùng item dưới 100 Ma Khí sẽ nhận hậu quả
execute at @s[scores={MaTu_MaKhi=..100,MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ma_huyet_dan"}}}}}] run function matu:luyenthe/0_nhapma/nhapma_false
