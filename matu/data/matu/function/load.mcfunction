### Luyện Thể
function matu:luyenthe/load
## Cường Bi
function matu:luyenthe/1_cuongbi/load
## Luyện Nhục
function matu:luyenthe/2_dichcan/load
## Đoán Cốt
function matu:luyenthe/3_doancot/load
execute as @a at @s run playsound ui.button.click master @a

### Hệ thống tử trận
scoreboard objectives add MaTu_Deaths deathCount

### Item
function matu:item/load

### Mobs Spawn
function matu:mobs/monster/zombie/spawn/load

### HP Display
function matu:system/hp_display/load