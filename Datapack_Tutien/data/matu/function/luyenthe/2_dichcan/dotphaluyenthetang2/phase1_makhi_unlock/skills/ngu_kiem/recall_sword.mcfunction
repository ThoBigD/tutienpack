# ==================== YÊU CẦU THU HỒI MA KIẾM (SHIFT) ====================

# 1. Đánh dấu người chơi đang thu hồi
tag @s add current_sword_owner

# 2. Nạp UUID người chơi vào Storage để truyền Macro
data modify storage matu:ngukiem player_profile set from entity @s UUID

# 3. Thực thi thu hồi kiếm về tay
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/execute_recall with storage matu:ngukiem

# 4. Đảm bảo xóa trạng thái kích hoạt và tag tạm thời trên người chơi
tag @s remove matu_ngukiem_active
tag @s remove current_sword_owner
scoreboard players set @s MaTu_HpDrain 0
scoreboard players set @s MaTu_SwordState 0
scoreboard players set @s MaTu_AttackCD 0
scoreboard players set @s MaTu_Ngukiem_CD 240
