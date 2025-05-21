--test funcs

-- local exploit_identitylvl = ...

-- function getthreadidentity()  
--    return exploit_identitylvl
-- end

-- function getidentity() 
--    return exploit_identitylvl
-- end

-- function getthreadcontext() 
--    return exploit_identitylvl
-- end

function setthreadidentity(lvl)
	if type(identity) ~= "number" then
		error("got identity = ".. lvl .."idk")
	end

	if (id > 7) then
		error("no")
	else
		identity = lvl
		printidentity = printidentity()
  else if lvl < 0 then
    print("uh.. what?")
  end
end

-- function printidentity
--   return exploit_identitylvl
-- end

-- function setthreadcontext(identity)
--   return exploit_identitylvl 
-- end

function printidentity()
	print("ok! done - current identity is" .. identity)
end
