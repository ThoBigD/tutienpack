tag @s add this
summon marker ~ ~ ~ {Tags:["exp_center"]}
execute as @e[tag=exp_center] at @s run summon marker ^ ^ ^3 {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^ ^ ^-3 {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^3 ^ ^ {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^-3 ^ ^ {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^ ^3 ^ {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^ ^-3 ^ {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^2 ^2 ^2 {Tags:["exp_point"]}
execute as @e[tag=exp_center] at @s run summon marker ^-2 ^-2 ^-2 {Tags:["exp_point"]}
execute as @e[tag=exp_point] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:base_stone_overworld
execute as @e[tag=exp_point] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:dirt
execute as @e[tag=exp_point] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #minecraft:sand
execute as @e[tag=exp_point] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace gravel
execute as @e[tag=exp_point] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace grass_block
execute as @e[tag=exp_center] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #minecraft:base_stone_overworld
execute as @e[tag=exp_center] at @s run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #minecraft:dirt
execute at @e[tag=exp_center] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
execute at @e[tag=exp_center] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1


execute as @a[distance=..6,tag=!this] at @s run damage @s 30 minecraft:player_attack by @p[tag=this]
tag @s remove this
kill @e[tag=exp_point]
kill @e[tag=exp_center]