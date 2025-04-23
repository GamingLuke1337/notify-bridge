exports('SendNotification', function(data)
    lib.notify({
        title = data.title or "Notification",
        description = data.text or "",
        type = data.type or "inform",
        duration = data.timeout or 5000,
        icon = data.icon,
        position = "top-left",
        style = data.style or {},
        progressBar = data.progressBar or false,
        queue = data.queue or "global",
        theme = data.theme or "default",
        animation = data.animation or {in_ = "fadeIn", out_ = "fadeOut"},
        iconRight = data.iconRight,
        sound = data.sound or "default",
        scale = data.scale or 1,
        timeout = data.timeout or 5000,
        closeButton = data.closeButton or false,
    })
end)
