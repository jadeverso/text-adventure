_G.Name = ""
_G.Backpack = {
    ['Wooden Sword'] = false,
    ['Axe'] = false,
    ['Coins'] = 0,
}

local scenes <const> = {
    ['scene_1'] = function()
        print(
[[
This is just a demo. You can insert any text you want here.

But wait... you see someone.

]]
..
'\27[31;1mRed Haired Girl:\27[m '
..
[[
Hello! Could you tell me your name?]]
        )

        while (string.len(Name) < 3 or string.len(Name) >=14) do
            io.write('\n> ')
            Name = io.read()
        end

        return true; -- continues the script
    end,
    ['scene_2'] = function()

        print(
'\27[31;1mRed Haired Girl:\27[m '
..
'Oh, '..Name..'! '
..
'What a good name! Here, it is dangerous to go alone. Take this!'
..
[[


*You obtained a wooden sword!*]]
        )

        Backpack['Wooden Sword'] = true

        return true;
    end,
    ['scene_3'] = function()
        
        if(Backpack['Wooden Sword']) then

            print(
[[
You have a cool sword.]]
            )

        else 
            print(
[[
You do not have a cool sword.]]
            )
        end

        return false; -- stops the script
    end,
}

local M <const> = {}

function M.scene_load(current)
    local should_continue = scenes['scene_' .. current]() or false
    return should_continue
end

return M
