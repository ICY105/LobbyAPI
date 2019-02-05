advancement revoke @s only lobby:attack_player

scoreboard players operation temp_0 lobby_data = @s lobby_team
execute if entity @s[team=!lobby] if score state lobby_data matches 0 as @p[nbt={HurtTime:10s}] if entity @s[team=lobby] run function lobby:commands/team_invite
