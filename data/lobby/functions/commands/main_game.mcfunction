
execute if score @s lobby matches 1 run tellraw @s [{"text":"Team Menu","color":"dark_aqua","bold":true}]
execute if score @s lobby matches 1 run tellraw @s [{"text":"[Spectator Mode]","color":"green","clickEvent":{"action":"run_command","value":"/trigger lobby set -10"}}]

execute if score @s lobby matches -10 if score game_spectator lobby_data matches 1 run gamemode spectator @s
execute if score @s lobby matches -10 if score game_spectator lobby_data matches 1 run tp @s ~ 128 ~
execute if score @s lobby matches -10 if score game_spectator lobby_data matches 1 run tellraw @s [{"text":"Re-enter the lobby to exit spectator mode.","color":"dark_green","bold":true}]
execute if score @s lobby matches -10 if score game_spectator lobby_data matches 0 run tellraw @s [{"text":"Spectator mode not enabled.","color":"dark_green","bold":true}]