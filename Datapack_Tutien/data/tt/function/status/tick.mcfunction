scoreboard players enable @a status
execute as @a[scores={status=1..}] at @s run function tt:status/satatus
execute as @a[scores={status=1..}] at @s run scoreboard players reset @s status
execute as @a store result score @s status_damage run attribute @s minecraft:attack_damage get

