
kill @e[type=ender_pearl]
summon minecraft:marker ~ ~ ~ {Tags:["fishing_rod_room"]}
kill @s[type=!minecraft:player,distance=..1]

tag @a add in_room
tag @a add fishing_rod_room

fill 15 223 66 15 223 69 minecraft:light_blue_concrete
setblock 16 222 65 air

execute as @a at @s run playsound bewitchment:entity.generic.teleport ambient @s ~ ~ ~ 999999999 1

summon minecraft:item_frame 16 223 66 {Facing:5b,Tags:["quest1_frame"]}
summon minecraft:item_frame 16 223 67 {Facing:5b,Tags:["quest2_frame"]}
summon minecraft:item_frame 16 223 68 {Facing:5b,Tags:["quest3_frame"]}
summon minecraft:item_frame 16 223 69 {Facing:5b,Tags:["quest4_frame"]}

summon text_display 16 224 67 {text:'{"text":"Рыбу сюда","color":"yellow","bold":true}',billboard:"center",background:1b,shadow:1b,Tags:["fish_text"]}

execute at @a run timedt 5 'tellraw @a {"text":"🎣 Вы оказались на поляне!","color":"gold"}'
execute at @a run timedt 8 'tellraw @a {"text":"Ваша задача: выловить 4 рыбы (треска, лосось, иглобрюх, тропическая рыба).","color":"gold"}'
execute at @a run timedt 11 'tellraw @a {"text":"Затем расставь рыбу в нужном порядке в рамках.","color":"gold"}'

execute at @a run timedt 5 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3'
execute at @a run timedt 8 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5'
execute at @a run timedt 11 'playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5'

data modify block 8 222 64 Items set value [{Slot:13b,id:"minecraft:fishing_rod",Count:1b,tag:{display:{Name:'{"text":"Удочка призыва","color":"dark_purple","bold":true}',Lore:['{"text":"ПКМ → водяной торнадо","color":"gray"}','{"text":"ЛКМ → спавнит рыбу","color":"gray"}']}}}]

execute as @a at @s run flash @s 0.1 1 0.5 0 0 0

tp @a 25.65 222.06 63.65