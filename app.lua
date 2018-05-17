local lapis = require("lapis")
local utils = require("utils")
local app = lapis.Application()

app:before_filter(function(self)
    print("<<<session tables>>>")
    print(utils.table_print(self.session))
    print("<<<req tables>>>")
    print(utils.table_print(self.req))
    print("<<<cookies tables>>>")
    print(utils.table_print(self.cookies))
end)

app:get("/", function()
    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
