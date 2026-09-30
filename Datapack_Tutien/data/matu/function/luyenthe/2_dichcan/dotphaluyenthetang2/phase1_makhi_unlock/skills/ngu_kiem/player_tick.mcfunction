# ==================== ĐIỀU PHỐI MA KIẾM THEO TỪNG PLAYER (UUID) ====================

# 1. Đánh dấu người chơi đang được xử lý trong tick này
tag @s add current_sword_owner

# 2. Lấy chuỗi UUID của người chơi vào Storage để truyền sang Macro
data modify storage matu:ngukiem player_profile set from entity @s UUID

# 3. Chạy logic điều khiển thanh kiếm của người chơi này (truyền Storage sang hàm Macro)
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/player_sword_tick with storage matu:ngukiem

# 4. Gỡ đánh dấu tạm thời sau khi xử lý xong tick cho người chơi này
tag @s remove current_sword_owner
tag @e[tag=this_player_sword] remove this_player_sword
tag @e[tag=this_player_carrier] remove this_player_carrier
