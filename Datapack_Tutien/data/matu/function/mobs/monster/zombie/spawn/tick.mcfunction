# cooldown để tránh spam
scoreboard players add global matu_spawn_cd 1

execute if score global matu_spawn_cd matches 200.. run function matu:mobs/monster/zombie/spawn/roll
# 5s spawn 1 lần