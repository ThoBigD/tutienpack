scoreboard players set global matu_spawn_cd 0
execute store result score global matu_spawn_roll run random value 150..200

execute as @a at @s run function matu:mobs/monster/zombie/spawn/spawn