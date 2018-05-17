-- config.lua
local config = require("lapis.config")

config("development", {
    port = 8081,
    code_cache = "on"
})
