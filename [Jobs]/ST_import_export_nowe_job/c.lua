colshapesVeh = {}
vehicle = {}
infoOrganization = {}
vehicle3D = {}
myObject = {}
guiWindowObj = {}
addEvent("showMarkerGarageOrg", true)
addEventHandler("showMarkerGarageOrg", root, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ ~= localPlayer then
    return
  end
  setTimer(function()
    markerENTER = createMarker(_UPVALUE0_[1], _UPVALUE0_[2], _UPVALUE0_[3] - 0.9, "cylinder", 3.5, _UPVALUE1_[1], _UPVALUE1_[2], _UPVALUE1_[3], 255)
    markerEXIT = createMarker(872.7, 3976.23, 503.5, "cylinder", 4, _UPVALUE1_[1], _UPVALUE1_[2], _UPVALUE1_[3], 255)
    setElementDimension(markerEXIT, _UPVALUE2_)
    spawnVehicleInterior()
    obiectRanking = createObject(3077, 866.19, 3973.36, 503.4, 0, 0, 0)
    setElementDimension(obiectRanking, _UPVALUE2_)
    markerComputer = createMarker(878.95, 3974.19, 503.5, "cylinder", 1.5, _UPVALUE1_[1], _UPVALUE1_[2], _UPVALUE1_[3], 255)
    setElementDimension(markerComputer, _UPVALUE2_)
  end, 1000, 1)
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerENTER then
      if getElementData(_ARG_0_, "player:organization") then
        if getPedOccupiedVehicle(localPlayer) and getElementData(getPedOccupiedVehicle(localPlayer), "import_vehicle") then
          return
        end
        addEventHandler("onClientRender", root, window)
        windows.markerENTER = true
        textures = {
          cross = dxCreateTexture(":ST_gui/img/cross.png")
        }
        showCursor(true)
        triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showGuiOrganization")
        triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
      end
    elseif source == markerEXIT then
      for _FORV_5_, _FORV_6_ in ipairs(show_info_organization) do
        fadeCamera(false)
        setTimer(function()
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "enterExit", localPlayer, split(_UPVALUE0_.markerImport, ",")[1], split(_UPVALUE0_.markerImport, ",")[2], split(_UPVALUE0_.markerImport, ",")[3], 0)
          if not isElement(blip) and isEventHandlerAdded("onClientRender", root, ogloszenie) then
            removeEventHandler("onClientRender", root, renderGui3d)
            for _FORV_4_, _FORV_5_ in pairs(texturesRender) do
              if isElement(_FORV_5_) then
                destroyElement(_FORV_5_)
              end
            end
            textures = {}
          end
        end, 1500, 1)
        setTimer(function()
          fadeCamera(true)
        end, 3000, 1)
      end
    elseif source == markerComputer then
      if getPedOccupiedVehicle(localPlayer) then
        return
      end
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showGuiOrganization")
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        vehicles_icon = dxCreateTexture("img/vehicles_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
        ranking_icon = dxCreateTexture(":ST_taximeter_job/img/ranking_icon.png"),
        map_icon = dxCreateTexture("img/map_icon.png"),
        logs_icon = dxCreateTexture("img/logs_icon.png"),
        map = dxCreateTexture(":ST_dashboard/img/map.png"),
        settings_icon = dxCreateTexture(":ST_dashboard/img/settings_icon.png")
      }
      addEventHandler("onClientRender", root, window)
      windows.backgroundComputer = true
      windows.vehiclesComputer = true
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.mapComputer = false
      windows.settingsComputer = false
      showCursor(true)
      for _FORV_8_, _FORV_9_ in ipairs(table_vehicle_client) do
        if 0 + 1 > 3 then
        end
        vehicle3D[_FORV_9_[1]] = createVehicle(getElementModel(_FORV_9_[2]), 0, 0, 0)
        setElementCollisionsEnabled(vehicle3D[_FORV_9_[1]], false)
        myObject[_FORV_9_[1]] = exports.ST_object_preview:createObjectPreview(vehicle3D[_FORV_9_[1]], -5, 0, 140, windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom, false, true)
        setVehicleColor(vehicle3D[_FORV_9_[1]], getVehicleColor(_FORV_9_[2]))
      end
    end
  end
