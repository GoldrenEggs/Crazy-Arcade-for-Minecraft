#胡萝卜吊杆触发
execute as @a[scores={carrot_stick=1,power=1},level=100..] at @s run summon creeper ~ ~0.1 ~ {Tags:["1"],ActiveEffects:[{Id:24,Amplifier:0,Duration:49,ShowParticles:0b}],ignited:1,Fuse:50,ExplosionRadius:0,Invulnerable:1b,NoAI:1b}
execute as @a[scores={carrot_stick=1,power=2},level=100..] at @s run summon creeper ~ ~0.1 ~ {Tags:["2"],ActiveEffects:[{Id:24,Amplifier:0,Duration:49,ShowParticles:0b}],ignited:1,Fuse:50,ExplosionRadius:0,Invulnerable:1b,NoAI:1b}
execute as @a[scores={carrot_stick=1,power=3},level=100..] at @s run summon creeper ~ ~0.1 ~ {Tags:["3"],ActiveEffects:[{Id:24,Amplifier:0,Duration:49,ShowParticles:0b}],ignited:1,Fuse:50,ExplosionRadius:0,Invulnerable:1b,NoAI:1b}
execute as @a[scores={carrot_stick=1,power=4},level=100..] at @s run summon creeper ~ ~0.1 ~ {Tags:["4"],ActiveEffects:[{Id:24,Amplifier:0,Duration:49,ShowParticles:0b}],ignited:1,Fuse:50,ExplosionRadius:0,Invulnerable:1b,NoAI:1b}
execute as @a[scores={carrot_stick=1,power=5},level=100..] at @s run summon creeper ~ ~0.1 ~ {Tags:["5"],ActiveEffects:[{Id:24,Amplifier:0,Duration:49,ShowParticles:0b}],ignited:1,Fuse:50,ExplosionRadius:0,Invulnerable:1b,NoAI:1b}
xp add @a[scores={carrot_stick=1},level=100..] -100 levels
scoreboard players set @a[scores={carrot_stick=1..}] carrot_stick 0

#加经验
xp add @a[level=..98,scores={count=1}] 2 levels
xp add @a[level=..198,scores={count=2}] 2 levels
xp add @a[level=..298,scores={count=3}] 2 levels
xp add @a[level=..398,scores={count=4}] 2 levels
xp add @a[level=..498,scores={count=5}] 2 levels

#删除到地方盔甲架
kill @e[type=armor_stand,tag=baozha,scores={lucheng=15..}]
#盔甲架加路程计数
scoreboard players add @e[type=armor_stand,tag=baozha] lucheng 1
#召唤盔甲架
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run summon armor_stand ~ ~ ~ {Tags:["baozha","west"],Marker:1,Invisible:1b,Invulnerable:1b}
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run summon armor_stand ~ ~ ~ {Tags:["baozha","east"],Marker:1,Invisible:1b,Invulnerable:1b}
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run summon armor_stand ~ ~ ~ {Tags:["baozha","sorth"],Marker:1,Invisible:1b,Invulnerable:1b}
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run summon armor_stand ~ ~ ~ {Tags:["baozha","north"],Marker:1,Invisible:1b,Invulnerable:1b}
#盔甲架初始化距离
execute as @e[type=creeper,tag=1] at @s run scoreboard players set @e[type=armor_stand,distance=..1,tag=baozha] lucheng 12
execute as @e[type=creeper,tag=2] at @s run scoreboard players set @e[type=armor_stand,distance=..1,tag=baozha] lucheng 9
execute as @e[type=creeper,tag=3] at @s run scoreboard players set @e[type=armor_stand,distance=..1,tag=baozha] lucheng 6
execute as @e[type=creeper,tag=4] at @s run scoreboard players set @e[type=armor_stand,distance=..1,tag=baozha] lucheng 3
execute as @e[type=creeper,tag=5] at @s run scoreboard players set @e[type=armor_stand,distance=..1,tag=baozha] lucheng 0
#盔甲架移动
execute as @e[type=armor_stand,tag=baozha,tag=west] at @s run tp ~-1 ~ ~
execute as @e[type=armor_stand,tag=baozha,tag=east] at @s run tp ~1 ~ ~
execute as @e[type=armor_stand,tag=baozha,tag=sorth] at @s run tp ~ ~ ~1
execute as @e[type=armor_stand,tag=baozha,tag=north] at @s run tp ~ ~ ~-1
#粒子
execute as @e[type=armor_stand,tag=baozha] at @s run particle explosion ~ ~0.5 ~ 0 0 0 0.1 1
#伤害
execute as @e[type=armor_stand,tag=baozha] at @s run effect give @a[dz=1,dy=1,dx=-1] instant_damage 1 10
execute as @e[type=armor_stand,tag=baozha] at @s run effect give @a[dz=-1,dy=1,dx=-1] instant_damage 1 10
#检测墙壁
execute as @e[type=armor_stand,tag=baozha,tag=west] at @s if block ~-2 ~-2 ~ light_blue_concrete run kill @s
execute as @e[type=armor_stand,tag=baozha,tag=east] at @s if block ~2 ~-2 ~ light_blue_concrete run kill @s
execute as @e[type=armor_stand,tag=baozha,tag=sorth] at @s if block ~ ~-2 ~2 light_blue_concrete run kill @s
execute as @e[type=armor_stand,tag=baozha,tag=north] at @s if block ~ ~-2 ~-2 light_blue_concrete run kill @s
#检测可破坏
execute as @e[type=armor_stand,tag=baozha,tag=west] at @s if block ~-2 ~-2 ~ red_concrete run tag @s add destroy
execute as @e[type=armor_stand,tag=baozha,tag=east] at @s if block ~2 ~-2 ~ red_concrete run tag @s add destroy
execute as @e[type=armor_stand,tag=baozha,tag=sorth] at @s if block ~ ~-2 ~2 red_concrete run tag @s add destroy
execute as @e[type=armor_stand,tag=baozha,tag=north] at @s if block ~ ~-2 ~-2 red_concrete run tag @s add destroy

