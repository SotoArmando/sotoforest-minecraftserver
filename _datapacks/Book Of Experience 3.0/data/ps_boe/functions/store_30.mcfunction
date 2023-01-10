
execute store result score .lvl ps_boe run xp query @s levels

execute if score .lvl ps_boe matches ..29 run tellraw @s {"text":"You don't have enough XP to do that","color":"dark_red"}

execute if score .lvl ps_boe matches 30.. run xp add @s -1395
execute if score .lvl ps_boe matches 30.. run scoreboard players add .xp ps_boe 1395
