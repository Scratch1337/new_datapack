
tellraw @a "Датапак загружен."
tellraw @a [{"text": "Создатель - ","color": "green"},{"text": "Scratch1337","bold": true,"color": "orange"}]

scoreboard objectives add shift custom:sneak_time
scoreboard objectives add click used:carrot_on_a_stick

scoreboard objectives add memory dummy
scoreboard players set pen1_trigger memory 0
scoreboard players set pen2_trigger memory 0
scoreboard players set pen3_trigger memory 0
scoreboard players set pen4_trigger memory 0

scoreboard objectives add fish_done dummy

scoreboard objectives add mending_check dummy
scoreboard objectives add mending_done dummy

scoreboard objectives add fish_puzzle dummy

function scr:emerald/room

scoreboard objectives add count_item dummy

scoreboard objectives add creeper dummy

scoreboard objectives add dist dummy

scoreboard objectives add lose dummy

gamerule keepInventory true
gamerule doWeatherCycle false

scoreboard objectives add item_triger dummy

scoreboard objectives add heal trigger

scoreboard objectives add mobCount dummy

scoreboard objectives add time dummy

scoreboard objectives add rewardGiven dummy


scoreboard players set global timer_done 0

scoreboard objectives add timer_seconds dummy
scoreboard objectives add calc dummy
scoreboard objectives add const dummy
scoreboard objectives add timer_done dummy

scoreboard players set sixty const 60

scoreboard players set global timer_seconds 0
scoreboard players set global timer_done 0
scoreboard players reset mins calc
scoreboard players reset secs calc
scoreboard players reset tmp calc
scoreboard players reset tmp2 calc

scoreboard objectives add wheat_counter dummy
scoreboard objectives add carrot_counter dummy
scoreboard objectives add potato_counter dummy
scoreboard objectives add stage_wheat dummy
scoreboard objectives add stage_carrot dummy
scoreboard objectives add stage_potato dummy

scoreboard objectives add knockback dummy

scoreboard objectives add used_emerald_block used:emerald_block
scoreboard objectives add timer_fix custom:play_time