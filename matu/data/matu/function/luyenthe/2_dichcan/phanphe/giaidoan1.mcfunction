effect give @s hunger 1 1 true
damage @s 0.5 matu:phan_phe
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 1

execute at @s[scores={MaTu_PhanPhe=40..}] run scoreboard players set @s MaTu_PhanPhe 0