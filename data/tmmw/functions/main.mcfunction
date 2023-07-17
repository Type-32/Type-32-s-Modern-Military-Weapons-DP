execute store result score .id tmmw.stats run data get entity @s SelectedItem.tag.TMMW_ID.stats.id
execute unless score .id tmmw.stats = @s tmmw.gunid run function tmmw:functional/core/gun_swapped
scoreboard players operation @s tmmw.gunid = .id tmmw.stats

scoreboard players remove @s[scores={tmmw.cd=1..}] tmmw.cd 1
scoreboard players remove @s[scores={tmmw.ad=1..}] tmmw.ad 1

scoreboard players operation .right_click tmmw.gun = @s tmmw.r_click
scoreboard players set @s tmmw.r_click 0

execute if entity @s[scores={tmmw.ad=0,tmmw.af=1..}] run function tmmw:functional/core/burst_shoot_preprocess

execute if entity @s[advancements={tmmw:functional/input/right_click_detection=true}] run function tmmw:functional/core/check_held

