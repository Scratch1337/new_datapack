setblock -26 238 69 chest[facing=east]
tellraw @a {"text":"📦 Положите весь хлеб в сундук!","color":"gold"}

particle minecraft:happy_villager -26.5 239 69.5 0.5 0.5 0.5 0.1 50 force
particle minecraft:enchant -26.5 239 69.5 0.5 0.5 0.5 0.2 80 force

playsound minecraft:block.chest.open block @a -26 238 69 99999 1
playsound minecraft:entity.experience_orb.pickup player @a -26 238 69 999999 1.2

scoreboard players set global stage_wheat 2
