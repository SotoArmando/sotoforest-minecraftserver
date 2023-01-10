
execute store success score temp temp if entity @s[tag=show_hurt_particles]

execute if score temp temp matches 1 run tag @s remove show_hurt_particles
execute if score temp temp matches 1 run tellraw @s [{"text":"Show Hurt Particles "},{"text":"OFF","color":"red"}]

execute if score temp temp matches 0 run tag @s add show_hurt_particles
execute if score temp temp matches 0 run tellraw @s [{"text":"Show Hurt Particles "},{"text":"On","color":"green"}]

scoreboard players reset @s show.hurt.particles
scoreboard players enable @s show.hurt.particles

