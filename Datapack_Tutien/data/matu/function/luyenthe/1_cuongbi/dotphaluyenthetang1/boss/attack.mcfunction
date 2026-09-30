# ==================== FILE: attack.mcfunction (Chạy lặp lại liên tục mỗi tick) ====================

# --------------------------------------------------------------------------------------------------------------------------------------
# BƯỚC THAY THẾ: GẮN TAG CHO NGƯỜI ĐỘT PHÁ BẰNG CÁCH SO SÁNH UUID QUA STORAGE TRUNG GIAN
# --------------------------------------------------------------------------------------------------------------------------------------
tag @a remove Nguoi_Dot_Pha_Tam
data modify storage matu:get_profile current_uuid set from storage matu:get_profile player_profile

execute as @a run scoreboard players set @s MaTu_UUID_Check 0
execute as @a store success score @s MaTu_UUID_Check run data modify storage matu:get_profile current_uuid set from entity @s UUID

tag @a[scores={MaTu_UUID_Check=0}] add Nguoi_Dot_Pha_Tam
data remove storage matu:get_profile current_uuid

# Kiểm tra tầm 15 block giữa Mannequin Tâm Ma và người đột phá
scoreboard players set @e[tag=TamMa_1] MaTu_Boss_Target 0
execute as @e[tag=TamMa_1] at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..15] run scoreboard players set @s MaTu_Boss_Target 1


# --------------------------------------------------------------------------------------------------------------------------------------
# BƯỚC 2: TRẠNG THÁI TRỐN/FARM BẨN (NGOÀI 15 BLOCK) -> BẤT TỬ & HỒI PHỤC CHẬM
# --------------------------------------------------------------------------------------------------------------------------------------
execute as @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 0 run effect give @s resistance 1 255 true

# Hiệu ứng hạt bụi màu đỏ đen bao bọc dày đặc báo hiệu trạng thái Bất tử / Ngừng chiến
execute at @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 0 run particle dust{color:[0.1,0.0,0.0],scale:1.8} ~ ~1 ~ 0.5 0.8 0.5 0.05 15 normal
execute as @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 1 run effect give @s resistance 1 3 true


# --------------------------------------------------------------------------------------------------------------------------------------
# BƯỚC 3: "AI TỰ CHẾ" - XOAY HƯỚNG, CHỐNG KẸT TƯỜNG VÀ GIẢ LẬP TRỌNG LỰC TỰ RƠI
# --------------------------------------------------------------------------------------------------------------------------------------
# 1. XOAY HƯỚNG: Ép Mannequin xoay mặt về phía bạn, khóa góc Pitch bằng 0 để di chuyển ngang dưới sàn
execute as @e[tag=TamMa_1] at @s facing entity @a[tag=Nguoi_Dot_Pha_Tam,limit=1] feet run tp @s ~ ~ ~ ~ 0


# Nếu trước mặt thoáng (cả chân và ngực đều là air) -> Cho lướt tiến lên phía trước (Giữ nguyên)
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Boss_Target matches 1 unless entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] if block ^ ^ ^2.5 #matu:all_blocks if block ^ ^1 ^0.5 minecraft:air run tp @s ^ ^ ^0.3

# SỬA TẠI ĐÂY: Thêm điều kiện 'if score @s MaTu_Jump_Ticks_Boss matches 6..'
# Chỉ cho phép giật lùi chống kẹt khi Boss ĐÃ KẾT THÚC quá trình đẩy lên của cú nhảy, ngăn chặn hiện tượng bị bật ngược vô lý giữa không trung
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Boss_Target matches 1 unless entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] if score @s MaTu_Jump_Ticks_Boss matches 6.. unless block ^ ^ ^0.3 minecraft:air run tp @s ^ ^ ^-0.1

# 3. CƠ CHẾ NHẢY CAO VÀ GIẢ LẬP TRỌNG LỰC TỰ RƠI (SỬA DỨT ĐIỂM LỖI BAY):
# BỘ ĐẾM NHẢY: Dùng bảng điểm để điều khiển chu kỳ đẩy Mannequin đi lên khi kích hoạt lệnh nhảy
execute as @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 1 run scoreboard players add @s MaTu_Jump_Ticks_Boss 1

# KÍCH HOẠT JUMP CAO 3 BLOCK: Nếu bạn ở trên cao từ 3 block trở lên và bộ đếm đang ở mức sẵn sàng
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Boss_Target matches 1 unless entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] at @a[tag=Nguoi_Dot_Pha_Tam,limit=1] positioned ~ ~-3 ~ if entity @e[tag=TamMa_1,distance=..0.1] if score @s MaTu_Jump_Ticks_Boss matches 20.. run scoreboard players set @s MaTu_Jump_Ticks_Boss 0

# KÍCH HOẠT JUMP VƯỢT RÀO: Nếu bị kẹt khối đặc tầm chân nhưng trên đầu thoáng
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Boss_Target matches 1 unless entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] unless block ^ ^ ^0.5 minecraft:air if block ^ ^1 ^0.5 minecraft:air if score @s MaTu_Jump_Ticks_Boss matches 20.. run scoreboard players set @s MaTu_Jump_Ticks_Boss 5

# QUÁ TRÌNH ĐẨY LÊN (KHI ĐANG TRONG TRẠNG THÁI NHẢY): Trong vòng 6 ticks đầu sau khi kích hoạt, cưỡng chế dịch chuyển Mannequin đi lên
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Jump_Ticks_Boss matches 0..5 run tp @s ~ ~0.45 ~

# GIẢ LẬP TRỌNG LỰC TỰ RƠI (QUAN TRỌNG): Khi KHÔNG trong trạng thái nhảy, nếu dưới chân là không khí -> Ép Mannequin rơi tự do xuống đất mỗi tick
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Jump_Ticks_Boss matches 6.. if block ~ ~-0.1 ~ minecraft:air run tp @s ~ ~-0.25 ~
execute as @e[tag=TamMa_1] at @s if score @s MaTu_Jump_Ticks_Boss matches 6.. if block ~ ~-0.25 ~ minecraft:air run tp @s ~ ~-0.25 ~


# 4. ĐÒN ĐÁNH THƯỜNG (RE-RENDER ITEM 1.21.5+ CỦA MANNEQUIN)
execute as @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 1 run scoreboard players add @s MaTu_Normal_Attack_Boss 1

execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 15.. at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] run data modify entity @s equipment.mainhand.count set value 1b
execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 15.. at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] run damage @a[tag=Nguoi_Dot_Pha_Tam,distance=..2,limit=1] 12 minecraft:mob_attack by @s
execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 15.. at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2
execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 15.. at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] run swing
execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 15.. at @s if entity @a[tag=Nguoi_Dot_Pha_Tam,distance=..2] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.8

execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 16 run data modify entity @s equipment.mainhand.count set value 1
execute as @e[tag=TamMa_1] if score @s MaTu_Normal_Attack_Boss matches 16.. run scoreboard players set @s MaTu_Normal_Attack_Boss 0

# Hiệu ứng hạt bụi ma khí di chuyển chiến đấu
execute at @e[tag=TamMa_1] if score @s MaTu_Boss_Target matches 1 run particle dust{color:[0.6,0.0,0.0],scale:1.2} ~ ~0.2 ~ 0.3 0.1 0.3 0.01 3 normal