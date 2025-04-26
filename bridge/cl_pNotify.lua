local function pNotifyToLibNotify(options)
    options.animation = options.animation or {}
    options.sounds = options.sounds or {}
    options.docTitle = options.docTitle or {}

    lib.notify({
        title = options.title or "Notification",
        description = options.text or "Empty Notification",
        type = options.type or "info",
        duration = options.timeout or 5000,
        position = options.layout or "topRight",
        style = options.style or {},
        icon = options.icon or nil,
        progress = options.progressBar ~= false,
        queue = options.queue or "global",
        theme = options.theme or "default",
        animation = {
            in = options.animation.open or "fadeIn",
            out = options.animation.close or "fadeOut"
        },
        sound = options.sounds.sources and #options.sounds.sources > 0,
        iconRight = options.iconRight or false,
        scale = options.scale or 1,
        closeButton = options.closeButton ~= false,
    })
end

-- Export
exports('SendNotification', function(options)
    pNotifyToLibNotify(options)
end)

-- Event
RegisterNetEvent('pNotify:SendNotification', function(options)
    pNotifyToLibNotify(options)
end)
