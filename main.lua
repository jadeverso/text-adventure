local scene_handler = require('scene')
_G.Current = 1

--[[
    Sistema de loading, se tiver algo salvo. Colocar checkpoints.
    Sistema de morte permanente.
]]

local function handle_scene_end()
    local command = ""
    while not (command == 'continue' or command == 'save' or command == 'quit without saving') do
        io.write('\nPossible actions: continue, save, or quit without saving \n\nType your next action \n> ')
        command = io.read()
        os.execute('cls')
    end
    return command
end

while true do
    os.execute('cls')
    print(
        'You currently have '.._G.Backpack['Coins' or 0]..' coins'..'\n'
    )
    local should_continue = scene_handler.scene_load(Current)
    if (should_continue == false) then break
    else
        local command = handle_scene_end()
        if (command == 'continue') then Current = Current + 1 end
        if (command == 'save') then print('saved') break end
        if (command == 'quit without saving') then break end
    end
end

-- os.execute()
