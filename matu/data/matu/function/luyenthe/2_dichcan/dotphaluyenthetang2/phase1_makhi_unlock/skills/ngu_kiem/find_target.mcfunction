# ==================== TÌM MỤC TIÊU THẤP MÁU NHẤT TRONG 12 BLOCK ====================

# 1. Dọn dẹp các tag nhắm mục tiêu cũ
tag @e[tag=ngukiem_cand] remove ngukiem_cand
tag @e[tag=ngukiem_target] remove ngukiem_target
tag @e[tag=ngukiem_target_nearest] remove ngukiem_target_nearest

# 2. Đánh dấu tất cả sinh vật sống trong phạm vi 12 block (bao gồm mob và người chơi, trừ chủ kiếm)
execute at @s as @e[type=!#matu:no_hp,distance=..12] unless entity @s[tag=current_sword_owner] run tag @s add ngukiem_cand

# Loại bỏ người chơi ở chế độ Sáng tạo và Khán giả, cũng như các thực thể hiển thị kiếm
tag @a[gamemode=creative] remove ngukiem_cand
tag @a[gamemode=spectator] remove ngukiem_cand
tag @e[tag=ma_kiem_display] remove ngukiem_cand
tag @e[tag=ma_kiem_carrier] remove ngukiem_cand

# 3. Lấy chỉ số HP hiện tại của từng sinh vật
execute as @e[tag=ngukiem_cand] run execute store result score @s matu_hp_check run data get entity @s Health 1

# 4. Tìm kiếm lượng máu thấp nhất trong danh sách (chỉ tính mục tiêu còn sống HP >= 1)
scoreboard players set #min_hp matu_math 999999
execute as @e[tag=ngukiem_cand] if score @s matu_hp_check matches 1.. run scoreboard players operation #min_hp matu_math < @s matu_hp_check

# 5. Gắn tag mục tiêu cho sinh vật có HP thấp nhất (nếu trùng HP thì ưu tiên con gần người chơi nhất)
execute as @e[tag=ngukiem_cand] if score @s matu_hp_check matches 1.. if score @s matu_hp_check = #min_hp matu_math run tag @s add ngukiem_target
execute at @s as @e[tag=ngukiem_target,sort=nearest,limit=1] run tag @s add ngukiem_target_nearest
