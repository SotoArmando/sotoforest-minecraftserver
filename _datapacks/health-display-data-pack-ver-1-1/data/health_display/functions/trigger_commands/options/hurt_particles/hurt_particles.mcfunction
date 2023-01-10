
execute store success score temp temp if score Options.hurt.particles options matches 1

execute if score temp temp matches 1 run scoreboard players set Options.hurt.particles options 0
execute if score temp temp matches 1 run tellraw @s [{"text":"Hurt Particles ","color":"gray"},{"text":"OFF","color":"red"}]

execute if score temp temp matches 0 run scoreboard players set Options.hurt.particles options 1
execute if score temp temp matches 0 run tellraw @s [{"text":"Hurt Particles ","color":"gray"},{"text":"ON","color":"green"}]
