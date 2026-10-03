
execute if score @s batthachkich_phase matches 1.. run function tt:skill/luyenthe/batdongminhvuong/batthachkich/tp 
execute unless score @s batthachkich_phase matches 1.. run clear @s paper[minecraft:custom_data={btk:throw}]
execute if score @s ca_dapchan matches 1.. run scoreboard players add @s ca_dapchan 1
execute if score @s ca_dapchan matches 12.. run function tt:skill/luyenthe/batdongminhvuong/batthachkich/nanglen
execute if score @s ca_dapchan matches 12.. run tutien nanglen
execute if score @s ca_dapchan matches 12.. run scoreboard players reset @s ca_dapchan

execute if score @s ca_throw matches 1.. run scoreboard players add @s ca_throw 1
execute if score @s ca_throw matches 6.. run tutien stop
execute if score @s ca_throw matches 6.. run scoreboard players reset @s ca_throw

execute as @s[scores={batthachkich_shift=20..}] unless score @s batthachkich_phase matches 1.. rotated ~ 0 positioned ^ ^ ^-1.5 positioned ~ ~-1 ~ unless block ~ ~ ~ #tt:nuocvsair run function tt:skill/luyenthe/batdongminhvuong/batthachkich/active
kill @e[type=item, nbt={Item:{tag:{btk:{"throw":1b}}}}]


execute if score @s batthachkich_shift matches 20.. run scoreboard players reset @s batthachkich_shift
