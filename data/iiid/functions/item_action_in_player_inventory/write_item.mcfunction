#writing item into shulker box
function iiid:util/place_item_in_shulker

#copying item from shulker into specified slot
execute if score slot= iiid.main matches 0..8 run function iiid:item_action_in_player_inventory/write_item/hotbar
execute if score slot= iiid.main matches 09..17 run function iiid:item_action_in_player_inventory/write_item/inventory_1
execute if score slot= iiid.main matches 18..26 run function iiid:item_action_in_player_inventory/write_item/inventory_2
execute if score slot= iiid.main matches 27..35 run function iiid:item_action_in_player_inventory/write_item/inventory_3
execute unless score slot= iiid.main matches 0..35 run function iiid:item_action_in_player_inventory/write_item/armor