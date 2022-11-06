
local scenes <const> = {
    ['scene_1'] = function()
        print('\27[32;1mJoana:\27[m Qual é o seu nome mesmo?')
        print('hum...')
        io.write('\27[32;1mJoana:\27[m Qual é o seu nome mesmo? \n> ')
        _G.nome = io.read()
        return true;
    end,
    ['scene_2'] = function()
        print('\27[32;1mJoana:\27[m O '..nome)
        return false;
    end
}

local M <const> = {}

function M.scene_load(current)
    local should_continue = scenes['scene_' .. current]() or false
    return should_continue
end

return M