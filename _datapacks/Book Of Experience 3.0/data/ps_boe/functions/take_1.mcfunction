
execute store result score .lvl ps_boe run xp query @s levels
execute store result score .pnt ps_boe run xp query @s points

execute if score .lvl ps_boe matches 0..15 run scoreboard players operation .add ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 0..15 run scoreboard players operation .add ps_boe *= .2 ps_boe
execute if score .lvl ps_boe matches 0..15 run scoreboard players add .add ps_boe 7
execute if score .lvl ps_boe matches 0..15 run scoreboard players operation .add ps_boe -= .pnt ps_boe

execute if score .lvl ps_boe matches 16..30 run scoreboard players operation .add ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 16..30 run scoreboard players operation .add ps_boe *= .5 ps_boe
execute if score .lvl ps_boe matches 16..30 run scoreboard players remove .add ps_boe 38
execute if score .lvl ps_boe matches 16..30 run scoreboard players operation .add ps_boe -= .pnt ps_boe

execute if score .lvl ps_boe matches 31.. run scoreboard players operation .add ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 31.. run scoreboard players operation .add ps_boe *= .9 ps_boe
execute if score .lvl ps_boe matches 31.. run scoreboard players remove .add ps_boe 158
execute if score .lvl ps_boe matches 31.. run scoreboard players operation .add ps_boe -= .pnt ps_boe

execute if score .add ps_boe > .xp ps_boe run function ps_boe:take_all

scoreboard players set .bool2 ps_boe 0
execute unless score .add ps_boe > .xp ps_boe store success score .bool2 ps_boe run scoreboard players operation .xp ps_boe -= .add ps_boe
execute if score .bool2 ps_boe matches 1 run function ps_boe:add
