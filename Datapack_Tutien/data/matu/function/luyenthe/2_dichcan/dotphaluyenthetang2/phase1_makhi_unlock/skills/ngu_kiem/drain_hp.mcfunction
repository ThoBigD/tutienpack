# ==================== TIÊU HAO KHÍ HUYẾT DUY TRÌ MA KIẾM ====================

# 1. Reset bộ đếm 20 tick (1 giây)
scoreboard players set @s MaTu_HpDrain 0

# 2. Kiểm tra máu hiện tại của người chơi
execute store result score @s matu_hp_check run data get entity @s Health 1

# 3. Failsafe: Nếu máu còn <= 2 HP, tự động thu hồi ma kiếm để bảo toàn tính mạng
execute if score @s matu_hp_check matches ..3 run title @s actionbar [{"text":"[CẢNH BÁO] ","color":"red","bold":true},{"text":"Sinh lực cạn kiệt, ma kiếm tự động thu hồi!","color":"gold"}]
execute if score @s matu_hp_check matches ..3 run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/recall_sword
execute if score @s matu_hp_check matches ..3 run return 0

# 4. Trừ 1 HP mỗi giây do tiêu hao huyết khí
damage @s 2 matu:phan_phe
particle damage_indicator ~ ~1 ~ 0.2 0.3 0.2 0.05 4
playsound minecraft:entity.player.hurt master @s ~ ~ ~ 0.4 1.6
