# Đặt dấu $ ở đầu dòng để nhận biến Macro
# Gán trực tiếp chuỗi UUID từ Storage vào một đường dẫn NBT tùy biến tên là data.Player_UUID của khối interaction (@s)
$data modify entity @s data.Player_UUID set value "$(player_profile)"

# Kiểm tra thử bằng cách bắt thực thể có đúng dữ liệu UUID đó chạy lệnh say test
$execute if data entity @s data{Player_UUID:"$(player_profile)"} run scoreboard players set @s MaTu_Battle 1

data modify storage matu:get_profile X set from entity @s Pos[0]
data modify storage matu:get_profile Z set from entity @s Pos[2]
# tăng sẽ là số âm giảm sẽ là số dương
execute store result storage matu:get_profile Y double 1 run data get entity @s Pos[1] 0.93
