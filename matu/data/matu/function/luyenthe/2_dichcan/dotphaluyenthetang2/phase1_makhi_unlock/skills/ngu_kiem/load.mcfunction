# ==================== KHỞI TẠO HỆ THỐNG HUYẾT LINH NGỰ KIẾM ====================

# 1. Các bảng điểm điều khiển
scoreboard objectives add MaTu_Ngukiem_CD dummy "Cooldown ngự kiếm"
scoreboard objectives add MaTu_HpDrain dummy "Đếm giây trừ máu"
scoreboard objectives add MaTu_HealCount dummy "Đếm hồi máu"
scoreboard objectives add MaTu_SwordState dummy "Trạng thái kiếm"
scoreboard objectives add MaTu_AttackCD dummy "Cooldown tấn công"
scoreboard objectives add matu_hp_check dummy
scoreboard objectives add matu_math dummy

# Xóa bỏ objective ID người chơi cũ (chuyển sang nhận diện UUID hoàn toàn)
scoreboard objectives remove matu_player_id

# 2. Thu hồi an toàn và dọn dẹp các thực thể kiếm khi reload
execute as @a[tag=matu_ngukiem_active] run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/recall_sword
tag @a remove matu_ngukiem_active
tag @a remove current_sword_owner
scoreboard players set @a MaTu_Ngukiem_CD 0
scoreboard players set @a MaTu_HpDrain 0
scoreboard players set @a MaTu_SwordState 0
scoreboard players set @a MaTu_AttackCD 0
kill @e[tag=ma_kiem_carrier]
kill @e[tag=ma_kiem_display]
