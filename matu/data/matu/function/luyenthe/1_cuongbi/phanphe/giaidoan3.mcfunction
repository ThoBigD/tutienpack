function matu:luyenthe/1_cuongbi/phanphe/base_damage_type {amount: "3",damage_type:"matu:phan_phe"}

# Ma khí bóp nghẹt thức hải: Mù Lòa trong 4 giây, Yếu Ớt III trong 6 giây
effect give @s minecraft:blindness 4 0 true
effect give @s minecraft:weakness 6 2 true

# Hiệu ứng hạt bụi ma khí bùng nổ dữ dội (màu đỏ đen oán hận, kích thước 1.8)
particle dust{color:[0.2,0.0,0.0],scale:1.8} ~ ~1 ~ 0.5 0.5 0.5 0.05 30

# Reset điểm tích lũy Phản Phệ về 0 để bắt đầu chu kỳ đếm mới
scoreboard players set @s MaTu_PhanPhe 0