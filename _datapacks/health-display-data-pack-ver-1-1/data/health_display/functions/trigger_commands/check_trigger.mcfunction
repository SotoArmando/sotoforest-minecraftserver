
# Player Commands
execute if score @s own.dmg.indicator matches 1.. run function health_display:trigger_commands/player/dmg_indicator
execute if score @s show.hurt.particles matches 1.. run function health_display:trigger_commands/player/show_hurt_particles

# Options
execute if score @s options matches 1.. run function health_display:trigger_commands/options/give_options_book
