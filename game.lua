local M = {}
local scene_handler = require('scene')

-- after the game is loaded, or a new game is created, this function is called
function M.start()
    while true do
        os.execute('cls')
        local should_continue = scene_handler.scene_load(Current)
        if (should_continue == false) then break
        else
            local command = M.handle_scene_end()
            if (command == 'continue') then Current = Current + 1 end
            if (command == 'save') then print('saved') break end
            if (command == 'quit without saving') then break end
        end
    end
end

function M.handle_scene_end()
    local command = ""
    while not (command == 'continue' or command == 'save' or command == 'quit without saving') do
        io.write('\nPossible actions: continue, save, or quit without saving \n\nType your next action \n> ')
        command = io.read()
        os.execute('cls')
    end
    return command
end

return M
