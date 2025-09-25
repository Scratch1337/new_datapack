


#СНЕЖКИ

#execute as @e[type=snowball] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["explosion_watcher"]}
#execute as @e[type=minecraft:area_effect_cloud,tag=explosion_watcher] at @s unless entity @e[type=minecraft:snowball,distance=..3] run summon tnt ~ ~ ~ {Fuze:0b}


# execute as @a at @s run function scr:interact/raycast_start 
execute as @a at @s[tag=torch_room] run particle minecraft:ash ~ ~1 ~ 1 1 1 0.001 10 force
#Убрать
# effect clear @a[tag=!in_room] minecraft:night_vision
# execute as @a[tag=in_room] at @s run effect give @s minecraft:night_vision infinite 1 true

execute as @e[type=item,nbt={Item:{id:"minecraft:torch"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/torch_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:fishing_rod"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/fishing_rod_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:lead"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/lead_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:bread"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/bread_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:stick"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/stick_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:snowball"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/snowball_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:wooden_axe"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/axe_teleport
execute as @e[type=item,nbt={Item:{id:"minecraft:emerald"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/emerad
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate"}}] at @s run execute if entity @e[type=ender_pearl,distance=..1] run function scr:teleports/iron_teleport



execute as @a[tag=torch_room] if data entity @s {Inventory:[{id:"minecraft:red_dye"}]} at @s run function scr:torch/torch_finish
execute as @a[tag=stick_room] if data entity @s {Inventory:[{id:"minecraft:yellow_dye"}]} at @s run function scr:stick/stick_finish
execute as @a[tag=emerald_room] if data entity @s {Inventory:[{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}]} at @s run function scr:emerald/mending_found
execute as @a[tag=fishing_rod_room] if data entity @s {Inventory:[{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"Удочка призыва","color":"dark_purple","bold":true}'}}}]} at @s run function scr:fish/fishing_rod
execute as @a[tag=snowball_room] if data entity @s {Inventory:[{id:"minecraft:snowball",tag:{CustomModelData:1}}]} if data entity @s {Inventory:[{id:"minecraft:snowball",tag:{CustomModelData:2}}]} if data entity @s {Inventory:[{id:"minecraft:snowball",tag:{CustomModelData:3}}]} if data entity @s {Inventory:[{id:"minecraft:snowball",tag:{CustomModelData:4}}]} if data entity @s {Inventory:[{id:"minecraft:snowball",tag:{CustomModelData:5}}]} run function scr:snowballs/snowballs_finish

# Лавовая пушка
# execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye"}},tag=!lava_gun] at @s run function scr:bind
execute as @a[nbt={SelectedItem:{id:"minecraft:red_dye"}}] at @s run tag @s add lava_gun
execute as @a[nbt=!{SelectedItem:{id:"minecraft:red_dye"}}] at @s run tag @s remove lava_gun

# Палка-спасалка
execute as @a[nbt={SelectedItem:{id:"minecraft:yellow_dye"}}] at @s run tag @s add stick
execute as @a[nbt=!{SelectedItem:{id:"minecraft:yellow_dye"}}] at @s run tag @s remove stick

# Поводок притяжатель
execute as @a[nbt={SelectedItem:{id:"minecraft:green_dye"}}] at @s run tag @s add lead
execute as @a[nbt=!{SelectedItem:{id:"minecraft:green_dye"}}] at @s run tag @s remove lead

# Деревянный щит
execute as @a[nbt={SelectedItem:{id:"minecraft:brown_dye"}}] at @s run tag @s add shield
execute as @a[nbt=!{SelectedItem:{id:"minecraft:brown_dye"}}] at @s run tag @s remove shield

# Посох Даров
execute as @a[nbt={SelectedItem:{id:"minecraft:lime_dye"}}] at @s run tag @s add gifts
execute as @a[nbt=!{SelectedItem:{id:"minecraft:lime_dye"}}] at @s run tag @s remove gifts

# Удочка призыва

execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"Удочка призыва","color":"dark_purple","bold":true}'}}}}] at @s run tag @s add fish
execute as @a[nbt=!{SelectedItem:{id:"minecraft:fishing_rod",tag:{display:{Name:'{"text":"Удочка призыва","color":"dark_purple","bold":true}'}}}}] at @s run tag @s remove fish

# Бесконечный изумрудный блок
# execute as @a[nbt={SelectedItem:{id:"minecraft:emerald_block",tag:{display:{Name:'{"text":"Бесконечный изумрудный блок","color":"green","bold":true}'}}}}] at @s run function scr:items/infinite_emerald_block



execute as @a[nbt={SelectedItem:{id:"minecraft:emerald_block",tag:{display:{Name:'{"text":"Бесконечный изумрудный блок","color":"green","bold":true}'}}}}] run tag @s add infinite_emerald

execute as @a[tag=infinite_emerald,scores={used_emerald_block=1..}] at @s run item replace entity @s weapon.mainhand with air
execute as @a[tag=infinite_emerald,scores={used_emerald_block=1..}] at @s run item replace entity @s weapon.mainhand with minecraft:emerald_block{display:{Name:'{"text":"Бесконечный изумрудный блок","color":"green","bold":true}'}}

execute as @a[nbt=!{SelectedItem:{id:"minecraft:emerald_block",tag:{display:{Name:'{"text":"Бесконечный изумрудный блок","color":"green","bold":true}'}}}}] run tag @s remove infinite_emerald

scoreboard players reset @a[scores={used_emerald_block=1..}] used_emerald_block
#Кнопка для броска снежка


execute as @a[nbt={SelectedItem:{id:"minecraft:snowball"}},tag=!snowball_hand] at @s run function scr:skills_button
execute as @a[nbt=!{SelectedItem:{id:"minecraft:snowball"}},tag=snowball_hand] at @s run function scr:delbuttons
execute as @a[nbt=!{SelectedItem:{id:"minecraft:snowball"}},tag=snowball_hand] at @s run tag @s remove snowball_hand

#Снежки
# Водяной снежок
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] at @s run effect give @s water_breathing 2 0 true
execute as @a[nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:1}}}] at @s run effect clear @s water_breathing

# Лавовый снежок
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s run effect give @s fire_resistance 2 0 true
execute as @a[nbt=!{SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s run effect clear fire_resistance

# Портальный снежок


# Снежок эндера
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:4}}}] at @s run effect give @s invisibility 2 0 true
execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:4}}}] at @s run effect clear @s invisibility

