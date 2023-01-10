
scoreboard players operation .add ps_boe = .xp ps_boe
execute if score .xp ps_boe matches 0 run tellraw @s {"text":"The book doesn't have any XP stored","color":"red"}
execute unless score .xp ps_boe matches 0 run function ps_boe:add
scoreboard players set .xp ps_boe 0
