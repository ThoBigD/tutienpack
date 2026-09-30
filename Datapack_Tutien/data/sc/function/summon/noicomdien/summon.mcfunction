#id
scoreboard players add global noicomdien.global 1
#scoreboard vao entity
scoreboard players operation @s noicomdien.global = global noicomdien.global
#summon
execute as @a[distance=..15] at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 0.01 1
summon minecraft:interaction ~ ~ ~ {Tags: ["noicomdien_it","new"], height: 1.01f,width:1.01f}
execute as @e[type=minecraft:interaction,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
execute as @e[type=minecraft:interaction,tag=new] at @s run function sc:summon/rotated
function sc:summon/noicomdien/full
#scoreboard
execute as @e[type=minecraft:interaction,tag=new] at @s run scoreboard players operation @s noicomdien.global = global noicomdien.global
execute as @e[type=minecraft:item_display,tag=new] at @s run scoreboard players operation @s noicomdien.global = global noicomdien.global
execute as @e[type=minecraft:item_display,tag=new] at @s run tp @s ~ ~ ~ facing entity @p[sort=nearest,limit=1]
#xoayhuong
execute as @e[type=minecraft:item_display,tag=new] at @s run function sc:summon/rotated
execute as @e[type=minecraft:item_display,tag=noicomdien_display_nap,tag=new] at @s run tp @s ~ ~ ~ ~ -30
execute as @e[tag=new] at @s run data merge entity @s {shadow_radius:0f,teleport_duration:30}
#reset
setblock ~ ~ ~ glass
execute as @e[type=minecraft:interaction,tag=new] at @s run tag @s remove new
execute as @e[type=minecraft:item_display,tag=new] at @s run tag @s remove new

kill @s