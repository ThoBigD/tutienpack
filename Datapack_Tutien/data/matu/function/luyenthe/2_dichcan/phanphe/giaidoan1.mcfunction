effect give @s hunger 1 1 true
damage @s 0.5 matu:phan_phe
attribute @s minecraft:knockback_resistance base set 1.0
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 1
attribute @s minecraft:knockback_resistance base set 0.0

execute at @s[scores={MaTu_PhanPhe=40..}] run scoreboard players set @s MaTu_PhanPhe 0