setblock -51 238 70 chest[facing=east]
tellraw @a {"text":"📦 Положите всю морковку в сундук!","color":"gold"}

particle minecraft:happy_villager -51 238 70.5 0.5 0.5 0.5 0.1 50 force
particle minecraft:enchant -51 238 70.5 0.5 0.5 0.5 0.2 80 force

playsound minecraft:block.chest.open block @a -51 238 70 1 1
playsound minecraft:entity.experience_orb.pickup player @a -51 238 70 1 1.2

scoreboard players set global stage_carrot 2