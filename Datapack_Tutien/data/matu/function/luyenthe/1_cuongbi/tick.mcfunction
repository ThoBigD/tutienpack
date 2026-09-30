## Auto lên máu và dmg theo tầng
# +40 HP và +10 DMG
attribute @s minecraft:max_health modifier add matu:hp_tang1 40 add_value
attribute @s minecraft:attack_damage modifier add matu:dmg_tang1 10 add_value

## Phản phệ
execute at @s[scores={MaTu_MaKhi=150..299}] run scoreboard players add @s MaTu_PhanPhe 1
execute at @s[scores={MaTu_MaKhi=150..199,MaTu_PhanPhe=40}] run function matu:luyenthe/1_cuongbi/phanphe/giaidoan1
execute at @s[scores={MaTu_MaKhi=200..249,MaTu_PhanPhe=200}] run function matu:luyenthe/1_cuongbi/phanphe/giaidoan2
execute at @s[scores={MaTu_MaKhi=250..299,MaTu_PhanPhe=240}] run function matu:luyenthe/1_cuongbi/phanphe/giaidoan3

# giới hạn ma khí nhận vào
scoreboard players set @s[scores={MaTu_MaKhi=300..}] MaTu_MaKhi 300

## Đột phá tầng lên tầng 2
function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tick
