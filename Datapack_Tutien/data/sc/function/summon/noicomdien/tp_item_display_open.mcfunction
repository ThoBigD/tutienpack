scoreboard players reset #noicomdien_huhu noicomdien.global
scoreboard players operation #noicomdien_huhu noicomdien.global = @s noicomdien.global
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_nap] run execute if score @s noicomdien.global = #noicomdien_huhu noicomdien.global run tp @s ~ ~0.2 ~ ~ -30
execute at @s as @e[type=minecraft:item_display,tag=noicomdien_display_nap] run execute if score @s noicomdien.global = #noicomdien_huhu noicomdien.global run tp @s ^ ^1.2 ^-0.3