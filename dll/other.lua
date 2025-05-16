        getgenv().getscriptclosure = function(a1)

            for _, t in pairs(getreg()) do
                        if type(t) == 'table' then

                    for _, v in pairs(t) do
                        if type(v) == 'function' and getfenv(v) and rawget(getfenv(v), 'script') == a1 then

                            return v

                        end
                    end

                end
            end

        end




zex = {}

function zex.print(...)
    local message = table.concat({...}, ' '):gsub("TestService:", "")
    game:GetService('TestService'):Message(message)
end

function zex.clear()
    game:GetService('TestService'):ClearOutput()
end

function zex.warn(...)
    local message = "[WARNING] " .. table.concat({...}, ' '):gsub("TestService:", "")
    game:GetService('TestService'):Message(message)
end

-- function zex.identity()
--     return ...
-- end

--more??
