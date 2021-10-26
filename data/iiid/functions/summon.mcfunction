#generating item
function iiid:util/generate_item

#creating item data
data modify storage iiid:main temp.Item set from storage iiid:main item
data modify storage iiid:main temp.Tags set value ["iiid.registered"]

#summoning item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["iiid.temp"],PickupDelay:10s}
data modify entity @e[type=minecraft:item,tag=iiid.temp,distance=..1,limit=1,sort=nearest] {} merge from storage iiid:main temp

#clearing temp
data modify storage iiid:main temp set value {}