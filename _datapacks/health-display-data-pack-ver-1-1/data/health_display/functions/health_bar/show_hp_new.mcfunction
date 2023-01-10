
execute if predicate health_display:overworld run setblock ~ 319 ~ oak_sign
execute unless predicate health_display:overworld run setblock ~ 255 ~ oak_sign

data merge entity @s[type=!piglin] {HandDropChances:[0.085F,0.000F]}
data merge entity @s[type=piglin] {ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}

data modify entity @s[type=!piglin] HandItems[1] set value {id:"minecraft:lever",Count:1b,tag:{display:{Name:'{"text":"test"}'},CustomModelData:1}}
data modify entity @s[type=piglin] ArmorItems[3] set value {id:"minecraft:lever",Count:1b,tag:{display:{Name:'{"text":"test"}'},CustomModelData:1}}

execute if predicate health_display:overworld run data merge block ~ 319 ~ {Text1:'{"selector":"@e[tag=storehealth]"}'}
execute unless predicate health_display:overworld run data merge block ~ 255 ~ {Text1:'{"selector":"@e[tag=storehealth]"}'}

execute if predicate health_display:overworld run data modify entity @s CustomName set from block ~ 319 ~ Text1
execute unless predicate health_display:overworld run data modify entity @s CustomName set from block ~ 255 ~ Text1

data modify entity @s[type=!piglin] HandItems[1].tag.display.Name set from entity @s CustomName
data modify entity @s[type=piglin] ArmorItems[3].tag.display.Name set from entity @s CustomName

execute if predicate health_display:overworld run setblock ~ 319 ~ air
execute unless predicate health_display:overworld run setblock ~ 255 ~ air

tag @s add sethealthbar

