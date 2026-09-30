# ==================== KỸ NĂNG CHỦ ĐỘNG: BỘC PHÁ ====================

# 1. Trừ Cooldown mỗi tick
execute as @s[scores={MaTu_BocPha_CD=1..}] run scoreboard players remove @s MaTu_BocPha_CD 1

# 2. Kiểm tra kích hoạt chủ động khi người chơi đã dùng Hoán Cốt Đan và bấm Sneak (Shift)
execute as @s[tag=hoancotdan_eat,scores={MaTu_Sneak=1..}] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/hoancotdan/cast

# 3. Luôn reset điểm nhận diện Sneak để tránh kích hoạt liên tục
scoreboard players set @s[scores={MaTu_Sneak=1..}] MaTu_Sneak 0
