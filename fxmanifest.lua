fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Gamingluke1337 github.com/GamingLuke1337'
description 'Bridge to lib.notify'
version '1.0.0'

client_scripts {
    'esx_notify.lua',
    'pNotify.lua',
    'okokNotify.lua'
}

shared_script '@ox_lib/init.lua'

exports {
    'Notify',
    'Alert',
    'SendNotification'
}

provides {
    'esx_notify',
    'pNotify',
    'okokNotify'
}
