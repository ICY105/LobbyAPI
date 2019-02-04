
#bar
bossbar set minecraft:lobby_inter visible false

#assign teams
execute if score team_queue lobby_data matches 1 run function lobby:game/assign_teams

#change GM
execute if score game_gm lobby_data matches 0 run gamemode survival @a[team=!lobby]
execute if score game_gm lobby_data matches 1 run gamemode creative @a[team=!lobby]
execute if score game_gm lobby_data matches 2 run gamemode adventure @a[team=!lobby]

#assign game ID
scoreboard players add game lobby_game 1
scoreboard players operation @a[team=!lobby] lobby_game = game lobby_game

#start game
scoreboard players set state lobby_data 1
function #lobby:start_game
