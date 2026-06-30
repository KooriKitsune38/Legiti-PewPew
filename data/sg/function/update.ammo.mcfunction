$execute store result storage k.temp:temp value int 1 run scoreboard players get $(pewName) sg.TokenValues

item modify entity @s weapon.mainhand {"function":"minecraft:copy_custom_data","source":{"type":"storage","source":"k.temp:temp"},"ops":[{"op":"replace","source":"value","target":"\"sg.Gun\".ammoUsage"}]}