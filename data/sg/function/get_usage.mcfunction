$execute unless score $(pewName) sg.TokenValues matches -2147483648..2147483647 run return fail
$execute store result score .usage k.Values run scoreboard players get $(pewName) sg.TokenValues
return 1