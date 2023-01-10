
execute if score .remove ps_boe matches 1000.. run xp add @s -1000
execute if score .remove ps_boe matches 1000.. run scoreboard players remove .remove ps_boe 1000
execute if score .remove ps_boe matches 100.. run xp add @s -100
execute if score .remove ps_boe matches 100.. run scoreboard players remove .remove ps_boe 100
execute if score .remove ps_boe matches 10.. run xp add @s -10
execute if score .remove ps_boe matches 10.. run scoreboard players remove .remove ps_boe 10
execute if score .remove ps_boe matches 1.. run xp add @s -1
execute if score .remove ps_boe matches 1.. run scoreboard players remove .remove ps_boe 1

execute if score .remove ps_boe matches 1.. run function ps_boe:remove