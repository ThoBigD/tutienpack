execute as @e[type=arrow,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=arrow,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=arrow,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=arrow,distance=..4] at @s run tag @s add done

execute as @e[type=snowball,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=snowball,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=snowball,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=snowball,distance=..4] at @s run tag @s add done

execute as @e[type=egg,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=egg,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=egg,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=egg,distance=..4] at @s run tag @s add done

execute as @e[type=fireball,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=fireball,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=fireball,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=fireball,distance=..4] at @s run tag @s add done

execute as @e[type=small_fireball,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=small_fireball,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=small_fireball,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=small_fireball,distance=..4] at @s run tag @s add done

execute as @e[type=firework_rocket,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=firework_rocket,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=firework_rocket,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 0.5, 0.0]}
execute as @e[type=firework_rocket,distance=..4] at @s run tag @s add done

execute as @e[type=ender_pearl,distance=..4,tag=!done] at @s run particle minecraft:sweep_attack
execute as @e[type=ender_pearl,distance=..4,tag=!done] at @s run playsound minecraft:block.anvil.place master @a[distance=..10] ~ ~ ~ 0.1 1.5 1
execute as @e[type=ender_pearl,distance=..4,tag=!done] run data merge entity @s {Motion:[0.0, 10, 0.0]}
execute as @e[type=ender_pearl,distance=..4] at @s run tag @s add done