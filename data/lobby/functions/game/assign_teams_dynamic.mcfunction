
scoreboard players set temp_0 lobby_data 0
execute as @a if score @s lobby_team = in_1 lobby_data run scoreboard players add temp_0 lobby_data 1
execute if score temp_0 lobby_data < team_size lobby_data run scoreboard players operation @r[limit=1,team=lobby,tag=!lobby_editor] lobby_team = in_1 lobby_data 

#loop
execute if score temp_0 lobby_data < team_size lobby_data run scoreboard players remove in_0 lobby_data 1
execute if score temp_0 lobby_data >= team_size lobby_data run scoreboard players add in_1 lobby_data 1

execute if score in_0 lobby_data matches 0.. if score in_1 lobby_data < team_num lobby_data run function lobby:game/assign_teams_dynamic