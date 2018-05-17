local lapis = require("lapis")
local utils = require("utils")
local app = lapis.Application()
local table_represent = table_represent()

app:before_filter(function(self)
    print("<<<session tables>>>")
    table_represent(self.session)
    print("<<<req tables>>>")
    table_represent(self.req)
    print("<<<cookies tables>>>")
    table_represent(self.cookies)
end)

app:get("/", function()
    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
