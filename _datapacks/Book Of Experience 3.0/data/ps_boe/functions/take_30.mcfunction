
execute unless score .xp ps_boe matches 1395.. run tellraw @s {"text":"The book doesn't have enough XP stored","color":"dark_red"}

execute if score .xp ps_boe matches 1395.. run xp add @s 1395
execute if score .xp ps_boe matches 1395.. run scoreboard players remove .xp ps_boe 1395
