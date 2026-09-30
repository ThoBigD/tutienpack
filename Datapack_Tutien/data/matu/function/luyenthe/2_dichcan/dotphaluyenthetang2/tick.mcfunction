### unlock công thức tạo đan
## vì đây là custom craft (nbt) nên không dùng craft thông thường
# tà huyết đan
execute at @s[scores={MaTu_MaKhi=99..},tag=!recipe_tahuyetdan] run advancement grant @s only matu:recipe/tahuyetdan
# hoán cốt đan
execute at @s[scores={MaTu_MaKhi=199..},tag=!recipe_hoancotdan] run advancement grant @s only matu:recipe/hoancotdan
## Skill khi được unlock
# Hấp thụ linh khí: có tỷ lệ hấp thụ linh khí đa mục tiêu gần nhất (tối đa 2) - Bị động
# Tà huyết đan
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/tahuyetdan/tick
# Bộc phá: Chuyển đổi 20% máu hiện tại quy đổi thành 30% giáp ảo trong 5 giây - Chủ động
# Hoán cốt đan
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/hoancotdan/tick
# Huyết Linh Ngự Kiếm Thuật
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/tick

### load công thức khi được mở Khoá
execute if entity @s[tag=recipe_tahuyetdan] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/crafting/tahuyetdan
execute if entity @s[tag=recipe_hoancotdan] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/crafting/hoancotdan

### Sử dụng đan dược đột phá (Chuột phải)
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/using_dan
