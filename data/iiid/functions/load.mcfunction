#adding scoreboards
scoreboard objectives add iiid.main dummy
scoreboard objectives add iiid.give trigger

#disabling trigger
scoreboard players reset * iiid.give

#setting math scores
scoreboard players set #-100 iiid.main -100
scoreboard players set #-1 iiid.main -1
scoreboard players set #100 iiid.main 100

#initializing data
data modify storage iiid:main item set value {}
data modify storage iiid:main temp set value {}

#placing shulker_box used for give
forceload add 6908260 29999999
setblock 6908260 0 29999999 minecraft:shulker_box