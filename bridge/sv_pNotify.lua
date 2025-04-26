-- Export
exports('SendNotification', function(target, options)
    if not target or type(target) ~= 'number' then
        print('[notify-bridge] Invalid target specified for notification (pNotify)')
        return
    end

    TriggerClientEvent('pNotify:SendNotification', target, options)
end)

-- Event
RegisterNetEvent('pNotify:SendNotificationServer')
AddEventHandler('pNotify:SendNotificationServer', function(target, options)
    if source == '' then return end -- Safety check
    if not target or type(target) ~= 'number' then
        print('[notify-bridge] Invalid target specified for server event notification (pNotify)')
        return
    end

    TriggerClientEvent('pNotify:SendNotification', target, options)
end)