end)
function setMarker(_ARG_0_)
  if ustawil then
    exports.st_gui:showPlayerNotification("Ju\197\188 zmieni\197\130e\197\155 wjazd do magazynu", "error")
    return
  end
  ustawil = true
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "setMarker", localPlayer)
end
addCommandHandler("ustawmarker", setMarker)
function spawnVehicleInterior()
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showGuiOrganization")
  triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
  freeSlots = {
    {
      874.29,
      4010.7,
      505.35,
      0,
      0,
      90
    },
    {
      874.29,
      4007.57,
      505.35,
      0,
      0,
      90
    },
    {
      874.29,
      4004.35,
      505.35,
      0,
      0,
      90
    },
    {
      851.37,
      4010.7,
      505.35,
      0,
      0,
      -90
    },
    {
      851.37,
      4007.57,
      505.35,
      0,
      0,
      -90
    },
    {
      851.37,
      4004.35,
      505.35,
      0,
      0,
      -90
    }
  }
  table_vehicle_client = {}
  setTimer(function()
    for _FORV_3_, _FORV_4_ in ipairs(show_vehicles_organization) do
      freeSlot = false
      for _FORV_8_, _FORV_9_ in pairs(freeSlots) do
        if isElement(colshapesVeh[_FORV_4_.id]) then
          destroyElement(colshapesVeh[_FORV_4_.id])
        end
        if isElement(vehicle[_FORV_4_.id]) then
          destroyElement(vehicle[_FORV_4_.id])
        end
        isFree = true
        for _FORV_13_, _FORV_14_ in pairs(getElementsByType("vehicle")) do
          x, y, z = getElementPosition(_FORV_14_)
          for _FORV_19_, _FORV_20_ in ipairs(show_info_organization) do
            if getElementDimension(_FORV_14_) == _FORV_20_.id and 2 > getDistanceBetweenPoints3D(_FORV_9_[1], _FORV_9_[2], _FORV_9_[3], x, y, z) and isFree then
              isFree = false
            end
          end
        end
        if isFree then
          freeSlot = _FORV_9_
        end
      end
      if freeSlot then
        vehicle[_FORV_4_.id] = createVehicle(_FORV_4_.model, freeSlot[1], freeSlot[2], freeSlot[3], freeSlot[4], freeSlot[5], freeSlot[6])
        colshapesVeh[_FORV_4_.id] = createColSphere(freeSlot[1], freeSlot[2], freeSlot[3], 3.3)
        addEventHandler("onClientColShapeHit", colshapesVeh[_FORV_4_.id], function(_ARG_0_, _ARG_1_)
          if _ARG_0_ == localPlayer and _ARG_1_ then
            if windows.background == true then
              return
            end
            if costTuning then
              exports.st_gui:showPlayerNotification("Zaczekaj, a\197\188 pojazd si\196\153 stuninguje / naprawi", "error")
              return
            end
            if not _UPVALUE0_.id then
              return
            end
            for _FORV_7_, _FORV_8_ in ipairs(show_info_organization) do
              if getElementDimension(source) == _FORV_8_.id and getElementDimension(localPlayer) == _FORV_8_.id then
              end
            end
            vehicleID = _UPVALUE0_.id
            textures = {
              background = dxCreateTexture(":ST_gui/img/background2.png"),
              off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
              vehicles_icon = dxCreateTexture("img/vehicles_icon.png"),
              improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png")
            }
            triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
            addEventHandler("onClientRender", root, window)
            windows.vehicle = true
            windows.background = true
            windows.tuning = false
            showCursor(true)
            if vehicleID == _UPVALUE0_.id then
              if _UPVALUE0_.engine_health == 1000 then
                naprawaActive = 1
              elseif _UPVALUE0_.engine_health > 650 then
                naprawaActive = 15
              else
                naprawaActive = 0
              end
              vehTuning = {
                {
                  name = "Naprawa",
                  cost = 10000,
                  active = naprawaActive
                },
                {
                  name = "US1",
                  cost = 20000,
                  active = tonumber(_UPVALUE0_.us1)
                },
                {
                  name = "US2",
                  cost = 25000,
                  active = tonumber(_UPVALUE0_.us2)
                },
                {
                  name = "US3",
                  cost = 30000,
                  active = tonumber(_UPVALUE0_.us3)
                },
                {
                  name = "TURBO",
                  cost = 30000,
                  active = tonumber(_UPVALUE0_.turbo)
                },
                {
                  name = "Trakcja WRX03",
                  cost = 15000,
                  active = tonumber(_UPVALUE0_.trakcja)
                },
                {
                  name = "Silnik 3.0 V8",
                  cost = 60000,
                  active = tonumber(_UPVALUE0_.silnik)
                },
                {
                  name = "Gwintowane zawieszenie",
                  cost = 15000,
                  active = tonumber(_UPVALUE0_.gwint)
                }
              }
            end
          end
        end)
        addEventHandler("onClientColShapeLeave", colshapesVeh[_FORV_4_.id], function(_ARG_0_, _ARG_1_)
          if _ARG_0_ == localPlayer and _ARG_1_ then
            removeEventHandler("onClientRender", root, window)
            windows.vehicle = false
            windows.background = false
            windows.tuning = false
            showCursor(false)
            for _FORV_5_, _FORV_6_ in pairs(textures) do
              if isElement(_FORV_6_) then
                destroyElement(_FORV_6_)
              end
            end
            textures = {}
          end
        end)
        setVehicleColor(vehicle[_FORV_4_.id], split(_FORV_4_.color, ",")[1], split(_FORV_4_.color, ",")[2], split(_FORV_4_.color, ",")[3], split(_FORV_4_.color, ",")[4], split(_FORV_4_.color, ",")[5], split(_FORV_4_.color, ",")[6], split(_FORV_4_.color, ",")[7], split(_FORV_4_.color, ",")[8], split(_FORV_4_.color, ",")[9], split(_FORV_4_.color, ",")[10], split(_FORV_4_.color, ",")[11], split(_FORV_4_.color, ",")[12])
        setElementHealth(vehicle[_FORV_4_.id], _FORV_4_.engine_health)
        setVehicleDoorState(vehicle[_FORV_4_.id], 0, tonumber(split(_FORV_4_.doorstate, ",")[1]))
        setVehicleDoorState(vehicle[_FORV_4_.id], 1, tonumber(split(_FORV_4_.doorstate, ",")[2]))
        setVehicleDoorState(vehicle[_FORV_4_.id], 2, tonumber(split(_FORV_4_.doorstate, ",")[3]))
        setVehicleDoorState(vehicle[_FORV_4_.id], 3, tonumber(split(_FORV_4_.doorstate, ",")[4]))
        setVehicleDoorState(vehicle[_FORV_4_.id], 4, tonumber(split(_FORV_4_.doorstate, ",")[5]))
        setVehicleDoorState(vehicle[_FORV_4_.id], 5, tonumber(split(_FORV_4_.doorstate, ",")[6]))
        for _FORV_10_, _FORV_11_ in ipairs(show_info_organization) do
          setElementDimension(vehicle[_FORV_4_.id], _FORV_11_.id)
          setElementDimension(colshapesVeh[_FORV_4_.id], _FORV_11_.id)
        end
        setTimer(function()
          setElementFrozen(vehicle[_UPVALUE0_.id], true)
        end, 4000, 1)
        costVehicles = _FORV_4_.cost
        if _FORV_4_.engine_health == 1000 then
          costVehicles = costVehicles + 15000
        end
        if tonumber(_FORV_4_.us1) == 1 then
          costVehicles = costVehicles + 25000
        end
        if tonumber(_FORV_4_.us2) == 1 then
          costVehicles = costVehicles + 32000
        end
        if tonumber(_FORV_4_.us3) == 1 then
          costVehicles = costVehicles + 36000
        end
        if tonumber(_FORV_4_.turbo) == 1 then
          costVehicles = costVehicles + 37000
        end
        if tonumber(_FORV_4_.trakcja) == 1 then
          costVehicles = costVehicles + 20000
        end
        if tonumber(_FORV_4_.silnik) == 1 then
          costVehicles = costVehicles + 70000
        end
        if tonumber(_FORV_4_.gwint) == 1 then
          costVehicles = costVehicles + 20000
        end
        table.insert(table_vehicle_client, {
          _FORV_4_.id,
          vehicle[_FORV_4_.id],
          costVehicles,
          false
        })
      end
    end
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createRanking", localPlayer)
    costTuning = false
    for _FORV_3_, _FORV_4_ in ipairs(show_info_organization) do
      infoOrganization.id = _FORV_4_.id
      infoOrganization.color = {
        split(_FORV_4_.color, ",")[1],
        split(_FORV_4_.color, ",")[2],
        split(_FORV_4_.color, ",")[3]
      }
    end
  end, 600, 1)
