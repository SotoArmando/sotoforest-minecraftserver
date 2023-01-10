
schedule clear health_display:health_bar/update_health

# Player Triggers
scoreboard objectives remove own.dmg.indicator
scoreboard objectives remove show.hurt.particles

# Options Triggers
scoreboard objectives remove options

# Health Display #
scoreboard objectives remove player.health
execute unless predicate health_display:active_data_packs run scoreboard objectives remove temp
execute unless predicate health_display:active_data_packs run scoreboard objectives remove health
scoreboard objectives remove previous.health
execute unless predicate health_display:active_data_packs run scoreboard objectives remove maxhealth

execute as @e[type=!#health_display:no_hp_and_player] run item replace entity @s weapon.offhand with air
execute as @e[type=!#health_display:no_hp_and_player] run data merge entity @s {CustomName:""}
execute as @e[type=!#health_display:no_hp_and_player,nbt={CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:0b}

tellraw @a {"text":"Uninstalled Health Display","color":"red"}

datapack disable "file/health_display"
