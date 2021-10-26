#creating empty array
data modify storage iiid:main temp.items set value [{}]

#writing item to array and assigning slot
data modify storage iiid:main temp.items[0] set from storage iiid:main item
data modify storage iiid:main temp.items[0].Slot set value 0b

#copying item into shulker
data modify block 6908260 0 29999999 Items set from storage iiid:main temp.items

#clearing temp
data modify storage iiid:main temp set value {}