execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}},tag=!cooldown] run function scr:snowballs/water_s

execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:2}}},tag=!cooldown] run function scr:snowballs/lava

execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:3}}},tag=!cooldown] run function scr:snowballs/portal

execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:4}}},tag=!cooldown] run function scr:snowballs/ender

execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:5}}},tag=!cooldown] run function scr:snowballs/creeper


#Визуал бросания снежка + перезарядка при использовании + фикс чтобы не сбрасывалась перезарядка + звук бросания снежка
execute at @s[nbt={SelectedItem:{id:"minecraft:snowball"}},tag=!cooldown] at @s run executeclient @s press key.attack click
execute at @s[nbt={SelectedItem:{id:"minecraft:snowball"}},tag=!cooldown] run playsound minecraft:entity.snowball.throw ambient @a
execute at @s[nbt={SelectedItem:{id:"minecraft:snowball"}},tag=!cooldown] at @s run cooldown @s 40
