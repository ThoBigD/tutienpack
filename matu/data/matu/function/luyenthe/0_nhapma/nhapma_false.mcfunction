summon lightning_bolt ~ ~ ~
damage @s 9999
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 100
tellraw @s [{"text":"[Phản Phệ] ","color":"dark_red","bold":true},{"text":"Dòng máu tà ác cuộn trào thiêu đốt kinh mạch, nhục thân của ngươi không chịu nổi dược lực!","color":"dark_gray","italic":false,bold: false}]
clear @s paper[custom_data={matu:{id:"ma_huyet_dan"}}] 1
