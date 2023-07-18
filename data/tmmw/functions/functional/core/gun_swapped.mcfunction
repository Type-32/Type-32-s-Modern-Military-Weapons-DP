execute if score .loaded tmmw.stats matches 0 run function tmmw:functional/core/fetch_attr

scoreboard players set @s tmmw.cd 0
scoreboard players set @s tmmw.af 0
scoreboard players set @s tmmw.ad 0

scoreboard players operation @s tmmw.cd = .draw-time tmmw.stats
execute if score @s tmmw.cd matches 0 run scoreboard players operation @s tmmw.cd = .cd tmmw.stats