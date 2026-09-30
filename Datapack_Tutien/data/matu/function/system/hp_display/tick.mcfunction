# If strict, only apply to tagged entities

# execute if score .strict matu_hp_display matches 0 as @e[type=!#matu:no_hp,nbt={HurtTime:9s}] run function matu:system/hp_display/update
# execute if score .strict matu_hp_display matches 1 as @e[type=!#matu:no_hp,tag=matu_hp_display,nbt={HurtTime:9s}] run function matu:system/hp_display/update

execute at @a as @e[type=!#matu:no_hp,type=!player,distance=20..] at @s run data modify entity @s CustomNameVisible set value 0b
execute at @a as @e[type=!#matu:no_hp,type=!player,distance=..20] at @s run function matu:system/hp_display/update
