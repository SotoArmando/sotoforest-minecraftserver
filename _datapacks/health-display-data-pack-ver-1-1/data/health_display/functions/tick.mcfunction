
# Warden #
execute as @e[type=warden,tag=!despawn] run function health_display:warden

# Health #
execute as @e[type=!#health_display:no_hp,tag=!maxhealthstored] run function health_display:health_bar/store_max_health
execute as @e[type=warden,tag=!maxhealthstored] run function health_display:health_bar/store_max_health

execute as @e[type=!#health_display:no_hp_and_player,nbt={HurtTime:8s}] at @s run function health_display:health_bar/mob_hurt
execute as @e[type=player,tag=show_dmg_indicator,nbt={HurtTime:8s}] at @s if score Options.dmg.indicator.players options matches 1 run function health_display:health_bar/dmg_indicator/init


# Trigger Commands #
execute as @a run function health_display:trigger_commands/check_trigger
