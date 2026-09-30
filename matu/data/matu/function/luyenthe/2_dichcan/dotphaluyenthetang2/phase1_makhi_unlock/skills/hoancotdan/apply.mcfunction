# 1. Trừ 20% máu hiện tại (sát thương phản phệ ma đạo)
attribute @s minecraft:knockback_resistance base set 1.0
$damage @s $(hp_loss) matu:phan_phe
attribute @s minecraft:knockback_resistance base set 0.0

# 2. Quy đổi sang 30% giáp ảo (Absorption) kéo dài trong 10 giây
$effect give @s minecraft:absorption 10 $(absorb_lvl) true

# 3. Hiệu ứng bộc phá ma hỏa
playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 1.5 1.4
playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 1.2 0.8
particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.08 50
particle explosion ~ ~1 ~ 0.5 0.5 0.5 0.05 10

# 4. Đặt thời gian hồi chiêu 15 giây (300 ticks)
scoreboard players set @s MaTu_BocPha_CD 300

# 5. Thông báo thanh trạng thái Actionbar
title @s actionbar [{"text":"[BỘC PHÁ] ","color":"dark_purple","bold":true},{"text":"Hy sinh 10% máu quy đổi 15% Ma Giáp Bảo Thân trong 10s!","color":"light_purple"}]
