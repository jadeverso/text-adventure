_G.Name = "Default"
_G.Backpack = {
    ['Flashlight'] = true,
}

local scenes <const> = {
    ['scene_1'] = function()
        print(
            [[
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec justo quam, fermentum eu vulputate et, sollicitudin in lorem. Morbi nec nunc volutpat, dignissim tellus non, vulputate nisi. Mauris bibendum metus dui, non dictum arcu interdum eu. Vivamus hendrerit libero mi, vitae accumsan est feugiat ac. Aenean convallis nibh gravida tempor facilisis. Donec mollis purus id lorem fermentum posuere. Fusce vel erat porta, tristique quam quis, mattis est. Pellentesque hendrerit commodo congue. Praesent in luctus neque. Suspendisse libero ligula, lobortis ut finibus vel, condimentum maximus diam.  

Duis volutpat enim eget metus tristique facilisis. Maecenas bibendum metus in pulvinar pretium.

]]
            ..
            '\27[32;1mJoana:\27[m '
            ..
            [[
Seu nome, por favor?]]
        )
        io.write('\n> ')
        Name = io.read()
        return true;
    end,
    ['scene_2'] = function()
        
        if (Backpack['Flashlight']) then
            print('You have a flashlight.')
        end

        print('\27[32;1mJoana:\27[m O ' .. Name)
        return true;
    end,
    ['scene_3'] = function()
        print('\27[32;1mJoana:\27[m '
            ..
            [[
Encerrou o jogo]]
        )
        return false;
    end,
}

local M <const> = {}

function M.scene_load(current)
    local should_continue = scenes['scene_' .. current]() or false
    return should_continue
end

return M
