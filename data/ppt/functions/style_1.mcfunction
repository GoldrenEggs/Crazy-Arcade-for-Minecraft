#风格1：
#生成不可破坏方块
execute as @e[type=armor_stand,tag=shengcheng,tag=1] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_1",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=2] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_2",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=3] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_3",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=4] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_4",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=5] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_5",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=6] at @s if block ~ ~5 ~ light_blue_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_6",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
#生成可破坏方块与部分地板
execute as @e[type=armor_stand,tag=shengcheng,tag=1] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_11",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=2] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_12",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=3] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_13",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=4] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_14",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=5] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_21",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=6] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_21",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
execute as @e[type=armor_stand,tag=shengcheng,tag=5] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~5 ~ black_concrete
execute as @e[type=armor_stand,tag=shengcheng,tag=6] at @s if block ~ ~5 ~ red_concrete run setblock ~ ~5 ~ black_concrete
#生成出生点地板
execute as @e[type=armor_stand,tag=shengcheng] at @s if block ~ ~5 ~ white_concrete run setblock ~ ~4 ~ structure_block{name:"style_1_21",mode:"LOAD",showboundingbox:1b,posX:-1,posY:2,posZ:-1}
#生成中心建筑
execute run setblock 0 8 0 structure_block{name:"style_1_31",mode:"LOAD",showboundingbox:1b,posX:-4,posY:2,posZ:-4}