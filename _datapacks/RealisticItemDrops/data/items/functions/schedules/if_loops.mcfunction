execute as @e[type=item_frame,tag=sb.item_flat] at @s run function items:if_loops
execute if score #if_count sb_items.data matches 1.. run schedule function items:schedules/if_loops 1t replace
