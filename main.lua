local scene_handler = require('scene')
local current = 1

while true do
    local should_continue = scene_handler.scene_load(current)
    if (should_continue == false) then break
    else current = current + 1 end
end

-- os.execute()
