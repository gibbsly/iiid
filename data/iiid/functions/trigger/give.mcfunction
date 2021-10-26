#writing id to id
scoreboard players operation id iiid.main = @s iiid.give
scoreboard players reset @s iiid.give

#giving item
execute unless score id iiid.main matches 0 at @s run function iiid:give