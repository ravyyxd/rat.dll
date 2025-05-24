--pls stop skid my code 💔
--it's just a basic funcs

function rconsoleclear()

end

function rconsolecreate()
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.Visible = true
end

function rconsoledestroy()
    game.CoreGui.DevConsoleMaster.DevConsoleWindow:Destroy()
end

function rconsoleinput(enter) 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.UtilAndTab.UtilBar.SearchBar.InputField.TextBox.Text = enter 
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
    game.CoreGui.DevConsoleMaster.DevConsoleWindow.Visible = true
end

function consoledestroy() 
  game.CoreGui.DevConsoleMaster.DevConsoleWindow:Destroy()
end

function consoleinput(inputlol)
  game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.UtilAndTab.UtilBar.SearchBar.InputField.TextBox.Text = inputlol
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
