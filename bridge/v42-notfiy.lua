exports('notify', function(text, texttype, length)
    lib.notify({
        title = "Notification", -- v42-notify scheint kein eigenes Title zu haben, deswegen nehmen wir den Typ
        description = text or "",
        type = texttype or "info",           -- success, error, info, warning, etc.
        duration = length or 5000,           -- time in ms
        position = 'topRight',               -- kannst du anpassen, v42-notify definiert das nicht extra
    })
end)
