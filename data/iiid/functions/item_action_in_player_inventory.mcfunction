#copying iiid items
data modify storage iiid:main items set value []
data modify storage iiid:main items append from entity @s Inventory[{tag:{iiid:{}}}]

#running item application if item was found
execute if data storage iiid:main items[0] run function iiid:item_action_in_player_inventory/process_items

#removing items array
data remove storage iiid:main items

#revoking advancement
advancement revoke @s only iiid:item_action_in_player_inventory change