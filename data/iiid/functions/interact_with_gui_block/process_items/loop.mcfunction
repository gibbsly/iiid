#writing item into item object
data modify storage iiid:main item set from storage iiid:main items[0]
data remove storage iiid:main items[0]

#getting slot
execute store result score slot= iiid.main run data get storage iiid:main item.Slot

#generating item
function iiid:util/generate_item_from_storage

#writing item to player
execute unless data storage iiid:main item.nul run function iiid:interact_with_gui_block/process_items/write_item

#looping if items remain
execute if data storage iiid:main items[0] run function iiid:interact_with_gui_block/process_items/loop