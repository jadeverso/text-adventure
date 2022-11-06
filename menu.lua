
local description = [[A strange fog has rolled in to cover the landscape. Anyone who ventures into the fog, is never seen again.]]

local function call_menu()
   
    while true do

        os.execute('cls')
        local command = ""
        print(
'\27[5;1;36mLua Text Adventure\27[m\n'
..
[[
    Author: Pam
    GitHub: https://github.com/brataccas/text-adventure
    Date: 2022/11/06
    Genre: Fantasy
    Version: 0.0.1
    
]]
..
description
..'\n\n'..
'\27[5;1;36mMenu\27[m\n'..
[[
> Load
> New Game
> Exit
    
Run a command:]]
        )
        io.write('> ')
        command = string.lower(io.read())
        if( command == 'load' ) then return 'load' end
        if( command == 'new game' ) then return 'new game' end
        if (command == 'exit') then return 'exit' end
        if (command == 'sleep') then return 'sleep' end
    end

end

return call_menu