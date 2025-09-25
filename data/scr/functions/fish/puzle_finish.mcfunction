# Первая дверь
setblock 15 222 63 air
setblock 15 223 63 air
setblock 15 222 63 minecraft:iron_door[facing=east,half=lower,powered=false]
setblock 15 223 63 minecraft:iron_door[facing=east,half=upper,hinge=left]

# Вторая дверь
setblock 15 223 64 air
setblock 15 222 64 air
setblock 15 222 64 minecraft:iron_door[facing=north,half=lower,powered=true]
setblock 15 223 64 minecraft:iron_door[facing=north,half=upper,hinge=left]

playsound minecraft:block.iron_door.open master @a 15 222 63 1 1

execute as @e[type=text_display,tag=fish_text,limit=1] run data modify entity @s text set value '{"text":"ЗАДАНИЕ ВЫПОЛНЕНО!","color":"gold","bold":true}'

execute at @e[type=item_frame,tag=quest1_frame] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20
execute at @e[type=item_frame,tag=quest2_frame] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20
execute at @e[type=item_frame,tag=quest3_frame] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20
execute at @e[type=item_frame,tag=quest4_frame] run particle minecraft:cloud ~ ~ ~ 0.3 0.3 0.3 0.05 20

execute at @e[type=item_frame,tag=quest1_frame] run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1
execute at @e[type=item_frame,tag=quest2_frame] run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1
execute at @e[type=item_frame,tag=quest3_frame] run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1
execute at @e[type=item_frame,tag=quest4_frame] run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 1

kill @e[type=item_frame,tag=quest1_frame]
kill @e[type=item_frame,tag=quest2_frame]
kill @e[type=item_frame,tag=quest3_frame]
kill @e[type=item_frame,tag=quest4_frame]

scoreboard players set quest1 fish_puzzle 0
scoreboard players set quest2 fish_puzzle 0
scoreboard players set quest3 fish_puzzle 0
scoreboard players set quest4 fish_puzzle 0
