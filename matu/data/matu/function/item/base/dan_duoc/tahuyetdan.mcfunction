##
kill @e[type=item,distance=..2,sort=nearest,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ma_huyet_dan"}}},count:1}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1}},distance=..2,sort=nearest]
kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:64}},distance=..2,sort=nearest]
give @s paper[custom_name=[{"text":"Tà Huyết Phá Chướng Đan","bold":true,"italic":false,"color":"dark_red"}],lore=[[{"text":"Đột phá giới hạn hấp thụ ma khí.","italic":false,"color":"dark_red"}],[{"text":"Huyết dịch sục sôi cuồng bạo, cưỡng ép","italic":false,"color":"dark_gray"}],[{"text":"nong rộng những đoạn mạch tù túng.","italic":false,"color":"dark_gray"}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:10000,animation:none},custom_data={matu:{id:"ta_huyet_dan"}}] 1
##
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..10] ~ ~ ~
execute at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 25
