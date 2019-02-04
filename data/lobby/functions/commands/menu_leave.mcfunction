
execute if entity @s[team=!lobby] run tellraw @s [{"text":"You have left your team.","color":"dark_green"}]
execute if entity @s[team=lobby] run tellraw @s [{"text":"You are not on a team.","color":"dark_green"}]
team join lobby @s
