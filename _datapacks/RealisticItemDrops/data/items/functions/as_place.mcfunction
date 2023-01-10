summon armor_stand ~ ~ ~ {ShowArms:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Invisible:1b,Tags:["sb.item_drop","sb.check_ground","global.ignore.kill","global.ignore.pos","global.ignore"],Silent:1b,Invulnerable:1b}
schedule function items:schedules/waiting_as_on_ground 1t replace
scoreboard players add #as_count sb_items.data 1
scoreboard players set #success sb_items.data 0
execute store success score #success sb_items.data if entity @p[distance=..2,predicate=items:sprinting]
data modify storage items:main temp set from entity @s
execute as @e[type=armor_stand,tag=sb.item_drop,distance=..1,limit=1,sort=nearest,tag=!sb.completed] run function items:as_place_2
kill @s
