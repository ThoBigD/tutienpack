# ==================== TẾ XUẤT MA KIẾM THEO UUID ĐỘC NHẤT ====================

# 1. Triệu hồi giá đỡ vô hình trên tầng không (150 block trên cao) mang đúng UUID của người chơi
$summon armor_stand ~ ~150 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ma_kiem_carrier","new_sword_carrier"],ArmorItems:[{},{},{},{}],HandItems:[{}],data:{owner_uuid:"$(player_profile)"}}

# 2. Chuyển toàn bộ dữ liệu của thanh kiếm vừa rơi vào giá đỡ trên cao
execute as @e[tag=new_sword_carrier,limit=1] run item replace entity @s weapon.mainhand from entity @e[tag=matu_current_dropped_sword,limit=1] contents
tag @e[tag=new_sword_carrier] remove new_sword_carrier

# 3. Triệu hồi thực thể Item Display bên cạnh người chơi mang đúng UUID
$execute at @s rotated ~ 0 positioned ^-0.85 ^0.85 ^-0.15 run summon item_display ~ ~ ~ {Tags:["ma_kiem_display","new_sword_display"],item_display:"fixed",transformation:{left_rotation:[1.5f,-0.5f,0.75f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.3f,1.3f,1.3f]},data:{owner_uuid:"$(player_profile)"}}

# 4. Gán hình ảnh kiếm lên Ma Kiếm Display
execute as @e[tag=new_sword_display,limit=1] run data modify entity @s item set from entity @e[tag=matu_current_dropped_sword,limit=1] Item
tag @e[tag=new_sword_display] remove new_sword_display

# 5. Tiêu hủy thanh kiếm dưới đất để người chơi trống tay (tế kiếm xuất kích)
execute as @e[tag=matu_current_dropped_sword,limit=1] run kill @s

# 6. Gán trạng thái và bộ đếm cho người chơi
tag @s add matu_ngukiem_active
scoreboard players set @s MaTu_Ngukiem_CD 0
scoreboard players set @s MaTu_HpDrain 0
scoreboard players set @s MaTu_HealCount 0
scoreboard players set @s MaTu_SwordState 0
scoreboard players set @s MaTu_AttackCD 40

# 7. Hiệu ứng âm thanh & hạt bùng nổ Ma Khí
playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 1.5 0.5
playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 1.8
playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1.5 0.6
particle flame ~ ~1 ~ 0.3 0.5 0.3 0.05 30
particle crimson_spore ~ ~1 ~ 0.3 0.5 0.3 0.05 20
particle soul ~ ~1 ~ 0.3 0.5 0.3 0.05 15

# 8. Thông báo thanh trạng thái
tellraw @s [{"text":"[HUYẾT LINH NGỰ KIẾM] ","color":"dark_red","bold":true},{"text":"Tế kiếm xuất kích! [Shift để thu hồi]","color":"gold"}]
