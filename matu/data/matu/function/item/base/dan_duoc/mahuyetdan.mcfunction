# Xóa bỏ trạng thái hoàn thành của Advancement để có thể dùng liên tục nhiều lần
advancement revoke @s only matu:eat_item/mahuyetdan

# Tịch thu viên giấy tạm thời bị lỗi khóa chuột phải từ bàn chế tạo
clear @s minecraft:paper[custom_data={matu:{item_type:"dan_duoc",id:"ma_huyet_dan_temp"}}] 1

# Trả lại chính xác viên giấy xịn có component food hoàn chỉnh (Y hệt như lệnh /give)
give @s minecraft:paper[custom_name=[{"text":"Ma Huyết Đan","bold":true,"italic":false,"color":"dark_red"}],lore=[[{"text":"Chứa đựng oán khí và huyết dịch nồng đậm.","italic":false,"color":"gray"}],[{"text":"Ăn vào: Phàm Nhân trực tiếp Nhập Ma.","italic":false,"color":"red"}],[{"text":"Yêu cầu: cần đạt 100 ma khí trước khi sử dụng, hoặc không thì ....","italic":false,"color":"dark_gray"}]],food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:10000,animation:none},max_stack_size=1,custom_data={matu:{id:"ma_huyet_dan"}}] 1
