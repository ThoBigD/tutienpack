execute unless score @s thaonuoc_giavi_gung matches 1 run function sc:summon/thaonuoc/giavi/gung
execute unless score @s thaonuoc_giavi_muoi matches 1 run function sc:summon/thaonuoc/giavi/muoi

execute if entity @s[scores={thaonuoc_giavi_muoi=1,thaonuoc_giavi_gung=1}] run function sc:summon/thaonuoc/checkngam
