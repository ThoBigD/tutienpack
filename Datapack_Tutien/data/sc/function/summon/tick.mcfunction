#tamthot
execute as @e[type=minecraft:armor_stand,tag=tamthot_new] at @s run function sc:summon/tamthot/summon
execute as @e[type=minecraft:interaction,tag=tamthot_it] at @s run execute if data entity @s interaction run function sc:summon/tamthot/scrip
execute as @e[type=minecraft:interaction,tag=tamthot_it] at @s run execute unless score @s tamthot_codo matches 1 run execute if data entity @s attack run function sc:summon/tamthot/break
#bonruatay
execute as @e[type=minecraft:armor_stand,tag=bonruatay_new] at @s run function sc:summon/bonruatay/summon
execute as @e[type=minecraft:interaction,tag=bonruatay_it] at @s run execute if data entity @s interaction run function sc:summon/bonruatay/scrip
execute as @e[type=minecraft:interaction,tag=bonruatay_it] at @s run execute unless score @s bonruatay_codo matches 1 run execute if data entity @s attack run function sc:summon/bonruatay/break
execute as @e[type=minecraft:interaction,tag=bonruatay_it] at @s run execute if score @s bonruatay_codo matches 1 run function sc:summon/bonruatay/counting
#noicomdien
execute as @e[type=minecraft:armor_stand,tag=noicomdien_new] at @s run function sc:summon/noicomdien/summon
execute as @e[type=minecraft:interaction,tag=noicomdien_it] at @s run execute if data entity @s attack run execute unless score @s noicomdien_codo matches 1.. run function sc:summon/noicomdien/break
execute as @e[type=minecraft:interaction,tag=noicomdien_it] at @s run execute if data entity @s interaction run function sc:summon/noicomdien/scrip
execute as @e[type=minecraft:interaction,tag=noicomdien_it] at @s run execute if score @s noicomdien_cooking matches 1.. run function sc:summon/noicomdien/counting
#long com
execute as @e[type=minecraft:armor_stand,tag=longcom_new] at @s run function sc:summon/longcom/summon
execute as @e[type=minecraft:interaction,tag=longcom_it] at @s run execute if data entity @s attack run function sc:summon/longcom/break

#thunggao
execute as @e[type=minecraft:armor_stand,tag=thunggao_new] at @s run function sc:summon/thunggao/summon
execute as @e[type=minecraft:interaction,tag=thunggao_it] at @s run execute if data entity @s interaction run function sc:summon/thunggao/scrip
execute as @e[type=minecraft:interaction,tag=thunggao_it] at @s run execute if data entity @s attack run function sc:summon/thunggao/break

#Thao
execute as @e[type=minecraft:armor_stand,tag=thao_new] at @s run function sc:summon/thao/summon
execute as @e[type=minecraft:interaction,tag=thao_it] at @s run execute if data entity @s interaction run function sc:summon/thao/scrip
execute as @e[type=minecraft:interaction,tag=thao_it] at @s run execute if entity @s[scores={thao_nuocmam=1,thao_nuoctuong=1,thao_dauhao=1,thao_matong=1,thao_tieuxay=1,thao_suadac=1,thao_daudieu=1,thao_sabam=1,thao_toibam=1,thao_hanhtimbam=1}] run scoreboard players reset @s thao_codo
execute as @e[type=minecraft:interaction,tag=thao_it] at @s run execute if data entity @s attack run execute unless score @s thao_codo matches 1.. run function sc:summon/thao/break_check


#Thaonuoc
execute as @e[type=minecraft:armor_stand,tag=thaonuoc_new] at @s run function sc:summon/thaonuoc/summon
execute as @e[type=minecraft:interaction,tag=thaonuoc_it] at @s run execute if data entity @s interaction run function sc:summon/thaonuoc/scrip
execute as @e[type=minecraft:interaction,tag=thaonuoc_it] at @s run execute if score @s thaonuoc_ngam matches 1.. run function sc:summon/thaonuoc/ngam
execute as @e[type=minecraft:interaction,tag=thaonuoc_it] at @s run execute unless score @s thaonuoc_codo matches 1.. run execute if data entity @s attack run function sc:summon/thaonuoc/break
execute as @e[type=minecraft:interaction,tag=thaonuoc_it] at @s run execute if score @s thaonuoc_codo matches 4 run execute if data entity @s attack run function sc:summon/thaonuoc/break2

