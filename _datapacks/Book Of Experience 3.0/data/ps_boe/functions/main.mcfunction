
advancement revoke @s only ps_boe:has_clicked
scoreboard players set .bool ps_boe 0
scoreboard players set .isoff ps_boe 0
execute if data entity @s SelectedItem.tag.ps_boe if data entity @s {SelectedItem:{Count:1b}} run scoreboard players set .bool ps_boe 1
execute unless score .bool ps_boe matches 1 if data entity @s Inventory[{Slot:-106b}].tag.ps_boe if data entity @s {Inventory:[{Slot:-106b,Count:1b}]} run scoreboard players set .isoff ps_boe 1
execute if score .isoff ps_boe matches 1 run scoreboard players set .bool ps_boe 1

execute if score .bool ps_boe matches 1 if score .isoff ps_boe matches 0 store result score .xp ps_boe run data get entity @s SelectedItem.tag.ps_boe
execute if score .bool ps_boe matches 1 if score .isoff ps_boe matches 1 store result score .xp ps_boe run data get entity @s Inventory[{Slot:-106b}].tag.ps_boe

execute if score .bool ps_boe matches 1 if score @s ps_boe matches 2 run function ps_boe:take_1
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 3 run function ps_boe:take_3
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 9 run function ps_boe:take_10
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 4 run function ps_boe:take_30
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 5 run function ps_boe:take_all

execute if score .bool ps_boe matches 1 if score @s ps_boe matches 6 run function ps_boe:store_1
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 10 run function ps_boe:store_3
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 11 run function ps_boe:store_10
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 7 run function ps_boe:store_30
execute if score .bool ps_boe matches 1 if score @s ps_boe matches 8 run function ps_boe:store_all

execute if score .bool ps_boe matches 1 run function ps_boe:book_store

scoreboard players reset @s ps_boe
scoreboard players enable @s ps_boe


