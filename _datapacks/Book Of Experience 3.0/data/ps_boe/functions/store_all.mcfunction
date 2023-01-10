
execute store result score .lvl ps_boe run xp query @s levels
execute store result score .pnt ps_boe run xp query @s points

execute if score .lvl ps_boe matches 0 run scoreboard players operation .remove ps_boe = .pnt ps_boe

execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .remove ps_boe *= .lvl ps_boe
execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .temp ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .temp ps_boe *= .6 ps_boe
execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .remove ps_boe += .temp ps_boe
execute if score .lvl ps_boe matches 1..16 run scoreboard players operation .remove ps_boe += .pnt ps_boe

execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe *= .lvl ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe *= .5 ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe /= .2 ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .temp ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .temp ps_boe *= .81 ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .temp ps_boe /= .2 ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe -= .temp ps_boe
execute if score .lvl ps_boe matches 17..31 run scoreboard players add .remove ps_boe 360
execute if score .lvl ps_boe matches 17..31 run scoreboard players operation .remove ps_boe += .pnt ps_boe

execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe *= .lvl ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe *= .9 ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe /= .2 ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .temp ps_boe = .lvl ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .temp ps_boe *= .325 ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .temp ps_boe /= .2 ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe -= .temp ps_boe
execute if score .lvl ps_boe matches 32.. run scoreboard players add .remove ps_boe 2220
execute if score .lvl ps_boe matches 32.. run scoreboard players operation .remove ps_boe += .pnt ps_boe

execute if score .lvl ps_boe matches 0 if score .pnt ps_boe matches 0 run tellraw @s {"text":"You don't have any XP to store","color":"red"}

scoreboard players operation .xp ps_boe += .remove ps_boe
function ps_boe:remove
