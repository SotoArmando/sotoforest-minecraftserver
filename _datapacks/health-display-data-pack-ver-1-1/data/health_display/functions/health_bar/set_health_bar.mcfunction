
tag @s add storehealth

execute if entity @s[tag=!sethealthbar] run function health_display:health_bar/show_hp_new
execute if entity @s[tag=sethealthbar] run function health_display:health_bar/show_hp

tag @s remove storehealth