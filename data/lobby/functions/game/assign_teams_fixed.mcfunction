
#get team count
execute if score in_1 lobby_data matches 0 store result score temp_0 lobby_data if entity @a[team=red]
execute if score in_1 lobby_data matches 1 store result score temp_0 lobby_data if entity @a[team=blue]
execute if score in_1 lobby_data matches 2 store result score temp_0 lobby_data if entity @a[team=green]
execute if score in_1 lobby_data matches 3 store result score temp_0 lobby_data if entity @a[team=aqua]
execute if score in_1 lobby_data matches 4 store result score temp_0 lobby_data if entity @a[team=light_purple]
execute if score in_1 lobby_data matches 5 store result score temp_0 lobby_data if entity @a[team=yellow]
execute if score in_1 lobby_data matches 6 store result score temp_0 lobby_data if entity @a[team=dark_red]
execute if score in_1 lobby_data matches 7 store result score temp_0 lobby_data if entity @a[team=dark_blue]
execute if score in_1 lobby_data matches 8 store result score temp_0 lobby_data if entity @a[team=dark_green]
execute if score in_1 lobby_data matches 9 store result score temp_0 lobby_data if entity @a[team=dark_aqua]
execute if score in_1 lobby_data matches 10 store result score temp_0 lobby_data if entity @a[team=dark_purple]
execute if score in_1 lobby_data matches 11 store result score temp_0 lobby_data if entity @a[team=gold]
execute if score in_1 lobby_data matches 12 store result score temp_0 lobby_data if entity @a[team=gray]
execute if score in_1 lobby_data matches 13 store result score temp_0 lobby_data if entity @a[team=dark_gray]
execute if score in_1 lobby_data matches 14 store result score temp_0 lobby_data if entity @a[team=white]
execute if score in_1 lobby_data matches 15 store result score temp_0 lobby_data if entity @a[team=black]

#assign team
execute if score in_1 lobby_data matches 0 if score temp_0 lobby_data < team_size lobby_data run team join red @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 1 if score temp_0 lobby_data < team_size lobby_data run team join blue @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 2 if score temp_0 lobby_data < team_size lobby_data run team join green @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 3 if score temp_0 lobby_data < team_size lobby_data run team join aqua @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 4 if score temp_0 lobby_data < team_size lobby_data run team join light_purple @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 5 if score temp_0 lobby_data < team_size lobby_data run team join yellow @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 6 if score temp_0 lobby_data < team_size lobby_data run team join dark_red @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 7 if score temp_0 lobby_data < team_size lobby_data run team join dark_blue @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 8 if score temp_0 lobby_data < team_size lobby_data run team join dark_green @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 9 if score temp_0 lobby_data < team_size lobby_data run team join dark_aqua @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 10 if score temp_0 lobby_data < team_size lobby_data run team join dark_purple @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 11 if score temp_0 lobby_data < team_size lobby_data run team join gold @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 12 if score temp_0 lobby_data < team_size lobby_data run team join gray @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 13 if score temp_0 lobby_data < team_size lobby_data run team join dark_gray @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 14 if score temp_0 lobby_data < team_size lobby_data run team join white @r[team=lobby,limit=1]
execute if score in_1 lobby_data matches 15 if score temp_0 lobby_data < team_size lobby_data run team join black @r[team=lobby,limit=1]

execute if score temp_0 lobby_data >= team_size lobby_data run scoreboard players add in_1 lobby_data 1

#loop
execute if score temp_0 lobby_data < team_size lobby_data run scoreboard players remove in_0 lobby_data 1
execute if score in_0 lobby_data matches 0.. if score in_1 lobby_data < team_num lobby_data run function lobby:game/assign_teams_fixed
