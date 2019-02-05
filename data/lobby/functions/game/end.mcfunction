
#bar
scoreboard players set countdown lobby_data 0

#scoreboard
scoreboard players add game lobby_game 1

scoreboard players set state lobby_data 0
execute as @a[tag=!lobby_editor] at @s run function lobby:player/join_lobby
function #lobby:end_game
