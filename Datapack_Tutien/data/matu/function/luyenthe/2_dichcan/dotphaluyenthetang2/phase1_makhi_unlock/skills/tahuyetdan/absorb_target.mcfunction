# ==================== HẤP THỤ LINH KHÍ & CHUYỂN HÓA HP ====================

# 1. Rút 4 HP của mục tiêu bằng sát thương ma công (tự động fallback nếu PvP bị chặn)
execute store success score #absorb_dmg_ok matu_math run damage @s 4 matu:phan_phe by @e[tag=current_absorb_caster,limit=1]
execute if score #absorb_dmg_ok matu_math matches 0 run damage @s 4 matu:phan_phe

# 2. Hiệu ứng khí huyết bốc lên từ mục tiêu bị rút khí
particle witch ~ ~0.8 ~ 0.25 0.35 0.25 0.05 10
particle dust{color:[0.85,0.0,0.1],scale:1.4} ~ ~0.8 ~ 0.3 0.3 0.3 0.02 8
playsound minecraft:entity.wither.shoot master @s ~ ~ ~ 0.35 1.8

# 3. Chuyển hóa linh khí thành Ma Khí cho người chơi (+1 Ma Khí)
scoreboard players add @e[tag=current_absorb_caster,limit=1] MaTu_MaKhi 1

# 4. Chuyển đổi lượng HP bị rút sang hồi phục máu trực tiếp cho người chơi (Hút Máu)
execute as @e[tag=current_absorb_caster,limit=1] at @s run effect give @s minecraft:instant_health 1 0 true

# 5. Hiệu ứng khí huyết và linh khí tụ về quanh người chơi
execute at @e[tag=current_absorb_caster,limit=1] run particle heart ~ ~1.5 ~ 0.3 0.3 0.3 0.02 3
execute at @e[tag=current_absorb_caster,limit=1] run particle soul ~ ~1.2 ~ 0.2 0.3 0.2 0.02 6
execute as @e[tag=current_absorb_caster,limit=1] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.6
