#copying count
execute unless data storage iiid:main item.Count run data modify storage iiid:main item.Count set value "copy"
execute if data storage iiid:main item{Count:"copy"} run data modify storage iiid:main item.Count set from storage iiid:main temp.Count
execute if data storage iiid:main item{Count:"copy"} run data modify storage iiid:main item.Count set value 1b

#copying tag, with iiid_action value removal to prevent loops
execute if data storage iiid:main item{tag:"copy"} run data remove storage iiid:main temp.tag.iiid
execute if data storage iiid:main item{tag:"copy"} run data modify storage iiid:main item.tag set from storage iiid:main temp.tag
execute if data storage iiid:main item{tag:"copy"} run data modify storage iiid:main item.tag set value {}

#copying id
execute unless data storage iiid:main item.id run data modify storage iiid:main item.id set value "copy"
execute if data storage iiid:main item{id:"copy"} run data modify storage iiid:main item.id set from storage iiid:main temp.id
execute if data storage iiid:main item{id:"copy"} run data modify storage iiid:main item.id set value "minecraft:stone"