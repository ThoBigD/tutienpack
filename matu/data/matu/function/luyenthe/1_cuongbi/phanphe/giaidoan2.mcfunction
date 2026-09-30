function matu:luyenthe/1_cuongbi/phanphe/base_damage_type {amount: "2",damage_type:"matu:phan_phe"}


# Ma khí đè nặng cơ thể: Chậm Rãi II trong 5 giây, Đói Lả II trong 5 giây
effect give @s minecraft:slowness 5 1 true
effect give @s minecraft:hunger 5 1 true

# Hiệu ứng hạt bụi ma khí bao quanh (màu tím đen, kích thước 1.2)
particle dust{color:[0.1,0.0,0.1],scale:1.2} ~ ~1 ~ 0.3 0.5 0.3 0.01 10

# Reset điểm tích lũy Phản Phệ về 0 để bắt đầu chu kỳ đếm mới
scoreboard players set @s MaTu_PhanPhe 0