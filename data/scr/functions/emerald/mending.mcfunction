# scoreboard players set global mending_check 0

# execute if entity @e[type=villager,tag=repair_villager,nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}}]}}] run scoreboard players set global mending_check 1

# execute unless score global mending_check matches 1 if entity @e[type=villager,tag=repair_villager,nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{Enchantments:[{id:"minecraft:mending"}]}}}]}}] run scoreboard players set global mending_check 1

# execute unless score global mending_check matches 1 if entity @e[type=villager,tag=repair_villager,nbt={Offers:{Recipes:[{sell:{id:"minecraft:bookshelf"}}]}}] run scoreboard players set global mending_check 1

# execute if score global mending_check matches 1 unless score global mending_done matches 1 as @e[type=villager,tag=repair_villager,limit=1,nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{StoredEnchantments:[{id:"minecraft:mending"}]}}}]}}] run function scr:emerald/mending_found
# execute if score global mending_check matches 1 unless score global mending_done matches 1 as @e[type=villager,tag=repair_villager,limit=1,nbt={Offers:{Recipes:[{sell:{id:"minecraft:enchanted_book",tag:{Enchantments:[{id:"minecraft:mending"}]}}}]}}] run function scr:emerald/mending_found
# execute if score global mending_check matches 1 unless score global mending_done matches 1 as @e[type=villager,tag=repair_villager,limit=1,nbt={Offers:{Recipes:[{sell:{id:"minecraft:bookshelf"}}]}}] run function scr:emerald/mending_found

# execute if score global mending_check matches 0 run scoreboard players set global mending_done 0
