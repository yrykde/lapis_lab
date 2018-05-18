local lapisutils = {}

function lapisutils.table_represent(table, deph)
    function table_represent_inside(t, d)
        if d == nil then
            d = 1
        end
        if t == nil then
            io.write("NIL valie")
            return
        end
        for key, value in pairs(t) do
            if type(value) == "table" then
                io.write(string.format(string.rep("\t", d).."[%s] => table\n", tostring(key)))
                table_represent_inside(t[key], d+1)
            elseif type(value) == nil then
                io.write(string.format(string.rep("\t", d).."[%s] => nil\n", tostring(key)))
            else
                io.write(string.format(string.rep("\t", d).."[%s] => [%s]\n", tostring(key), tostring(value)))
            end
        end
    end
    table_represent_inside(table, deph)
end

return lapisutils