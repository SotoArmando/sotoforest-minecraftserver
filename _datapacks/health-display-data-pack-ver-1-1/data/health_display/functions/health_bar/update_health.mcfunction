
execute as @e[type=!#health_display:no_hp_and_player] at @s run function health_display:health_bar/set_health_bar
execute as @e[type=warden,tag=!despawn] at @s run function health_display:health_bar/set_health_bar
execute as @e[type=!#health_display:no_hp] store result score @s previous.health run data get entity @s Health

execute at @a run function health_display:health_bar/show_name_tag

schedule function health_display:health_bar/update_health 3s
