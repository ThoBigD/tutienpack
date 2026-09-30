tag @s add matu_processed

execute if predicate matu:mobs/monster/chance_mathi run tag @s add tier1
execute if entity @s[tag=tier1] run data merge entity @s {CustomNameVisible:1b, CustomName:'"§cMa Thi"',Health:50f,attributes:[{id:"minecraft:max_health",base:50.0}],DrownedConversionTime:-1}
execute if entity @s[tag=tier1] run tag @s add change
execute if entity @s[tag=tier1] run effect give @s minecraft:glowing infinite 0 true

execute if entity @s[tag=!tier1] if predicate matu:mobs/monster/chance_oansat run tag @s add tier2
execute if entity @s[tag=tier2] run data merge entity @s {CustomNameVisible:1b, CustomName:'"§cOán Sát Ma Công"',Health:100f,attributes:[{id:"minecraft:max_health",base:100.0}],DrownedConversionTime:-1,equipment:{mainhand:{id:"minecraft:totem_of_undying",count:1,components:{"minecraft:custom_data":{tier2_death:1b}}}}}
execute if entity @s[tag=tier2] run tag @s add change
execute if entity @s[tag=tier2] run effect give @s minecraft:glowing infinite 0 true
