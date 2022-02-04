ESX	= nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)

RegisterCommand('discord', function(source, args, rawCommand) SendNUIMessage({ discord = "YOUR_DISCORD_INVITE"}) 
	ESX.ShowHelpNotification("You copied the discord invite!")
end)

--REPLACE "YOUR_DISCORD_INVITE"