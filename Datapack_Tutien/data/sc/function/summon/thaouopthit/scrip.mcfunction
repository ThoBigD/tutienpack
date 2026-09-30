execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s thaouopthit_sl matches 1.. run function sc:summon/thaouopthit/mucgao
execute if score #pass_thaouopthit thaouopthit_sl matches 1 run function sc:summon/thaouopthit/run
scoreboard players reset #pass_thaouopthit thaouopthit_sl

data remove entity @s interaction