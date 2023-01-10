
execute store success score temp temp if score Options.dmg.indicator.mobs options matches 1

execute if score temp temp matches 1 run scoreboard players set Options.dmg.indicator.mobs options 0
execute if score temp temp matches 1 run tellraw @s [{"text":"Mob Damage Indicators ","color":"gray"},{"text":"OFF","color":"red"}]

execute if score temp temp matches 0 run scoreboard players set Options.dmg.indicator.mobs options 1
execute if score temp temp matches 0 run tellraw @s [{"text":"Mob Damage Indicators ","color":"gray"},{"text":"ON","color":"green"}]

