#pass
execute if entity @s[tag=bdmv] run scoreboard players add @s batthachkich_on 1
execute if entity @s[tag=bdmv] run execute if score @s batthachkich_on matches 2.. run scoreboard players set @s batthachkich_on 0
execute if entity @s[tag=bdmv] run execute if score @s batthachkich_on matches 1 run tellraw @s ["",{"text":"[Bạt Thạch Kích]","bold":true,"color":"red"},{"text":" : Đã bật","color":"green"}]
execute if entity @s[tag=bdmv] run execute if score @s batthachkich_on matches 0 run tellraw @s ["",{"text":"[Bạt Thạch Kích]","bold":true,"color":"red"},{"text":" : Đã tắt","color":"green"}]
#fail
execute if entity @s[tag=!bdmv] run tellraw @s ["",{"text":"[System] ","bold":true,"color":"red"},{"text":" : Bạn chưa luyện thành Bất Động Minh Vương "},{"text":"=> [Không thể kích hoạt]","bold":true,"color":"red"}]
dialog show @s tt:batdongminhvuong
scoreboard players reset @s batthachkich_counting
scoreboard players reset @s batthachkich_phase
scoreboard players reset @s batthachkich
scoreboard players reset @s batthachkich_shift