
tellraw @s [{"text":"Team Menu","color":"dark_aqua","bold":true}]

#fixed
execute if score team_mode lobby_data matches 0 run tellraw @s [{"text":"[Join Team]","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set 10"}}]
execute if score team_mode lobby_data matches 0 run tellraw @s [{"text":"[Leave Team]","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set 11"}}]

#dynamic
execute if score team_mode lobby_data matches 1 run tellraw @s [{"text":"[Create Team]","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set -1"}}]
execute if score team_mode lobby_data matches 1 run tellraw @s [{"text":"[Leave Team]","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set 11"}}]