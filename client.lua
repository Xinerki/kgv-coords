local function Notification(text,duration)
    Citizen.CreateThread(function()
        SetNotificationTextEntry("STRING")
        AddTextComponentString(text)
        local Notification = DrawNotification(true, true)
        Citizen.Wait(duration)
        RemoveNotification(Notification)
    end)
end

RegisterNetEvent('coords:receivecmd')

AddEventHandler('coords:receivecmd', function(name, message)
	if GetPlayerName(source) ~= GetPlayerName(-1) then return end
	local pos=GetEntityCoords(GetPlayerPed(-1),0)
	local x = pos.x
	local y = pos.y
	local z = pos.z
	local rot = GetEntityRotation(GetPlayerPed(-1),0).z
	Notification("Also shown on Console.", 1000*10)
	Notification("Your coordinates: ~b~\nX: "..tostring(math.floor(x*20)/20).." \nY: "..tostring(math.floor(y*20)/20).." \nZ: "..tostring(math.floor(z*20)/20).." \nRotation: "..tostring(math.floor(rot*20)/20), 1000*10)
	Citizen.Trace("Your coordinates: \nX: "..tostring(math.floor(x*20)/20).." \nY: "..tostring(math.floor(y*20)/20).." \nZ: "..tostring(math.floor(z*20)/20).." \nRotation: "..tostring(math.floor(rot*20)/20).."\n")
end)