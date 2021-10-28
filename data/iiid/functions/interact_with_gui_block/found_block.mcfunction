#checking for unconverted items in this inventory
execute if data block ~ ~ ~ Items[].tag.iiid.action run function iiid:interact_with_gui_block/process_items

#doing double-chest check
execute if block ~ ~ ~ #iiid:chest unless block ~ ~ ~ #iiid:chest[type=single] run function iiid:interact_with_gui_block/chest