scoreboard players operation count= iiid.main = id iiid.main
scoreboard players operation count= iiid.main *= #-1 iiid.main
execute store result storage iiid:main temp.Count byte 1 run scoreboard players operation count= iiid.main %= #100 iiid.main
scoreboard players operation id iiid.main /= #-100 iiid.main