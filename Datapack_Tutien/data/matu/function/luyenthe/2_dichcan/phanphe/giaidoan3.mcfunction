damage @s 0.1 matu:phan_phe
particle block{block_state:{Name:redstone_block}} ~ ~1 ~ 0.3 0.3 0.3 1 1
# effect give @s wither 1 1 true
effect give @s darkness 10 255 true
effect give @s nausea 10 0 true
# effect give @s blindness 2 255 true

execute at @s[scores={MaTu_PhanPhe=100..}] run scoreboard players set @s MaTu_PhanPhe 0