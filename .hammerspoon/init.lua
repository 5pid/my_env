require "apps"

require "windows-key-binding"
require "windows"

-------------------------------------------------------------------------------
-- reload configuration
-------------------------------------------------------------------------------
hs.hotkey.bind({"cmd", "shift", "ctrl"}, "R", function()
    hs.reload()
    print('config reloaded')
end)

hs.hotkey.bind({"cmd", "alt"}, "f12", function() os.execute("pmset displaysleepnow"); end)

-- for debug
local function print_table(t)
    for key, value in pairs(t) do
        print(value:name())
    end
end
hs.hotkey.bind({"cmd", "shift", "ctrl"}, "/", function() print_table(hs.application.runningApplications()); end )

-- start hammerspoon
hs.alert("Hammerspoon config loaded")
