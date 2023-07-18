execute if score .loaded tmmw.stats matches 0 run function tmmw:functional/core/fetch_attr
execute if score .semi-auto tmmw.stats matches 0 unless score @s tmmw.cd matches 1.. run function tmmw:functional/core/shoot_preprocess
execute if score .semi-auto tmmw.stats matches 1 if score .right_click tmmw.gun matches 0 unless score @s tmmw.cd matches 1.. run function tmmw:functional/core/shoot_preprocess

advancement revoke @s only tmmw:functional/input/right_click_detection
scoreboard players set @s tmmw.r_click 1