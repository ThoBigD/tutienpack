clear @s minecraft:paper[custom_data={matu:{id:"ma_huyet_dan"}}] 1
advancement revoke @s until matu:eat_item/mahuyetdan
scoreboard players set @s MaTu_MaKhi 0

tag @s remove luyenthe0
tag @s add luyenthe1

particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 100

execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~1 ~ 2
advancement grant @s until matu:luyenthe/luyenthe1