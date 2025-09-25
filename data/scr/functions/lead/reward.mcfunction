tellraw @a {"text":"✔ Вы справились с заданием и получили Поводок притяжатель!","color":"green"}
give @a green_dye{display:{Name:'{"text":"Поводок притяжатель","color":"aqua","bold":true}',Lore:['{"text":"ПКМ → притянуть моба","color":"gray"}','{"text":"ЛКМ → 10 урона","color":"gray"}']}} 1

execute as @e[type=#scr:animals,tag=animals_pen] at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0.05 200

kill @e[type=minecraft:text_display,tag=pen1_display]
kill @e[type=minecraft:text_display,tag=pen2_display]
kill @e[type=minecraft:text_display,tag=pen3_display]
kill @e[type=minecraft:text_display,tag=pen4_display]

execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
execute as @e[type=#scr:animals,tag=animals_pen] run data merge entity @s {Silent:1b,DeathLootTable:"minecraft:empty"}

kill @e[type=#scr:animals,tag=animals_pen]

scoreboard players set pen1_trigger memory 0
scoreboard players set pen2_trigger memory 0
scoreboard players set pen3_trigger memory 0
scoreboard players set pen4_trigger memory 0


timedt 20 'function scr:markers/marker'