scoreboard players set .save tmmw.stats 0

execute store result storage tmmw:gun TMMW_ID.attributes.Ammo int 1 run scoreboard players get .ammo tmmw.stats
item modify entity @s weapon.mainhand tmmw:functional/set_attr