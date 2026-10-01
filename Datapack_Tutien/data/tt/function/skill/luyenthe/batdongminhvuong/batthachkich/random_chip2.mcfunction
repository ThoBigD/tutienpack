# Bán kính 6 block (từ -6 tới 6)
execute store result storage mypack:crater2 x int 1 run random value -6..6
execute store result storage mypack:crater2 z int 1 run random value -6..6

# Random độ sâu lún xuống: từ 0 tới -3 block
execute store result storage mypack:crater2 y int 1 run random value -3..0
function tt:skill/luyenthe/batdongminhvuong/batthachkich/carve_chip2 with storage mypack:crater2