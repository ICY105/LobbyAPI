
execute as @a at @s run function lobby:player/main

#intermission counter
execute if score state lobby_data matches 0 run function lobby:game/intermission