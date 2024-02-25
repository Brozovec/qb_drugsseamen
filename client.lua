QBCore = exports["qb-core"]:GetCoreObject()
local Player = QBCore.Functions.GetPlayerData()
local jobName = Player.job.name



exports['qb-target']:AddCircleZone("sber1", vector3(2348.44, 2557.41, 47.37), 0.5, { -- The name has to be unique, the coords a vector3 as shown and the 1.5 is the radius which has to be a float value
  name = "sber", -- This is the name of the zone recognized by PolyZone, this has to be unique so it doesn't mess up with other zones
  debugPoly = false, -- This is for enabling/disabling the drawing of the box, it accepts only a boolean value (true or false), when true it will draw the polyzone in green
}, {
  options = { -- This is your options table, in this table all the options will be specified for the target to accept
    { -- This is the first table with options, you can make as many options inside the options table as you want
      num = 1, -- This is the position number of your option in the list of options in the qb-target context menu (OPTIONAL)
      type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
      event = "nwrp_drugallse:giveitem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
      icon = 'fas fa-cannabis', -- This is the icon that will display next to this trigger option
      label = 'Semínka', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
      targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
    }
  },
  distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})

exports['qb-target']:AddCircleZone("sber2", vector3(2349.64, 2559.74, 47.02), 0.5, { -- The name has to be unique, the coords a vector3 as shown and the 1.5 is the radius which has to be a float value
  name = "sbe2", -- This is the name of the zone recognized by PolyZone, this has to be unique so it doesn't mess up with other zones
  debugPoly = false, -- This is for enabling/disabling the drawing of the box, it accepts only a boolean value (true or false), when true it will draw the polyzone in green
}, {
  options = { -- This is your options table, in this table all the options will be specified for the target to accept
    { -- This is the first table with options, you can make as many options inside the options table as you want
      num = 1, -- This is the position number of your option in the list of options in the qb-target context menu (OPTIONAL)
      type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
      event = "nwrp_drugallse:giveitem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
      icon = 'fas fa-cannabis', -- This is the icon that will display next to this trigger option
      label = 'Semínka', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
      targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
    }
  },
  distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})

exports['qb-target']:AddCircleZone("sber3", vector3(2350.69, 2556.5, 47.13), 0.5, { -- The name has to be unique, the coords a vector3 as shown and the 1.5 is the radius which has to be a float value
  name = "sbe3", -- This is the name of the zone recognized by PolyZone, this has to be unique so it doesn't mess up with other zones
  debugPoly = false, -- This is for enabling/disabling the drawing of the box, it accepts only a boolean value (true or false), when true it will draw the polyzone in green
}, {
  options = { -- This is your options table, in this table all the options will be specified for the target to accept
    { -- This is the first table with options, you can make as many options inside the options table as you want
      num = 1, -- This is the position number of your option in the list of options in the qb-target context menu (OPTIONAL)
      type = "client", -- This specifies the type of event the target has to trigger on click, this can be "client", "server", "command" or "qbcommand", this is OPTIONAL and will only work if the event is also specified
      event = "nwrp_drugallse:giveitem", -- This is the event it will trigger on click, this can be a client event, server event, command or qbcore registered command, NOTICE: Normal command can't have arguments passed through, QBCore registered ones can have arguments passed through
      icon = 'fas fa-cannabis', -- This is the icon that will display next to this trigger option
      label = 'Semínka', -- This is the label of this option which you would be able to click on to trigger everything, this has to be a string
      targeticon = 'fas fa-eye', -- This is the icon of the target itself, the icon changes to this when it turns blue on this specific option, this is OPTIONAL
    }
  },
  distance = 2.5, -- This is the distance for you to be at for the target to turn blue, this is in GTA units and has to be a float value
})



RegisterNetEvent('nwrp_drugallse:giveitem')
  AddEventHandler('nwrp_drugallse:giveitem', function()
    TriggerServerEvent('nwrp_drugalle:callpd')
    print('ass')
 QBCore.Functions.Progressbar("task", "Bereš Semínko", 5000, false, true, {
  disableMovement = true,
  disableCarMovement = false,
  disableMouse = false,
  disableCombat = true,
}, {
  animDict = "mp_arresting",
  anim = "a_uncuff",
  flags = 49,
}, {}, {}, function() -- Done
  StopAnimTask(PlayerPedId(), "mp_arresting", "a_uncuff", 1.0)
  TriggerServerEvent('seamen:getitem')
  TriggerServerEvent('sberlog')
  QBCore.Functions.Notify('Utrhl si semínko')

end, function() -- Cancel
  StopAnimTask(PlayerPedId(), "mp_arresting", "a_uncuff", 1.0)
end)
end)
