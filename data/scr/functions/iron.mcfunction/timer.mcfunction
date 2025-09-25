scoreboard players operation tmp calc = global timer_seconds

scoreboard players operation mins calc = tmp calc
scoreboard players operation mins calc /= sixty const

scoreboard players operation tmp2 calc = mins calc
scoreboard players operation tmp2 calc *= sixty const

scoreboard players operation secs calc = tmp calc
scoreboard players operation secs calc -= tmp2 calc

execute if score global timer_seconds matches 1 run timedt 20 'scoreboard players set global timer_done 1'

execute if score secs calc matches ..9 run title @a actionbar {"text":"Осталось: ","extra":[{"score":{"name":"mins","objective":"calc"}},{"text":":0"},{"score":{"name":"secs","objective":"calc"}}]}
execute if score secs calc matches 10.. run title @a actionbar {"text":"Осталось: ","extra":[{"score":{"name":"mins","objective":"calc"}},{"text":":"},{"score":{"name":"secs","objective":"calc"}}]}

execute unless score global timer_seconds matches 0 run scoreboard players remove global timer_seconds 1
execute unless score global timer_seconds matches 0 run schedule function scr:iron.mcfunction/timer 20t replace
