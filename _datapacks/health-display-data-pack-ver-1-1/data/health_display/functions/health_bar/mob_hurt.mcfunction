
function health_display:health_bar/set_health_bar

execute if score Options.hurt.particles options matches 1 run function health_display:health_bar/hurt_particles

execute if score Options.dmg.indicator.mobs options matches 1 run function health_display:health_bar/dmg_indicator/init
