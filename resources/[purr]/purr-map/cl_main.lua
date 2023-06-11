
SetMinimapHideFow(true)


SetPlayerInvincible(Player, true)
print(Player)










function UnGod ()
    SetPlayerInvincible(Player, false)
    print("You are now vincible!")
end

RegisterCommand("godmode", GodMode, false)
