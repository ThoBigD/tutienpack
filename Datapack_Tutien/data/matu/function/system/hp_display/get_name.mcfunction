
data modify entity @e[type=text_display,tag=matu_hp_display,limit=1] text set value {"selector":"@e[tag=this,limit=1]"}
data modify storage matu_hp_display MobName set from entity @e[type=text_display,tag=matu_hp_display,limit=1] text
data modify entity @e[type=text_display,tag=matu_hp_display,limit=1] text set value ""

