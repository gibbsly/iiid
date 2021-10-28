#the logic behind this function is it checks where a 2nd chest should be, then checks to see if the block is within the players already existing layer check to prevent loops. Alternatively I could check the chest for un-converted items but a hitbox check on an @s would be more efficient than an nbt check.
#east
execute if block ~ ~ ~ #iiid:chest[facing=south,type=right] positioned ~1 ~ ~ if block ~ ~ ~ #iiid:chest[facing=south,type=left] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block
execute if block ~ ~ ~ #iiid:chest[facing=north,type=left] positioned ~1 ~ ~ if block ~ ~ ~ #iiid:chest[facing=north,type=right] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block

#west
execute if block ~ ~ ~ #iiid:chest[facing=south,type=left] positioned ~-1 ~ ~ if block ~ ~ ~ #iiid:chest[facing=south,type=right] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block
execute if block ~ ~ ~ #iiid:chest[facing=north,type=right] positioned ~-1 ~ ~ if block ~ ~ ~ #iiid:chest[facing=north,type=left] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block

#north
execute if block ~ ~ ~ #iiid:chest[facing=west,type=left] positioned ~ ~ ~-1 if block ~ ~ ~ #iiid:chest[facing=west,type=right] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block
execute if block ~ ~ ~ #iiid:chest[facing=east,type=right] positioned ~ ~ ~-1 if block ~ ~ ~ #iiid:chest[facing=east,type=left] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block

#south
execute if block ~ ~ ~ #iiid:chest[facing=west,type=right] positioned ~ ~ ~1 if block ~ ~ ~ #iiid:chest[facing=west,type=left] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block
execute if block ~ ~ ~ #iiid:chest[facing=east,type=left] positioned ~ ~ ~1 if block ~ ~ ~ #iiid:chest[facing=east,type=right] align xyz positioned ~-5 ~ ~-5 unless entity @s[dx=10,dy=0,dz=10] positioned ~5 ~ ~5 run function iiid:interact_with_gui_block/found_block