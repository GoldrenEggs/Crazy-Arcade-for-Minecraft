clear @a
execute if score style_type ppt matches 0 run title @a title [{"text":"极简","color":"aqua","bold":true}]
execute if score style_type ppt matches 1 run title @a title [{"text":"森林","color":"dark_green","bold":true}]
execute if score style_type ppt matches 2 run title @a title [{"text":"下界","color":"dark_red","bold":true}]
execute if score style_type ppt matches 3 run title @a title [{"text":"末地","color":"dark_purple","bold":true}]
execute if score style_type ppt matches 4 run title @a title [{"text":"冰雪","color":"white","bold":true}]
title @a subtitle [{"text":"地图已被选择"}]
scoreboard players set armor_stand_count ppt 0