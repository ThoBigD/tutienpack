tag @s add this
function tt:skill/luyenthe/batdongminhvuong/batthachkich/make_imperfect_hole2
execute at @e[tag=exp_center] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute at @e[tag=exp_center] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1

particle cloud ~ ~0.2 ~ 3.0 0.1 3.0 0.15 150
particle dust_plume ~ ~0.2 ~ 2.8 0.2 2.8 0.1 100
particle block{block_state:{Name:"dirt"}} ~ ~0.3 ~ 2.8 0.5 2.8 0.25 120
particle block{block_state:{Name:"stone"}} ~ ~0.3 ~ 2.8 0.6 2.8 0.3 80
particle explosion_emitter ~ ~0.5 ~ 0 0 0 0 1
particle gust ~ ~0.2 ~ 1.5 0.1 1.5 0 5
particle crit ~ ~0.3 ~ 2.5 0.2 2.5 0.3 60
particle campfire_cosy_smoke ~ ~0.2 ~ 1.5 0.1 1.5 0.02 20
particle falling_dust{block_state:{Name:"dirt"}} ~ ~2.5 ~ 2.5 0.5 2.5 0.01 50
playsound entity.generic.explode master @a ~ ~ ~ 1.5 0.5
playsound block.anvil.land master @a ~ ~ ~ 1.5 0.4
playsound entity.warden.attack_impact master @a ~ ~ ~ 1.2 0.7
execute as @e[distance=..6,tag=!this] at @s run damage @s 30 minecraft:player_attack by @p[tag=this]
tag @s remove this
kill @e[tag=exp_point]
kill @e[tag=exp_center]