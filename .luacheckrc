codes = true
std   = "lua51"
jobs  = 3
self  = false
max_line_length = 80
max_cyclomatic_complexity = 10
exclude_files = {
	"lua-libs"
}
read_globals = {
	-- common lua globals
	"lfs",
	"md5",

	-- DCS specific globals
	"country",
	"env",
	"net",
	"Unit",
	"Object",
	"StaticObject",
	"Group",
	"coalition",
	"world",
	"timer",
	"trigger",
	"missionCommands",
	"coord",
	"land",
	"atmosphere",
	"SceneryObject",
	"AI",
	"Controller",
	"radio",
	"Weapon",
	"Airbase",

	-- DCT specific
	"dct",
}

files["data/Config/serverSettings.lua"] = { globals = {"cfg",}, }
files["mission/dct-mission-init.lua"] = {
	globals = {"dctsettings", "luapath",},
}
files["hooks/*.lua"] = {
	read_globals = {"DCS", "log",},
}
files["src/dct/Region.lua"] = { globals = {"region",} }
files["src/dct/settings.lua"] = { globals = {"dctserverconfig",} }
files["src/dct/Template.lua"] = {
	globals = {"staticTemplate", "metadata",},
}
files["src/dct/Theater.lua"] = { globals = {"theatergoals",} }
files["src/dct/systems/overlordBotRPC.lua"] = { globals = {"GRPC",} }
files["src/dcttestlibs/dcsstubs.lua"] = {
	globals = {"lfs"},
	read_globals = {"socket",},
}
files["tests/test-0001-data.lua"] = {
	globals = {"staticTemplate", "metadata",}
}
files["tests/test-overlordbot-rpc.lua"] = { globals = {"GRPC",} }
files["tests/*"] = {
	globals = {"dctcheck", "dct"},
}
