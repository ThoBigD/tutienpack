# ==================== HỆ THỐNG XỬ LÝ TỬ TRẬN ====================

# 1. Người tu luyện (MaTu) tử trận: Reset tu vi về Level 0 lúc Nhập Ma
execute as @a[tag=MaTu,scores={MaTu_Deaths=1..}] at @s run function matu:system/death/reset_to_level0

# 2. Xóa điểm tử trận cho tất cả người chơi
scoreboard players set @a[scores={MaTu_Deaths=1..}] MaTu_Deaths 0
