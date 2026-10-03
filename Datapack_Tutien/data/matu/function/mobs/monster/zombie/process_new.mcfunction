# tag @s add matu_processed

execute if score global matu_zombie_random matches 150..195 run tag @s add tier1
# execute if entity @s[tag=tier1] run data merge entity @s {CustomName:[{"text":"Ma Thi","color":"red"}],Health:50,Tags:["tier1"],attributes:[{id:"minecraft:max_health",base:50f}],DrownedConversionTime:-1,DeathLootTable:"matu:entities/mathi"}
execute if entity @s[tag=tier1] run tag @s add change
execute if entity @s[tag=tier1] run effect give @s minecraft:glowing infinite 0 true

execute if entity @s[tag=!tier1] if score global matu_zombie_random matches 196..199 run tag @s add tier2
# execute if entity @s[tag=tier2] run data merge entity @s {CustomName:[{"text":"Oán Sát Ma Cương","color":"red"}],Health:100,Tags:["tier2"],attributes:[{id:"minecraft:max_health",base:100f}],DrownedConversionTime:-1,equipment:{mainhand:{id:"minecraft:totem_of_undying",components:{"minecraft:custom_data":{tier2_death:1b}}}}}
execute if entity @s[tag=tier2] run tag @s add change
execute if entity @s[tag=tier2] run effect give @s minecraft:glowing infinite 0 true
