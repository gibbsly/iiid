#copying and writing values
execute store result score id iiid.main run data get storage iiid:main item.tag.iiid.action
data modify storage iiid:main temp set from storage iiid:main item

#generating item
function iiid:util/generate_item