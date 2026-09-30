# 1. Tìm lại khối Interaction (Tâm bệ Trận Pháp) và vá lại khối Vàng ở giữa nếu lỡ bị Marker đè mất
execute as @e[tag=TranPhap_Tang1] at @s run setblock ~ ~-1 ~ minecraft:gold_block replace
execute as @e[tag=TranPhap_Tang1] at @s run setblock ~ ~-1 ~ minecraft:gold_block replace
execute as @e[tag=TranPhap_Tang1] at @s run setblock ~ ~-1 ~ minecraft:gold_block replace

# 2. Bắn một đợt bụi dust màu rực rỡ tại tâm khi hoàn thành mini biome
execute as @e[tag=TranPhap_Tang1] at @s run particle minecraft:dust{color:[0.6,0.1,0.9],scale:1.5} ~ ~0.5 ~ 1.5 0.2 1.5 0.05 100 normal

# 3. Xóa sổ hoàn toàn các Marker hạt giống, kết thúc quy trình loang biome
kill @e[tag=matu_seed]