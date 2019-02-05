
execute if score team_num lobby_data matches 1.. if score @s lobby matches 20 store result score temp_0 lobby_data if entity @a[team=red]
execute if score team_num lobby_data matches 1.. if score @s lobby matches 20 if score temp_0 lobby_data < team_size lobby_data run team join red @s
execute if score team_num lobby_data matches 1.. if score @s lobby matches 20 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Red team.","color":"dark_green"}]

execute if score team_num lobby_data matches 2.. if score @s lobby matches 21 store result score temp_0 lobby_data if entity @a[team=blue]
execute if score team_num lobby_data matches 2.. if score @s lobby matches 21 if score temp_0 lobby_data < team_size lobby_data run team join blue @s
execute if score team_num lobby_data matches 2.. if score @s lobby matches 21 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Blue team.","color":"dark_green"}]

execute if score team_num lobby_data matches 3.. if score @s lobby matches 22 store result score temp_0 lobby_data if entity @a[team=green]
execute if score team_num lobby_data matches 3.. if score @s lobby matches 22 if score temp_0 lobby_data < team_size lobby_data run team join green @s
execute if score team_num lobby_data matches 3.. if score @s lobby matches 22 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Green team.","color":"dark_green"}]

execute if score team_num lobby_data matches 4.. if score @s lobby matches 23 store result score temp_0 lobby_data if entity @a[team=aqua]
execute if score team_num lobby_data matches 4.. if score @s lobby matches 23 if score temp_0 lobby_data < team_size lobby_data run team join aqua @s
execute if score team_num lobby_data matches 4.. if score @s lobby matches 23 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Aqua team.","color":"dark_green"}]

execute if score team_num lobby_data matches 5.. if score @s lobby matches 24 store result score temp_0 lobby_data if entity @a[team=light_purple]
execute if score team_num lobby_data matches 5.. if score @s lobby matches 24 if score temp_0 lobby_data < team_size lobby_data run team join light_purple @s
execute if score team_num lobby_data matches 5.. if score @s lobby matches 24 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Purple team.","color":"dark_green"}]

execute if score team_num lobby_data matches 6.. if score @s lobby matches 25 store result score temp_0 lobby_data if entity @a[team=yellow]
execute if score team_num lobby_data matches 6.. if score @s lobby matches 25 if score temp_0 lobby_data < team_size lobby_data run team join yellow @s
execute if score team_num lobby_data matches 6.. if score @s lobby matches 25 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Yellow team.","color":"dark_green"}]

execute if score team_num lobby_data matches 7.. if score @s lobby matches 26 store result score temp_0 lobby_data if entity @a[team=dark_red]
execute if score team_num lobby_data matches 7.. if score @s lobby matches 26 if score temp_0 lobby_data < team_size lobby_data run team join dark_red @s
execute if score team_num lobby_data matches 7.. if score @s lobby matches 26 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Red team.","color":"dark_green"}]

execute if score team_num lobby_data matches 8.. if score @s lobby matches 27 store result score temp_0 lobby_data if entity @a[team=dark_blue]
execute if score team_num lobby_data matches 8.. if score @s lobby matches 27 if score temp_0 lobby_data < team_size lobby_data run team join dark_blue @s
execute if score team_num lobby_data matches 8.. if score @s lobby matches 27 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Blue team.","color":"dark_green"}]

execute if score team_num lobby_data matches 9.. if score @s lobby matches 28 store result score temp_0 lobby_data if entity @a[team=dark_green]
execute if score team_num lobby_data matches 9.. if score @s lobby matches 28 if score temp_0 lobby_data < team_size lobby_data run team join dark_green @s
execute if score team_num lobby_data matches 9.. if score @s lobby matches 28 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Green team.","color":"dark_green"}]

execute if score team_num lobby_data matches 10.. if score @s lobby matches 29 store result score temp_0 lobby_data if entity @a[team=dark_aqua]
execute if score team_num lobby_data matches 10.. if score @s lobby matches 29 if score temp_0 lobby_data < team_size lobby_data run team join dark_aqua @s
execute if score team_num lobby_data matches 10.. if score @s lobby matches 29 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Aqua team.","color":"dark_green"}]

execute if score team_num lobby_data matches 11.. if score @s lobby matches 30 store result score temp_0 lobby_data if entity @a[team=dark_purple]
execute if score team_num lobby_data matches 11.. if score @s lobby matches 30 if score temp_0 lobby_data < team_size lobby_data run team join dark_purple @s
execute if score team_num lobby_data matches 11.. if score @s lobby matches 30 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Purple team.","color":"dark_green"}]

execute if score team_num lobby_data matches 12.. if score @s lobby matches 31 store result score temp_0 lobby_data if entity @a[team=gold]
execute if score team_num lobby_data matches 12.. if score @s lobby matches 31 if score temp_0 lobby_data < team_size lobby_data run team join gold @s
execute if score team_num lobby_data matches 12.. if score @s lobby matches 31 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Gold team.","color":"dark_green"}]

execute if score team_num lobby_data matches 13.. if score @s lobby matches 32 store result score temp_0 lobby_data if entity @a[team=gray]
execute if score team_num lobby_data matches 13.. if score @s lobby matches 32 if score temp_0 lobby_data < team_size lobby_data run team join gray @s
execute if score team_num lobby_data matches 13.. if score @s lobby matches 32 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Gray team.","color":"dark_green"}]

execute if score team_num lobby_data matches 14.. if score @s lobby matches 33 store result score temp_0 lobby_data if entity @a[team=dark_gray]
execute if score team_num lobby_data matches 14.. if score @s lobby matches 33 if score temp_0 lobby_data < team_size lobby_data run team join dark_gray @s
execute if score team_num lobby_data matches 14.. if score @s lobby matches 33 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Dark Gray team.","color":"dark_green"}]

execute if score team_num lobby_data matches 15.. if score @s lobby matches 34 store result score temp_0 lobby_data if entity @a[team=white]
execute if score team_num lobby_data matches 15.. if score @s lobby matches 34 if score temp_0 lobby_data < team_size lobby_data run team join white @s
execute if score team_num lobby_data matches 15.. if score @s lobby matches 34 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined White team.","color":"dark_green"}]

execute if score team_num lobby_data matches 16.. if score @s lobby matches 35 store result score temp_0 lobby_data if entity @a[team=black]
execute if score team_num lobby_data matches 16.. if score @s lobby matches 35 if score temp_0 lobby_data < team_size lobby_data run team join black @s
execute if score team_num lobby_data matches 16.. if score @s lobby matches 35 if score temp_0 lobby_data < team_size lobby_data run tellraw @s [{"text":"Joined Black team.","color":"dark_green"}]

execute if score temp_0 lobby_data >= team_size lobby_data run tellraw @s [{"text":"Team full.","color":"dark_green"}]