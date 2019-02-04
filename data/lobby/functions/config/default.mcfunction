#
# This is an example default config.
# Copy this config into your own datapack and add it
# to the function tag "#lobby:config.json"
#

############
#  Global  #
############

# Do not edit global commands in real-time! Could mess everything up!

# Enable Lobby Structure: 0 for no structure, 1 for structure
# If disabled, you will need to manually place an entity with the tag "lobby_spawn"
# in your own lobby building. This should be in the spawn chunks.
scoreboard players set game_lobby lobby_data 1

# Lobby Position: 0 for sky, 1 for bedrock
scoreboard players set game_pos lobby_data 1

# Reset on reload/restart: 0 for disabled, 1 for enabled.
# Resets the game and sends all players to the lobby when datapacks are reloaded.
# Recommended to enable to prevent potential errors when restarting the server.
scoreboard players set game_reload lobby_data 1

# Enable Save Disconnected State: 0 for disabled, 1 of enabled
# When enabled, players will be put back into the game where they disconnected.
# Otherwise they are returned to the lobby.
scoreboard players set game_disconnect lobby_data 1

##############
#  Gameplay  #
##############

# Default Game Mode: -1 to disable, 0 for survival, 1 for creative, 2 for adventure
# When the game starts, players are put into this gamemode.
# Recommend to use this option instead of a custom one to avoid affecting players not entering the game.
scoreboard players set game_gm lobby_data 0

# Manual Respawn: 0 for players to be sent to the lobby on respawn. 1 for being respawned at their spawnpoint.
# If players have one life, set to 0. Set to 1 if your game has respawn mechanics.
scoreboard players set game_respawn lobby_data 0

# Minimum Players: intermission will not start until at least this many players are in the lobby
scoreboard players set game_min_players lobby_data 2

# Intermission Length: in game ticks. Must be > 600
# Set to -1 for only manual game starts
scoreboard players set game_intermission lobby_data 2400

# Enable Spectator Mode: 0 for no spectator, 1 for spectator
scoreboard players set game_spectator lobby_data 1

#############
#   Teams   #
#############

# Enable Teams Module: 0 for no teams, 1 for teams
scoreboard players set team_enable lobby_data 1

# Mode: 0 for fixed, 1 for dynamic
scoreboard players set team_mode lobby_data 0


# Auto Queue Players not on a team: 0 disabled, 1 enabled
scoreboard players set team_queue lobby_data 1

# Allow joining teams. Otherwise all players are randomly placed on a team. "Auto Queue Players" must be enabled.
# 0 disabled, 1 enable.
scoreboard players set team_join lobby_data 1

# Max Team Size: must be > 2
scoreboard players set team_size lobby_data 4


# Show Death Message: 0 always, 1 never, 2 team_enable
scoreboard players set team_death lobby_data 0

# Show Name Tag: 0 always, 1 never, 2 team_enable
scoreboard players set team_name lobby_data 0

# Friendly Fire: 0 disabled, 1 enabled
scoreboard players set team_ff lobby_data 0

#
# Dynamic Teams Options
#

#
# Fixed Teams Options
#

# Number of teams: [2,16]
scoreboard players set team_num lobby_data 16




