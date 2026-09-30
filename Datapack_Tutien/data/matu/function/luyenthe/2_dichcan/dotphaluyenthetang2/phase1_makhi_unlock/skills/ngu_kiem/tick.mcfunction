# ==================== TICK HỆ THỐNG HUYẾT LINH NGỰ KIẾM ====================

# 1. Trừ Cooldown kỹ năng và Cooldown tấn công đòn chém (2s = 40 tick)
execute as @a[scores={MaTu_Ngukiem_CD=1..}] run scoreboard players remove @s MaTu_Ngukiem_CD 1
execute as @a[scores={MaTu_AttackCD=1..}] run scoreboard players remove @s MaTu_AttackCD 1

# 2. Thu hồi kiếm ngay lập tức khi người chơi ấn Shift (Sneak)
execute as @a[tag=matu_ngukiem_active] if predicate matu:is_sneaking at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/recall_sword
# execute as @a[tag=matu_ngukiem_active,nbt={Pose:"CROUCHING"}] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/recall_sword

# 3. Quét phát hiện kiếm vừa ném ra
execute as @e[type=item,tag=!matu_item_checked] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/check_drop

# 4. Tiêu hao 1 HP mỗi giây khi ngự kiếm bay lâu
execute as @a[tag=matu_ngukiem_active] run scoreboard players add @s MaTu_HpDrain 1
execute as @a[tag=matu_ngukiem_active,scores={MaTu_HpDrain=20..}] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/drain_hp

# 5. Chạy vòng lặp điều khiển kiếm cho từng người chơi đang kích hoạt
execute as @a[tag=matu_ngukiem_active] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/player_tick
