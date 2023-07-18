function tmmw:init/scoreboards

forceload add 0 0
setblock 0 -64 0 yellow_shulker_box
setblock 0 -63 0 oak_sign

tellraw @a ["",{"text":"[TMMW] ","color":"gold"},{"text":"Loaded Datapack!","color":"green"}]
