local fakeIdentity = 6 

local function getidentity()
    return fakeIdentity
end

getgenv().getidentity = getidentity
getgenv().Level = getidentity
