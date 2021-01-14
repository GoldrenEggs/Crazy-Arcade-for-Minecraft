execute unless entity @a[team=!green,tag=!death] run title @a title [{"text":"绿队胜利","color":"green","bold":true}]
execute unless entity @a[team=!yellow,tag=!death] run title @a title [{"text":"黄队胜利","color":"yellow","bold":true}]
execute unless entity @a[team=!blue,tag=!death] run title @a title [{"text":"蓝队胜利","color":"dark_aqua","bold":true}]
execute unless entity @a[team=!red,tag=!death] run title @a title [{"text":"红队胜利","color":"dark_red","bold":true}]
scoreboard players set start ppt 0
kill @e[type=armor_stand]
gamemode adventure @a
xp set @a 0 levels
clear @a
tp @a 46.5 57 6.0
time set 6000
function ppt:scoreboard_reload