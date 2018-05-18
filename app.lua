local lapis = require("lapis")
local utils = require("utils")
local app = lapis.Application()
local mutils = require("lapisutils")

app:before_filter(function(self)
    print("<<<session tables>>>")
    mutils.table_represent(self.session)
    print("<<<req tables>>>")
    mutils.table_represent(self.req)
    print("<<<cookies tables>>>")
    mutils.table_represent(self.cookies)
end)

app:get("/", function()
    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
