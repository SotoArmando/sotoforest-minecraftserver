
execute store success score temp temp if entity @s[tag=show_dmg_indicator]

execute if score temp temp matches 1 run tag @s remove show_dmg_indicator
execute if score temp temp matches 1 run tellraw @s [{"text":"Own Damage Indicators "},{"text":"OFF","color":"red"}]

execute if score temp temp matches 0 run tag @s add show_dmg_indicator
execute if score temp temp matches 0 run tellraw @s [{"text":"Own Damage Indicators "},{"text":"On","color":"green"}]

scoreboard players reset @s own.dmg.indicator
scoreboard players enable @s own.dmg.indicator