#TuLanh
execute as @e[type=minecraft:armor_stand,tag=tulanh_new] at @s run function sc:summon/tulanh/summon
execute as @e[type=minecraft:interaction,tag=tulanh_it] at @s run execute if data entity @s interaction run function sc:summon/tulanh/scrip
execute as @e[type=minecraft:interaction,tag=tulanh_it] at @s run execute unless score @s tulanh_codo matches 1 run execute if data entity @s attack run function sc:summon/tulanh/break
execute as @e[type=minecraft:interaction,tag=tulanh_it] at @s run function sc:summon/tulanh/uop

#thaouopthit
execute as @e[type=minecraft:armor_stand,tag=thaouopthit_new] at @s run function sc:summon/thaouopthit/summon
execute as @e[type=minecraft:interaction,tag=thaouopthit_it] at @s run execute if data entity @s interaction run function sc:summon/thaouopthit/scrip
execute as @e[type=minecraft:interaction,tag=thaouopthit_it] at @s run execute if data entity @s attack run function sc:summon/thaouopthit/break



#bepnuong
execute as @e[type=minecraft:armor_stand,tag=bepnuong_new] at @s run function sc:summon/bepnuong/summon
execute as @e[type=minecraft:interaction,tag=bepnuong_it] at @s run execute if data entity @s interaction run function sc:summon/bepnuong/scrip
execute as @e[type=minecraft:interaction,tag=bepnuong_it] at @s run execute unless score @s bepnuong_codo matches 1 run execute if data entity @s attack run function sc:summon/bepnuong/break
execute as @e[type=minecraft:interaction,tag=bepnuong_it] at @s run execute if score @s bepnuong_codo matches 1 run function sc:summon/bepnuong/counting

#bepgás
execute as @e[type=minecraft:armor_stand,tag=bepgas_new] at @s run function sc:summon/bepgas/summon
execute as @e[type=minecraft:interaction,tag=bepgas_it] at @s run execute if data entity @s interaction run function sc:summon/bepgas/scrip
execute as @e[type=minecraft:interaction,tag=bepgas_it] at @s run execute unless score @s bepgas_codo matches 1 run execute if data entity @s attack run function sc:summon/bepgas/break
execute as @e[type=minecraft:interaction,tag=bepgas_it,tag=trung,tag=dauan] at @s run function sc:summon/bepgas/type/chientrung
execute as @e[type=minecraft:interaction,tag=bepgas_it,tag=nuocmam,tag=duong,tag=nuocchanh,tag=nuoc] at @s run function sc:summon/bepgas/type/nuocmam

#comsuong
execute as @e[type=minecraft:armor_stand,tag=comsuong_new] at @s run function sc:summon/comsuong/summon
execute as @e[type=minecraft:interaction,tag=comsuong_it] at @s run execute if data entity @s interaction run function sc:summon/comsuong/scrip
execute as @e[type=minecraft:interaction,tag=comsuong_it] at @s run execute unless score @s comsuong_codo matches 1 run execute if data entity @s attack run function sc:summon/comsuong/break
execute as @e[type=minecraft:interaction,tag=comsuong_it,tag=thit,tag=lat_dualeo,tag=lat_cachua,tag=chen_nuocmam,tag=trung_chien] at @s run execute if data entity @s attack run function sc:summon/comsuong/final
execute as @e[type=minecraft:interaction,tag=comsuong_it,tag=thit,tag=lat_dualeo,tag=lat_cachua,tag=chen_nuocmam,tag=trung_chien] at @s run particle minecraft:white_smoke
execute as @e[type=minecraft:interaction] at @s run data remove entity @s attack
execute as @e[type=minecraft:interaction] at @s run data remove entity @s interaction