
execute as @e[type=zombie,tag=tier1,limit=1,sort=nearest,distance=..3] if predicate matu:mobs/monster/has_target at @s run function matu:mobs/monster/zombie/mobs/tier1/skills/passive

advancement revoke @s only matu:hitby/zombie/ma_thi