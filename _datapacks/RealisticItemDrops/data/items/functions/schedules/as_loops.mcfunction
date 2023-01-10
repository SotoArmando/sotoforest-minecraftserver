execute as @e[type=armor_stand,tag=sb.is_marker] at @s run function items:as_loops
execute if score #as_marker_count sb_items.data matches 1.. run schedule function items:schedules/as_loops 1t replace
