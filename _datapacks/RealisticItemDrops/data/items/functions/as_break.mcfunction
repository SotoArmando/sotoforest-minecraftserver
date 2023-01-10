summon item ~ ~ ~ {Tags:["sb.pickup"],Item:{id:"minecraft:dirt",Count:1b},PickupDelay:1s}
data modify storage items:main temp set from entity @s HandItems[1]
execute as @e[type=item,limit=1,sort=nearest,tag=sb.pickup] at @s run function items:as_break_2
scoreboard players remove #as_marker_count sb_items.data 1
kill @s
