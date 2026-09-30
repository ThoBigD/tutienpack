# ==================== FILE: tick.mcfunction (Chạy liên tục mỗi tick) ====================

# Kiểm tra nếu trên server tồn tại con Tâm Ma (TamMa_1) thì mới kích hoạt cơ chế tấn công
# Sử dụng cú pháp "with storage" để truyền dữ liệu UUID sang cho file attack xử lý Macro
execute if entity @e[tag=TamMa_1] run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/attack with storage matu:get_profile
# Kiểm tra nếu trận đấu đang diễn ra (score = 1) nhưng hoàn toàn KHÔNG CÒN con Mannequin nào mang tag TamMa_1 tồn tại:
# -> Nghĩa là Boss đã bị đánh bại (Die)!
execute if score #Boss_State MaTu_Battle matches 1 unless entity @e[tag=TamMa_1] run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/on_dead