gamerule maxCommandChainLength 128000

#init scoreboard data
scoreboard objectives add lobby_data dummy
scoreboard objectives add lobby_game dummy
scoreboard objectives add lobby_id dummy
scoreboard objectives add lobby trigger
scoreboard objectives add lobby_join minecraft.custom:minecraft.leave_game

#init team data
team add lobby "Lobby"
team modify lobby prefix {"text":"[Lobby] ","color":"dark_green"}
function lobby:teams/dynamic_create
function lobby:teams/fixed_create

#load config
function lobby:config/default
function #lobby:config
function lobby:config/verify

#load scoreboard data
execute unless score game lobby_game matches 1.. run scoreboard players set game lobby_game 1
execute unless score state lobby_data matches 0..1 run scoreboard players set state lobby_data 0

bossbar add lobby_inter "Intermission"

#load lobby structure
kill @e[tag=lobby_spawn]
execute if score game_lobby lobby_data matches 1 run function lobby:create_lobby

#post-init function call
function #lobby:post_init

#reset game
execute if score game_reload lobby_data matches 1 run function lobby:game/end