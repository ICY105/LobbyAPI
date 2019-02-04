scoreboard players add @s lobby_id 1

scoreboard players operation temp_0 lobby_data = @s lobby_id
scoreboard players set temp_1 lobby_data 0
execute as @a if score @s lobby_id = temp_0 lobby_data run scoreboard players add temp_1 lobby_data 1

execute if score temp_1 lobby_data matches 2.. run function lobby:player/assign_id