# ==================== KÍCH HOẠT KỸ NĂNG: BỘC PHÁ ====================

# 1. Kiểm tra Cooldown: Nếu đang hồi chiêu thì báo và dừng
execute if score @s MaTu_BocPha_CD matches 1.. run title @s actionbar [{"text":"[Bộc Phá] ","color":"dark_purple","bold":true},{"text":"Kỹ năng đang hồi chiêu!","color":"gray"}]
execute if score @s MaTu_BocPha_CD matches 1.. run return 0

# 2. Lấy lượng máu hiện tại
execute store result score @s matu_hp_calc run data get entity @s Health 1

# Ngăn chặn nếu máu quá thấp (< 6 HP) để tránh người chơi tự tử
execute if score @s matu_hp_calc matches ..5 run tellraw @s [{"text":"[Bộc Phá] ","color":"dark_purple","bold":true},{"text":"Sinh lực quá yếu, kinh mạch không đủ khí huyết để bộc phá!","color":"red"}]
execute if score @s matu_hp_calc matches ..5 run return 0

# 3. Tính toán 10% máu mất đi (HP / 10)
scoreboard players operation #hp_loss matu_math = @s matu_hp_calc
scoreboard players set #ten matu_math 10
scoreboard players operation #hp_loss matu_math /= #ten matu_math
execute if score #hp_loss matu_math matches ..0 run scoreboard players set #hp_loss matu_math 1

# 4. Tính toán 15% giáp ảo Absorption (Level = HP * 15 / 400)
scoreboard players operation #absorb_lvl matu_math = @s matu_hp_calc
scoreboard players set #fifteen matu_math 15
scoreboard players operation #absorb_lvl matu_math *= #fifteen matu_math
scoreboard players set #fourhundred matu_math 400
scoreboard players operation #absorb_lvl matu_math /= #fourhundred matu_math
execute if score #absorb_lvl matu_math matches ..-1 run scoreboard players set #absorb_lvl matu_math 0

# 5. Lưu vào Storage và thực thi macro
execute store result storage matu:bocpha hp_loss int 1 run scoreboard players get #hp_loss matu_math
execute store result storage matu:bocpha absorb_lvl int 1 run scoreboard players get #absorb_lvl matu_math

function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/hoancotdan/apply with storage matu:bocpha
