ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject'; function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('cdev_weste:bproof')
AddEventHandler('cdev_weste:bproof', function()

    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral-a'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(1000)
    ClearPedTask(playerPed)

    SetPedArmour(playerPed, 100)
    TriggerEvent('skinchanger:change', 'bproof_1', 15)

end)