execute as @e[type=armor_stand,tag=baozha,tag=west,tag=destroy] at @s run fill ~-3 ~15 ~-1 ~-1 ~ ~1 air destroy
execute as @e[type=armor_stand,tag=baozha,tag=east,tag=destroy] at @s run fill ~3 ~15 ~-1 ~1 ~ ~1 air destroy
execute as @e[type=armor_stand,tag=baozha,tag=sorth,tag=destroy] at @s run fill ~1 ~15 ~1 ~-1 ~ ~3 air destroy
execute as @e[type=armor_stand,tag=baozha,tag=north,tag=destroy] at @s run fill ~1 ~15 ~-1 ~-1 ~ ~-3 air destroy

execute as @e[type=armor_stand,tag=baozha,tag=west,tag=destroy] at @s run setblock ~-2 ~-2 ~ black_concrete
execute as @e[type=armor_stand,tag=baozha,tag=east,tag=destroy] at @s run setblock ~2 ~-2 ~ black_concrete
execute as @e[type=armor_stand,tag=baozha,tag=sorth,tag=destroy] at @s run setblock ~ ~-2 ~2 black_concrete
execute as @e[type=armor_stand,tag=baozha,tag=north,tag=destroy] at @s run setblock ~ ~-2 ~-2 black_concrete

execute as @e[type=armor_stand,tag=baozha,tag=destroy] run kill @s

