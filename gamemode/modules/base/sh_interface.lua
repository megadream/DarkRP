DarkRP.findPlayer = DarkRP.stub{
	name = "findPlayer",
	description = "Find a player based on vague information",
	parameters = {
		{
			name = "info",
			description = "The information of the player (UserID, SteamID, name)",
			type = "string",
			optional = false
		}
	},
	returns = {
		{
			name = "found",
			description = "The player that matches the description",
			type = "Player"
		}
	},
	metatable = DarkRP
}

DarkRP.VECTOR.isInSight = DarkRP.stub{
	name = "isInSight",
	description = "Decides whether the vector could be seen by the player if they were to look at it",
	parameters = {
		{
			name = "filter",
			description = "Trace filter that decides what the player can see through",
			type = "table",
			optional = false
		},
		{
			name = "ply",
			description = "The player for whom the vector may or may not be visible",
			type = "Player",
			optional = false
		}
	},
	returns = {
		{
			name = "answer",
			description = "Whether the player can see the position",
			type = "boolean"
		},
		{
			name = "HitPos",
			description = "The position of the thing that blocks the player's sight",
			type = "Vector"
		}
	},
	metatable = DarkRP.VECTOR
}