
execute store result score @s temp run data get entity @s Brain.memories."minecraft:dig_cooldown".ttl

execute if score @s temp matches ..1 run tag @s add despawn
execute if score @s temp matches ..1 run data merge entity @s {CustomName:""}
execute if score @s temp matches ..1 run data merge entity @s {CustomNameVisible:0b}
