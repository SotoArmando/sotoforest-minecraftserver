
execute as @e[type=!#health_display:no_hp_and_player,tag=sethealthbar,distance=..15,nbt=!{CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=!#health_display:no_hp_and_player,tag=sethealthbar,distance=16..25,nbt={CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:0b}

execute as @e[type=warden,tag=!despawn,tag=sethealthbar,distance=..15,nbt=!{CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=warden,tag=sethealthbar,distance=16..25,nbt={CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:0b}

