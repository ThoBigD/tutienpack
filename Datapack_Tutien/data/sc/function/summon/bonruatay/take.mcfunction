execute if score @s bonruatay_washing matches ..100 run function sc:summon/bonruatay/item/soon
execute if score @s bonruatay_washing matches 100.. run function sc:summon/bonruatay/item/done

scoreboard players operation #break bonruatay.global = @s bonruatay.global
execute at @s as @e[type=minecraft:text_display,tag=bonruatay_counting] run execute if score @s bonruatay.global = #break bonruatay.global run kill @s
execute at @s as @e[type=minecraft:item_display,tag=bonruatay_display_item] run execute if score @s bonruatay.global = #break bonruatay.global run kill @s
scoreboard players reset #break bonruatay.global
scoreboard players reset @s bonruatay_codo
scoreboard players reset @s bonruatay_washing
scoreboard players reset #cut_take bonruatay_item
data remove entity @s interaction
data remove entity @s attack