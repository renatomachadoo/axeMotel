Config = {}

Config.OxLibTextUi = true

Config.Blip = {
	text = "Motel",
	type = 124,
	color = 8,
	scale = 0.7,
	locations = {
		vec3(324.32, -230.48, 54.22),
		vec3(1121.48, 2641.72, 38.14),
		vec3(-98.72, 6348.25, 31.58),
	},
}

Config.Locations = {
	{
		coords = vec3(324.32, -230.48, 54.22),
		coordsToTeleport = vec3(-385.66, 161.87, 48.6),
		text = "Entrar no motel",
		type = "entrance",
	},
	{
		coords = vec3(-385.66, 161.87, 48.6),
		coordsToTeleport = vec3(324.32, -230.48, 54.22),
		text = "Sair do motel",
		type = "exit",
	},
	{
		coords = vec3(-378.74, 163.16, 48.6),
		text = "Abrir stash",
		type = "stash",
	},
	{
		coords = vec3(-384.37, 162.66, 48.6),
		text = "Trocar de Roupa",
		type = "closet",
	},

	{
		coords = vec3(1121.48, 2641.72, 38.14),
		coordsToTeleport = vec3(-414.12, 153.82, 18.47),
		text = "Entrar no motel",
		type = "entrance",
	},
	{
		coords = vec3(-414.12, 153.82, 18.47),
		coordsToTeleport = vec3(1121.48, 2641.72, 38.14),
		text = "Sair do motel",
		type = "exit",
	},
	{
		coords = vec3(-420.87, 154.83, 18.47),
		text = "Abrir stash",
		type = "stash",
	},
	{
		coords = vec3(-415.49, 153.57, 18.47),
		text = "Trocar de Roupa",
		type = "closet",
	},

	{
		coords = vec3(-98.72, 6348.25, 31.58),
		coordsToTeleport = vec3(-411.79, 161.76, -33.62),
		text = "Entrar no motel",
		type = "entrance",
	},
	{
		coords = vec3(-411.79, 161.76, -33.62),
		coordsToTeleport = vec3(-98.72, 6348.25, 31.58),
		text = "Sair do motel",
		type = "exit",
	},
	{
		coords = vec3(-418.81, 163.19, -33.62),
		text = "Abrir stash",
		type = "stash",
	},
	{
		coords = vec3(-413.44, 161.78, -33.62),
		text = "Trocar de Roupa",
		type = "closet",
	},
}

Config.Stash = {
	label = "Motel",
	slots = 20,
	weight = 500000,
}
