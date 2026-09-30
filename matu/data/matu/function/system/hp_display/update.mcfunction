tag @s add this

# Khởi tạo điểm mặc định nếu quái hoàn toàn chưa có điểm score để tránh lỗi câu lệnh
execute unless score @s matu_hp_display matches -2147483648..2147483647 run scoreboard players set @s matu_hp_display 0

scoreboard players operation .old matu_hp_display = @s matu_hp_display
scoreboard players operation .old_max matu_hp_display = @s matu_hp_max_disp

# Tự động nạp máu hiện tại và máu tối đa vào score ngay lập tức mỗi tick
execute store result score .new matu_hp_display run data get entity @s Health
execute store result score .new_max matu_hp_display run attribute @s max_health base get

# TỰ ĐỘNG KHỞI TẠO TÊN RIÊNG: Nếu chưa có tag, gọi get_name dịch tên sạch vào storage chung tạm thời
execute unless entity @s[tag=matu_hp_init] run data remove storage matu_hp_display MobName
execute unless entity @s[tag=matu_hp_init] at @s run function matu:system/hp_display/get_name
execute unless entity @s[tag=matu_hp_init] run tag @s add matu_hp_init

# CẤP ID VÀ LƯU TÊN: Nếu là tick đầu tiên (.old = 0)
# 1. Cấp ID tự động từ bộ đếm hệ thống cho quái nếu chưa có
execute if score .old matu_hp_display matches 0 unless score @s matu_hp_id matches 1.. run scoreboard players operation @s matu_hp_id = #current_id matu_hp_id
execute if score .old matu_hp_display matches 0 run scoreboard players add #current_id matu_hp_id 1

# Nạp ID vào storage và macros save_name
execute if score .old matu_hp_display matches 0 store result storage matu_hp_display Temp.value int 1 run scoreboard players get @s matu_hp_id
execute if score .old matu_hp_display matches 0 run function matu:system/hp_display/save_name with storage matu_hp_display Temp

execute if score .old matu_hp_display matches 1.. run function matu:system/hp_display/old

# Liên tục update ID hiện tại vào storage và macros render_text
execute store result storage matu_hp_display Temp.value int 1 run scoreboard players get @s matu_hp_id
function matu:system/hp_display/render_text with storage matu_hp_display Temp

scoreboard players operation @s matu_hp_display = .new matu_hp_display
scoreboard players operation @s matu_hp_max_disp = .new_max matu_hp_display

# Gán NAME kèm HP vào mobs
data modify entity @s CustomName set from entity @e[type=text_display,tag=matu_hp_display,limit=1] text
data modify entity @s CustomNameVisible set value 1b

tag @s remove this