
execute if score game_pos lobby_data matches 1 run setblock ~ 240 ~ minecraft:structure_block[mode=load]{name:"lobby:lobby_sky",posX:-15,posY:0,posZ:-15,mode:"LOAD",integrity:1.0f,showair:0b,showboundingbox:0b}
execute if score game_pos lobby_data matches 1 run setblock ~ 241 ~ minecraft:redstone_block
execute if score game_pos lobby_data matches 1 run summon armor_stand ~0.5 243 ~0.5 {Tags:["lobby_spawn"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959}

execute if score game_pos lobby_data matches 0 run setblock ~ 1 ~ minecraft:structure_block[mode=load]{name:"lobby:lobby_sky",posX:-15,posY:0,posZ:-15,mode:"LOAD",integrity:1.0f,showair:0b,showboundingbox:0b}
execute if score game_pos lobby_data matches 0 run setblock ~ 2 ~ minecraft:redstone_block
execute if score game_pos lobby_data matches 0 run summon armor_stand ~0.5 5 ~0.5 {Tags:["lobby_spawn"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,DisabledSlots:4144959}
