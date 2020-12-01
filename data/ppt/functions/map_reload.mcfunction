#重置玩家计分板
execute if score armor_stand_count ppt matches 0 run function ppt:scoreboard_reload
#重置地图
execute if score armor_stand_count ppt matches 0 run fill 25 23 -22 -25 10 22 air
execute if score armor_stand_count ppt matches 0 run kill @e[type=!minecraft:player]
#恢复最底层定位地板
execute if score armor_stand_count ppt matches 0 if score map_type ppt matches 0 run setblock -22 9 -19 structure_block{name:"map_1",mode:"LOAD",showboundingbox:1b}
execute if score armor_stand_count ppt matches 0 if score map_type ppt matches 0 run setblock -22 10 -19 redstone_block
execute if score armor_stand_count ppt matches 0 if score map_type ppt matches 0 run setblock -22 10 -19 air
#生成盔甲架
execute if score armor_stand_count ppt matches 0 if score map_type ppt matches 0 run summon armor_stand 24 4 21 {Tags:["shengcheng","A"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=A] at @s if score armor_stand_count ppt matches 0..14 run summon armor_stand ~ ~ ~ {Tags:["shengcheng","B"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=A] at @s if score armor_stand_count ppt matches 0..14 run tp @s ~ ~ ~-3
execute as @e[type=armor_stand,tag=shengcheng,tag=A] at @s if score armor_stand_count ppt matches 14 run kill @s
execute as @e[type=armor_stand,tag=shengcheng,tag=B] at @s if score armor_stand_count ppt matches 14..30 run summon armor_stand ~ ~ ~ {Tags:["shengcheng"]}
execute as @e[type=armor_stand,tag=shengcheng,tag=B] at @s if score armor_stand_count ppt matches 14..30 run tp @s ~-3 ~ ~
execute as @e[type=armor_stand,tag=shengcheng,tag=B] at @s if score armor_stand_count ppt matches 30 run kill @s
#删除中心建筑区域盔甲架
execute if score armor_stand_count ppt matches 30 run kill @e[type=armor_stand,tag=shengcheng,x=0.5,y=4,z=0.5,distance=..5]
#给盔甲架随机加tag
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,limit=41,sort=random] add 1
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,tag=!1,limit=41,sort=random] add 2
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,tag=!1,tag=!2,limit=41,sort=random] add 3
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,tag=!1,tag=!2,tag=!3,limit=41,sort=random] add 4
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,tag=!1,tag=!2,tag=!3,tag=!4,limit=41,sort=random] add 5
execute if score armor_stand_count ppt matches 30 run tag @e[type=armor_stand,tag=shengcheng,tag=!1,tag=!2,tag=!3,tag=!4,tag=!5,limit=41,sort=random] add 6

scoreboard players add armor_stand_count ppt 1