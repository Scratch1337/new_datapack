tellraw @a {"text":"Испытание пройдено! Вы получаете Посох Даров!","color":"green"}

give @a lime_dye{display:{Name:'{"text":"Посох Даров","color":"gold","bold":true}',Lore:['{"text":"ПКМ → случайный предмет","color":"gray"}','{"text":"ЛКМ → поле 10x10 пшеницы","color":"gray"}']}} 1


particle minecraft:totem_of_undying -81 238 70.5 1 1 1 0.1 200 force
particle minecraft:firework ~ ~3 ~ 0.5 1 0.5 0.1 50 force

playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1
playsound minecraft:entity.firework_rocket.twinkle player @a -81 238 70 1 1.3

setblock -81 238 70 air

tag @a remove carrot_levitation
tag @a remove non_carrot_levitation

tag @a remove nausea
tag @a remove non_nausea

timedt 30 'function scr:markers/marker'

setblock -26 238 69 air

setblock -27 238 70 air
setblock -27 238 71 air

setblock -27 239 70 air
setblock -27 239 71 air

setblock -27 238 70 minecraft:iron_door[facing=east,open=false,half=lower]
setblock -27 239 70 minecraft:iron_door[facing=east,open=false,half=upper]

setblock -27 239 71 minecraft:iron_door[facing=north,open=true,half=upper]
setblock -27 238 71 minecraft:iron_door[facing=north,open=true,half=lower]

setblock -51 238 70 air

setblock -53 238 70 air
setblock -53 238 71 air

setblock -53 239 70 air
setblock -53 238 71 air

setblock -53 238 70 minecraft:iron_door[facing=east,open=false,half=lower]
setblock -53 239 70 minecraft:iron_door[facing=east,open=false,half=upper]

setblock -53 239 71 minecraft:iron_door[facing=north,open=true,half=upper]
setblock -53 238 71 minecraft:iron_door[facing=north,open=true,half=lower]

scoreboard players set global stage_wheat 0
scoreboard players set global stage_potato 0
scoreboard players set global stage_carrot 0
