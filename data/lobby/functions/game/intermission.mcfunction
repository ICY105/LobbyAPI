
bossbar set minecraft:lobby_inter visible true

scoreboard players add countdown lobby_data 1
execute store result score temp_1 lobby_data if entity @a
execute if score temp_1 lobby_data < game_min_players lobby_data run scoreboard players set countdown lobby_data 0
execute if score temp_1 lobby_data < game_min_players lobby_data run bossbar set minecraft:lobby_inter name "Waiting for Players"
execute if score temp_1 lobby_data >= game_min_players lobby_data run bossbar set minecraft:lobby_inter name "Intermission"

scoreboard players operation temp_0 lobby_data = game_intermission lobby_data
scoreboard players operation temp_0 lobby_data -= countdown lobby_data

execute store result bossbar minecraft:lobby_inter value run scoreboard players get temp_0 lobby_data
execute store result bossbar minecraft:lobby_inter max run scoreboard players get game_intermission lobby_data
bossbar set minecraft:lobby_inter players @a

execute if score temp_0 lobby_data matches 0 run function lobby:game/start