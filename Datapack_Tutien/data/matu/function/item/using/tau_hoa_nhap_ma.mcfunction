# ==================== SỬ DỤNG TẨU HỎA NHẬP MA ====================

# 1. Kiểm tra nếu đã nhập ma thì ngăn dùng lãng phí
execute if entity @s[tag=MaTu] run tellraw @s [{"text":"[Tẩu Hỏa Nhập Ma] ","color":"dark_purple","bold":true},{"text":"Ngươi đã gieo Ma Chủng bước vào Ma Đạo rồi!","color":"red"}]
execute if entity @s[tag=MaTu] run return 0

# 2. Tiêu hao 1 vật phẩm trên tay
clear @s minecraft:paper[custom_data={matu:{id:"tau_hoa_nhap_ma"}}] 1

# 3. Hiệu ứng bộc phát ma khí
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 1.5
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.05 30
particle crimson_spore ~ ~1 ~ 0.3 0.5 0.3 0.05 25

# 4. Kích hoạt nhập môn Ma Tu
function matu:luyenthe/0_nhapma/nhapmon
