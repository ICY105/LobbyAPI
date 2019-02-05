
execute if score game_enabled lobby_data matches 1 as @a at @s run function lobby:player/main

#intermission counter
execute if score game_enabled lobby_data matches 1 if score state lobby_data matches 0 if score game_intermission lobby_data matches 0.. run function lobby:game/intermission
execute if score game_enabled lobby_data matches 1 if score state lobby_data matches 0 if score game_intermission lobby_data matches -1 run bossbar set minecraft:lobby_inter visible false

#exit spectator
execute if score game_enabled lobby_data matches 1 at @e[tag=lobby_spawn,] as @a[gamemode=spectator,distance=..16,tag=!lobby_editor] run function lobby:player/join_lobby

#end game
execute if score game_enabled lobby_data matches 1 if score game_auto_end lobby_data matches 1 if score state lobby_data matches 1 unless entity @a[team=!lobby,tag=!lobby_editor] run function lobby:game/end