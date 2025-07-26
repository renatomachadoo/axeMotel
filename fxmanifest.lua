fx_version("cerulean")
game("gta5")

author("Axe Scripts")
description("Axe Scripts - Motel script for fivem with multiple locations.")

version("1.0.0")

shared_scripts({ "shared/*.lua" })

client_scripts({
	"client/client.lua",
})

server_scripts({
	"server/server.lua",
})

lua54("yes")
use_experimental_fxv2_oal("yes")
