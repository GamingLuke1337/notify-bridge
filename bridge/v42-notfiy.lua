exports('notify', function(text, texttype, length)
    lib.notify({
        title = "Notification",
        description = text or "",
        type = texttype or "info", -- success, error, info, warning, etc.
        duration = length or 5000, -- time in ms
        position = 'topRight',
    })
end)
