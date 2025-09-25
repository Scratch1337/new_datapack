
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["emerald_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add emerald_room

summon zombie_villager -83 258 120 {Tags:["repair_villager"],PersistenceRequired:1b,Invulnerable:1b,NoAI:0b}
summon zombie_villager -83 258 120 {Tags:["repair_villager"],PersistenceRequired:1b,Invulnerable:1b,NoAI:0b}
summon zombie_villager -83 258 120 {Tags:["repair_villager"],PersistenceRequired:1b,Invulnerable:1b,NoAI:0b}
summon zombie_villager -83 258 120 {Tags:["repair_villager"],PersistenceRequired:1b,Invulnerable:1b,NoAI:0b}

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

function scr:emerald/room

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

execute at @a run timedt 5 'tellraw @a {"text":"💎 Вы попали на испытание Бешеный торговец!","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Вылечи жителя и попытайся купить у него починку.","color":"gold"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 999999999 1.2'

tp @a -78.76 258.00 126.38