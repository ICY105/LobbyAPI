
#global

execute unless score game_enabled lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Game Enabled. Falling back to disabled state for safety.
execute unless score game_enabled lobby_data matches 0..1 run scoreboard players set game_enabled lobby_data 0

execute unless score game_lobby lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Lobby Structure. Resetting to default.
execute unless score game_lobby lobby_data matches 0..1 run scoreboard players set game_lobby lobby_data 1

execute unless score game_pos lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Lobby Position. Resetting to default.
execute unless score game_pos lobby_data matches 0..1 run scoreboard players set game_pos lobby_data 1

execute unless score game_disconnect lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Enable Save Disconnected State. Resetting to default.
execute unless score game_disconnect lobby_data matches 0..1 run scoreboard players set game_disconnect lobby_data 1

execute unless score game_reload lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Reset on reload/restart. Resetting to default.
execute unless score game_reload lobby_data matches 0..1 run scoreboard players set game_reload lobby_data 1

#game

execute unless score game_gm lobby_data matches 0..2 run say [Lobby] Invalid config value loaded for Default Game Mode. Resetting to default.
execute unless score game_gm lobby_data matches 0..2 run scoreboard players set game_gm lobby_data 1

execute unless score game_respawn lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Manual Respawn. Resetting to default.
execute unless score game_respawn lobby_data matches 0..1 run scoreboard players set game_respawn lobby_data 0

execute unless score game_auto_end lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Auto End Game. Resetting to default.
execute unless score game_auto_end lobby_data matches 0..1 run scoreboard players set game_auto_end lobby_data 1


execute unless score game_min_players lobby_data matches 1.. run say [Lobby] Invalid config value loaded for Minimum Start Players. Resetting to default.
execute unless score game_min_players lobby_data matches 1.. run scoreboard players set game_min_players lobby_data 2

execute unless score game_intermission lobby_data matches 600.. unless score game_intermission lobby_data matches -1 run say [Lobby] Invalid config value loaded for Intermission Length. Resetting to default.
execute unless score game_intermission lobby_data matches 600.. unless score game_intermission lobby_data matches -1 run scoreboard players set game_intermission lobby_data 2400

execute unless score game_spectator lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Enable Spectator Mode. Resetting to default.
execute unless score game_spectator lobby_data matches 0..1 run scoreboard players set game_spectator lobby_data 1

#teams

execute unless score team_enable lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Enable Teams. Resetting to default.
execute unless score team_enable lobby_data matches 0..1 run scoreboard players set team_enable lobby_data 1

execute unless score team_mode lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Teams Mode. Resetting to default.
execute unless score team_mode lobby_data matches 0..1 run scoreboard players set team_mode lobby_data 0

execute unless score team_queue lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Auto-Queue players. Resetting to default.
execute unless score team_queue lobby_data matches 0..1 run scoreboard players set team_queue lobby_data 1

execute unless score team_join lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Allow Team Joining. Resetting to default.
execute unless score team_join lobby_data matches 0..1 run scoreboard players set team_join lobby_data 1

execute unless score team_size lobby_data matches 2.. run say [Lobby] Invalid config value loaded for Team Size. Resetting to default.
execute unless score team_size lobby_data matches 2.. run scoreboard players set team_size lobby_data 4

# team-fixed

execute unless score team_num lobby_data matches 2..16 run say [Lobby] Invalid config value loaded for Number of Teams (fixed). Resetting to default.
execute unless score team_num lobby_data matches 2..16 run scoreboard players set team_num lobby_data 16

#Team options

execute unless score team_death lobby_data matches 0..2 run say [Lobby] Invalid config value loaded for Team Death Messages. Resetting to default.
execute unless score team_death lobby_data matches 0..2 run scoreboard players set team_death lobby_data 0
execute if score team_death lobby_data matches 0 run function lobby:teams/fixed_death_always
execute if score team_death lobby_data matches 0 run function lobby:teams/dynamic_death_always
execute if score team_death lobby_data matches 1 run function lobby:teams/fixed_death_team
execute if score team_death lobby_data matches 1 run function lobby:teams/dynamic_death_team
execute if score team_death lobby_data matches 2 run function lobby:teams/fixed_death_never
execute if score team_death lobby_data matches 2 run function lobby:teams/dynamic_death_never

execute unless score team_name lobby_data matches 0..2 run say [Lobby] Invalid config value loaded for Team Name Tags. Resetting to default.
execute unless score team_name lobby_data matches 0..2 run scoreboard players set team_name lobby_data 0
execute if score team_name lobby_data matches 0 run function lobby:teams/fixed_name_always
execute if score team_name lobby_data matches 0 run function lobby:teams/dynamic_name_always
execute if score team_name lobby_data matches 1 run function lobby:teams/fixed_name_team
execute if score team_name lobby_data matches 1 run function lobby:teams/dynamic_name_team
execute if score team_name lobby_data matches 2 run function lobby:teams/fixed_name_never
execute if score team_name lobby_data matches 2 run function lobby:teams/dynamic_name_never

execute unless score team_ff lobby_data matches 0..1 run say [Lobby] Invalid config value loaded for Team Friendly Fire. Resetting to default.
execute unless score team_ff lobby_data matches 0..1 run scoreboard players set team_ff lobby_data 0
execute if score team_ff lobby_data matches 0 run function lobby:teams/fixed_ff_always
execute if score team_ff lobby_data matches 0 run function lobby:teams/dynamic_ff_always
execute if score team_ff lobby_data matches 1 run function lobby:teams/fixed_ff_team
execute if score team_ff lobby_data matches 1 run function lobby:teams/dynamic_ff_team


