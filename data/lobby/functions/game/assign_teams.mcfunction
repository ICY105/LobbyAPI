
execute store result score in_0 lobby_data if entity @a[team=lobby]
scoreboard players set in_1 lobby_data 0

execute if score team_mode lobby_data matches 0 run function lobby:game/assign_teams_fixed
execute if score team_mode lobby_data matches 1 run function lobby:game/assign_teams_dynamic