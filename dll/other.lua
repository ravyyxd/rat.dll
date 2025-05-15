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
