
execute if predicate health_display:overworld run data modify entity @s CustomName set from block ~ 319 ~ Text1
execute unless predicate health_display:overworld run data modify entity @s CustomName set from block ~ 255 ~ Text1

tag @s remove new

