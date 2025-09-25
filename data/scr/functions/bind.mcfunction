# execute at @s run function scr:delbind
# execute at @s run function scr:delbuttons
# execute at @s run function scr:skills_button

executeclient @s bind "/function scr:event" mouse.right SingleUse
executeclient @s bind "/function scr:event_r" r SingleUse
executeclient @s bind "/function scr:attack" mouse.left SingleUse


# executeclient @s bind "/execute at @s[nbt={SelectedItem:{id:\"minecraft:red_dye\"}}] run function scr:raycast_lava_gun/raycast_start" mouse.right SingleUse