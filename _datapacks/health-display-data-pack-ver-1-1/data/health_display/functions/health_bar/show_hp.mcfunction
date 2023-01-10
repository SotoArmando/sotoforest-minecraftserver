
execute if predicate health_display:overworld run setblock ~ 319 ~ oak_sign
execute unless predicate health_display:overworld run setblock ~ 255 ~ oak_sign

execute store result score @s health run data get entity @s Health
data modify entity @s CustomName set value '""'

execute unless entity @s[type=piglin] if predicate health_display:overworld run data merge block ~ 319 ~ {Text1:'[{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=storehealth]","interpret":true},{"text":" [","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"maxhealth"},"color":"green"},{"text":"]","color":"red"}]'}
execute unless entity @s[type=piglin] unless predicate health_display:overworld run data merge block ~ 255 ~ {Text1:'[{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=storehealth]","interpret":true},{"text":" [","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"maxhealth"},"color":"green"},{"text":"]","color":"red"}]'}

execute if entity @s[type=piglin] if predicate health_display:overworld run data merge block ~ 319 ~ {Text1:'[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=storehealth]","interpret":true},{"text":" [","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"maxhealth"},"color":"green"},{"text":"]","color":"red"}]'}
execute if entity @s[type=piglin] unless predicate health_display:overworld run data merge block ~ 255 ~ {Text1:'[{"nbt":"ArmorItems[3].tag.display.Name","entity":"@e[tag=storehealth]","interpret":true},{"text":" [","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"health"},"color":"green"},{"text":"/","color":"red"},{"score":{"name":"@e[tag=storehealth]","objective":"maxhealth"},"color":"green"},{"text":"]","color":"red"}]'}


execute if predicate health_display:overworld run data modify entity @s CustomName set from block ~ 319 ~ Text1
execute unless predicate health_display:overworld run data modify entity @s CustomName set from block ~ 255 ~ Text1

execute if predicate health_display:overworld run setblock ~ 319 ~ air
execute unless predicate health_display:overworld run setblock ~ 255 ~ air

