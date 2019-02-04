
#scoreboard data
scoreboard players set @s lobby_id 0
scoreboard players set @s lobby_join 0

function lobby:player/assign_id

#connect to game or lobby
execute if score game_disconnect lobby_data matches 0 run function lobby:player/join_lobby
execute if score game_disconnect lobby_data matches 1 unless score @s lobby_game = game lobby_game run function lobby:player/join_lobby