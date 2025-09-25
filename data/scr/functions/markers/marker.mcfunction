execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

playsound bewitchment:entity.generic.teleport master @a ~ ~ ~ 9999999 1

execute as @e[type=minecraft:marker,tag=torch_marker] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=axe_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=stick_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=snowball_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=lead_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=iron_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=emerald_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=bread_room] at @s run tp @a @s
execute as @e[type=minecraft:marker,tag=fishing_rod_room] at @s run tp @a @s

tag @a remove in_room
tag @a remove axe_room
tag @a remove stick_room
tag @a remove snowball_room
tag @a remove lead_room
tag @a remove iron_room
tag @a remove emerald_room
tag @a remove bread_room
tag @a remove fishing_rod_room
tag @a remove magma

scoreboard players set global stage_wheat 0
scoreboard players set global stage_potato 0
scoreboard players set global stage_carrot 0

timedt 10 'execute at @s[tag=stikck_room] run tellraw @a {"text":"✔ Вы справились с паркуром и получили Палку-спасалку!","color":"yellow"}'

timedt 5 'kill @e[type=villager,tag=cantake]'

timedt 5 'kill @e[type=villager,tag=repair_villager]'

timedt 5 'kill @e[type=text_display,tag=fish_text]'

timedt 5 'kill @e[type=minecraft:item_frame,tag=quest1_frame]'
timedt 5 'kill @e[type=minecraft:item_frame,tag=quest2_frame]'
timedt 5 'kill @e[type=minecraft:item_frame,tag=quest3_frame]'
timedt 5 'kill @e[type=minecraft:item_frame,tag=quest4_frame]'


timedt 5 'kill @e[type=minecraft:text_display,tag=pen1_display]'
timedt 5 'kill @e[type=minecraft:text_display,tag=pen2_display]'
timedt 5 'kill @e[type=minecraft:text_display,tag=pen3_display]'
timedt 5 'kill @e[type=minecraft:text_display,tag=pen4_display]'

timedt 2 'kill @e[type=minecraft:marker,tag=torch_marker]'
timedt 2 'kill @e[type=minecraft:marker,tag=axe_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=stick_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=snowball_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=lead_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=iron_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=emerald_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=bread_room]'
timedt 2 'kill @e[type=minecraft:marker,tag=fishing_rod_room]'