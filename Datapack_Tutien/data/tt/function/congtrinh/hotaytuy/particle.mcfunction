# TẦNG 1: MIỆNG PHỄU NGƯỢC (Trên cao - Sinh ra diện rộng ở ngang đầu, rơi tự do)
execute at @s run particle item{item:{id:"minecraft:black_concrete"}} ~ ~1.6 ~ 0.45 0.05 0.45 0 5 force

# TẦNG 2: THÂN PHỄU NGƯỢC (Tầm trung - Sinh ra hẹp hơn ở ngang ngực, rơi xuống)
execute at @s run particle item{item:{id:"minecraft:black_concrete"}} ~ ~1.1 ~ 0.25 0.05 0.25 0 3 force

# TẦNG 3: ĐÁY PHỄU NGƯỢC (Dưới thấp - Sinh ra sát người ở ngang hông)
execute at @s run particle item{item:{id:"minecraft:black_concrete"}} ~ ~0.6 ~ 0.1 0.05 0.1 0 2 force

# Hiệu ứng khói mực bổ trợ rơi chậm từ trên đỉnh phễu xuống
execute at @s run particle squid_ink ~ ~1.5 ~ 0.3 0.1 0.3 0.01 1 force