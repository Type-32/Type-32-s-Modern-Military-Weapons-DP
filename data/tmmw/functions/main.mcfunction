execute store result score .id tmmw.stats run data get entity @s SelectedItem.tag.TMMW_ID.stats.id
execute unless score .id tmmw.stats = @s tmmw.gunid run function tmmw:functional/core/gun_swapped
scoreboard players operation @s tmmw.gunid = .id tmmw.stats

scoreboard players remove @s[scores={tmmw.cd=1..}] tmmw.cd 1
scoreboard players remove @s[scores={tmmw.ad=1..}] tmmw.ad 1

scoreboard players operation .right_click tmmw.gun = @s tmmw.r_click
scoreboard players set @s tmmw.r_click 0

execute if entity @s[scores={tmmw.ad=0,tmmw.af=1..}] run function tmmw:functional/core/burst_shoot_preprocess

execute if entity @s[advancements={tmmw:functional/input/right_click_detection=true}] run function tmmw:functional/core/check_held

#Sneaking & Sprinting
scoreboard players operation .sneak tmmw.gun = @s tmmw.sneak
scoreboard players set @s tmmw.sneak 0
scoreboard players operation .sprint tmmw.gun = @s tmmw.sprint
scoreboard players set @s tmmw.sprint 0

execute if score .id tmmw.stats matches 1.. if predicate tmmw:functional/state/is_sneaking unless predicate tmmw:functional/state/is_sprinting run function tmmw:functional/input/sneaking
execute if score .id tmmw.stats matches 1.. if predicate tmmw:functional/state/is_sprinting run function tmmw:functional/input/sprinting

execute if score .sneak tmmw.gun matches 1 if score @s tmmw.sneak matches 0 run function tmmw:functional/input/unsneaking
execute if score .sprint tmmw.gun matches 1 if score @s tmmw.sprint matches 0 run function tmmw:functional/input/unsprinting