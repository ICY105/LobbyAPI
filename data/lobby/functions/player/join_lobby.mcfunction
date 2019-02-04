
execute at @e[tag=lobby_spawn,limit=1] run tp @s ~ ~ ~
team join lobby @s
scoreboard players reset @s lobby_game

gamemode adventure @s
