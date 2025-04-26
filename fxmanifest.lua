fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Gamingluke1337 github.com/GamingLuke1337'
description 'Bridge to lib.notify'
version '1.0.0'

client_script 'bridge/cl_pNotify.lua'

server_scripts {
    'bridge/update.lua',
    'bridge/sv_pNotify.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
    'bridge/v42-notify',
    'bridge/esx_notify.lua',
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
    'v42-notify'
}

dependency 'ox_lib'
