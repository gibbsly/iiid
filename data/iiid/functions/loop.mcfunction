#registering item entities
execute as @e[type=item,tag=!iiid.registered] run function iiid:register_item_entity

#trigger give loop
execute as @a[tag=iiid.allow_give] run function iiid:trigger