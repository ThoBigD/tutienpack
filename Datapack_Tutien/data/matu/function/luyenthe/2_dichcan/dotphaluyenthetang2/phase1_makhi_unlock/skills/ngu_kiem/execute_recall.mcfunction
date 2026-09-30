# ==================== THỰC THI THU HỒI MA KIẾM VỀ TAY CHỦ NHÂN (UUID) ====================

# 1. Nhận diện giá đỡ và kiếm bay của người chơi này theo UUID
$execute as @e[tag=ma_kiem_carrier] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_carrier
$execute as @e[tag=ma_kiem_display] if data entity @s data{owner_uuid:"$(player_profile)"} run tag @s add this_player_sword

# 2. Trả lại chính xác thanh kiếm vào tay chính của người chơi
item replace entity @s weapon.mainhand from entity @e[tag=this_player_carrier,limit=1] weapon.mainhand

# 3. Tiêu hủy thực thể kiếm bay và giá đỡ mang UUID tương ứng
kill @e[tag=this_player_sword]
kill @e[tag=this_player_carrier]

# 4. Hiệu ứng âm thanh và hạt thu kiếm
playsound minecraft:item.armor.equip_iron master @s ~ ~ ~ 1.5 1.0
playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1.2 1.6
particle crimson_spore ~ ~1 ~ 0.3 0.3 0.3 0.05 15

# 5. Thông báo thanh trạng thái
tellraw @s [{"text":"[MA KIẾM QUY VỊ] ","color":"green","bold":true},{"text":"Thu hồi ma kiếm thành công!","color":"gray"}]
