setblock -51 238 70 air

setblock -53 238 70 air
setblock -53 238 71 air

setblock -53 239 70 air
setblock -53 238 71 air

setblock -53 238 70 minecraft:iron_door[facing=east,open=true,half=lower]
setblock -53 239 70 minecraft:iron_door[facing=east,open=true,half=upper]

playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1 1

setblock -53 239 71 minecraft:iron_door[facing=north,open=false,half=upper]
setblock -53 238 71 minecraft:iron_door[facing=north,open=false,half=lower]

tellraw @a {"text":"Вы справились со второй частью испытания!","color":"gold"}

tag @a remove carrot_levitation
tag @a add non_carrot_levitation

scoreboard players set global stage_carrot 0
