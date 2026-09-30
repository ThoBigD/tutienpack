# ==================== KỸ NĂNG BỊ ĐỘNG: HẤP THỤ LINH KHÍ ====================
# Chỉ hoạt động khi người chơi đã dùng Tà Huyết Phá Chướng Đan
execute as @s[tag=tahuyetdan_eat] run scoreboard players add @s MaTu_Absorb_Timer 1

# Mỗi 50 tick (2.5 giây) tiến hành hút khí từ tối đa 2 mục tiêu sống gần nhất trong phạm vi 8 blocks
execute as @s[tag=tahuyetdan_eat,scores={MaTu_Absorb_Timer=50..}] at @s run tag @s add current_absorb_caster
execute as @s[tag=current_absorb_caster] at @s run execute as @e[type=!#matu:no_hp,distance=0.5..8] unless entity @s[tag=current_absorb_caster] run tag @s add absorb_cand
tag @a[gamemode=creative] remove absorb_cand
tag @a[gamemode=spectator] remove absorb_cand
tag @e[tag=ma_kiem_display] remove absorb_cand
tag @e[tag=ma_kiem_carrier] remove absorb_cand

execute as @s[tag=current_absorb_caster] at @s run execute as @e[tag=absorb_cand,limit=2,sort=nearest] at @s run function matu:luyenthe/2_dichcan/dotphaluyenthetang2/phase1_makhi_unlock/skills/tahuyetdan/absorb_target

tag @e[tag=absorb_cand] remove absorb_cand
execute as @s[tag=current_absorb_caster] run tag @s remove current_absorb_caster

# Reset bộ đếm chu kỳ về 0
execute as @s[tag=tahuyetdan_eat,scores={MaTu_Absorb_Timer=50..}] run scoreboard players set @s MaTu_Absorb_Timer 0
