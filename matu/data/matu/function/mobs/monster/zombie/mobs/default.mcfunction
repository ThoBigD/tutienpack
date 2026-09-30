# No Drowned
execute as @e[type=zombie,tag=tier1] run data modify entity @s InWaterTime set value 0
execute as @e[type=zombie,tag=tier2] run data modify entity @s InWaterTime set value 0

# Tự động gán tag tier1 cho Ma Thi nếu spawn từ lệnh hoặc spawner
execute as @e[type=zombie,name="Ma Thi",tag=!tier1] run tag @s add tier1

# Gán DeathLootTable cho Ma Thi nếu chưa có
execute as @e[type=zombie,tag=tier1,tag=!mathi_loot_set] run data modify entity @s DeathLootTable set value "matu:entities/mathi"
execute as @e[type=zombie,tag=tier1,tag=!mathi_loot_set] run tag @s add mathi_loot_set

### Nội tại
## Tier 1
function matu:mobs/monster/zombie/mobs/tier1/skills/passive

## Tier 2
function matu:mobs/monster/zombie/mobs/tier2/skills/passive