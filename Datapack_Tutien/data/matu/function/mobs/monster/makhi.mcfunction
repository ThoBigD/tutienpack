
## Thu thập ma khí

# 1. Tiêu diệt người chơi (+5 Ma Khí)
execute if entity @s[advancements={matu:kill/player={kill=true}}] run scoreboard players add @s MaTu_MaKhi 5
execute if entity @s[advancements={matu:kill/player={kill=true}}] run scoreboard players set @s MaTu_MaKhi_Timer 0

# 2. Quái biến dị Tier 2: Oán Sát Ma Cương (+5 Ma Khí)
execute if entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players add @s MaTu_MaKhi 5
execute if entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players set @s MaTu_MaKhi_Timer 0

# 3. Quái biến dị Tier 1: Ma Thi (+2 Ma Khí)
execute if entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players add @s MaTu_MaKhi 2
execute if entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players set @s MaTu_MaKhi_Timer 0

# Xử lý rớt Tẩu Hỏa Nhập Ma (Giới hạn 1 cuốn/người, không rớt nếu đã lĩnh hội)
execute if entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players set @s MaTu_Battle 0
execute if entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] store result score @s MaTu_Battle run clear @s minecraft:paper[custom_data={matu:{id:"tau_hoa_nhap_ma"}}] 0
execute if entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] if score @s MaTu_Battle matches 0 unless entity @s[tag=MaTu] run loot give @s loot matu:items/tau_hoa_nhap_ma

# 4. Tất cả các mob khác của Minecraft (+1 Ma Khí)
execute if entity @s[advancements={matu:kill/mob/default={kill=true}}] unless entity @s[advancements={matu:kill/player={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players add @s MaTu_MaKhi 1
execute if entity @s[advancements={matu:kill/mob/default={kill=true}}] unless entity @s[advancements={matu:kill/player={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier1={kill=true}}] unless entity @s[advancements={matu:kill/zombie/tier2={kill=true}}] run scoreboard players set @s MaTu_MaKhi_Timer 0

# 5. Tụt Ma Khí nếu 20 giây không thu thập (Mỗi người chơi là Ma Tu)
execute if entity @s[tag=MaTu] run scoreboard players add @s MaTu_MaKhi_Timer 1
execute if entity @s[tag=MaTu] if score @s MaTu_MaKhi_Timer matches 400.. run scoreboard players remove @s MaTu_MaKhi 5
execute if entity @s[tag=MaTu] if score @s MaTu_MaKhi_Timer matches 400.. run scoreboard players set @s MaTu_MaKhi_Timer 0
execute if score @s MaTu_MaKhi matches ..-1 run scoreboard players set @s MaTu_MaKhi 0

# 6. Thu hồi các advancement tiêu diệt để có thể nhận tiếp lần sau
advancement revoke @s only matu:kill/player
advancement revoke @s only matu:kill/zombie/tier2
advancement revoke @s only matu:kill/zombie/tier1
advancement revoke @s only matu:kill/mob/default