# Снежок крипера

execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{CustomModelData:5}}}] at @s run execute as @e[type=minecraft:creeper,distance=..5] at @s run data merge entity @s {ExplosionRadius:0,Tags:["creeper_boom"]}
execute as @e[tag=creeper_boom] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["creeper_watch"]}
execute as @e[type=minecraft:area_effect_cloud,tag=creeper_watch] at @s unless entity @e[type=minecraft:creeper,distance=..3] run function scr:creeper_tick

# execute as @e[type=minecraft:creeper,team=Friends] at @s run effect give @s[team=Friends,distance=..5]

function scr:emerald/mending
function scr:fish/puzle
function scr:lead/corral

execute if score global timer_done matches 1 run function scr:iron.mcfunction/timer_finished

execute as @a[scores={count_item=128..}] at @s run function scr:villager/logs_complete

execute if score .count wheat_counter matches 0 if score global stage_wheat matches 0 run function scr:fields/wheat
execute if score .count wheat_counter matches 298.. if score global stage_wheat matches 1 run function scr:fields/wheat_2
execute if score global stage_wheat matches 2 if block -26 238 69 chest{Items:[{id:"minecraft:bread"}]} unless entity @a[nbt={Inventory:[{id:"minecraft:bread"}]}] run function scr:fields/wheat_reward

execute if score .count carrot_counter matches 0 if score global stage_carrot matches 0 run function scr:fields/carrot
execute if score .count carrot_counter matches 315.. if score global stage_carrot matches 1 run function scr:fields/carrot_2
execute if score global stage_carrot matches 2 if block -51 238 70 chest{Items:[{id:"minecraft:carrot"}]} unless entity @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run function scr:fields/carrot_reward

effect give @a[tag=carrot_levitation] minecraft:levitation infinite 1 true
effect clear @a[tag=non_carrot_levitation] minecraft:levitation
execute as @a[tag=!non_carrot_levitation,x=-28,y=238,z=70,dx=0,dy=0,dz=0] run tag @s add carrot_levitation
execute as @a[tag=!non_carrot_levitation,x=-28,y=238,z=71,dx=0,dy=0,dz=0] run tag @s add carrot_levitation

execute if score .count potato_counter matches 0 if score global stage_potato matches 0 run function scr:fields/potato
execute if score .count potato_counter matches 315.. if score global stage_potato matches 1 run function scr:fields/potato_2
execute if score global stage_potato matches 2 if block -81 238 70 chest{Items:[{id:"minecraft:potato"}]} unless entity @a[nbt={Inventory:[{id:"minecraft:potato"}]}] run function scr:fields/potato_reward

effect give @a[tag=nausea] minecraft:nausea infinite 255 true
effect clear @a[tag=non_nausea] minecraft:nausea
execute as @a[tag=!non_nausea,x=-54,y=238,z=70,dx=0,dy=0,dz=0] run tag @s add nausea
execute as @a[tag=!nausea,x=-54,y=238,z=71,dx=0,dy=0,dz=0] run tag @s add nausea


# execute as @a[tag=torchpearl_tp] run scoreboard players add @s time 1

# execute as @a[tag=torchpearl_tp,scores={time=60}] run tag @s remove torchpearl_tp
# execute as @a[tag=torchpearl_tp,scores={time=60..}] run scoreboard players reset @s time


#execute as @a[tag=torchpearl_tp] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.01 30

execute as @a[tag=magma] at @s if block ~ ~-0.1 ~ minecraft:magma_block run function scr:magma

execute as @e[scores={shift=1..}] at @s run scoreboard players set @s shift 0
execute as @a[scores={click=1..}] at @s run scoreboard players set @s click 0