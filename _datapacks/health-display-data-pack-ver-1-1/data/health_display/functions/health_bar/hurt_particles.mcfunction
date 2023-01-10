
execute as @s[type=#health_display:damage_particles/very_small] run particle dust 1 0 0 1 ~ ~ ~ .5 .5 .5 1 30 normal @a[tag=show_hurt_particles]
execute as @s[type=#health_display:damage_particles/small] run particle dust 1 0 0 1 ~ ~.4 ~ .5 .5 .5 1 30 normal @a[tag=show_hurt_particles]
execute as @s[type=#health_display:damage_particles/medium] run particle dust 1 0 0 1 ~ ~.9 ~ .7 .7 .7 1 40 normal @a[tag=show_hurt_particles]
execute as @s[type=#health_display:damage_particles/human_shape] run particle dust 1 0 0 1 ~ ~1 ~ .4 .85 .4 1 50 normal @a[tag=show_hurt_particles]
execute as @s[type=#health_display:damage_particles/big] run particle dust 1 0 0 1 ~ ~1.5 ~ .8 1.3 .8 1 70 normal @a[tag=show_hurt_particles]
execute as @s[type=#health_display:damage_particles/very_big] run particle dust 1 0 0 1 ~ ~2 ~ 2 2 2 1 160 normal @a[tag=show_hurt_particles]
