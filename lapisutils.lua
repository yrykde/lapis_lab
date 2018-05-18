local lapisutils = {}

function lapisutils.table_represent(table, deph)
    if deph == nil then
        deph = 1
    end
    if table == nil then
        io.write("NIL valie")
        return
    end
    for key, value in pairs(table) do
        if type(value) == "table" then
            io.write(string.format(string.rep("\t", deph).."[%s] => table\n", tostring(key)))
            table_represent(table[key], deph+1)
        else
            io.write(string.format(string.rep("\t", deph).."[%s] => [%s]\n", tostring(key), tostring(value)))
        end
    end
end

return lapisutils