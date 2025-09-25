execute at @s[tag=lead] run function scr:raycas_lead/raycast_start

execute at @s[tag=stick] run function scr:items/stick_r

execute at @s[tag=lava_gun] run function scr:raycast_lava_gun/raycast_right_button
execute at @s[nbt={SelectedItem:{id:"minecraft:red_dye"}}] run function scr:raycast_lava_gun/raycast_start

execute at @s[tag=shield] run function scr:raycast_sphere/sphere

execute at @s[tag=gifts,tag=!cooldown] run function scr:items/item_pool

execute at @s[tag=fish] run function scr:items/fishing_rod_r


