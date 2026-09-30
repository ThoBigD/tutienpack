### Hệ thống tử trận (Reset tu vi về level 0 lúc nhập ma)
execute as @a[scores={MaTu_Deaths=1..}] at @s run function matu:system/death/tick

### Sử dụng vật phẩm Tẩu Hỏa Nhập Ma
execute as @a[scores={MaTu_RightClick=1..},nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"tau_hoa_nhap_ma"}}}}}] at @s run function matu:item/using/tau_hoa_nhap_ma

### Tick của các binh pháp luyện thể
execute as @a[tag=MaTu] at @s run function matu:luyenthe/tick
## Không chọn Ma Tu thì không có Ma khí
scoreboard players set @a[tag=!MaTu] MaTu_MaKhi 0

### Tick của mobs đặc biệt spawn trong ban đêm / Logic của mobs đặc biệt
# function matu:mobs/monster/tick
function matu:mobs/monster/zombie/mobs/default

### Tick của HP Display
function matu:system/hp_display/tick

### Tick Item
function matu:item/tick