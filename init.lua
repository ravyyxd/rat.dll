local fakeIdentity = 6 

local function getidentity()
    return fakeIdentity
end

getgenv().getidentity = getidentity
getgenv().Level = getidentity

local blockedurls = {
    'https://v4.ident.me',

    'http://ip-api.com/json',

    'https://ipinfo.io',

    'http://checkip.amazonaws.com'
}

local oldRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Url then
        for _, blocked in ipairs(blockedurls) do
            if string.find(options.Url, blocked) then
                warn('[ratAPI] Blocked IP Grabber request to URL:', options.Url)
                return { Body = 'Protected' }
            end
        end
    end

    return oldRequest(options)
end

local originalRequest = getgenv().request or function(options) return nil end

getgenv().request = function(options)
    if options.Headers then
        options.Headers["User-Agent"] = "ratAPI/RobloxApp/1.4"
    else
        options.Headers = {["User-Agent"] = "ratAPI/RobloxApp/1.4"}
    end

    return originalRequest(options)
end
