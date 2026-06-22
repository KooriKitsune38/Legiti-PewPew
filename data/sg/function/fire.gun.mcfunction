advancement revoke @s only sg:used.gun

execute unless data entity @s SelectedItem.components{"minecraft:damage":0} run return fail
scoreboard players add @s sg.PewTokens 0

# Shoot
execute if score @s sg.PewTokens matches ..0 run return fail
#execute if predicate sg:no_ammo run return fail

# check if ammo or not
execute store success score .success k.Values run function sg:get_usage with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"
execute if score .success k.Values matches 0 run return fail
execute if score @s sg.PewTokens < .usage k.Values run return fail
#execute if score .usage k.Values > @s sg.PewTokens run return run function sg:reload.gun

#> Start Cooldown
function sg:activate.cooldown with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

#> Instantiate Raycast
execute store result score .max k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".rayDistance
data modify storage k.temp:temp gunInfo set from entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

tag @s add .temp
scoreboard players reset .temp k.Values
execute anchored eyes positioned ^ ^ ^.5 run function sg:raycast
tag @s remove .temp

function sg:recoil with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"

#> Remove Bullet
#execute store result score .temp k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".loadedAmmo
#execute store result score .usage k.Values run data get entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".ammoUsage
scoreboard players operation @s sg.PewTokens -= .usage k.Values
#execute store result storage k.temp:temp value int 1 run scoreboard players get .current k.Values
#function sg:set.ammo.amount with storage k.temp:temp

# Sounds
execute unless data entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun".sound run return run function sg:def.shoot.sound
function sg:custom.shoot.sound with entity @s SelectedItem.components."minecraft:custom_data"."sg.Gun"