# 1. Cho hạt giống nhảy thêm 1 bước nữa ra rìa ngoài cùng
execute as @e[tag=phase2] at @s if predicate matu:biome/random_50 run tp @s ~1 ~ ~
execute as @e[tag=phase2] at @s if predicate matu:biome/random_50 run tp @s ~ ~-1 ~

# 2. Thay thế bằng Đất Nấm Tím với tỷ lệ ngẫu nhiên 50% để tạo độ thưa thớt, loang lổ tự nhiên
execute as @e[tag=phase2] at @s if predicate matu:biome/random_50 run setblock ~ ~ ~ minecraft:mycelium replace

# 3. Tạo hiệu ứng hạt ma thuật bốc lên từ mặt đất đệm mới đổi màu
execute as @e[tag=phase2] at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.2 0.2 0.01 5 normal

# 4. Chuyển sang Phase 4 dọn dẹp sau 2 tick
execute as @e[tag=phase2] run tag @s add phase4
execute as @e[tag=phase2] run tag @s remove phase2
schedule function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/phase4 2t