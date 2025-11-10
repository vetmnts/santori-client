markerStartJob = createMarker(2232.37, 948.63, 10.19, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
sellingMarker = createMarker(2220.39, 931.71, 9.92, "cylinder", 3, 246, 255, 0, 255)
setElementPosition(createElement("text"), 2220.39, 931.71, 10.82)
setElementData(createElement("text"), "name", "Skup \197\155mieci")
smieciara = createVehicle(408, 2216.82, 927.58, 11.4, 0, 0, 140)
setElementFrozen(smieciara, true)
createBlip(2225.9, 946.46, 10.82, 46, 2, 0, 0, 0, 0, 0, 250)
modelsRubbish = {
  2840,
  2856,
  2821,
  2861,
  2866,
  2858,
  2867,
  926,
  928
}
objectOffsetsRubbish = {
  [2840] = 0.05,
  [2856] = 0.05,
  [2821] = 0.05,
  [2861] = 0.05,
  [2866] = 0.05,
  [2858] = 0.05,
  [2867] = 0.05,
  [926] = 0.1,
  [928] = 0.1
}
function endJobAll()
  triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "setElementPosition", localPlayer, {
    2227.61,
    950.02,
    10.82
  })
  exports.st_gui:showPlayerNotification([[
Zapisano dane
Papier: +]] .. selfInfoJob.paperSave .. "   Szk\197\130o: +" .. selfInfoJob.glassSave .. "   Plastik: +" .. selfInfoJob.plasticSave .. "", "info")
  triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "wages", localPlayer, {
    selfInfoJob.paperSave,
    selfInfoJob.plasticSave,
    selfInfoJob.glassSave,
    65437542
  })
  triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "plrJob", localPlayer, false)
  unbindKey("f")
  unbindKey("enter")
  windows.render = false
  removeEventHandler("onClientRender", root, windowXD)
  for _FORV_3_, _FORV_4_ in pairs(texturesTracking) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  texturesTracking = {}
  destroyPoints()
end
windows = {
  main = false,
  upgrades = false,
  background = false,
  endJob = false,
  saleKG = false
}
function startJob1()
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "createVehicle", localPlayer, _FORV_4_.ulepszenie_sweeper_sweeper)
  end
  bindKey("F", "down", exitGUI)
  bindKey("enter", "down", exitGUI)
  tick1 = getTickCount()
  tick = getTickCount()
  selfInfoJob = {}
  selfInfoJob.time = 0
  selfInfoJob.plasticKG = 0
  selfInfoJob.paperKG = 0
  selfInfoJob.glassKG = 0
  selfInfoJob.mileage = 0
  selfInfoJob.addPaper = ""
  selfInfoJob.addPlastic = ""
  selfInfoJob.addGlass = ""
  selfInfoJob.paperSave = 0
  selfInfoJob.plasticSave = 0
  selfInfoJob.glassSave = 0
  selfInfoJob.allKG = 0
  selfInfoJob.objects = {}
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    selfInfoJob.maxKG = _FORV_4_.ulepszenie_energiczny_sweeper
  end
  selfInfoJob.lastPos = Vector3(getElementPosition(localPlayer))
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == markerStartJob then
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      table_statistics = {}
      money = nil
      windows = {
        main = false,
        upgrades = false,
        background = false,
        endJob = false,
        saleKG = false
      }
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
        stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
        game_photo = dxCreateTexture("img/game_photo.png"),
        dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
        energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
        car_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/car_icon.png"),
        rubbish_icon = dxCreateTexture("img/rubbish_icon.png")
      }
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 8500,
          icon = textures.dolar_icon
        },
        {
          name = "Pojemno\197\155\196\135",
          description = "Potrafisz zebra\196\135 wi\196\153cej kg \197\155mieci",
          price = 3500,
          icon = textures.energy_icon
        },
        {
          name = "Ulepszony sweeper",
          description = "Otrzymujesz ulepszonego oraz szybszego sweepera",
          price = 5000,
          icon = textures.car_icon
        },
        {
          name = "Wi\196\153cej \197\155mieci",
          description = "Na twojej drodze pojawia si\196\153 wi\196\153cej \197\155mieci",
          price = 6500,
          icon = textures.rubbish_icon
        }
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      windows.background = true
      windows.main = true
      showCursor(true)
      setCursorAlpha(255)
    end
    if source == sellingMarker then
      table_statistics = {}
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      CzasZmiany = 1
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      if getElementData(localPlayer, "player:job") == "sweepery" then
        if getPedOccupiedVehicle(localPlayer) and getElementModel((getPedOccupiedVehicle(localPlayer))) == 574 then
          windows.landing = true
          selfInfoJob.landingSTART = false
        end
      else
        windows.saleKG = true
      end
      showCursor(true)
      table_stockExchange = {
        {
          glass = 0,
          glass2 = 0,
          glass3 = 0,
          glass4 = 0,
          glass5 = 0,
          glass6 = 1,
          plastic = 0,
          plastic2 = 0,
          plastic3 = 0,
          plastic4 = 0,
          plastic5 = 0,
          plastic6 = 1,
          paper = 0,
          paper2 = 0,
          paper3 = 0,
          paper4 = 0,
          paper5 = 0,
          paper6 = 1
        }
      }
      triggerServerEvent("evEwenciks_dsyrfjk", resourceRoot, "showStockExchange", localPlayer, getElementData(localPlayer, "player:sid"))
      graph.paperNumber = 0
      graph.glassNumber = 0
      graph.plasticNumber = 0
    end
  end
