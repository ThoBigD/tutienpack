execute as @e[type=zombie,tag=tier1] if predicate matu:mobs/monster/has_target at @s run effect give @s speed 1 2 true
execute as @e[type=zombie,tag=tier1] if predicate matu:mobs/monster/has_target at @s run particle dust{color:[0.05,0.72,0.0],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.05 20
