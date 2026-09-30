scoreboard players operation #ketqua phanchan_tinh_st = #phanchan_bidanh phanchan_onhit
scoreboard players operation #ketqua phanchan_tinh_st /= #phanchan_hangso5 phanchan_tinh_st
execute store result storage tt:temp Damage float 0.1 run scoreboard players get #ketqua phanchan_tinh_st
function tt:skill/luyenthe/batdongminhvuong/phanchan/goi_damge_macro with storage tt:temp

