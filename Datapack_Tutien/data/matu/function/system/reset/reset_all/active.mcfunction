tellraw @s ""
tellraw @s "ĐÃ RESET TOÀN BỘ HỆ THỐNG MA TU CHO BẢN THÂN"
tellraw @s ""
playsound minecraft:entity.cat.stray_ambient master @s

tag @s remove luyenthe0
tag @s remove luyenthe1
tag @s remove luyenthe2
tag @s remove luyenthe3

tag @s remove lock_recipe1
tag @s remove lock_recipe2
tag @s remove recipe_hoancotdan
tag @s remove recipe_tahuyetdan
tag @s remove hoancotdan_eat
tag @s remove tahuyetdan_eat
tag @s remove matu_ngukiem_active

tag @s remove MaTu

scoreboard players set @s MaTu_MaKhi 0
advancement revoke @s only matu:dang_cap/nhapma
advancement revoke @s only matu:luyenthe/luyenthe1
advancement revoke @s only matu:luyenthe/luyenthe2
advancement revoke @s only matu:recipe/hoancotdan
advancement revoke @s only matu:recipe/tahuyetdan
recipe take @s matu:dan_duoc/mahuyetdan
# Đặt tối đa 20 HP
attribute @s minecraft:max_health base set 20
# Xóa sạch TẤT CẢ các modifier đang bám trên thanh máu (Máu tự động tụt về 10 tim)
attribute @s max_health modifier remove matu:hp_tang1
attribute @s max_health modifier remove matu:hp_tang2
attribute @s max_health modifier remove matu:hp_tang3

# Xóa sạch TẤT CẢ các modifier đang bám trên thuộc tính sát thương
attribute @s attack_damage modifier remove matu:dmg_tang1
attribute @s attack_damage modifier remove matu:dmg_tang2
attribute @s attack_damage modifier remove matu:dmg_tang3

#
attribute @s armor modifier remove matu:armor_tang2