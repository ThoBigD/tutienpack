# Tà Huyết Phá Chướng Đan
execute at @e[type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ma_huyet_dan"}}},count:1}}] run execute if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1}},distance=..2] if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:64}},distance=..2] run function matu:item/base/dan_duoc/tahuyetdan

