
tag @s add storehealth

execute store result score @s health run data get entity @s Health
scoreboard players operation @s temp = @s previous.health
scoreboard players operation @s temp -= @s health

execute if predicate health_display:overworld run setblock ~ 319 ~ oak_sign
execute unless predicate health_display:overworld run setblock ~ 255 ~ oak_sign

execute if predicate health_display:overworld run data merge block ~ 319 ~ {Text1:'[{"text":"[","color":"dark_red"},{"text":"-","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"temp"},"color":"red"},{"text":"]","color":"dark_red"}]'}
execute unless predicate health_display:overworld run data merge block ~ 255 ~ {Text1:'[{"text":"[","color":"dark_red"},{"text":"-","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"temp"},"color":"red"},{"text":"]","color":"dark_red"}]'}

loot spawn ~ ~ ~ loot health_display:dmg_indicator_motion
execute store result score temp temp run kill @e[type=item,nbt={Item:{id:"minecraft:debug_stick",tag:{tags:["random_motion"]}}}]

function health_display:health_bar/dmg_indicator/summon
execute as @e[type=item,tag=dmg_indicator,tag=new] at @s run function health_display:health_bar/dmg_indicator/setup_indicator

execute if predicate health_display:overworld run setblock ~ 319 ~ air
execute unless predicate health_display:overworld run setblock ~ 255 ~ air

scoreboard players operation @s previous.health -= @s temp

tag @s remove storehealth