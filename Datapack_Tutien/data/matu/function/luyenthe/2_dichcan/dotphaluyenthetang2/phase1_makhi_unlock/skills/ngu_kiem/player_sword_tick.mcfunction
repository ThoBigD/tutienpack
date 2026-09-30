# ==================== ĐIỀU KHIỂN MA KIẾM THEO TRẠNG THÁI ====================

# 1. Nhận diện chính xác thực thể kiếm và giá đỡ thuộc về người chơi này qua UUID
$execute as @e[tag=ma_kiem_display] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_sword
$execute as @e[tag=ma_kiem_carrier] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_carrier

# 2. Đảm bảo trạng thái ban đầu luôn hợp lệ (0: hộ thể bên cạnh, 1: xuất kích tấn công, 2: quay về)
execute unless score @s MaTu_SwordState matches 1..2 run scoreboard players set @s MaTu_SwordState 0

# -------------------- STATE 0: HỘ THỂ BÊN CẠNH NGƯỜI CHƠI (IDLE / BESIDE PLAYER) --------------------
# Kiếm bám chặt bên phải vai người chơi (^-0.85 ^0.85 ^-0.15), xoay đồng bộ theo hướng nhìn của người chơi
execute if score @s MaTu_SwordState matches 0 as @e[tag=this_player_sword,limit=1] at @e[tag=current_sword_owner,limit=1] rotated ~ 0 positioned ^-0.85 ^0.85 ^-0.15 run tp @s ~ ~ ~ ~ 0
execute if score @s MaTu_SwordState matches 0 at @e[tag=this_player_sword,limit=1] run particle crimson_spore ~ ~ ~ 0.04 0.04 0.04 0.01 2
execute if score @s MaTu_SwordState matches 0 at @e[tag=this_player_sword,limit=1] run particle flame ~ ~ ~ 0.02 0.02 0.02 0.01 1

# Khi hồi chiêu đòn đánh 2s (40 tick) kết thúc: Quét tìm mục tiêu gần nhất có HP thấp nhất trong 12 block
execute if score @s MaTu_SwordState matches 0 if score @s MaTu_AttackCD matches ..0 run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/find_target
execute if score @s MaTu_SwordState matches 0 if score @s MaTu_AttackCD matches ..0 if entity @e[tag=ngukiem_target_nearest] run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1.2 1.2
execute if score @s MaTu_SwordState matches 0 if score @s MaTu_AttackCD matches ..0 if entity @e[tag=ngukiem_target_nearest] run scoreboard players set @s MaTu_SwordState 1

# -------------------- STATE 1: PHÓNG XUYÊN MỤC TIÊU (CHARGE / PIERCE) --------------------
# Nếu mục tiêu biến mất hoặc chết trước khi kiếm tới, chuyển sang bay về chủ
execute if score @s MaTu_SwordState matches 1 unless entity @e[tag=ngukiem_target_nearest] run scoreboard players set @s MaTu_SwordState 2

# Kiếm phóng thẳng về phía mắt mục tiêu (tốc độ 1.5 block/tick)
execute if score @s MaTu_SwordState matches 1 if entity @e[tag=ngukiem_target_nearest] as @e[tag=this_player_sword,limit=1] at @s facing entity @e[tag=ngukiem_target_nearest,limit=1] eyes positioned ^ ^ ^1.5 run tp @s ~ ~ ~ ~ ~
execute if score @s MaTu_SwordState matches 1 if entity @e[tag=ngukiem_target_nearest] at @e[tag=this_player_sword,limit=1] run particle flame ~ ~ ~ 0.05 0.05 0.05 0.02 3
execute if score @s MaTu_SwordState matches 1 if entity @e[tag=ngukiem_target_nearest] at @e[tag=this_player_sword,limit=1] run particle witch ~ ~ ~ 0.03 0.03 0.03 0.01 2

# Khi kiếm chạm cự ly trảm kích (<= 2.2 block): Thi triển trảm kích, chém xuyên mục tiêu và chuyển State 2
execute if score @s MaTu_SwordState matches 1 if entity @e[tag=ngukiem_target_nearest] as @e[tag=this_player_sword,limit=1] at @s if entity @e[tag=ngukiem_target_nearest,distance=..2.2] run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/attack with storage matu:ngukiem

# -------------------- STATE 2: QUAY TRỞ LẠI VẬT CHỦ (RETURN TO HOST) --------------------
# Kiếm bay thẳng về phía chủ nhân (tốc độ 1.5 block/tick)
execute if score @s MaTu_SwordState matches 2 as @e[tag=this_player_sword,limit=1] at @s facing entity @e[tag=current_sword_owner,limit=1] eyes positioned ^ ^ ^1.5 run tp @s ~ ~ ~ ~ ~
execute if score @s MaTu_SwordState matches 2 at @e[tag=this_player_sword,limit=1] run particle soul ~ ~ ~ 0.03 0.03 0.03 0.01 2

# Khi kiếm bay về sát chủ nhân (<= 2.2 block): Trở về vị trí hộ thể bên cạnh và đặt hồi chiêu đòn đánh 2s (40 tick)
# execute if score @s MaTu_SwordState matches 2 as @e[tag=this_player_sword,limit=1] at @s if entity @e[tag=current_sword_owner,distance=..2.2] run playsound minecraft:entity.experience_orb.pickup master @e[tag=current_sword_owner,limit=1] ~ ~ ~ 0.8 1.5
# execute if score @s MaTu_SwordState matches 2 as @e[tag=this_player_sword,limit=1] at @s if entity @e[tag=current_sword_owner,distance=..2.2] run particle flash ~ ~1 ~ 0 0 0 0 1
execute if score @s MaTu_SwordState matches 2 as @e[tag=this_player_sword,limit=1] at @s if entity @e[tag=current_sword_owner,distance=..2.2] run scoreboard players set @e[tag=current_sword_owner,limit=1] MaTu_AttackCD 40
execute if score @s MaTu_SwordState matches 2 as @e[tag=this_player_sword,limit=1] at @s if entity @e[tag=current_sword_owner,distance=..2.2] run scoreboard players set @e[tag=current_sword_owner,limit=1] MaTu_SwordState 0

# -------------------- FAILSAFE: CHỐNG KẸT / BAY QUÁ XA --------------------
# Nếu kiếm cách người chơi > 22 block trong lúc di chuyển, ngay lập tức kéo kiếm về bên cạnh chủ
execute unless score @s MaTu_SwordState matches 0 as @e[tag=this_player_sword,limit=1,distance=22..] at @e[tag=current_sword_owner,limit=1] rotated ~ 0 positioned ^-0.85 ^0.85 ^-0.15 run tp @s ~ ~ ~ ~ 0
execute unless score @s MaTu_SwordState matches 0 at @s if entity @e[tag=this_player_sword,distance=22..] run scoreboard players set @s MaTu_AttackCD 40
execute unless score @s MaTu_SwordState matches 0 at @s if entity @e[tag=this_player_sword,distance=22..] run scoreboard players set @s MaTu_SwordState 0
