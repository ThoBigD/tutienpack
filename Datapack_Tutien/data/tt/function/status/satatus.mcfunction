tellraw @s {"text":""}
tellraw @s {"text":"        === BẢNG TRẠNG THÁI ===","color":"gold","bold":true}
tellraw @s ["",{text:" ✦ Máu :  ",color:"gray"},{score:{name:"@s",objective:"status_health"},color:"red"},{text:" ✦ Sát Thương :  ",color:"gray"},{score:{name:"@s",objective:"status_damage"},color:"red"}]
tellraw @s ["",{text:" ✦ Tuổi : ",color:"gray"},{score:{name:"@s",objective:"tuoi_that"},color:"green"},{text:" ✦ Còn Lại : ",color:"gray"},{score:{name:"@s",objective:"tuoi_tong"},color:"green"}]
tellraw @s {"text":"-----------------------------","color":"dark_gray"}
execute unless score @s status_luyenthe matches 1.. run tellraw @s ["",{text:" ✦ Cảnh giới: ",bold:true,color:"gray"},{text:"Người Phàm",bold:true,color:"green"}]
execute if entity @s[tag=luyenthe] run tellraw @s ["",{text:" ✦ Cảnh giới : ",color:"gray"},{text:"Luyện thể tầng ",color:"green"},{text:"(",color:"yellow"},{score:{name:"@s",objective:"status_luyenthe"},color:"yellow"},{text:" / 9)",color:"yellow"}]\

execute unless score @s status_luyenthe matches 1.. run function tt:status/ruiro/0
execute if score @s status_luyenthe matches 1..3 run tellraw @s [{"text":" ✦ Giai đoạn: ","color":"gray"},{"text":"Luyện Bì Phù (Da & Thịt)","color":"aqua"}]
execute if score @s status_luyenthe matches 1..3 run function tt:status/ruiro/13
tellraw @s {"text":"-----=Thuộc tính linh căn=-----","color":"dark_gray"}
execute if entity @s[tag=kim] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Kim","color":"white"}]
execute if entity @s[tag=moc] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Mộc","color":"green"}]
execute if entity @s[tag=thuy] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Thủy","color":"blue"}]
execute if entity @s[tag=hoa] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Hỏa","color":"red"}]
execute if entity @s[tag=tho] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Thổ","color":"yellow"}]
execute if entity @s[tag=thien] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"-=Thiên=-","color":"yellow"}]
execute if entity @s[tag=chan] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"-=Chân=-","color":"yellow"}]
execute if entity @s[tag=nguy] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"-=Ngụy=-","color":"yellow"}]
execute if entity @s[tag=phong] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Phong","color":"white"}]
execute if entity @s[tag=bang] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Băng","color":"blue"}]
execute if entity @s[tag=loi] run tellraw @s [{"text":" ✦ Thuộc Tính: ","color":"gray"},{"text":"Lôi","color":"yellow"}]

tellraw @s {"text":"-----=Công Pháp Sở Hữu=-----","color":"dark_gray"}
execute if entity @s[tag=bdmv] run tellraw @s {text:"Bất Động Minh Vương",bold:true,color:"yellow",click_event:{action:"run_command",command:"/trigger batdongminhvuong"}}