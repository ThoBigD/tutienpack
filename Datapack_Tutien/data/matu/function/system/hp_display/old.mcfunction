## COMMENTED OUT LINES ARE EASY TO FOLLOW METHOD, OTHER IS OPTIMIZED

#scoreboard players set .hp_digs matu_hp_display 1
#scoreboard players set .max_digs matu_hp_display 1
#execute if score .old matu_hp_display matches 10..99 run scoreboard players set .hp_digs matu_hp_display 2
#execute if score .old_max matu_hp_display matches 10..99 run scoreboard players set .max_digs matu_hp_display 2
#execute if score .old matu_hp_display matches 100..999 run scoreboard players set .hp_digs matu_hp_display 3
#execute if score .old_max matu_hp_display matches 100..999 run scoreboard players set .max_digs matu_hp_display 3
#execute if score .old matu_hp_display matches 1000..9999 run scoreboard players set .hp_digs matu_hp_display 4
#execute if score .old_max matu_hp_display matches 1000..9999 run scoreboard players set .max_digs matu_hp_display 4

#[X/Y] where X is the hp digs and Y is the max digs
#scoreboard players set .x matu_hp_display 60
#scoreboard players operation .x matu_hp_display += .hp_digs matu_hp_display
#scoreboard players add .x matu_hp_display 62
#scoreboard players operation .x matu_hp_display += .max_digs matu_hp_display
#scoreboard players add .x matu_hp_display 52

# super simplified version but harder to follow, basically x = all chars that are constant + extra for digits
scoreboard players set .x matu_hp_display 176
execute if score .old matu_hp_display matches 10.. run scoreboard players add .x matu_hp_display 1
execute if score .old_max matu_hp_display matches 10.. run scoreboard players add .x matu_hp_display 1
execute if score .old matu_hp_display matches 100.. run scoreboard players add .x matu_hp_display 1
execute if score .old_max matu_hp_display matches 100.. run scoreboard players add .x matu_hp_display 1
execute if score .old matu_hp_display matches 1000.. run scoreboard players add .x matu_hp_display 1
execute if score .old_max matu_hp_display matches 1000.. run scoreboard players add .x matu_hp_display 1

execute store result storage matu_hp_display args.x int 1 run scoreboard players get .x matu_hp_display
function matu:system/hp_display/cut_str with storage matu_hp_display args