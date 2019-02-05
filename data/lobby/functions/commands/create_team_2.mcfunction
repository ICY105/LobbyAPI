scoreboard players add in_0 lobby_data 1
scoreboard players set temp_0 lobby_data 0
execute as @a if score @s lobby_team = in_0 lobby_data run scoreboard players set temp_0 lobby_data 1
execute if score in_0 lobby_data matches 1..100 if score temp_0 lobby_data matches 1 run function lobby:commands/create_team_2