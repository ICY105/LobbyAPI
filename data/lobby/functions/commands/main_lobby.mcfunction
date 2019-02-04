
execute if score team_enable lobby_data matches 0 run tellraw @s [{"text":"Teams are not enabled.","color":"dark_green","underlined":true}]
execute if score team_enable lobby_data matches 0 run scoreboard players set @s lobby 0

execute if score @s lobby matches 1 run function lobby:commands/menu

execute if score @s lobby matches 10 if score team_join lobby_data matches 0 run tellraw @s [{"text":"Joining teams is not enabled. You will be randomly assigned a team on game start.","color":"dark_green","underlined":true}]
execute if score @s lobby matches 10 if score team_join lobby_data matches 1 run function lobby:commands/menu_join
execute if score @s lobby matches 20..35 if score team_join lobby_data matches 1 run function lobby:commands/team_join_fixed

execute if score @s lobby matches 11 run function lobby:commands/menu_leave
