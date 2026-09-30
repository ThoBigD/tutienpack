scoreboard objectives add matu_hp_display dummy
scoreboard objectives add matu_hp_max_disp dummy
scoreboard players set #10 matu_hp_display 10
scoreboard players add .strict matu_hp_display 0
scoreboard objectives add matu_hp_id dummy

execute unless entity @e[type=text_display,tag=matu_hp_display] run forceload add ~ ~
execute unless entity @e[type=text_display,tag=matu_hp_display] run summon text_display ~ 999 ~ {Tags:["matu_hp_display"],billboard:"center"}

#tellraw @a[gamemode=creative] ["",{"text":"< ","color":"#a2f5ff"},{"text":"C","color":"#a8ecf5"},{"text":"W ","color":"#aee3ec"},{"text":"M","color":"#b4dae2"},{"text":"o","color":"#bad1d9"},{"text":"b ","color":"#c1c9cf"},{"text":"H","color":"#c7c0c6"},{"text":"P ","color":"#cdb7bc"},{"text":"D","color":"#d3aeb3"},{"text":"i","color":"#d9a5a9"},{"text":"s","color":"#e09da0"},{"text":"p","color":"#e69496"},{"text":"l","color":"#ec8b8d"},{"text":"a","color":"#f28283"},{"text":"y ","color":"#f8797a"},{"text":">","color":"#ff7171"},{"text":" INSTALLED","color":"#ACFFA4"},{"text":", for settings "},{"text":"[Click Here]","bold":true,"color":"#94DAFF","clickEvent":{"action":"run_command","value":"/function matu_hp_display:settings/root"}}]