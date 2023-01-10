
gamerule sendCommandFeedback false
tellraw @a {"text":"Loaded Health Display","color":"green"}
function health_display:health_bar/update_health

# Player Trigger
scoreboard objectives add own.dmg.indicator trigger {"text":"Own Damage Indicator","color":"aqua"}
scoreboard players enable @a own.dmg.indicator
scoreboard objectives add show.hurt.particles trigger {"text":"Show Hurt Particles","color":"aqua"}
scoreboard players enable @a show.hurt.particles

# Options Triggers
scoreboard objectives add options trigger {"text":"Server Options","color":"blue"}
scoreboard players enable @a options
execute unless score Options.dmg.indicator.players options matches 0.. run scoreboard players set Options.dmg.indicator.players options 1
execute unless score Options.dmg.indicator.mobs options matches 0.. run scoreboard players set Options.dmg.indicator.mobs options 1
execute unless score Options.hurt.particles options matches 0.. run scoreboard players set Options.hurt.particles options 1

# Health Display #
scoreboard objectives add player.health health {"text":"\u2764","color":"white"}
scoreboard objectives modify player.health rendertype hearts
scoreboard objectives setdisplay belowName player.health
scoreboard objectives add temp dummy
scoreboard objectives add health dummy
scoreboard objectives add previous.health dummy
scoreboard objectives add maxhealth dummy

