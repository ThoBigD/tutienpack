execute as @e[type=zombie,tag=tier2] at @s run effect give @s slowness 1 0 true
execute as @e[type=zombie,tag=tier2,nbt={HurtTime:9s}] at @s run execute as @a[distance=..4] at @s run damage @s 1 minecraft:mob_attack by @e[type=zombie,tag=tier2,limit=1,sort=nearest]
execute as @e[type=zombie,tag=tier2,nbt={HurtTime:9s}] at @s run particle dust{color:[0.05,0.72,0.0],scale:1} ~ ~1.5 ~ 0.1 0.1 0.1 0.05 2


execute as @e[type=zombie,tag=tier2,nbt={Health:1f}] at @s run function matu:mobs/monster/zombie/mobs/tier2/skills/die