# ==================== TÀ HUYẾT PHÁ CHƯỚNG ĐAN ====================
# Đủ 99 Ma Khí trở lên và chưa ăn đan -> Kích hoạt đột phá
execute as @s[scores={MaTu_MaKhi=99..,MaTu_RightClick=1..},tag=!tahuyetdan_eat,nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ta_huyet_dan"}}}}}] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/tahuyetdan/uia

# Chưa đủ 99 Ma Khí mà bấm ăn -> Thông báo
execute as @s[scores={MaTu_MaKhi=..98,MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ta_huyet_dan"}}}}}] at @s run tellraw @s [{"text":"[Ma Tu] ","color":"dark_red","bold":true},{"text":"Ma khí chưa đạt đỉnh phong mốc 99, kinh mạch chưa đủ căng để phá chướng!","color":"red"}]

# Đã ăn rồi mà bấm tiếp -> Thông báo
execute as @s[tag=tahuyetdan_eat,scores={MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ta_huyet_dan"}}}}}] at @s run tellraw @s [{"text":"[Ma Tu] ","color":"dark_red","bold":true},{"text":"Ngươi đã phá chướng mốc này rồi, không cần dùng thêm!","color":"gold"}]

# ==================== CỬU U HOÁN CỐT ĐAN ====================
# Đủ 199 Ma Khí trở lên và chưa ăn đan -> Kích hoạt đột phá
execute as @s[scores={MaTu_MaKhi=199..,MaTu_RightClick=1..},tag=!hoancotdan_eat,nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"hoan_cot_dan"}}}}}] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/hoancotdan/uia

# Chưa đủ 199 Ma Khí mà bấm ăn -> Thông báo
execute as @s[scores={MaTu_MaKhi=..198,MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"hoan_cot_dan"}}}}}] at @s run tellraw @s [{"text":"[Ma Tu] ","color":"dark_purple","bold":true},{"text":"Ma khí chưa đạt đỉnh phong mốc 199, chưa thể hoán cốt!","color":"red"}]

# Đã ăn rồi mà bấm tiếp -> Thông báo
execute as @s[tag=hoancotdan_eat,scores={MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"hoan_cot_dan"}}}}}] at @s run tellraw @s [{"text":"[Ma Tu] ","color":"dark_purple","bold":true},{"text":"Ngươi đã hoán cốt tái sinh rồi, không cần dùng thêm!","color":"gold"}]
