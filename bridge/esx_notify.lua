if not Config.Framework == 'ESX' then return end
ESX = exports['es_extended']:getSharedObject()
local Debug = ESX.GetConfig().EnableDebug

---@param notificationType string the type of notification ("info", "success", "error", etc.)
---@param length number duration of the notification in milliseconds
---@param message any the message to display
local function Notify(notificationType, length, message)
    if Debug then
        print(("1 %s"):format(tostring(notificationType)))
        print(("2 %s"):format(tostring(length)))
        print(("3 %s"):format(message))
    end

    if type(notificationType) ~= "string" then
        notificationType = "info"
    end

    if type(length) ~= "number" then
        length = 3000
    end

    if Debug then
        print(("4 %s"):format(tostring(notificationType)))
        print(("5 %s"):format(tostring(length)))
        print(("6 %s"):format(message))
    end

    lib.notify({
        type = notificationType,
        duration = length,
        position = "top-left",
        description = message or "Notification",
    })
end

exports("Notify", Notify)
ESX.SecureNetEvent("ESX:Notify", Notify)

if Debug then
    RegisterCommand("oldnotify", function()
        ESX.ShowNotification("No Waypoint Set.", true, false, 140)
    end, false)

    RegisterCommand("notify", function()
        Notify("success", 3000, "You received ~br~ 1x ball~s~!")
    end, false)

    RegisterCommand("notify1", function()
        Notify("success", 3000, "Well ~g~Done~s~!")
    end, false)

    RegisterCommand("notify2", function()
        Notify("info", 3000, "Information Received")
    end, false)

    RegisterCommand("notify3", function()
        Notify("error", 3000, "You did something ~r~WRONG~s~!")
    end, false)
end
