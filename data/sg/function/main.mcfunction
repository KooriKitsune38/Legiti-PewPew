execute as @a[predicate=sg:on_cooldown] run function sg:calc.cooldown
execute as @a[predicate=sg:holding_gun] run title @s actionbar [{"text":"- Tokens: ","color":"gray"},{score:{name:"@s",objective:"sg.PewTokens"},"color":"white"},{"text":"/"},{"entity": "@s","nbt":"SelectedItem.components.\"minecraft:custom_data\".\"sg.Gun\".ammoUsage","color":"white"},{"text":" -"}]

# This runs each 30 seconds if holding a pewpew
execute as @a[predicate=sg:update_ammo] run function sg:update.ammo with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"