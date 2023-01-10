
execute store result storage ps:temp ps_boe.ps_boe int 1 run scoreboard players get .xp ps_boe

execute if score .isoff ps_boe matches 0 run item modify entity @s weapon.mainhand ps_boe:book
execute if score .isoff ps_boe matches 1 run item modify entity @s weapon.offhand ps_boe:book
