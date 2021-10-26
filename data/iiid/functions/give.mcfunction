#generating item
function iiid:util/generate_item

#writing item into shulker box
function iiid:util/place_item_in_shulker

#counting items pre-insert
execute store result score temp= iiid.main run clear @s #iiid:all 0

#giving item
loot give @s mine 6908260 0 29999999 minecraft:debug_stick

#counting items post-insert
execute store result score total= iiid.main run clear @s #iiid:all 0

#determining if all items were given
scoreboard players operation total= iiid.main -= temp= iiid.main
execute store result score count= iiid.main run data get block 6908260 0 29999999 Items[0].Count

#dropping extra items on the ground
execute unless score total= iiid.main = count= iiid.main run function iiid:give/drop_extra