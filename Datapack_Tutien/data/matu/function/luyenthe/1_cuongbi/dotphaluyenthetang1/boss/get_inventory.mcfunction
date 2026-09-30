# ==================== BƯỚC 1: CLEAR SẠCH SẼ DATA (GIỐNG NHAU 100%) ====================
# Xóa tận gốc dữ liệu cũ lưu trong Storage từ các lần chạy trước
data remove storage matu:get_profile weapon_max
data remove storage matu:get_profile helmet_max
data remove storage matu:get_profile chestplate_max
data remove storage matu:get_profile leggings_max
data remove storage matu:get_profile boots_max

# Khởi tạo TẤT CẢ các mốc ban đầu về dạng Object trống rỗng giống hệt nhau
data modify storage matu:get_profile weapon_max set value {}
data modify storage matu:get_profile helmet_max set value {}
data modify storage matu:get_profile chestplate_max set value {}
data modify storage matu:get_profile leggings_max set value {}
data modify storage matu:get_profile boots_max set value {}

# ==================== BƯỚC 2: QUÉT TÚI ĐỒ VÀ BỔ SUNG ĐỒ ĐANG MẶC TRÊN NGƯỜI ====================
### 1. Quét toàn bộ kho đồ trong túi ném vào mảng lưu trữ tạm trước
data modify storage matu:get_profile player_inventory set from entity @s Inventory

### 2. Sử dụng map "equipment" chuẩn từ 1.21.5+ để bốc đồ đang mặc (Ép sẵn Slot về 0b)
# Kiểm tra Mũ (equipment.head)
execute if data entity @s equipment.head run data modify storage matu:get_profile temp_armor set from entity @s equipment.head
execute if data entity @s equipment.head run data modify storage matu:get_profile temp_armor.Slot set value 0b
execute if data entity @s equipment.head run data modify storage matu:get_profile player_inventory append from storage matu:get_profile temp_armor

# Kiểm tra Áo (equipment.chest)
execute if data entity @s equipment.chest run data modify storage matu:get_profile temp_armor set from entity @s equipment.chest
execute if data entity @s equipment.chest run data modify storage matu:get_profile temp_armor.Slot set value 0b
execute if data entity @s equipment.chest run data modify storage matu:get_profile player_inventory append from storage matu:get_profile temp_armor

# Kiểm tra Quần (equipment.legs)
execute if data entity @s equipment.legs run data modify storage matu:get_profile temp_armor set from entity @s equipment.legs
execute if data entity @s equipment.legs run data modify storage matu:get_profile temp_armor.Slot set value 0b
execute if data entity @s equipment.legs run data modify storage matu:get_profile player_inventory append from storage matu:get_profile temp_armor

# Kiểm tra Giày (equipment.feet)
execute if data entity @s equipment.feet run data modify storage matu:get_profile temp_armor set from entity @s equipment.feet
execute if data entity @s equipment.feet run data modify storage matu:get_profile temp_armor.Slot set value 0b
execute if data entity @s equipment.feet run data modify storage matu:get_profile player_inventory append from storage matu:get_profile temp_armor

# Dọn dẹp bộ nhớ tạm
data remove storage matu:get_profile temp_armor

### Nếu không có món nào thì chỉ thông báo say để kiểm tra công thức
# execute as @s unless items entity @s container.* #swords run say không có 0
# execute as @s unless items entity @s container.* #head_armor run say không có 1
# execute as @s unless items entity @s container.* #chest_armor run say không có 2
# execute as @s unless items entity @s container.* #leg_armor run say không có 3
# execute as @s unless items entity @s container.* #foot_armor run say không có 4

### Bắt đầu xử lý nạp dữ liệu vòng lặp
summon armor_stand ~ 255 ~ {Tags:["BoLocSatThuong"],Invisible:1b,NoGravity:1b}

# Reset tất cả các mốc điểm số hệ thống về số 0 tròn trĩnh
scoreboard players set #max_weapon MaTu_Boss_System 0
scoreboard players set #max_helmet MaTu_Boss_System 0
scoreboard players set #max_chestplate MaTu_Boss_System 0
scoreboard players set #max_leggings MaTu_Boss_System 0
scoreboard players set #max_boots MaTu_Boss_System 0

# Tạo bản sao danh sách túi đồ để chạy vòng lặp cắt đuôi
data modify storage matu:get_profile loop_inventory set from storage matu:get_profile player_inventory

### Gọi function vòng lặp quét đồ mạnh hơn trong túi (Vòng lặp gốc của bạn)
function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/loop_check_inventory

# Xóa con giáp bộ lọc sau khi hoàn thành quét
kill @e[type=armor_stand,tag=BoLocSatThuong]