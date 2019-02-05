scoreboard players set in_0 lobby_data 0
function lobby:commands/create_team_2

execute if score in_0 lobby_data matches 101.. run tellraw @s [{"text":"No teams available.","color":"dark_green"}]

execute if score in_0 lobby_data matches 1..100 run scoreboard players operation @s lobby_team = in_0 lobby_data
execute if score in_0 lobby_data matches 1..100 run function lobby:commands/team_join_dynamic

