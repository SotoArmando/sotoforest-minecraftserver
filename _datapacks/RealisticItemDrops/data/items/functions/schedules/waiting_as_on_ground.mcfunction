execute as @e[type=armor_stand,tag=sb.check_ground,predicate=items:on_ground] run function items:as_on_ground
execute if score #as_count sb_items.data matches 1.. run schedule function items:schedules/waiting_as_on_ground 1t replace
