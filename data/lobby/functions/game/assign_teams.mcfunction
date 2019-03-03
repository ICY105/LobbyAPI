
execute store result score in_0 lobby_data if entity @a[team=lobby,tag=!lobby_editor]

execute if score team_mode lobby_data matches 0 run scoreboard players set in_1 lobby_data 0
execute if score team_mode lobby_data matches 0 run scoreboard players set in_2 lobby_data 1
execute if score team_mode lobby_data matches 0 run function lobby:game/assign_teams_fixed

execute if score team_mode lobby_data matches 1 run scoreboard players set in_1 lobby_data 1
execute if score team_mode lobby_data matches 1 run function lobby:game/assign_teams_dynamic
execute if score team_mode lobby_data matches 1 as @a[team=lobby,scores={lobby_team=1..100},tag=!lobby_editor] run function lobby:commands/team_join_dynamic