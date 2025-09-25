execute store result score PEN1 mobCount if entity @e[type=#scr:animals,x=26,y=222,z=18,dx=-7,dy=2,dz=6]
execute store result score PEN2 mobCount if entity @e[type=#scr:animals,x=25,y=222,z=29,dx=-5,dy=2,dz=4]
execute store result score PEN3 mobCount if entity @e[type=#scr:animals,x=17,y=222,z=30,dx=-6,dy=2,dz=4]
execute store result score PEN4 mobCount if entity @e[type=#scr:animals,x=15,y=222,z=18,dx=-6,dy=2,dz=3]

#PEN1
execute if score PEN1 mobCount matches 0 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"0","color":"gray","italic":false},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 0 run function scr:lead/pens1/pen0

execute if score PEN1 mobCount matches 1 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"1","color":"red"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 1 if score pen1_trigger memory matches 0 run function scr:lead/pens1/pen1

execute if score PEN1 mobCount matches 2 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"2","color":"gold"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 2 if score pen1_trigger memory matches 1 run function scr:lead/pens1/pen2

execute if score PEN1 mobCount matches 3 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"3","color":"yellow"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 3 if score pen1_trigger memory matches 2 run function scr:lead/pens1/pen3

execute if score PEN1 mobCount matches 4 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"4","color":"green"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 4 if score pen1_trigger memory matches 3 run function scr:lead/pens1/pen4

execute if score PEN1 mobCount matches 5 run execute as @e[type=minecraft:text_display,tag=pen1_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: 5/5","color":"dark_green"}]'
execute if score PEN1 mobCount matches 5 if score pen1_trigger memory matches 4 run function scr:lead/pens1/pen5

execute if score PEN1 mobCount matches 0 if score pen1_trigger memory matches 1 run function scr:lead/pens1/pen0
execute if score PEN1 mobCount matches 1 if score pen1_trigger memory matches 2 run function scr:lead/pens1/pen1
execute if score PEN1 mobCount matches 2 if score pen1_trigger memory matches 3 run function scr:lead/pens1/pen2
execute if score PEN1 mobCount matches 3 if score pen1_trigger memory matches 4 run function scr:lead/pens1/pen3
execute if score PEN1 mobCount matches 4 if score pen1_trigger memory matches 5 run function scr:lead/pens1/pen4
#============

#PEN2
execute if score PEN2 mobCount matches 0 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"0","color":"gray","italic":false},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 0 run function scr:lead/pens2/pen0

execute if score PEN2 mobCount matches 1 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"1","color":"red"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 1 if score pen2_trigger memory matches 0 run function scr:lead/pens2/pen1

execute if score PEN2 mobCount matches 2 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"2","color":"gold"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 2 if score pen2_trigger memory matches 1 run function scr:lead/pens2/pen2

execute if score PEN2 mobCount matches 3 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"3","color":"yellow"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 3 if score pen2_trigger memory matches 2 run function scr:lead/pens2/pen3

execute if score PEN2 mobCount matches 4 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"4","color":"green"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 4 if score pen2_trigger memory matches 3 run function scr:lead/pens2/pen4

execute if score PEN2 mobCount matches 5 run execute as @e[type=minecraft:text_display,tag=pen2_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: 5/5","color":"dark_green"}]'
execute if score PEN2 mobCount matches 5 if score pen2_trigger memory matches 4 run function scr:lead/pens2/pen5

execute if score PEN2 mobCount matches 0 if score pen2_trigger memory matches 1 run function scr:lead/pens2/pen0
execute if score PEN2 mobCount matches 1 if score pen2_trigger memory matches 2 run function scr:lead/pens2/pen1
execute if score PEN2 mobCount matches 2 if score pen2_trigger memory matches 3 run function scr:lead/pens2/pen2
execute if score PEN2 mobCount matches 3 if score pen2_trigger memory matches 4 run function scr:lead/pens2/pen3
execute if score PEN2 mobCount matches 4 if score pen2_trigger memory matches 5 run function scr:lead/pens2/pen4
#============

#PEN3
execute if score PEN3 mobCount matches 0 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"0","color":"gray","italic":false},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 0 run function scr:lead/pens3/pen0

execute if score PEN3 mobCount matches 1 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"1","color":"red"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 1 if score pen3_trigger memory matches 0 run function scr:lead/pens3/pen1

execute if score PEN3 mobCount matches 2 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"2","color":"gold"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 2 if score pen3_trigger memory matches 1 run function scr:lead/pens3/pen2

execute if score PEN3 mobCount matches 3 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"3","color":"yellow"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 3 if score pen3_trigger memory matches 2 run function scr:lead/pens3/pen3

execute if score PEN3 mobCount matches 4 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"4","color":"green"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 4 if score pen3_trigger memory matches 3 run function scr:lead/pens3/pen4

execute if score PEN3 mobCount matches 5 run execute as @e[type=minecraft:text_display,tag=pen3_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: 5/5","color":"dark_green"}]'
execute if score PEN3 mobCount matches 5 if score pen3_trigger memory matches 4 run function scr:lead/pens3/pen5

execute if score PEN3 mobCount matches 0 if score pen3_trigger memory matches 1 run function scr:lead/pens3/pen0
execute if score PEN3 mobCount matches 1 if score pen3_trigger memory matches 2 run function scr:lead/pens3/pen1
execute if score PEN3 mobCount matches 2 if score pen3_trigger memory matches 3 run function scr:lead/pens3/pen2
execute if score PEN3 mobCount matches 3 if score pen3_trigger memory matches 4 run function scr:lead/pens3/pen3
execute if score PEN3 mobCount matches 4 if score pen3_trigger memory matches 5 run function scr:lead/pens3/pen4
#============

#PEN4
execute if score PEN4 mobCount matches 0 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"0","color":"gray","italic":false},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 0 run function scr:lead/pens4/pen0

execute if score PEN4 mobCount matches 1 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"1","color":"red"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 1 if score pen4_trigger memory matches 0 run function scr:lead/pens4/pen1

execute if score PEN4 mobCount matches 2 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"2","color":"gold"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 2 if score pen4_trigger memory matches 1 run function scr:lead/pens4/pen2

execute if score PEN4 mobCount matches 3 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"3","color":"yellow"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 3 if score pen4_trigger memory matches 2 run function scr:lead/pens4/pen3

execute if score PEN4 mobCount matches 4 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: ","color":"white"},{"text":"4","color":"green"},{"text":"/","color":"gray","italic":false},{"text":"5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 4 if score pen4_trigger memory matches 3 run function scr:lead/pens4/pen4

execute if score PEN4 mobCount matches 5 run execute as @e[type=minecraft:text_display,tag=pen4_display,limit=1] run data modify entity @s text set value '[{"text":"Животных в загоне: 5/5","color":"dark_green"}]'
execute if score PEN4 mobCount matches 5 if score pen4_trigger memory matches 4 run function scr:lead/pens4/pen5

execute if score PEN4 mobCount matches 0 if score pen4_trigger memory matches 1 run function scr:lead/pens4/pen0
execute if score PEN4 mobCount matches 1 if score pen4_trigger memory matches 2 run function scr:lead/pens4/pen1
execute if score PEN4 mobCount matches 2 if score pen4_trigger memory matches 3 run function scr:lead/pens4/pen2
execute if score PEN4 mobCount matches 3 if score pen4_trigger memory matches 4 run function scr:lead/pens4/pen3
execute if score PEN4 mobCount matches 4 if score pen4_trigger memory matches 5 run function scr:lead/pens4/pen4
#============
execute if score PEN1 mobCount matches 5.. if score PEN2 mobCount matches 5.. if score PEN3 mobCount matches 5.. if score PEN4 mobCount matches 5.. run function scr:lead/reward

