execute if entity @e[type=item_frame,tag=quest1_frame,nbt={Item:{id:"minecraft:tropical_fish"}}] run scoreboard players set quest1 fish_puzzle 1
execute if entity @e[type=item_frame,tag=quest2_frame,nbt={Item:{id:"minecraft:cod"}}] run scoreboard players set quest2 fish_puzzle 1
execute if entity @e[type=item_frame,tag=quest3_frame,nbt={Item:{id:"minecraft:salmon"}}] run scoreboard players set quest3 fish_puzzle 1
execute if entity @e[type=item_frame,tag=quest4_frame,nbt={Item:{id:"minecraft:pufferfish"}}] run scoreboard players set quest4 fish_puzzle 1

execute unless entity @e[type=item_frame,tag=quest1_frame,nbt={Item:{id:"minecraft:tropical_fish"}}] run scoreboard players set quest1 fish_puzzle 0
execute unless entity @e[type=item_frame,tag=quest2_frame,nbt={Item:{id:"minecraft:cod"}}] run scoreboard players set quest2 fish_puzzle 0
execute unless entity @e[type=item_frame,tag=quest3_frame,nbt={Item:{id:"minecraft:salmon"}}] run scoreboard players set quest3 fish_puzzle 0
execute unless entity @e[type=item_frame,tag=quest4_frame,nbt={Item:{id:"minecraft:pufferfish"}}] run scoreboard players set quest4 fish_puzzle 0

execute if score quest1 fish_puzzle matches 1 if score quest2 fish_puzzle matches 1 if score quest3 fish_puzzle matches 1 if score quest4 fish_puzzle matches 1 run function scr:fish/puzle_finish
