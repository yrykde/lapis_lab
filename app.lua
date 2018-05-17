local lapis = require("lapis")
local app = lapis.Application()


app:before_filter(function(self)
    print("<<<session tables>>>")
    for  k, v in pairs(self.session) do
        print("----" .. k .. v .. "----")
    end
    print("<<<req tables>>>")
    for  k, v in pairs(self.req) do
        print("----" .. k .. v .. "----")
    end
    print("<<<cookies tables>>>")
    for  k, v in pairs(self.cookies) do
        print("----" .. k .. v .. "----")
    end
end)

app:get("/", function()
    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
