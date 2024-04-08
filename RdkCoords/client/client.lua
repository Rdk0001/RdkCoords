CreateThread(function()
    while true do

        SendNUIMessage({
            action = 'draw-position',
            position = GetEntityCoords(PlayerPedId())

        })
        Wait(0)
    end
end)

function CloseInstance()
    SetNUIFocus(false, false)
    SendNUIMessage({
        action = 'hide'
    })
end

RegisterCommand("coords", function()
    SetNUIFocus(true, false)
    CloseInstance()
    SendNUIMessage({
        action = 'show'
    })
end)

print("[+] RDK Coords ")