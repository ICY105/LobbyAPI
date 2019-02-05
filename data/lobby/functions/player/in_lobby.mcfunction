
execute store result score temp_0 lobby_data run data get entity @s foodLevel
execute if score temp_0 lobby_data matches ..19 run effect give @s minecraft:saturation 1 4 true

execute store result score temp_0 lobby_data run data get entity @s Health
execute if score temp_0 lobby_data matches ..19 run effect give @s minecraft:instant_health 1 32 true
