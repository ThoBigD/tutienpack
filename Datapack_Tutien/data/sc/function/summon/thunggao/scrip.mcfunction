execute as @a[distance=..15] at @s run playsound minecraft:block.bamboo.hit master @s
#kiemtra
execute if score @s thunggao_sl matches 1.. run execute on target run execute if items entity @s weapon.mainhand minecraft:zombie_spawn_egg[minecraft:custom_data={mucgao:1b}] run function sc:summon/thunggao/mucgao
execute if score #pass thunggao_sl matches 1 run function sc:summon/thunggao/run

scoreboard players reset #pass thunggao_sl
data remove entity @s interaction