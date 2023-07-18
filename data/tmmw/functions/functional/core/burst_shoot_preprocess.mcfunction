execute if score .loaded tmmw.stats matches 0 run function tmmw:functional/core/fetch_attr
say burst!

scoreboard players operation @s tmmw.ad = .ad tmmw.stats
scoreboard players remove @s tmmw.af 1

scoreboard players remove .ammo tmmw.stats 1
scoreboard players set .save tmmw.stats 1