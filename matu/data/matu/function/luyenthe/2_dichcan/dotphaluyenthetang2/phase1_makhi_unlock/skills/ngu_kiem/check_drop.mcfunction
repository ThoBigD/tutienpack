# ==================== KIỂM TRA VẬT PHẨM VỪA NÉM ====================

# 1. Đánh dấu đã kiểm tra để không quét lại ở các tick sau
tag @s add matu_item_checked

# 2. Nhận diện các loại kiếm (Hỗ trợ cả thẻ kiếm 1.21 lẫn kiểm tra NBT kiếm vanilla)
execute if items entity @s contents #minecraft:swords run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:netherite_sword"}}] run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:diamond_sword"}}] run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:iron_sword"}}] run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:golden_sword"}}] run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:stone_sword"}}] run tag @s add is_a_sword
execute if entity @s[nbt={Item:{id:"minecraft:wooden_sword"}}] run tag @s add is_a_sword

# 3. Nếu không phải kiếm, kết thúc kiểm tra
execute unless entity @s[tag=is_a_sword] run return 0
tag @s remove is_a_sword

# 4. Đánh dấu thanh kiếm này để chuyển giao dữ liệu an toàn
tag @s add matu_current_dropped_sword

# 5. Kích hoạt kỹ năng cho người chơi vừa ném kiếm ở cự ly gần nhất (trong 3.5 block)
execute as @p[distance=..2] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/ngu_kiem/trigger_drop

# 6. Xóa tag đánh dấu tạm thời nếu vật phẩm không bị tiêu hủy
tag @s remove matu_current_dropped_sword
