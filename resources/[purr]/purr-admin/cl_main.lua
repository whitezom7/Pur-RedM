local Player = GetPlayerIndex()
local godmode = false


function GodMode()
    godmode = not godmode
    local modeText = godmode and "On" or "Off"
    
    SetPlayerInvincible(Player, godmode)

    lib.notify({
        title = 'God Mode',
        description = 'God Mode is ' .. modeText,
        type = 'success'
    })
end

RegisterCommand('admin', function()
    lib.showMenu('adminmenu')
end)