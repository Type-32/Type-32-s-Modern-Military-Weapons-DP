data modify block 0 -64 0 Items append value {Slot:0b, id:"minecraft:ender_eye", Count:1b, tag:{TMMW_ID:{stats:{CMD:320001, ADS_CMD:320101, Sprint_CMD: 320201}}, AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1000000,Operation:0,UUID:[I;216807419,-958772217,-1587270449,-1554637530],Slot:"mainhand"}],CustomModelData:320001}}
data modify storage tmmw:gun TMMW_ID.stats{} set value {id:0}
execute store result storage tmmw:gun TMMW_ID.stats.id int 1 run scoreboard players add #gun-id tmmw.stats 1
data modify block 0 -63 0 Text1 set value '{"score":{"objective":"tmmw.stats","name":"#gun-id"},"color":"red","bold":true}'
item modify block 0 -64 0 container.0 tmmw:functional/set_nbt
loot give @s mine 0 -64 0 air{drop_contents:true}