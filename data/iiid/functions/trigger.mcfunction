#checking if value is non-zero
execute unless score @s iiid.give matches 0 run function iiid:trigger/give

#enabling trigger
scoreboard players enable @s iiid.give