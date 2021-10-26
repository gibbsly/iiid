execute if score id iiid.main matches ..-1 run function iiid:util/generate_item/validate_id_score
data modify storage iiid:main item set value {nul:1b}
function #iiid:generate_item
execute unless data storage iiid:main item.nul run function iiid:util/generate_item/copy_checks
data modify storage iiid:main temp set value {}