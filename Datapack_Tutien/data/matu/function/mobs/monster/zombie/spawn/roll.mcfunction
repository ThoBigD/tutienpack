# Reset cooldown cho lần spawn tiếp theo (Random từ 0 đến 50)
# Nghĩa là đếm đến 200 sẽ mất khoảng 150 - 200 ticks (đúng như bạn muốn)
execute store result score global matu_spawn_cd run random value 0..50

# Random tỉ lệ ra quái (từ 1 đến 100) để dùng trong file summon.mcfunction
execute store result score global matu_spawn_roll run random value 1..100

# Gọi lệnh spawn
execute as @a at @s run function matu:mobs/monster/zombie/spawn/spawn