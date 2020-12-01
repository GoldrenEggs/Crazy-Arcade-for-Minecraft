#风格
execute if score style_type ppt matches 0 run function ppt:style_0
execute if score style_type ppt matches 1 run function ppt:style_1
execute if score style_type ppt matches 2 run function ppt:style_2
execute if score style_type ppt matches 3 run function ppt:style_3
execute if score style_type ppt matches 4 run function ppt:style_4
#激活结构方块
setblock 0 7 0 redstone_block
fill 0 7 0 0 8 0 air
execute as @e[type=armor_stand,tag=shengcheng] at @s run setblock ~ ~3 ~ redstone_block
execute as @e[type=armor_stand,tag=shengcheng] at @s run fill ~ ~3 ~ ~ ~4 ~ air

#道具部分
#删除不可破坏盔甲架
execute as @e[type=armor_stand,tag=shengcheng] at @s if block ~ ~5 ~ light_blue_concrete run kill @s
#生成居中盔甲架
execute as @e[type=armor_stand,tag=shengcheng] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["center"]}
#删除地板部分盔甲架
execute as @e[type=armor_stand,tag=shengcheng] at @s if block ~ ~5 ~ white_concrete run kill @s
execute as @e[type=armor_stand,tag=shengcheng,tag=5] at @s if block ~ ~5 ~ black_concrete run kill @s
execute as @e[type=armor_stand,tag=shengcheng,tag=6] at @s if block ~ ~5 ~ black_concrete run kill @s
#总共110左右可破坏方块
tag @e[type=armor_stand,tag=shengcheng,limit=2,sort=random] add 11
tag @e[type=armor_stand,tag=shengcheng,tag=!11,limit=10,sort=random] add 12
tag @e[type=armor_stand,tag=shengcheng,tag=!11,tag=!12,limit=22,sort=random] add 13
tag @e[type=armor_stand,tag=shengcheng,tag=!11,tag=!12,tag=!13,limit=22,sort=random] add 14
tag @e[type=armor_stand,tag=shengcheng,tag=!11,tag=!12,tag=!13,tag=!14,limit=22,sort=random] add 15

execute as @e[type=armor_stand,tag=shengcheng,tag=11] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["item","1"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=12] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["item","2"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=13] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["item","3"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=14] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["item","4"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=15] at @s run summon armor_stand ~ ~7 ~ {Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,Tags:["item","5"]}

scoreboard players set start ppt 1

scoreboard players add armor_stand_count ppt 1

execute as @a at @s run scoreboard players add players_count ppt 1
execute if score players_count ppt matches 1 run say 检测到单人游戏，已进入测试模式，如想结束游戏请/function ppt:game_over

function ppt:start_game1