#居中
execute as @e[type=creeper] at @s run tp @e[type=armor_stand,tag=center,limit=1,sort=nearest,distance=..2]
#苦力怕计时
scoreboard players add @e[type=creeper] creeper_time 1
#苦力怕中心造成伤害
execute as @e[type=creeper,scores={creeper_time=49..}] at @s run effect give @a[distance=..1] instant_damage 1 10
#提前引爆
execute as @e[type=creeper,scores={creeper_time=49..}] run data merge entity @s {Fuse:0}
#水流
execute as @e[type=creeper,scores={creeper_time=10..}] at @s run setblock ~ ~ ~ structure_block{name:"shuiliu",mode:"LOAD",showboundingbox:1b,posX:-1,posY:0,posZ:-1}
execute as @e[type=creeper,scores={creeper_time=10..}] at @s run setblock ~ ~ ~1 redstone_block
execute as @e[type=creeper,scores={creeper_time=10..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 structure_void replace air
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run fill ~-1 ~ ~1 ~1 ~ ~-1 air
execute as @e[type=creeper,scores={creeper_time=48..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace structure_void
#清除粒子
effect clear @e[type=creeper,scores={creeper_time=48..}]

#道具出现
execute as @e[type=armor_stand,tag=item,tag=1] at @s if block ~ ~-2 ~ black_concrete run data merge entity @s {ArmorItems:[{},{},{},{id:"dragon_head",Count:1b}],Glowing:1b}
execute as @e[type=armor_stand,tag=item,tag=2] at @s if block ~ ~-2 ~ black_concrete run data merge entity @s {ArmorItems:[{},{},{},{id:"totem_of_undying",Count:1b}],Pose:{Head:[0F,0F,0F]}}
execute as @e[type=armor_stand,tag=item,tag=3] at @s if block ~ ~-2 ~ black_concrete run data merge entity @s {ArmorItems:[{},{},{},{id:"iron_boots",Count:1b}]}
execute as @e[type=armor_stand,tag=item,tag=4] at @s if block ~ ~-2 ~ black_concrete run data merge entity @s {ArmorItems:[{},{},{},{id:"tnt",Count:1b}]}
execute as @e[type=armor_stand,tag=item,tag=5] at @s if block ~ ~-2 ~ black_concrete run data merge entity @s {ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}]}

#道具拾取
#龙头
execute as @e[type=armor_stand,tag=item,tag=1] at @s if entity @p[distance=..1] run tag @s add choice
execute as @e[type=armor_stand,tag=item,tag=1,tag=choice] at @s run scoreboard players set @p[distance=..1] god 0
execute as @e[type=armor_stand,tag=item,tag=1,tag=choice] at @s run effect give @p[distance=..1] glowing 15 0 true
execute as @e[type=armor_stand,tag=item,tag=1,tag=choice] at @s run effect give @p[distance=..1] resistance 16 255 true
execute as @e[type=armor_stand,tag=item,tag=1,tag=choice] at @s run playsound entity.item.pickup player @p[distance=..1] ~ ~ ~ 1
execute as @e[type=armor_stand,tag=item,tag=1,tag=choice] at @s run kill @s
#盾
execute as @e[type=armor_stand,tag=item,tag=2] at @s if entity @p[distance=..1] run tag @s add choice
execute as @e[type=armor_stand,tag=item,tag=2,tag=choice] at @s run replaceitem entity @p[distance=..1] weapon.offhand minecraft:totem_of_undying
execute as @e[type=armor_stand,tag=item,tag=2,tag=choice] at @s run scoreboard players set @p[distance=..1] shield 1
execute as @e[type=armor_stand,tag=item,tag=2,tag=choice] at @s run playsound entity.item.pickup player @p[distance=..1] ~ ~ ~ 1
execute as @e[type=armor_stand,tag=item,tag=2,tag=choice] at @s run kill @s
#速度
execute as @e[type=armor_stand,tag=item,tag=3] at @s if entity @p[distance=..1] run tag @s add choice
execute as @e[type=armor_stand,tag=item,tag=3,tag=choice] at @s run scoreboard players add @p[distance=..1,scores={speed=..4}] speed 1
execute as @e[type=armor_stand,tag=item,tag=3,tag=choice] at @s run playsound entity.item.pickup player @p[distance=..1] ~ ~ ~ 1
execute as @e[type=armor_stand,tag=item,tag=3,tag=choice] at @s run kill @s
#数量
execute as @e[type=armor_stand,tag=item,tag=4] at @s if entity @p[distance=..1] run tag @s add choice
execute as @e[type=armor_stand,tag=item,tag=4,tag=choice] at @s run scoreboard players add @p[distance=..1,scores={count=..4}] count 1
execute as @e[type=armor_stand,tag=item,tag=4,tag=choice] at @s run playsound entity.item.pickup player @p[distance=..1] ~ ~ ~ 1
execute as @e[type=armor_stand,tag=item,tag=4,tag=choice] at @s run kill @s
#威力
execute as @e[type=armor_stand,tag=item,tag=5] at @s if entity @p[distance=..1] run tag @s add choice
execute as @e[type=armor_stand,tag=item,tag=5,tag=choice] at @s run scoreboard players add @p[distance=..1,scores={power=..4}] power 1
execute as @e[type=armor_stand,tag=item,tag=5,tag=choice] at @s run playsound entity.item.pickup player @p[distance=..1] ~ ~ ~ 1
execute as @e[type=armor_stand,tag=item,tag=5,tag=choice] at @s run kill @s
#道具效果
#龙头
execute as @a[scores={god=..300}] at @s run effect give @a[distance=..2] instant_damage 1 10 true
execute as @a[scores={god=0}] at @s run playsound entity.wither.spawn player @a ~ ~ ~ 100
execute as @a[scores={god=0}] at @s run summon lightning_bolt ~ ~ ~
execute as @a[scores={god=..300}] at @s run particle totem_of_undying ~ ~1 ~ 1 1 1 0 10
scoreboard players add @a[scores={god=..300}] god 1
#速度
effect give @a[scores={speed=1}] speed 2 0 true
effect give @a[scores={speed=2}] speed 2 1 true
effect give @a[scores={speed=3}] speed 2 2 true
effect give @a[scores={speed=4}] speed 2 3 true
effect give @a[scores={speed=5}] speed 2 4 true
#盾牌
execute as @a[scores={shiled_used=1}] at @s run effect give @s resistance 5 5
execute as @a[scores={shiled_used=1}] at @s run scoreboard players set @s shield 0
execute as @a[scores={shiled_used=1}] at @s run scoreboard players set @s shield_used 0
#死亡
tag @a[scores={death=1..}] add death
scoreboard players set @a[scores={death=1..}] death 0
gamemode spectator @a[tag=death,gamemode=!spectator]
#判定胜利
execute unless score players_count ppt matches 1 unless entity @a[team=!green,tag=!death] run function ppt:game_over
execute unless score players_count ppt matches 1 unless entity @a[team=!yellow,tag=!death] run function ppt:game_over
execute unless score players_count ppt matches 1 unless entity @a[team=!blue,tag=!death] run function ppt:game_over
execute unless score players_count ppt matches 1 unless entity @a[team=!red,tag=!death] run function ppt:game_over