exports('Alert', function(title, message, time, type, playSound)
    local typeMapping = {
        success = "success",
        info = "info",
        warning = "warning",
        error = "error",
        phonemessage = "info",
        neutral = "info",
    }

    local notifyType = typeMapping[type] or "info"

    lib.notify({
        title = title or "Notification",
        position = 'top-left',
        description = message or "",
        type = notifyType,
        duration = time or 5000,
        sound = playSound or false,
    })
end)
