#
kill @e[type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ta_huyet_dan"}}},count:1}},distance=..2]
kill @e[type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{matu:{id:"ma_huyet_dan"}}},count:1}},distance=..1.5]
kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:64}},distance=..1]
give @s paper[custom_name=[{"text":"Cửu U Hoán Cốt Đan","bold":true,"italic":false,"color":"dark_red"}],lore=[[{"text":"Đột phá giới hạn hấp thụ ma khí.","italic":false,"color":"dark_red"}],[{"text":"Tủy cốt vỡ vụn trong u minh hỏa tà ác,","color":"dark_gray","italic":true}],[{"text":"tái sinh một bộ ma căn tà mị nghịch thiên.","color":"dark_gray","italic":true}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:10000,animation:none},custom_data={matu:{id:"hoan_cot_dan"}}] 1
#
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..10] ~ ~ ~
execute at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 0.2 25
