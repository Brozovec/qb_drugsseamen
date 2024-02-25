QBCore = exports["qb-core"]:GetCoreObject()


RegisterServerEvent('seamen:getitem')
AddEventHandler('seamen:getitem' ,function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('weed_seed', math.random(1, 3))
end)

RegisterServerEvent('nwrp_drugalle:callpd')
AddEventHandler('nwrp_drugalle:callpd' ,function()
   if math.random(1, 100) <= 20 then
    TriggerClientEvent('cd_dispatch:AddNotification', -1, {
        job_table = {'police', 'sheriff'},
        coords = vector3(2349.59, 2557.28, 46.67),
        title = '10-65 Neoprávněný vstup na cizí pozemek',
        message = 'Byl nahlášen vstup na cizí pozemek', 
        flash = 0,
        unique_id = tostring(math.random(0000000,9999999)),
        sound = 1,
        blip = {
            sprite = 431,
            scale = 1.2,
            colour = 3,
            flashes = false,
            text = '911 - Tresspassing',           
            time = 5,
            radius = 0,
        }
    })
    
    end
end)
    


RegisterServerEvent('sberlog')
AddEventHandler('sberlog' ,function()
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local ped = GetPlayerPed(_source)
    local playerpos = GetEntityCoords(ped)
    local identif = exports['nwrp_core']:GetIdentifiers(_source)
    local Bname = 'Ukradl semínka'
    local Adminmessage

        Adminmessage = '**Hráč:** '..GetPlayerName(_source)..' || job: '..xPlayer.PlayerData.job.name..' ||'
        Adminmessage = Adminmessage..'\n\n**Pozice hráče:** '..playerpos


        Adminmessage = Adminmessage..'\n\n**Hex-ID:** '..identif.steam
        Adminmessage = Adminmessage..'\n**License:** '..identif.license
        Adminmessage = Adminmessage..'\n**Discord ID:** '..identif.discord
        Adminmessage = Adminmessage..'\n**IP:** '..identif.ip
        Adminmessage = Adminmessage..'\n\n*Testovací verze*'

        TriggerEvent('nwrp_core:boxLog', Bname, Adminmessage, 'https://discord.com/api/webhooks/1126274671764062218/EYAEeoh1rpUBkuwJkG3K22LceXxRJHAuZaYgzMaxH-pGb5SrBRcpz0bKI26Y0ww2ezSu', '3158326')


end)