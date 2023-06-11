local Player = GetPlayerIndex()
local godmode = false


function GodMode ()
    if godmode == false then
        godmode = true
        SetPlayerInvincible(Player,godmode)
        lib.notify({title = 'God Mode',
            description = 'God Mode is On',
            type = 'success'})
    else
        godmode = false
        SetPlayerInvincible(Player,godmode)
        lib.notify({title = 'God Mode',
            description = 'God Mode is Off',
            type = 'success'})
    end
end

RegisterCommand('admin', function()
    lib.showMenu('adminmenu')
end)