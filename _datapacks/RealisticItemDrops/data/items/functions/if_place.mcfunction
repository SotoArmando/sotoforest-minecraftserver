summon item_frame ~ ~ ~ {Facing:1b,Invisible:1b,Tags:["sb.item_flat","sb.temp"],Fixed:1b,Invulnerable:1b}
schedule function items:schedules/if_loops 1t replace
scoreboard players add #if_count sb_items.data 1
data modify storage items:main temp set from entity @s Item
execute as @e[type=item_frame,tag=sb.temp,distance=..1,limit=1,sort=nearest] run function items:if_place_2
kill @s
