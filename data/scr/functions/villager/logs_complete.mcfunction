execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:oak_log"}}]
execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:birch_log"}}]
execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:spruce_log"}}]
execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:dark_oak_log"}}]
execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:jungle_log"}}]
execute at @e[type=villager,tag=cantake,limit=1] run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:acacia_log"}}]

scoreboard players reset @a count_item
scoreboard objectives remove oak_log
scoreboard objectives remove birch_log
scoreboard objectives remove spruce_log
scoreboard objectives remove dark_oak_log
scoreboard objectives remove jungle_log
scoreboard objectives remove acacia_log

execute at @e[type=villager,tag=cantake,limit=1] run particle minecraft:happy_villager ~ ~1 ~ 0.6 0.6 0.6 0.01 50
execute at @e[type=villager,tag=cantake,limit=1] run particle minecraft:heart ~ ~1.2 ~ 0.4 0.4 0.4 0.01 15
execute at @e[type=villager,tag=cantake,limit=1] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1

execute as @e[type=villager,tag=cantake,limit=1] run data merge entity @s {VillagerData:{profession:"minecraft:farmer",level:1,type:"plains"},Offers:{Recipes:[]}}

tellraw @a {"text":"✔ Вы справились с заданием и получили Деревянный щит!","color":"green"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 999999 1

give @a brown_dye{display:{Name:'{"text":"Деревянный щит","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"ПКМ → щиты","color":"gray","italic":false}','{"text":"ЛКМ → раздавить моба","color":"gray","italic":false}']}} 1


timedt 10 'function scr:markers/marker'
