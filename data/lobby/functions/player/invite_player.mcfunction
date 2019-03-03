advancement revoke @s only lobby:attack_player

scoreboard players operation temp_0 lobby_data = @s lobby_team
execute if score game_enabled lobby_data matches 1 if score team_mode lobby_data matches 1 if entity @s[team=!lobby,tag=!lobby_editor] if score state lobby_data matches 0 as @p[nbt={HurtTime:10s},tag=!lobby_editor] if entity @s[team=lobby] run function lobby:commands/team_invite
