
execute store result score .lvl ps_boe run xp query @s levels
scoreboard players remove .lvl ps_boe 1
execute store result score .pnt ps_boe run xp query @s points

execute if score .lvl ps_boe matches -1 run scoreboard players operation .remove ps_boe = .pnt ps_boe

execute if score .lvl ps_boe matches 0..15 run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 0..15 run scoreboard players operation .remove ps_boe *= .2 ps_boe
execute if score .lvl ps_boe matches 0..15 run scoreboard players add .remove ps_boe 7

execute if score .lvl ps_boe matches 16..30 run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 16..30 run scoreboard players operation .remove ps_boe *= .5 ps_boe
execute if score .lvl ps_boe matches 16..30 run scoreboard players remove .remove ps_boe 38

execute if score .lvl ps_boe matches 31.. run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 31.. run scoreboard players operation .remove ps_boe *= .9 ps_boe
execute if score .lvl ps_boe matches 31.. run scoreboard players remove .remove ps_boe 158

execute if score .lvl ps_boe matches -1 if score .pnt ps_boe matches 0 run tellraw @s {"text":"You don't have enough XP to do that","color":"dark_red"}

scoreboard players operation .xp ps_boe += .remove ps_boe
function ps_boe:remove
