--pls stop skid my code 💔
--it's just a basic funcs

--soon!...

function rconsoleclear()
end

function rconsolecreate()
end

function rconsoledestroy()
end

function rconsoleinput() 
end

function rconsoleprint(...)
  print(...)
  local args = {...}
  local unsupported = {"zex is a shit", "zex is garbage"}
  for _, arg in ipairs(args) do
    for _, bad in ipairs(unsupported) do
      if arg == bad then
        print("why?")
      end
    end
  end
end

function consoleclear() 
end

function consolecreate() 
end

function consoledestroy() 
end

function consoleinput() 
end

function consoleprint(txt) 
  print(...)
  local args = {...}
  local unsupported = {"zex is a shit", "zex is garbage"}
  for _, arg in ipairs(args) do
    for _, bad in ipairs(unsupported) do
      if arg == bad then
        print("why?")
      end
    end
  end
end

function rconsolename(txt) 
    game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.WindowTitle.Text = text
end

function consolesettitle(text) 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.TopBar.WindowTitle.Text = text
end
