#applying item if action is specified
data modify storage iiid:main item set from entity @s Item
execute if data storage iiid:main item.tag.iiid.action run function iiid:register_item_entity/apply_action

#marking as registered
tag @s add iiid.registered