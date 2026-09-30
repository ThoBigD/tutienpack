# 1. Bốc phần tử hiện tại ở đầu danh sách để so sánh
data modify storage matu:get_profile current_item set from storage matu:get_profile loop_inventory[0]

# 2. ĐẶT RƯƠNG TẠM: Tạo rương sạch tại cao độ 255 để nạp dữ liệu
setblock ~ 255 ~ minecraft:chest
data modify block ~ 255 ~ Items set value []
data modify block ~ 255 ~ Items append value {Slot:0b, count:1b, id:"minecraft:stone"}
data modify block ~ 255 ~ Items[0] merge from storage matu:get_profile current_item

# ==================== PHẦN 1: QUÉT VŨ KHÍ ====================
# Đặt điểm sát thương mặc định cho các loại kiếm cơ bản (nếu là kiếm trơn)
scoreboard players set #current_lvl MaTu_Boss_System 0
execute if items block ~ 255 ~ container.0 minecraft:wooden_sword run scoreboard players set #current_lvl MaTu_Boss_System 4
execute if items block ~ 255 ~ container.0 minecraft:golden_sword run scoreboard players set #current_lvl MaTu_Boss_System 4
execute if items block ~ 255 ~ container.0 minecraft:stone_sword run scoreboard players set #current_lvl MaTu_Boss_System 5
execute if items block ~ 255 ~ container.0 minecraft:iron_sword run scoreboard players set #current_lvl MaTu_Boss_System 6
execute if items block ~ 255 ~ container.0 minecraft:diamond_sword run scoreboard players set #current_lvl MaTu_Boss_System 7
execute if items block ~ 255 ~ container.0 minecraft:netherite_sword run scoreboard players set #current_lvl MaTu_Boss_System 8

# Nếu là Ma Kiếm có dòng thuộc tính custom (components ẩn), bốc thẳng chỉ số sát thương đó ra làm điểm
execute if items block ~ 255 ~ container.0 #swords if data block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers" store result score #current_lvl MaTu_Boss_System run data get block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers"[0].amount

# So sánh điểm: Nếu mạnh hơn cây kiếm cũ thì ghi đè vào Storage
execute if items block ~ 255 ~ container.0 #swords if score #current_lvl MaTu_Boss_System > #max_weapon MaTu_Boss_System run data modify storage matu:get_profile weapon_max set from storage matu:get_profile current_item
execute if items block ~ 255 ~ container.0 #swords if score #current_lvl MaTu_Boss_System > #max_weapon MaTu_Boss_System run scoreboard players operation #max_weapon MaTu_Boss_System = #current_lvl MaTu_Boss_System

# ==================== PHẦN 2: QUÉT GIÁP TỰ ĐỘNG THEO COMPONENT ====================
# --- QUÉT MŨ (#head_armor) ---
scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:leather_helmet run scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:golden_helmet run scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:chainmail_helmet run scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:iron_helmet run scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:diamond_helmet run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* minecraft:netherite_helmet run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* #head_armor if data block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers" store result score #current_lvl MaTu_Boss_System run data get block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers"[0].amount

execute if items block ~ 255 ~ container.* #head_armor if score #current_lvl MaTu_Boss_System > #max_helmet MaTu_Boss_System run data modify storage matu:get_profile helmet_max set from storage matu:get_profile current_item
execute if items block ~ 255 ~ container.* #head_armor if score #current_lvl MaTu_Boss_System > #max_helmet MaTu_Boss_System run scoreboard players operation #max_helmet MaTu_Boss_System = #current_lvl MaTu_Boss_System

# --- QUÉT ÁO (#chest_armor) ---
scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* minecraft:leather_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* minecraft:golden_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 5
execute if items block ~ 255 ~ container.* minecraft:chainmail_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 5
execute if items block ~ 255 ~ container.* minecraft:iron_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 6
execute if items block ~ 255 ~ container.* minecraft:diamond_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 8
execute if items block ~ 255 ~ container.* minecraft:netherite_chestplate run scoreboard players set #current_lvl MaTu_Boss_System 8
execute if items block ~ 255 ~ container.* #chest_armor if data block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers" store result score #current_lvl MaTu_Boss_System run data get block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers"[0].amount

execute if items block ~ 255 ~ container.* #chest_armor if score #current_lvl MaTu_Boss_System > #max_chestplate MaTu_Boss_System run data modify storage matu:get_profile chestplate_max set from storage matu:get_profile current_item
execute if items block ~ 255 ~ container.* #chest_armor if score #current_lvl MaTu_Boss_System > #max_chestplate MaTu_Boss_System run scoreboard players operation #max_chestplate MaTu_Boss_System = #current_lvl MaTu_Boss_System

# --- QUÉT QUẦN (#leg_armor) ---
scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:leather_leggings run scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:golden_leggings run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* minecraft:chainmail_leggings run scoreboard players set #current_lvl MaTu_Boss_System 4
execute if items block ~ 255 ~ container.* minecraft:iron_leggings run scoreboard players set #current_lvl MaTu_Boss_System 5
execute if items block ~ 255 ~ container.* minecraft:diamond_leggings run scoreboard players set #current_lvl MaTu_Boss_System 6
execute if items block ~ 255 ~ container.* minecraft:netherite_leggings run scoreboard players set #current_lvl MaTu_Boss_System 6
execute if items block ~ 255 ~ container.* #leg_armor if data block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers" store result score #current_lvl MaTu_Boss_System run data get block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers"[0].amount

execute if items block ~ 255 ~ container.* #leg_armor if score #current_lvl MaTu_Boss_System > #max_leggings MaTu_Boss_System run data modify storage matu:get_profile leggings_max set from storage matu:get_profile current_item
execute if items block ~ 255 ~ container.* #leg_armor if score #current_lvl MaTu_Boss_System > #max_leggings MaTu_Boss_System run scoreboard players operation #max_leggings MaTu_Boss_System = #current_lvl MaTu_Boss_System

# --- QUÉT GIÀY (#foot_armor) ---
scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:leather_boots run scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:golden_boots run scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:chainmail_boots run scoreboard players set #current_lvl MaTu_Boss_System 1
execute if items block ~ 255 ~ container.* minecraft:iron_boots run scoreboard players set #current_lvl MaTu_Boss_System 2
execute if items block ~ 255 ~ container.* minecraft:diamond_boots run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* minecraft:netherite_boots run scoreboard players set #current_lvl MaTu_Boss_System 3
execute if items block ~ 255 ~ container.* #foot_armor if data block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers" store result score #current_lvl MaTu_Boss_System run data get block ~ 255 ~ Items[0].components."minecraft:attribute_modifiers"[0].amount

execute if items block ~ 255 ~ container.* #foot_armor if score #current_lvl MaTu_Boss_System > #max_boots MaTu_Boss_System run data modify storage matu:get_profile boots_max set from storage matu:get_profile current_item
execute if items block ~ 255 ~ container.* #foot_armor if score #current_lvl MaTu_Boss_System > #max_boots MaTu_Boss_System run scoreboard players operation #max_boots MaTu_Boss_System = #current_lvl MaTu_Boss_System

# 3. XÓA RƯƠNG TẠM: Dọn dẹp block ở cao độ 255 để kết thúc vòng lặp hiện tại sạch sẽ
setblock ~ 255 ~ minecraft:air
data remove storage matu:get_profile loop_inventory[0]

# 4. ĐỆ QUY: Nếu danh sách vẫn còn đồ, tiếp tục gọi lại chính nó để quét tiếp
execute if data storage matu:get_profile loop_inventory[0] run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/loop_check_inventory