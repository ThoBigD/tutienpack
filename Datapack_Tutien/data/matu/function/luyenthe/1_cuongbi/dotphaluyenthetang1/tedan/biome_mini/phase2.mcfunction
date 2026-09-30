# 1. Biến đổi block tại vị trí hiện tại của hạt giống sang Cỏ Địa Ngục Đỏ
execute as @e[tag=phase1] at @s run setblock ~ ~ ~ minecraft:crimson_nylium replace 

# 2. Cho các hạt giống nhảy ngẫu nhiên sang hướng bất kỳ để mở rộng viền răng cưa
execute as @e[tag=phase1] at @s if predicate matu:biome/random_50 run tp @s ~1 ~ ~
execute as @e[tag=phase1] at @s if predicate matu:biome/random_50 run tp @s ~-1 ~ ~
execute as @e[tag=phase1] at @s if predicate matu:biome/random_50 run tp @s ~ ~ ~1
execute as @e[tag=phase1] at @s if predicate matu:biome/random_50 run tp @s ~ ~ ~-1

# 3. Biến đổi vị trí mới sang Cỏ Địa Ngục Xanh (Tạo sự pha trộn màu sắc ngẫu nhiên)
execute as @e[tag=phase1] at @s run setblock ~ ~ ~ minecraft:warped_nylium replace 

# 4. Chuyển sang Phase 3 sau 2 tick tiếp theo
execute as @e[tag=phase1] run tag @s add phase2
execute as @e[tag=phase1] run tag @s remove phase1
schedule function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/phase3 2t