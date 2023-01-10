execute if block ~ ~0.8 ~ #items:ignore run tp @s ~ ~-0.2 ~
execute if entity @e[type=player,distance=..1.2] run function items:as_break
execute if score .despawns ridsb.settings matches 1 if entity @s[tag=!global.ignore,tag=!global.ignore.kill] run function items:despawn_score
