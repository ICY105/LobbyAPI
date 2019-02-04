
#on connect
execute unless score @s lobby_id matches 1.. run function lobby:player/join_game
execute if score @s lobby_join matches 1.. run function lobby:player/join_game

#sub main functions
execute if entity @s[team=lobby] run function lobby:player/in_lobby
execute if entity @s[team=!lobby] run function lobby:player/in_game

#command trigger
execute if score state lobby_data matches 1 run trigger lobby set 0
execute if score state lobby_data matches 0 run scoreboard players enable @s lobby

execute unless score @s lobby matches 0 run function lobby:commands/main