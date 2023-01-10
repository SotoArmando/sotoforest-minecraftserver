
execute store success score temp temp if score Options.dmg.indicator.players options matches 1

execute if score temp temp matches 1 run scoreboard players set Options.dmg.indicator.players options 0
execute if score temp temp matches 1 run tellraw @s [{"text":"Player Damage Indicators ","color":"gray"},{"text":"OFF","color":"red"}]

execute if score temp temp matches 0 run scoreboard players set Options.dmg.indicator.players options 1
execute if score temp temp matches 0 run tellraw @s [{"text":"Player Damage Indicators ","color":"gray"},{"text":"ON","color":"green"}]
