#setting count
execute store result storage iiid:main item.Count byte 1 run scoreboard players operation count= iiid.main -= total= iiid.main

#creating item data
data modify storage iiid:main temp.Item set from storage iiid:main item
data modify storage iiid:main temp.Owner set from entity @s UUID
data modify storage iiid:main temp.Tags set value ["iiid.registered"]

#summoning item
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["iiid.temp"]}
data modify entity @e[type=minecraft:item,tag=iiid.temp,distance=..2,limit=1,sort=nearest] {} merge from storage iiid:main temp

#clearing temp
data modify storage iiid:main temp set value {}