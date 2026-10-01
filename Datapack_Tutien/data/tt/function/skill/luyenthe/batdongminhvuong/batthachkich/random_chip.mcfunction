# Random vị trí X, Z phạm vi 3x3 (-1, 0, 1)
execute store result storage mypack:crater x int 1 run random value -1..1
execute store result storage mypack:crater z int 1 run random value -1..1

# Random độ sâu Y: 0 (ngang chân) hoặc -1 (sâu xuống 1 block)
execute store result storage mypack:crater y int 1 run random value -1..0
function tt:skill/luyenthe/batdongminhvuong/batthachkich/carve_chip with storage mypack:crater