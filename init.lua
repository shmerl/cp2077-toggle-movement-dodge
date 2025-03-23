local GameSettings = require('modules/GameSettings')

local ToggleMovementDodge = {
    movement_dodge_setting = '/controls/MovementDodge'
}

function ToggleMovementDodge:new()
    registerInput('ToggleMovementDodge', 'Toggle dodge on movement keys', function(keypress)
        if not keypress then
            return
        end

        GameSettings.Toggle(self.movement_dodge_setting)
    end)

    return self
end

return ToggleMovementDodge:new()
