
execute if score global matu_spawn_roll matches 70..95 run summon zombie ~ ~ ~ {CustomName:'"§cMa Thi"',Health:50,Tags:["tier1"],attributes:[{id:max_health,base:50f}],DrownedConversionTime:-1,DeathLootTable:"matu:entities/mathi"}
execute if score global matu_spawn_roll matches 96..100 run summon zombie ~ ~ ~ {CustomName:'"§cOán Sát Ma Công"',Health:100,Tags:["tier2"],attributes:[{id:max_health,base:100f}],DrownedConversionTime:-1,equipment:{mainhand:{id:totem_of_undying,components:{"minecraft:custom_data":{tier2_death:1b}}}}}

