#writing slot
data modify storage iiid:main item.Slot set value 0b
execute store result storage iiid:main item.Slot byte 1 run scoreboard players get slot= iiid.main

#appending to items_out array
data modify storage iiid:main items_out append from storage iiid:main item