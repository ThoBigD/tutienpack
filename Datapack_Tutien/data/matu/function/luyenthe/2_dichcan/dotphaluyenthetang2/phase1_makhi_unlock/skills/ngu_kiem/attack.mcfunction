# ==================== TRẢM KÍCH XUYÊN MỤC TIÊU & HÚT MÁU ====================

# 1. Gây sát thương ma kiếm lên mục tiêu từ chủ nhân (tự động fallback nếu PvP bị chặn)
execute store success score #dmg_success matu_math run damage @e[tag=ngukiem_target_nearest,limit=1] 10 matu:phan_phe by @e[tag=current_sword_owner,limit=1]
execute if score #dmg_success matu_math matches 0 run damage @e[tag=ngukiem_target_nearest,limit=1] 10 matu:phan_phe

# 2. Hiệu ứng chém xé toạc huyết nhục
execute at @e[tag=ngukiem_target_nearest,limit=1] run particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 0.1 25
execute at @e[tag=ngukiem_target_nearest,limit=1] run particle sweep_attack ~ ~1 ~ 0 0 0 0 1
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 1.2 1.6

# 3. Huyết Lực truyền thẳng về chủ nhân: Hồi máu mỗi đòn đánh và tăng 2 Ma Khí
scoreboard players add @e[tag=current_sword_owner,limit=1] MaTu_HealCount 1
execute as @e[tag=current_sword_owner,limit=1] if score @s MaTu_HealCount matches 1 run effect give @s minecraft:regeneration 1 1 true
execute as @e[tag=current_sword_owner,limit=1] if score @s MaTu_HealCount matches 2.. run effect give @s minecraft:regeneration 1 2 true
execute as @e[tag=current_sword_owner,limit=1] if score @s MaTu_HealCount matches 2.. run scoreboard players set @s MaTu_HealCount 0

scoreboard players add @e[tag=current_sword_owner,limit=1] MaTu_MaKhi 2
execute as @e[tag=current_sword_owner,limit=1] at @s run particle soul ~ ~1.2 ~ 0.2 0.3 0.2 0.02 6

# 4. Kiếm phóng xuyên qua mục tiêu (vượt thêm 2.8 block về phía trước)
execute as @e[tag=this_player_sword,limit=1] at @s positioned ^ ^ ^2.8 run tp @s ~ ~ ~ ~ ~
execute at @e[tag=this_player_sword,limit=1] run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 10
execute at @e[tag=this_player_sword,limit=1] run particle crimson_spore ~ ~ ~ 0.1 0.1 0.1 0.05 10

# 5. Chuyển trạng thái người chơi sang State 2 (Kiếm bay quay trở lại chủ)
scoreboard players set @e[tag=current_sword_owner,limit=1] MaTu_SwordState 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.6 1.8

# 6. Dọn sạch tag mục tiêu
tag @e[tag=ngukiem_target_nearest] remove ngukiem_target_nearest
tag @e[tag=ngukiem_target] remove ngukiem_target
tag @e[tag=ngukiem_cand] remove ngukiem_cand
