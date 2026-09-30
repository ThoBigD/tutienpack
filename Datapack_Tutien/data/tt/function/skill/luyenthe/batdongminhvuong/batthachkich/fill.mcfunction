execute at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace #minecraft:mineable/pickaxe
execute at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace #minecraft:mineable/shovel
execute at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 minecraft:air replace #minecraft:replaceable

execute at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:air replace #minecraft:mineable/pickaxe
execute at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:air replace #minecraft:mineable/shovel
execute at @s run fill ~-1 ~-2 ~-1 ~1 ~-2 ~1 minecraft:air replace #minecraft:replaceable

execute at @s run fill ~ ~-3 ~ ~ ~-3 ~ minecraft:air replace #minecraft:mineable/pickaxe
execute at @s run fill ~ ~-3 ~ ~ ~-3 ~ minecraft:air replace #minecraft:mineable/shovel

execute at @s run particle minecraft:block{block_state:{Name:"minecraft:dirt"}} ~ ~-0.5 ~ 1 0.5 1 0.1 120
execute at @s run particle minecraft:block{block_state:{Name:"minecraft:coarse_dirt"}} ~ ~-1 ~ 0.8 0.5 0.8 0.2 60
execute at @s run particle minecraft:dust{color:[0.45,0.36,0.24],scale:1.5} ~ ~-1 ~ 1 0.5 1 0.1 40

execute at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 1 0.6
execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.5
 