
execute store result score @s maxhealth run data get entity @s Health
#execute store result score @s temp run data get entity @s AbsorptionAmount
#execute store result score @s temp run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Modifiers[0].Amount
scoreboard players operation @s previous.health = @s maxhealth

effect give @s[type=player] instant_damage 1 0
effect give @s[type=player] saturation 10 4 true

tag @s add maxhealthstored
