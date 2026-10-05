attribute @s minecraft:knockback_resistance base set 1.0
damage @s 7 matu:phan_phe
attribute @s minecraft:knockback_resistance base set 0.0
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 100
effect give @s nausea 9 255 true
effect give @s blindness 2 255 true

execute at @s[scores={MaTu_PhanPhe=100..}] run scoreboard players set @s MaTu_PhanPhe 0