end
spawnVehicleInterior()
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showMarkerMagazine" then
    if isElement(blip) then
      destroyElement(blip)
    end
    selfTarget = {}
    setTimer(function()
      addEventHandler("onClientRender", root, renderGui3d)
      texturesRender = {
        vehicles_icon = dxCreateTexture("img/vehicles_icon.png"),
        finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png")
      }
      for _FORV_3_, _FORV_4_ in ipairs(show_info_organization) do
        selfTarget.pos = {
          split(_FORV_4_.markerImport, ",")[1],
          split(_FORV_4_.markerImport, ",")[2],
          split(_FORV_4_.markerImport, ",")[3]
        }
        selfTarget.color = {
          split(_FORV_4_.color, ",")[1],
          split(_FORV_4_.color, ",")[2],
          split(_FORV_4_.color, ",")[3]
        }
        selfTarget.text = "ABY SCHOWA\196\134 POJAZD KLIKNIJ"
        blip = createBlip(split(_FORV_4_.markerImport, ",")[1], split(_FORV_4_.markerImport, ",")[2], split(_FORV_4_.markerImport, ",")[3], 41, 2, 0, 0, 0, 0, 0, 9999)
      end
    end, 1000, 1)
  elseif _ARG_0_ == "deleteMarkerMagazine" then
    if isElement(blip) then
      destroyElement(blip)
    end
    selfTarget = {}
    removeEventHandler("onClientRender", root, renderGui3d)
    for _FORV_8_, _FORV_9_ in pairs(texturesRender) do
      if isElement(_FORV_9_) then
        destroyElement(_FORV_9_)
      end
    end
    textures = {}
  elseif _ARG_0_ == "showGuiOrganizationClient" then
    show_info_organization = _ARG_1_
  elseif _ARG_0_ == "showVehiclesInteriorClient" then
    show_vehicles_organization = _ARG_1_
  elseif _ARG_0_ == "showMarkerGarageOrg1" then
    if isElement(markerENTER) then
      destroyElement(markerENTER)
    end
    if isElement(markerEXIT) then
      destroyElement(markerEXIT)
    end
    if isElement(markerComputer) then
      destroyElement(markerComputer)
    end
    triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showGuiOrganization")
    setTimer(function()
      for _FORV_3_, _FORV_4_ in ipairs(show_info_organization) do
        markerENTER = createMarker(_UPVALUE0_[1], _UPVALUE0_[2], _UPVALUE0_[3] - 0.9, "cylinder", 3.5, split(_FORV_4_.color, ",")[1], split(_FORV_4_.color, ",")[2], split(_FORV_4_.color, ",")[3], 255)
        markerEXIT = createMarker(872.7, 3976.23, 503.5, "cylinder", 4, split(_FORV_4_.color, ",")[1], split(_FORV_4_.color, ",")[2], split(_FORV_4_.color, ",")[3], 255)
        setElementDimension(markerEXIT, _FORV_4_.id)
        markerComputer = createMarker(878.95, 3974.19, 503.5, "cylinder", 1.5, split(_FORV_4_.color, ",")[1], split(_FORV_4_.color, ",")[2], split(_FORV_4_.color, ",")[3], 255)
        setElementDimension(markerComputer, _FORV_4_.id)
        obiectRanking = createObject(3077, 866.19, 3973.36, 503.4, 0, 0, 0)
        setElementDimension(obiectRanking, _FORV_4_.id)
      end
    end, 500, 1)
  elseif _ARG_0_ == "showMarkerExport" then
    if isElement(blip) then
      destroyElement(blip)
    end
    selfTarget = {}
    for _FORV_8_, _FORV_9_ in ipairs(show_info_organization) do
      selfTarget.pos = {
        positionExport[math.random(1, #positionExport)][1],
        positionExport[math.random(1, #positionExport)][2],
        positionExport[math.random(1, #positionExport)][3]
      }
      selfTarget.color = {
        split(_FORV_9_.color, ",")[1],
        split(_FORV_9_.color, ",")[2],
        split(_FORV_9_.color, ",")[3]
      }
      selfTarget.text = "ABY SPRZEDA\196\134 POJAZD KLIKNIJ"
      blip = createBlip(positionExport[math.random(1, #positionExport)][1], positionExport[math.random(1, #positionExport)][2], positionExport[math.random(1, #positionExport)][3], 41, 2, 0, 0, 0, 0, 0, 9999)
    end
  elseif _ARG_0_ == "spawnVehicleInterior" then
    if isElement(vehicle[_ARG_1_]) then
      destroyElement(vehicle[_ARG_1_])
    end
    if isElement(colshapesVeh[_ARG_1_]) then
      destroyElement(colshapesVeh[_ARG_1_])
    end
    spawnVehicleInterior()
  elseif _ARG_0_ == "spawnVehicleInterior1" then
    spawnVehicleInterior()
  elseif _ARG_0_ == "reloadVehicleClient" then
    for _FORV_8_, _FORV_9_ in ipairs(table_vehicle_client) do
      for _FORV_13_, _FORV_14_ in ipairs(show_vehicles_organization) do
        if _FORV_9_[1] == _ARG_1_ and _FORV_9_[1] == _FORV_14_.id then
          costVehicles = _FORV_14_.cost
          if _FORV_14_.engine_health == 1000 then
            costVehicles = costVehicles + 15000
          end
          if tonumber(_FORV_14_.us1) == 1 then
            costVehicles = costVehicles + 25000
          end
          if tonumber(_FORV_14_.us2) == 1 then
            costVehicles = costVehicles + 32000
          end
          if tonumber(_FORV_14_.us3) == 1 then
            costVehicles = costVehicles + 36000
          end
          if tonumber(_FORV_14_.turbo) == 1 then
            costVehicles = costVehicles + 37000
          end
          if tonumber(_FORV_14_.trakcja) == 1 then
            costVehicles = costVehicles + 20000
          end
          if tonumber(_FORV_14_.silnik) == 1 then
            costVehicles = costVehicles + 70000
          end
          if tonumber(_FORV_14_.gwint) == 1 then
            costVehicles = costVehicles + 20000
          end
          table_vehicle_client[_FORV_8_][3] = costVehicles
          table_vehicle_client[_FORV_8_][4] = false
          setElementHealth(vehicle[_ARG_1_], _FORV_14_.engine_health)
          setVehicleDoorState(vehicle[_ARG_1_], 0, tonumber(split(_FORV_14_.doorstate, ",")[1]))
          setVehicleDoorState(vehicle[_ARG_1_], 1, tonumber(split(_FORV_14_.doorstate, ",")[2]))
          setVehicleDoorState(vehicle[_ARG_1_], 2, tonumber(split(_FORV_14_.doorstate, ",")[3]))
          setVehicleDoorState(vehicle[_ARG_1_], 3, tonumber(split(_FORV_14_.doorstate, ",")[4]))
          setVehicleDoorState(vehicle[_ARG_1_], 4, tonumber(split(_FORV_14_.doorstate, ",")[5]))
          setVehicleDoorState(vehicle[_ARG_1_], 5, tonumber(split(_FORV_14_.doorstate, ",")[6]))
        end
      end
    end
  elseif _ARG_0_ == "reloadUpgradesIE" then
    show_info_organization = _ARG_1_
    for _FORV_9_, _FORV_10_ in ipairs(show_info_organization) do
      upgrades = {
        {
          name = "Teleportacja",
          description = "Po oddaniu pojazdu dostajesz mo\197\188liwo\197\155\196\135\nteleportacji do magazynu",
          price = 3000000,
          icon = textures.condition_icon,
          status = _FORV_10_.ulepszenieIE_teleportacja,
          nameDatabase = "ulepszenieIE_teleportacja"
        }
      }
    end
  elseif _ARG_0_ == "createRankingClient" then
    users = {}
    totalmoney = 0
    maxEarn = 0
    minEarn = 99999999
    for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
      totalmoney = totalmoney + tonumber(_FORV_9_.exp_import)
      if maxEarn < tonumber(_FORV_9_.exp_import) then
        maxEarn = tonumber(_FORV_9_.exp_import)
      elseif minEarn > tonumber(_FORV_9_.exp_import) then
        minEarn = tonumber(_FORV_9_.exp_import)
      end
      table.insert(users, {
        _FORV_9_.id,
        _FORV_9_.nazwa,
        _FORV_9_.exp_import,
        totalmoney,
        maxEarn
      })
    end
    setTimer(function()
      renderRanking(users)
    end, 100, 1)
  elseif _ARG_0_ == "rankingComputerClient" then
    earnDiagram = {
      maxEarn = 0,
      minEarn = 99999999999,
      totalmoney = 0
    }
    earnData = {}
    for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
      table.insert(earnData, {
        totalmoney = tonumber(_FORV_9_.zarobek_import),
        nick = _FORV_9_.login
      })
      earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_9_.zarobek_import)
      if earnDiagram.maxEarn < tonumber(_FORV_9_.zarobek_import) then
        earnDiagram.maxEarn = tonumber(_FORV_9_.zarobek_import)
      elseif earnDiagram.minEarn > tonumber(_FORV_9_.zarobek_import) then
        earnDiagram.minEarn = tonumber(_FORV_9_.zarobek_import)
      end
    end
  elseif _ARG_0_ == "buyMapClient" then
    kupilMape = true
    dxSetTextureEdge(textures.map, "border", tocolor(110, 158, 204, 255))
    exports.st_gui:showPlayerNotification("Pomy\197\155lnie zakupiono map\196\153 porzuconych pojazd\195\179w", "success")
  elseif _ARG_0_ == "showInfoUsersClient" then
    selectInfoUsers_table = {}
    selectInfoUsers_table = _ARG_1_
  elseif _ARG_0_ == "showLogsIEClient" then
    showLogsIE_table = {}
    showLogsIE_table = _ARG_1_
  end
end)
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
function table.removeValue(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_[1] == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return _FORV_5_
    end
  end
  return false
end
getResourceName(getThisResource(), true, 778982935)
return
