execute at @s run playsound minecraft:block.portal.travel master @a ~ ~ ~ 1 1
execute at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.1 50


execute at @s[tag=!cd_tp,nbt={Dimension:"minecraft:the_nether"}] run function scr:snowballs/tp_overworld

execute at @s[tag=!cd_tp,nbt={Dimension:"minecraft:overworld"}] run function scr:snowballs/tp_nether