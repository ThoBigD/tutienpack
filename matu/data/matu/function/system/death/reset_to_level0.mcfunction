# ==================== XÓA BỎ TOÀN BỘ TU VI (MẤT MA TU) ====================

# 1. Xóa hoàn toàn tư cách Ma Tu và các tầng Luyện Thể
tag @s remove MaTu
tag @s remove luyenthe0
tag @s remove luyenthe1
tag @s remove luyenthe2
tag @s remove luyenthe3

# 2. Xóa bỏ tất cả các công thức và hiệu ứng đan dược đã mở khóa
tag @s remove lock_recipe1
tag @s remove lock_recipe2
tag @s remove recipe_hoancotdan
tag @s remove recipe_tahuyetdan
tag @s remove hoancotdan_eat
tag @s remove tahuyetdan_eat

# 3. Thu hồi và tiêu hủy ma kiếm nếu đang kích hoạt
tag @s add current_sword_owner
data modify storage matu:ngukiem player_profile set from entity @s UUID
function matu:system/death/clean_sword with storage matu:ngukiem
tag @s remove matu_ngukiem_active
tag @s remove current_sword_owner

# 4. Đặt lại toàn bộ điểm số, thời gian hồi chiêu và ma khí về 0
scoreboard players set @s MaTu_MaKhi 0
scoreboard players set @s MaTu_SwordState 0
scoreboard players set @s MaTu_AttackCD 0
scoreboard players set @s MaTu_HpDrain 0
scoreboard players set @s MaTu_Absorb_Timer 0
scoreboard players set @s MaTu_BocPha_CD 0
scoreboard players set @s MaTu_RightClick 0

# 5. Khôi phục chỉ số gốc (20 HP) và gỡ bỏ tất cả thuộc tính tăng cường
attribute @s minecraft:max_health base set 20
attribute @s max_health modifier remove matu:hp_tang1
attribute @s max_health modifier remove matu:hp_tang2
attribute @s max_health modifier remove matu:hp_tang3

attribute @s attack_damage modifier remove matu:dmg_tang1
attribute @s attack_damage modifier remove matu:dmg_tang2
attribute @s attack_damage modifier remove matu:dmg_tang3

attribute @s armor modifier remove matu:armor_tang2

# 6. Thu hồi toàn bộ Advancement cảnh giới và công thức đột phá
advancement revoke @s only matu:dang_cap/nhapma
advancement revoke @s only matu:luyenthe/luyenthe1
advancement revoke @s only matu:luyenthe/luyenthe2
advancement revoke @s only matu:recipe/hoancotdan
advancement revoke @s only matu:recipe/tahuyetdan

# 7. Thông báo và hiệu ứng cảnh báo
playsound minecraft:entity.wither.death master @s ~ ~ ~ 1.0 0.8
title @s title {"text":"TU VI TIÊU TAN","color":"dark_red","bold":true}
title @s subtitle [{"text":"Thân tử đạo tiêu! Mất toàn bộ tu vi, hóa thành phàm nhân.","color":"gray"}]
tellraw @s [{"text":"[TU VI TIÊU TAN] ","color":"dark_red","bold":true},{"text":"Ngươi đã tử trận, kinh mạch bị phá hủy hoàn toàn! Tư cách Ma Tu đã mất, phải tìm ","color":"gray"},{"text":"Tẩu Hỏa Nhập Ma","color":"red"},{"text":" để nhập môn lại từ đầu!","color":"gray"}]
