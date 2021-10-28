#copying iiid items
data modify storage iiid:main items_out set from block ~ ~ ~ Items
data modify storage iiid:main items set value []
data modify storage iiid:main items append from storage iiid:main items_out[{tag:{iiid:{}}}]
data remove storage iiid:main items_out[{tag:{iiid:{}}}]

#running item processing loop
function iiid:interact_with_gui_block/process_items/loop

#writing modified items array
data modify block ~ ~ ~ Items set from storage iiid:main items_out

#removing items array
data remove storage iiid:main items
data remove storage iiid:main items_out