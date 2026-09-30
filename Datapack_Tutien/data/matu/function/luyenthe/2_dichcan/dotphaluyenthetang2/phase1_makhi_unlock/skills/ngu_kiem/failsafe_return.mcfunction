# ==================== HOÀN TRẢ KHẨN CẤP (BẢO TOÀN VẬT PHẨM THEO UUID) ====================

# 1. Nhận diện giá đỡ và kiếm bay của người chơi này theo UUID
$execute as @e[tag=ma_kiem_carrier] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_carrier
$execute as @e[tag=ma_kiem_display] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_sword

# 2. Hoàn trả kiếm và dọn dẹp
item replace entity @s weapon.mainhand from entity @e[tag=this_player_carrier,limit=1] weapon.mainhand
kill @e[tag=this_player_sword]
kill @e[tag=this_player_carrier]
tag @s remove matu_ngukiem_active
scoreboard players set @s MaTu_SwordState 0
scoreboard players set @s MaTu_AttackCD 0
