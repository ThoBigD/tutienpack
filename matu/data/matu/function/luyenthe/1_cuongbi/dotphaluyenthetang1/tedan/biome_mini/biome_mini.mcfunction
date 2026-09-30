# Đứng tại tâm khối Vàng của bệ Trận Pháp
# 1. Triệu hồi 6 Marker làm hạt giống lan truyền
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}
execute at @s run summon marker ~ ~-1 ~ {Tags:["matu_seed","phase1"]}

# 2. Tán ngẫu nhiên các hạt giống ra xung quanh trong bán kính 3 block (Tạo khung lồi lõm ban đầu)
execute at @s run spreadplayers ~ ~ 1 3 false @e[tag=matu_seed,distance=..4]

# 3. Ép các hạt giống đồng bộ lại cao độ Y chuẩn (dưới chân bệ)
execute as @e[tag=matu_seed] at @s run tp @s ~ ~-1 ~

# 4. Kích hoạt Phase 2 sau 2 tick (0.1 giây) để tạo hiệu ứng loang từ từ
schedule function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/phase2 2t