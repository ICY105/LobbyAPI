
execute as @a at @s run function lobby:player/main

#intermission counter
execute if score state lobby_data matches 0 if score game_intermission lobby_data matches 0.. run function lobby:game/intermission
execute if score state lobby_data matches 0 if score game_intermission lobby_data matches -1 run bossbar set minecraft:lobby_inter visible false

#exit spectator
execute at @e[tag=lobby_spawn] as @a[gamemode=spectator,distance=..16] run function lobby:player/join_lobby

#end game
execute if score game_auto_end lobby_data matches 1 if score state lobby_data matches 1 unless entity @a[team=!lobby] run function lobby:game/end