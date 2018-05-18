local lapis = require("lapis")
local json_params = require("lapis.application").json_params
local app = lapis.Application()
local mutils = require("lapisutils")
local ngx = require("ngx")
local cjson = require "cjson"

app:before_filter(function(self)
    io.write("\tPRE ROUTE\n")
    io.write("SELF table\n")
    mutils.table_represent(self)
    io.write("\tPRE ROUTE end\n")
end)

app:get("/", function(self)
    -- before the access for request data it have to be readed
    ngx.req.read_body()
    local data = ngx.req.get_body_data()
    if data then
        io.write("Data from request\n" .. data .. string.format("\nType %s\n", type(data)))
        -- decode to json
        local json_value = cjson.decode(data)
        io.write("JSON object from data\n")
        mutils.table_represent(json_value)
        io.write(string.format("\nType %s\n", type(json_value)))
    end

    return "Welcome to Lapis " .. require("lapis.version")
end)

return app
