Player = GetPlayerIndex()
Invincible = false


function GodMode ()
    if Invincible == false then
        Invincible = true
        SetPlayerInvincible(Player,Invincible)
        lib.notify({title = 'God Mode',
            description = 'God Mode is On',
            type = 'success'})
        print(Invincible)
    else
        Invincible = false
        SetPlayerInvincible(Player,Invincible)
        lib.notify({title = 'God Mode',
            description = 'God Mode is Off',
            type = 'success'})
    end
end

RegisterCommand('admin', function()
    lib.showMenu('adminmenu')
end)