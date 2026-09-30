# Initialize missing scores for new players
execute unless score @s MaTu_Ngukiem_CD = @s MaTu_Ngukiem_CD run scoreboard players set @s MaTu_Ngukiem_CD 0
execute unless score @s MaTu_BocPha_CD = @s MaTu_BocPha_CD run scoreboard players set @s MaTu_BocPha_CD 0

# Reset actionbar storage
data modify storage matu:actionbar nk_prefix set value ""
data modify storage matu:actionbar nk_val set value ""
data modify storage matu:actionbar nk_suffix set value ""
data modify storage matu:actionbar nk_color set value "white"

data modify storage matu:actionbar bp_prefix set value ""
data modify storage matu:actionbar bp_val set value ""
data modify storage matu:actionbar bp_suffix set value ""
data modify storage matu:actionbar bp_color set value "white"

# Calculate seconds (Ceil division for better UX)
scoreboard players set #twenty matu_math 20

scoreboard players operation @s MaTu_Ngukiem_Sec = @s MaTu_Ngukiem_CD
execute if score @s MaTu_Ngukiem_Sec matches 1.. run scoreboard players add @s MaTu_Ngukiem_Sec 19
scoreboard players operation @s MaTu_Ngukiem_Sec /= #twenty matu_math

scoreboard players operation @s MaTu_BocPha_Sec = @s MaTu_BocPha_CD
execute if score @s MaTu_BocPha_Sec matches 1.. run scoreboard players add @s MaTu_BocPha_Sec 19
scoreboard players operation @s MaTu_BocPha_Sec /= #twenty matu_math

# Ngự Kiếm Logic (Unlock at luyenthe2)
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] run data modify storage matu:actionbar nk_prefix set value " | Ngự Kiếm: "
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if score @s MaTu_Ngukiem_CD matches 0 unless entity @s[tag=matu_ngukiem_active] run data modify storage matu:actionbar nk_val set value "SS"
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if score @s MaTu_Ngukiem_CD matches 0 unless entity @s[tag=matu_ngukiem_active] run data modify storage matu:actionbar nk_color set value "green"
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if entity @s[tag=matu_ngukiem_active] run data modify storage matu:actionbar nk_val set value "Đang dùng"
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if entity @s[tag=matu_ngukiem_active] run data modify storage matu:actionbar nk_color set value "aqua"
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if score @s MaTu_Ngukiem_CD matches 1.. run execute store result storage matu:actionbar nk_val int 1 run scoreboard players get @s MaTu_Ngukiem_Sec
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if score @s MaTu_Ngukiem_CD matches 1.. run data modify storage matu:actionbar nk_suffix set value "s"
execute unless entity @s[tag=luyenthe0] unless entity @s[tag=luyenthe1] if score @s MaTu_Ngukiem_CD matches 1.. run data modify storage matu:actionbar nk_color set value "red"

# Bộc Phá Logic (Unlock at hoancotdan_eat)
execute if entity @s[tag=hoancotdan_eat] run data modify storage matu:actionbar bp_prefix set value " | Bộc Phá: "
execute if entity @s[tag=hoancotdan_eat] if score @s MaTu_BocPha_CD matches 0 run data modify storage matu:actionbar bp_val set value "SS"
execute if entity @s[tag=hoancotdan_eat] if score @s MaTu_BocPha_CD matches 0 run data modify storage matu:actionbar bp_color set value "green"
execute if entity @s[tag=hoancotdan_eat] if score @s MaTu_BocPha_CD matches 1.. run execute store result storage matu:actionbar bp_val int 1 run scoreboard players get @s MaTu_BocPha_Sec
execute if entity @s[tag=hoancotdan_eat] if score @s MaTu_BocPha_CD matches 1.. run data modify storage matu:actionbar bp_suffix set value "s"
execute if entity @s[tag=hoancotdan_eat] if score @s MaTu_BocPha_CD matches 1.. run data modify storage matu:actionbar bp_color set value "red"

# Render Actionbar via Macro
function matu:luyenthe/actionbar_display with storage matu:actionbar