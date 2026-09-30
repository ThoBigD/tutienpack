

execute unless score @s thao_codo matches 1.. run scoreboard players operation @s thao_codo = #thao_codo_check thao_codo
execute unless score @s thao_nuocmam matches 1.. run scoreboard players operation @s thao_nuocmam = #value thao_nuocmam
execute unless score @s thao_nuoctuong matches 1.. run scoreboard players operation @s thao_nuoctuong = #value thao_nuoctuong
execute unless score @s thao_dauhao matches 1.. run scoreboard players operation @s thao_dauhao = #value thao_dauhao
execute unless score @s thao_matong matches 1.. run scoreboard players operation @s thao_matong = #value thao_matong
execute unless score @s thao_tieuxay matches 1.. run scoreboard players operation @s thao_tieuxay = #value thao_tieuxay
execute unless score @s thao_suadac matches 1.. run scoreboard players operation @s thao_suadac = #value thao_suadac
execute unless score @s thao_daudieu matches 1.. run scoreboard players operation @s thao_daudieu = #value thao_daudieu
execute unless score @s thao_toibam matches 1.. run scoreboard players operation @s thao_toibam = #value thao_toibam
execute unless score @s thao_sabam matches 1.. run scoreboard players operation @s thao_sabam = #value thao_sabam
execute unless score @s thao_hanhtimbam matches 1.. run scoreboard players operation @s thao_hanhtimbam = #value thao_hanhtimbam
execute if score @s thao_thit matches 1.. run execute if score #value thao_thit matches 1.. run scoreboard players remove @s thao_thit 1


