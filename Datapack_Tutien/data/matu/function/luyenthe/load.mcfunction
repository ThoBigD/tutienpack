
# tiêu diệt
scoreboard objectives add MaTu_mob_kill custom:mob_kills "Ma Tu: Diệt Mobs"
scoreboard objectives add MaTu_player_kill custom:player_kills "Ma Tu: Diệt Players"
scoreboard objectives add MaTu_count_kills totalKillCount "Ma Tu: Đếm Kills"

# di chuyển
scoreboard objectives add MaTu_count_walk custom:minecraft.walk_one_cm "Ma Tu: Đi bộ"
scoreboard objectives add MaTu_count_run custom:minecraft.sprint_one_cm "Ma Tu: Chạy"

# đếm block khi di chuyển
scoreboard objectives add MaTu_count_block dummy "Ma Tu: Đếm block"

# ma khí
scoreboard objectives add MaTu_MaKhi dummy "Ma Tu: Ma Khí"
scoreboard objectives add MaTu_MaKhi_Timer dummy "Ma Tu: Ma Khí Timer"

# Phân phế ma khí
function matu:luyenthe/1_cuongbi/phanphe/load

# Đột phá tầng 1
function matu:luyenthe/1_cuongbi/dotphaluyenthetang1/load

# ma tu battle
scoreboard objectives add MaTu_Battle dummy

# Cooldown Actionbar Display
scoreboard objectives add MaTu_Ngukiem_Sec dummy "Ma Tu: Ngu Kiem Cooldown (Sec)"
scoreboard objectives add MaTu_BocPha_Sec dummy "Ma Tu: Boc Pha Cooldown (Sec)"

