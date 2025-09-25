setblock -26 238 69 air

setblock -27 238 70 air
setblock -27 238 71 air

setblock -27 239 70 air
setblock -27 239 71 air

setblock -27 238 70 minecraft:iron_door[facing=east,open=true,half=lower]
setblock -27 239 70 minecraft:iron_door[facing=east,open=true,half=upper]

playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1 1

setblock -27 239 71 minecraft:iron_door[facing=north,open=false,half=upper]
setblock -27 238 71 minecraft:iron_door[facing=north,open=false,half=lower]

tellraw @a {"text":"Вы справились с первой частью испытания!","color":"gold"}

playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 999999 1

scoreboard players set global stage_wheat 0
