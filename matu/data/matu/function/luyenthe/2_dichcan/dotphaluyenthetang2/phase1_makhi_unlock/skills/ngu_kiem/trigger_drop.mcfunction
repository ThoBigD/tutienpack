# ==================== KÍCH HOẠT HUYẾT LINH NGỰ KIẾM ====================

# 1. Chỉ dành cho người chơi mang bản sắc Ma Tu
execute unless entity @s[tag=MaTu] run return 0

# 2. Nếu kiếm đang xuất chiến thì không kích hoạt thêm
execute if entity @s[tag=matu_ngukiem_active] run return 0

# 3. Kiểm tra Cooldown
execute if score @s MaTu_Ngukiem_CD matches 1.. run tellraw @s [{"text":"[Ngự Kiếm] ","color":"dark_red","bold":true},{"text":"Kỹ năng đang trong thời gian hồi!","color":"gray"}]
execute if score @s MaTu_Ngukiem_CD matches 1.. run return 0

# 4. Lấy UUID của người chơi vào Storage
data modify storage matu:ngukiem player_profile set from entity @s UUID

# 5. Đánh dấu người chơi đang kích hoạt
tag @s add current_sword_owner

# 6. Triệu hồi Ma Kiếm gắn liền với UUID của người chơi
execute at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/summon_sword with storage matu:ngukiem

# 7. Gỡ đánh dấu tạm thời
tag @s remove current_sword_owner
