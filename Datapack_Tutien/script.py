
import json

path = r"D:\Games\CurseForge\Instances\SBTC ProMax\saves\tutien\datapacks\Datapack_Tutien\data\matu\function\mobs\monster\zombie\process_new.mcfunction"
lines = [
    "tag @s add matu_processed",
    "execute store result score @s matu_spawn_roll run random value 1..100",
    "",
    "execute if score @s matu_spawn_roll matches 70..95 run data merge entity @s {CustomName:'[{\"text\":\"Ma Thi\",\"color\":\"red\"}]',Health:50f,Tags:[\"matu_processed\",\"tier1\"],attributes:[{id:\"minecraft:max_health\",base:50.0}],DrownedConversionTime:-1,DeathLootTable:\"matu:entities/mathi\"}",
    "execute if score @s matu_spawn_roll matches 96..100 run data merge entity @s {CustomName:'[{\"text\":\"Oán Sát Ma Công\",\"color\":\"red\"}]',Health:100f,Tags:[\"matu_processed\",\"tier2\"],attributes:[{id:\"minecraft:max_health\",base:100.0}],DrownedConversionTime:-1,HandItems:[{id:\"minecraft:totem_of_undying\",count:1,components:{\"minecraft:custom_data\":{tier2_death:1b}}},{}]}"
]

with open(path, "w", encoding="utf-8") as f:
    f.write("\n".join(lines))

