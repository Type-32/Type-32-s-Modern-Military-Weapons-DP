scoreboard players set @s tmmw.sprint 1
execute store result storage tmmw:gun CustomModelData int 1 run data get entity @s SelectedItem.tag.TMMW_ID.stats.Sprint_CMD
item modify entity @s weapon.mainhand tmmw:functional/set_cmd