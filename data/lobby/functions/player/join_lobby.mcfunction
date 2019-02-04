
execute at @e[tag=lobby_spawn,limit=1] run tp @s ~ ~ ~
team join lobby @s
scoreboard players reset @s lobby_game

execute at @e[tag=lobby_spawn] run spawnpoint @s ~ ~ ~

gamemode adventure @s
