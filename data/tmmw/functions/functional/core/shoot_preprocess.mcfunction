say shoot!

scoreboard players operation @s tmmw.cd = .cd tmmw.stats
scoreboard players operation @s tmmw.af = .af tmmw.stats
scoreboard players operation @s tmmw.ad = .ad tmmw.stats

function tmmw:items/guns/cmx27/shoot

scoreboard players remove .ammo tmmw.stats 1
scoreboard players set .save tmmw.stats 1