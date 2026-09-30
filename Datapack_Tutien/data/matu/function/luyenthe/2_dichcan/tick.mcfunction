## Auto lên máu và dmg theo tầng
# +80 HP và +20 DMG + 15 Giáp
attribute @s minecraft:max_health modifier add matu:hp_tang2 80 add_value
attribute @s minecraft:attack_damage modifier add matu:dmg_tang2 20 add_value
attribute @s armor modifier add matu:armor_tang2 15 add_value

# phản phệ
scoreboard players add @s[scores={MaTu_MaKhi=5..}] MaTu_PhanPhe 1

execute at @s[scores={MaTu_MaKhi=5..99,MaTu_PhanPhe=40..}] run function matu:luyenthe/2_dichcan/phanphe/giaidoan1
execute at @s[scores={MaTu_MaKhi=100..199,MaTu_PhanPhe=140..}] run function matu:luyenthe/2_dichcan/phanphe/giaidoan2
execute at @s[scores={MaTu_MaKhi=200..,MaTu_PhanPhe=20..}] run function matu:luyenthe/2_dichcan/phanphe/giaidoan3

# Khoá ma khí nhận vào tối đa khi unlock hết
scoreboard players set @s[scores={MaTu_MaKhi=300..}] MaTu_MaKhi 300
# Mở khoá từng mốc ma khí (công thức)
function matu:luyenthe/2_dichcan/dotphaluyenthetang2/tick
# Mở khoá từng mốc ma khí (giới hạn)
scoreboard players set @s[scores={MaTu_MaKhi=99..},tag=!tahuyetdan_eat] MaTu_MaKhi 99
scoreboard players set @s[scores={MaTu_MaKhi=199..},tag=!hoancotdan_eat] MaTu_MaKhi 199

