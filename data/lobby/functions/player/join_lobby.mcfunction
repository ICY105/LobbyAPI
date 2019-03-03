
execute at @e[tag=lobby_spawn,limit=1] run tp @s ~ ~ ~
team join lobby @s
scoreboard players set @s lobby_team 0
scoreboard players reset @s lobby_game

execute at @e[tag=lobby_spawn] run spawnpoint @s ~ ~ ~

gamemode adventure @s
clear @s
effect clear @s
experience set @s 0
experience set @s 0 levels
