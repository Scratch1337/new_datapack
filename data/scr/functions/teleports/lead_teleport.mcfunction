
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["lead_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add lead_room

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

execute at @a run timedt 5 'tellraw @a {"text":"🌿 Вот вы и снова на поляне...","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Вам предстоит собрать всех животных по своим загонам.","color":"gold"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5'


summon minecraft:text_display 23 224 20 {Tags:["pen1_display"],text:'"Животных в загоне: 0/5"',transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.0,1.0,1.0]},background:0,shadow:true,billboard:vertical}
summon minecraft:text_display 23 224 31 {Tags:["pen2_display"],text:'"Животных в загоне: 0/5"',transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.0,1.0,1.0]},background:0,shadow:true,billboard:vertical}
summon minecraft:text_display 14 224 32 {Tags:["pen3_display"],text:'"Животных в загоне: 0/5"',transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.0,1.0,1.0]},background:0,shadow:true,billboard:vertical}
summon minecraft:text_display 12 224 19 {Tags:["pen4_display"],text:'"Животных в загоне: 0/5"',transformation:{left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],translation:[0,0,0],scale:[1.0,1.0,1.0]},background:0,shadow:true,billboard:vertical}

tp @a 19.00 227.89 26.50