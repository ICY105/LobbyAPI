
execute if score team_enable lobby_data matches 0 run tellraw @s [{"text":"Teams are not enabled.","color":"dark_green"}]
execute if score team_enable lobby_data matches 0 run scoreboard players set @s lobby 0

execute if score @s lobby matches 1 run function lobby:commands/menu

#menu fixed
execute if score team_mode lobby_data matches 0 if score @s lobby matches 10 if score team_join lobby_data matches 0 run tellraw @s [{"text":"Joining teams is not enabled. You will be randomly assigned a team on game start.","color":"dark_green"}]
execute if score team_mode lobby_data matches 0 if score @s lobby matches 10 if score team_join lobby_data matches 1 run function lobby:commands/menu_join
execute if score team_mode lobby_data matches 0 if score @s lobby matches 20..35 if score team_join lobby_data matches 1 run function lobby:commands/team_join_fixed

#menu dynamic
execute if score team_mode lobby_data matches 1 if score @s lobby matches -1 if score team_join lobby_data matches 0 run tellraw @s [{"text":"Creating teams is not enabled. You will be randomly assigned a team on game start.","color":"dark_green"}]
execute if score team_mode lobby_data matches 1 if score @s lobby matches -1 if score team_join lobby_data matches 1 if entity @s[team=!lobby] run tellraw @s [{"text":"You are already on a team.","color":"dark_green"}]
execute if score team_mode lobby_data matches 1 if score @s lobby matches -1 if score team_join lobby_data matches 1 if entity @s[team=lobby] run function lobby:commands/create_team

execute if score team_mode lobby_data matches 1 if score @s lobby matches -2 if score team_join lobby_data matches 1 if entity @s[team=!lobby] run tellraw @s [{"text":"Already on a team.","color":"dark_green"}]
execute if score team_mode lobby_data matches 1 if score @s lobby matches -2 if score team_join lobby_data matches 1 if entity @s[team=lobby] run tellraw @s [{"text":"Accepted Invite.","color":"dark_green"}]
execute if score team_mode lobby_data matches 1 if score @s lobby matches -2 if score team_join lobby_data matches 1 if entity @s[team=lobby] run function lobby:commands/join_team_dynamic

execute if score team_mode lobby_data matches 1 if score @s lobby matches -3 if score team_join lobby_data matches 1 run tellraw @s [{"text":"Declined Invite.","color":"dark_green"}]
execute if score team_mode lobby_data matches 1 if score @s lobby matches -3 if score team_join lobby_data matches 1 run scoreboard players set @s lobby_team 0

#leave team
execute if score @s lobby matches 11 run function lobby:commands/menu_leave
