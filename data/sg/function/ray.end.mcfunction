#execute if data storage k.temp:temp gunInfo.explosion{active:true,can_damage_ground:true} run summon creeper ~ ~ ~ {Fuse:0,attributes:[{base:0.01d,id:"minecraft:scale"}]}
#execute if data storage k.temp:temp gunInfo.explosion{active:true,can_damage_ground:false} run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:0,attributes:[{base:0.01d,id:"minecraft:scale"}]}

execute if data storage k.temp:temp gunInfo{special:"trans_explosion"} run function sg:special/trans_explosion