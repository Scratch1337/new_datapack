execute at @s[tag=lead,tag=!cooldown] run function scr:raycas_lead_l/raycast_start

execute at @s[tag=stick,tag=!cooldown] run function scr:items/stick_l

execute at @s[tag=lava_gun] run function scr:raycast_lava_gun/raycast_start

execute at @s[tag=shield] run function scr:raycast_sphere/raycast_start

#добавил кулдаун + проверку что я не на поле уже стою, чтобы нельзя было под себя копать и спамить
execute at @s[tag=gifts,tag=!cooldown] unless block ~ ~ ~ farmland run function scr:items/farmland

execute at @s[tag=fish,tag=!cooldown] run function scr:items/fishing_rod

execute at @s[tag=water_snowball] run function scr:raycast_snowballs/raycast_start

execute at @s[tag=lava_snowball] run function scr:raycast_snowballs2/raycast_start

execute at @s[tag=portal_snowball] run function scr:snowballs/portal_l

execute at @s[tag=ender_snowball] run function scr:raycast_eat/raycast_start

execute at @s[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:5}}},tag=!cooldown] run function scr:snowballs/creeper_l


#Перезарядка снежка + фикс чтобы не сбрасывалась перезарядка
execute at @s[nbt={SelectedItem:{id:"minecraft:snowball"}},tag=!cooldown] run cooldown @s 40