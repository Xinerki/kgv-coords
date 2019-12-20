AddEventHandler('chatMessage', function(source, name, message)
	if message:sub(1, 7) == '/coords' then
		TriggerClientEvent('coords:receivecmd',source, name, message)
		CancelEvent()
	end
end)