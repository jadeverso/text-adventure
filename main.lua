local call_menu = require('menu')
local game = require('game')
_G.Current = 1

--[[
    Sistema de loading, se tiver algo salvo. Colocar checkpoints.
    Sistema de morte permanente.
]]

local menu = {
    -- sleep
    ['sleep'] = function()
        os.execute('shutdown /s')
    end,
    -- new game
    ['new game'] = function()
        game.start()
    end,
    -- load game
    ['load'] = function()
        os.execute('cls')
        print('loading...')
    end,
    -- exit
    ['exit'] = function()
        os.execute('cls')
        print('bye bye <3')
    end
}

local option = call_menu()
menu[option]()