function sc:summon/noicomdien/tp_item_display_open
scoreboard players set @s noicomdien_codo 2
scoreboard players set @s noicomdien_sl 10
scoreboard players operation #break noicomdien.global = @s noicomdien.global
execute at @s as @e[type=text_display] run execute if score @s noicomdien.global = #break noicomdien.global run kill @s
data remove entity @s attack
data remove entity @s interaction