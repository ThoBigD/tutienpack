# ==================== FILE: on_die.mcfunction (Chạy duy nhất 1 lần khi Boss chết) ====================

# 1. Phát âm thanh chúc mừng và hiệu ứng (Chỉ duy nhất người đột phá nghe thấy và nhận được)
# execute as @s[tag=Nguoi_Dot_Pha_Tam] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1

# 2. Hiển thị Title chúc mừng thăng cấp lên màn hình của duy nhất người đột phá
execute as @s[tag=Nguoi_Dot_Pha_Tam] run title @s title {"text":"Đột Phá Thành Công!","color":"green","bold":true}
execute as @s[tag=Nguoi_Dot_Pha_Tam] run title @s subtitle {"text":"Cảnh Giới: Dịch Cân Hoán Cốt (Luyện Thể Tầng 2)","color":"gold"}

# 3. Kích hoạt trao duy nhất tấm bằng thành tựu Advancement Tầng 2 cho người đột phá
execute as @s[tag=Nguoi_Dot_Pha_Tam] run function matu:luyenthe/2_dichcan/luyenthe2_up

# 4. Hiệu ứng hạt bụi ma khí bùng nổ tại vị trí Boss chết (Chạy tại tọa độ gốc của hàm tick)
particle explosion ~ ~1 ~ 1 1 1 0.1 20 normal

# 5. Đặt lại trạng thái trận đấu về 0 để tránh lệnh bị lặp lại vô hạn ở tick sau
scoreboard players set #Boss_State MaTu_Battle 0

# 6. Hủy bỏ tag làm nhiệm vụ sau khi đã nhận thưởng thành công để dọn dẹp data
tag @s[tag=Nguoi_Dot_Pha_Tam] remove Nguoi_Dot_Pha_Tam

execute as @e[tag=TranPhap_Tang1] at @s run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/kill_interaction_tedan with storage matu:get_profile