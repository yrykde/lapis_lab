local lapis = require("lapis")
local app = lapis.Application()


app:before_filter(function(self)
    print("session tables")
    for  key, value in pairs(self.session) do
        print(key .. value)
    end
end)

app:get("/", function()
    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
