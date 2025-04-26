fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Gamingluke1337 github.com/GamingLuke1337'
description 'Bridge to lib.notify'
version '1.0.0'

server_script 'bridge/update.lua'

shared_scripts {
    '@ox_lib/init.lua',
    'bridge/v42_notify',
    'bridge/esx_notify.lua',
    'bridge/pNotify.lua',
    'bridge/okokNotify.lua',
    'config.lua'
}

exports {
    'Notify',
    'Alert',
    'SendNotification',
    'SetQueueMax',
    'notify'
}

provides {
    'esx_notify',
    'pNotify',
    'okokNotify',
    'v42_notify'
}

dependency 'ox_lib'
