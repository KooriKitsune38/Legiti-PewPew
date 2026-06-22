playsound entity.cat.purreow player @a ~ ~ ~ 1.5 1.5
playsound entity.dragon_fireball.explode player @a ~ ~ ~ 1.3 2

particle poof ~ ~ ~ 0 0 0 0.5 20 normal
particle dust{color:[0.961,0.663,0.722],scale:2} ~ ~ ~ 1 2 1 0 30 normal
particle dust{color:[1,1,1],scale:2} ~ ~ ~ 1 2 1 0 30 normal
particle dust{color:[0.357,0.808,0.980],scale:2} ~ ~ ~ 1 2 1 0 30 normal

execute at @a[distance=..8] run particle dust{color:[0.961,0.663,0.722],scale:1} ~ ~ ~ .3 1 .3 0 10 normal
execute at @a[distance=..8] run particle dust{color:[1,1,1],scale:1} ~ ~ ~ .3 1 .3 0 10 normal
execute at @a[distance=..8] run particle dust{color:[0.357,0.808,0.980],scale:1} ~ ~ ~ .3 1 .3 0 10 normal

effect give @a[distance=..8] glowing 120 0 true

summon item ~ ~ ~ {Motion:[0.1d,0.7d,-0.2d],PickupDelay:9999,Age:5400,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{temp:1},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FkOWYzNTJkZTYwODA2ZjhlYWM1NDA2MzkwZGJmOGM2ODg4YWVjNjc2ZDBkZGRiZTY4ZWNhYTkzM2YxYTg2NCJ9fX0="}]}}}}
summon item ~ ~ ~ {Motion:[-0.1d,0.7d,0.3d],PickupDelay:9999,Age:5400,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{temp:2},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FkOWYzNTJkZTYwODA2ZjhlYWM1NDA2MzkwZGJmOGM2ODg4YWVjNjc2ZDBkZGRiZTY4ZWNhYTkzM2YxYTg2NCJ9fX0="}]}}}}
summon item ~ ~ ~ {Motion:[-0.4d,0.8d,0.0d],PickupDelay:9999,Age:5400,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{temp:3},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FkOWYzNTJkZTYwODA2ZjhlYWM1NDA2MzkwZGJmOGM2ODg4YWVjNjc2ZDBkZGRiZTY4ZWNhYTkzM2YxYTg2NCJ9fX0="}]}}}}
summon item ~ ~ ~ {Motion:[0.3d,0.6d,0.3d],PickupDelay:9999,Age:5400,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_data":{temp:4},"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FkOWYzNTJkZTYwODA2ZjhlYWM1NDA2MzkwZGJmOGM2ODg4YWVjNjc2ZDBkZGRiZTY4ZWNhYTkzM2YxYTg2NCJ9fX0="}]}}}}