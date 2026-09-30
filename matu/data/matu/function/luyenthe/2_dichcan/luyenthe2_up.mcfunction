tag @s remove luyenthe0
tag @s remove luyenthe1
tag @s add luyenthe2
tag @s add lock_recipe1
tag @s add lock_recipe2

particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 100

execute at @s run playsound minecraft:block.beacon.activate master @s ~ ~1 ~ 2
advancement grant @s until matu:luyenthe/luyenthe2

scoreboard players set @s MaTu_MaKhi 0