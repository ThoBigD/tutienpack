$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 1.. run scoreboard players add @s MaTu_Battle 1


$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 20 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~ ~-2 ~
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 20 at @s positioned ~ ~-1 ~ run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/biome_mini

$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ positioned ~ ~-1 ~ run summon lightning_bolt ~ ~-2 ~
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-2 ~-2 ~-2
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-2 ~-2 ~2
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~2 ~-2 ~-2
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~2 ~-2 ~2
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 40 at @s positioned ~ ~-1 ~ run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/biome_mini

$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~ ~-2 ~
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~4 ~-2 ~4
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~4 ~-2 ~-4
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-4 ~-2 ~4
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-4 ~-2 ~-4
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 60 at @s positioned ~ ~-1 ~ run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/biome_mini

$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~ ~-2 ~
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~6 ~-2 ~6
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~6 ~-2 ~-6
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-6 ~-2 ~6
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run summon lightning_bolt ~-6 ~-2 ~-6
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 80 at @s positioned ~ ~-1 ~ run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/tedan/biome_mini/biome_mini

# gọi boss
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 100 as @n[tag=active_tedan1] at @s run function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/boss/get_profile
$execute if data entity @s data{Player_UUID:"$(player_profile)"} if score @s MaTu_Battle matches 100 as @n[tag=active_tedan1] at @s run tag @s remove active_tedan1