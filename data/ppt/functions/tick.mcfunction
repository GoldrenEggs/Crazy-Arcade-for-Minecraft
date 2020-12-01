execute if score start ppt matches 0 run function ppt:spawn
execute if score start ppt matches 1 run function ppt:game_tick
execute if score armor_stand_count ppt matches 0..30 run function ppt:map_reload
execute if score armor_stand_count ppt matches 31 run function ppt:generate_map
#全局buff
effect give @a night_vision 2 10 true
effect give @a saturation 2 10 true