end)
function createNewPoints(_ARG_0_, _ARG_1_)
  destroyPoints()
  for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
    if _FORV_9_.ulepszenie_rubbish_sweeper == 1 then
      howManyPoints = math.random(2, 4)
    else
      howManyPoints = 2
    end
  end
  while #selfInfoJob.objects < howManyPoints and 0 <= howManyPoints * 2 do
    if getGroundPosition(getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_))) >= Vector3(getElementPosition(localPlayer)).z - 2 and getGroundPosition(getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_))) <= Vector3(getElementPosition(localPlayer)).z + 2 then
      setElementCollisionsEnabled(createObject(modelsRubbish[math.random(1, #modelsRubbish)], getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_))), false)
      setElementParent(createObject(modelsRubbish[math.random(1, #modelsRubbish)], getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_))), (createColSphere(getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_)))))
      setElementData(source, "modelID", modelsRubbish[math.random(1, #modelsRubbish)], false)
      table.insert(selfInfoJob.objects, (createColSphere(getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_)))))
      addEventHandler("onClientColShapeHit", createColSphere(getPointFromDistanceRotation(getPointFromDistanceRotation(_ARG_0_.x, _ARG_0_.y, 15, -_ARG_1_))), function(...)
        pickupRubbish(source, ...)
      end)
    end
  end
  selfInfoJob.lastPos = Vector3(getElementPosition(localPlayer))
end
function pickupRubbish(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ ~= localPlayer or not _ARG_2_ then
    return
  end
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if getElementModel((getPedOccupiedVehicle(localPlayer))) ~= 574 then
    return
  end
  for _FORV_7_, _FORV_8_ in pairs(selfInfoJob.objects) do
    if _FORV_8_ == _ARG_0_ then
      destroyElement(_FORV_8_)
      table.remove(selfInfoJob.objects, _FORV_7_)
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Sweepery" then
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
      end
      if selfInfoJob.allKG + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100 >= selfInfoJob.maxKG then
        return
      end
      if math.random(1, 3) == 1 then
        selfInfoJob.glassKG = selfInfoJob.glassKG + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.glassSave = selfInfoJob.glassSave + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.addGlass = "#01a753+" .. string.format("%0.2f", math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100) .. ""
        setTimer(function()
          selfInfoJob.addGlass = ""
        end, 1500, 1)
      elseif math.random(1, 3) == 2 then
        selfInfoJob.plasticKG = selfInfoJob.plasticKG + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.plasticSave = selfInfoJob.plasticSave + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.addPlastic = "#fdcc29+" .. string.format("%0.2f", math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100) .. ""
        setTimer(function()
          selfInfoJob.addPlastic = ""
        end, 1500, 1)
      elseif math.random(1, 3) == 3 then
        selfInfoJob.paperKG = selfInfoJob.paperKG + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.paperSave = selfInfoJob.paperSave + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
        selfInfoJob.addPaper = "#15afe3+" .. string.format("%0.2f", math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100) .. ""
        setTimer(function()
          selfInfoJob.addPaper = ""
        end, 1500, 1)
      end
      selfInfoJob.allKG = selfInfoJob.allKG + math.random(30, 90) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") / 100
      break
    end
  end
end
function destroyPoints()
  for _FORV_3_, _FORV_4_ in pairs(selfInfoJob.objects) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  selfInfoJob.objects = {}
end
function getPointFromDistanceRotation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_0_ + math.cos((math.rad(90 - _ARG_3_))) * _ARG_2_, _ARG_1_ + math.sin((math.rad(90 - _ARG_3_))) * _ARG_2_
end
function exitGUI()
  if selfInfoJob.blockStopJob then
    exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz tego zrobi\196\135", "error")
    return
  end
  addEventHandler("onClientRender", root, window)
  addEventHandler("onClientClick", root, click)
  windows.endJob = true
  showCursor(true, false)
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. hours .. ":" .. mins .. ":" .. secs
  end
end
getResourceName(getThisResource(), true, 869112314)
return
