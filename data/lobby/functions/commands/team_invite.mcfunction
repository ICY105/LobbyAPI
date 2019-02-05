
tellraw @s [{"selector":"@p","color":"green"},{"text":" has invited you to team ","color":"dark_green"},{"score":{"name":"temp_0","objective":"lobby_data"},"color":"green"},{"text":".","color":"dark_green"}]
tellraw @s [{"text":"[Accept] ","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set -2"}},{"text":"[Decline]","color":"red","clickEvent":{"action":"run_command","value":"/trigger lobby set -3"}}]

scoreboard players set temp_1 lobby_data -1
scoreboard players operation temp_0 lobby_data *= temp_1 lobby_data
scoreboard players operation @s lobby_team = temp_0 lobby_data
