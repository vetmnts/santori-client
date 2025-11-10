jobPeds = {}
for _FORV_5_, _FORV_6_ in ipairs({
  {
    2153.23,
    -1344.19,
    24.18,
    cub = {
      2075.6,
      -1376.94,
      21.16,
      86.93,
      73.97,
      21.57
    },
    respVehicle = {
      2134.63,
      -1320.36,
      24.15,
      359,
      0.2,
      90
    }
  },
  {
    2569.46,
    1178.35,
    10.93,
    cub = {
      2535.69,
      1081.82,
      7.78,
      61.94,
      101.49,
      12.92
    },
    respVehicle = {
      2548.3,
      1153.44,
      11.01,
      359.3,
      0,
      180
    }
  },
  {
    -2353.1,
    -87.38,
    35.44,
    cub = {
      -2364.07,
      -180.84,
      32.8,
      97.16,
      104.26,
      10.96
    },
    respVehicle = {
      -2349.89,
      -111.62,
      35.47,
      359,
      0,
      180
    }
  }
}) do
  createBlip(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3], 46, 2, 0, 0, 0, 0, 0, 250)
  setElementData(createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.9, "cylinder", 2.5, 246, 255, 0, 255), "marker:icon", "praca")
  addEventHandler("onClientColShapeHit", createColCuboid(_FORV_6_.cub[1], _FORV_6_.cub[2], _FORV_6_.cub[3], _FORV_6_.cub[4], _FORV_6_.cub[5], _FORV_6_.cub[6]), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      if _UPVALUE0_ == 1 then
        jestwCuboid = "ls"
      elseif _UPVALUE0_ == 2 then
        jestwCuboid = "lv"
      elseif _UPVALUE0_ == 3 then
        jestwCuboid = "sf"
      end
    end
  end)
  addEventHandler("onClientColShapeLeave", createColCuboid(_FORV_6_.cub[1], _FORV_6_.cub[2], _FORV_6_.cub[3], _FORV_6_.cub[4], _FORV_6_.cub[5], _FORV_6_.cub[6]), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      jestwCuboid = false
    end
  end)
  addEventHandler("onClientMarkerHit", createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.9, "cylinder", 2.5, 246, 255, 0, 255), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      if isPedInVehicle(localPlayer) then
        return
      end
      table_statistics = {}
      money = nil
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
        stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
        game_photo = dxCreateTexture("img/game_photo.png"),
        dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
        energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
        level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
        level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
        level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
        level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
        finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png"),
        money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
        card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png"),
        bus_icon = dxCreateTexture(":ST_bus_stop/img/busstop_icon.png"),
        lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
        unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
        requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png")
      }
      posRespVehicle = _UPVALUE0_.respVehicle
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      windows.background = true
      windows.category = "g\197\130\195\179wne"
      showCursor(true)
      setCursorAlpha(255)
    end
  end)
  addEventHandler("onClientMarkerLeave", createMarker(_FORV_6_[1], _FORV_6_[2], _FORV_6_[3] - 0.9, "cylinder", 2.5, 246, 255, 0, 255), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ then
      if isPedInVehicle(localPlayer) then
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      showCursor(false)
      setCursorAlpha(255)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end)
end
vehicleNodes = {}
function endJobAll()
  if isElement(ped) then
    destroyElement(ped)
    setTimer(function()
      exports.ST_object_preview:destroyObjectPreview(myObject)
    end, 50, 1)
  end
  if self.blip and isElement(self.blip) then
    destroyElement(self.blip)
  end
  if getElementData(self.vehicleBus, "vehicle:id") then
    setElementData(self.vehicleBus, "vehicle_job_Bus", false)
  end
  triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "destroyVehicle", localPlayer)
  triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "plrJob", localPlayer, false)
  removeEventHandler("onClientRender", root, windowRender)
  for _FORV_3_, _FORV_4_ in pairs(texturesRender) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  texturesRender = {}
  self = {}
  unbindKey("h")
  unbindKey("k")
  if isEventHandlerAdded("onClientRender", root, windowComputer) then
    removeEventHandler("onClientRender", root, windowComputer)
    for _FORV_3_, _FORV_4_ in pairs(texturesComputer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesComputer = {}
  end
  selectLineBus = false
  removeEventHandler("onClientVehicleCollision", root, collisionBus)
  removeEventHandler("onClientPlayerWasted", localPlayer, endJobAll)
  for _FORV_3_, _FORV_4_ in pairs(jobPeds) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  lastTickCount = false
  tick = false
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_13_, _FORV_14_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Tw\195\179j zarobek jest wi\196\153kszy o +10%",
          price = 800,
          icon = textures.dolar_icon,
          status = _FORV_14_.ulepszenie_zarobek_autobusy,
          nameDatabase = "ulepszenie_zarobek_autobusy"
        },
        {
          name = "Bileciarz",
          description = "Sprzedajesz 1 bilet wi\196\153cej",
          price = 600,
          icon = textures.energy_icon,
          status = _FORV_14_.ulepszenie_bilety_autobusy,
          nameDatabase = "ulepszenie_bilety_autobusy"
        },
        {
          name = "Ulepszony bus",
          description = "Tw\195\179j firmowy bus jest znacznie szybszy",
          price = 1000,
          icon = textures.improvement_icon,
          status = _FORV_14_.ulepszenie_pospieszny_autobusy,
          nameDatabase = "ulepszenie_pospieszny_autobusy"
        },
        {
          name = "W\197\130asny bus",
          description = "Ulepszenie pozwala na pracowanie w\197\130asnym autobusem",
          price = 1500,
          icon = textures.bus_icon,
          status = _FORV_14_.ulepszenie_wlasnybus_autobusy,
          nameDatabase = "ulepszenie_wlasnybus_autobusy"
        },
        {
          name = "Trasy mi\196\153dzymiastowe",
          description = "Ulepszenie odblokowywuje trasy mi\196\153dzymiastowe",
          price = 700,
          icon = textures.finish_icon,
          status = _FORV_14_.ulepszenie_miedzymiastowe_autobusy,
          nameDatabase = "ulepszenie_miedzymiastowe_autobusy"
        }
      }
    end
    if _ARG_2_ then
      blockStopJob = false
    end
  elseif _ARG_0_ == "wagesClient" then
    blockStopJob = false
  elseif _ARG_0_ == "startBusClient" then
    if jestwCuboid then
      refreshPacks(jestwCuboid)
    else
      if getZoneName(getElementPosition(localPlayer)) == "Las Venturas" then
      elseif "lv" == "Los Santos" then
      elseif "ls" == "San Fierro" then
      end
      refreshPacks(jestwCuboid)
    end
    triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "plrJob", localPlayer, true)
    tick = getTickCount()
    tickSave = getTickCount()
    self.showinfo = true
    self.time = 0
    self.money = 0
    self.exp = 0
    self.vehicleBus = _ARG_1_
    self.zadowolenie = 100
    self.textinfo = "Kliknij przycisk #ffbf00K#ffffff, aby wybra\196\135 tras\196\153"
    self.timeSave = 0
    self.moneySave = 0
    self.expSave = 0
    bindKey("h", "down", showinfoF)
    bindKey("k", "down", showComputer)
    texturesRender = {
      bus_icon = dxCreateTexture(":ST_radar/images/radar/blips/radar_barbers.png"),
      smile = dxCreateTexture("img/smile.png"),
      neutral = dxCreateTexture("img/neutral.png"),
      angry = dxCreateTexture("img/angry.png")
    }
    addEventHandler("onClientRender", root, windowRender)
    addEventHandler("onClientVehicleCollision", root, collisionBus)
    addEventHandler("onClientPlayerWasted", localPlayer, endJobAll)
  elseif _ARG_0_ == "resetJobs" then
    exports.ST_object_preview:destroyObjectPreview(myObject)
  end
end)
function collisionBus(_ARG_0_, _ARG_1_)
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if source ~= getPedOccupiedVehicle(localPlayer) then
    return
  end
  if 100 < _ARG_1_ and self.zadowolenie > 0.2 then
    self.zadowolenie = self.zadowolenie - _ARG_1_ / 400
  end
end
function showComputer()
  if windows.computer == true then
    if not isPedInVehicle(localPlayer) then
      return
    end
    windows.computer = false
    removeEventHandler("onClientRender", root, windowComputer)
    if windows.ticket == false then
      removeEventHandler("onClientClick", root, click)
    end
    unbindKey("mouse_wheel_up", "down", scrollBigMap)
    unbindKey("mouse_wheel_down", "down", scrollBigMap)
    removeEventHandler("onClientClick", root, moveBigMap)
    for _FORV_3_, _FORV_4_ in pairs(texturesComputer) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesComputer = {}
    showCursor(false)
  elseif getPedOccupiedVehicleSeat(localPlayer) == 0 and getPedOccupiedVehicle(localPlayer) == self.vehicleBus then
    if not self.jobTarget and not jestwCuboid then
      exports.st_gui:showPlayerNotification("Musisz znajdowa\196\135 si\196\153 na zajezdni autobusowej", "error")
      return
    end
    windows.computer = true
    texturesComputer = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      map = dxCreateTexture("img/map.png"),
      bus_stop_icon = dxCreateTexture(":ST_radar/images/radar/blips/radar_barbers.png"),
      player_icon = dxCreateTexture(":ST_radar/images/radar/blips/radar_centre.png"),
      point_icon = dxCreateTexture(":ST_taximeter_job/img/client.png"),
      finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png")
    }
    playerX, playerY = getElementPosition(localPlayer)
    dxSetTextureEdge(texturesComputer.map, "border", tocolor(0, 0, 0, 0))
    addEventHandler("onClientRender", root, windowComputer)
    addEventHandler("onClientClick", root, click)
    bindKey("mouse_wheel_up", "down", scrollBigMap)
    bindKey("mouse_wheel_down", "down", scrollBigMap)
    addEventHandler("onClientClick", root, moveBigMap)
    showCursor(true)
  end
end
function giveTicket(_ARG_0_)
  self.xTicketUl, self.yTicketUl = windowPos.x + 620 / zoom, windowPos.y + 240 / zoom
  self.xTicketNo, self.yTicketNo = windowPos.x + 35 / zoom, windowPos.y + 240 / zoom
  if self.rodzajBiletu ~= _ARG_0_ then
    if isElement(ped) then
      destroyElement(ped)
      setTimer(function()
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end, 50, 1)
    end
    exports.st_gui:showPlayerNotification("Poda\197\130e\197\155 z\197\130y bilet klientowi!", "error")
    if self.zadowolenie > 0.2 then
      self.zadowolenie = self.zadowolenie - 10
    end
    self.liczbaPasazerow = 0
    showCursor(false)
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.ticket = false
    for _FORV_4_, _FORV_5_ in pairs(textures) do
      if isElement(_FORV_5_) then
        destroyElement(_FORV_5_)
      end
    end
    textures = {}
    if self.liczbaPasazerow == 0 then
      giveMoney()
    end
    return
  end
  money1 = math.random(50, 200)
  self.moneySave = self.moneySave + money1
  self.money = self.money + money1
  exports.st_gui:showPlayerNotification("Za sprzedanie biletu otrzymujesz: " .. money1 .. " PLN", "success")
  if math.random(1, 2) == 1 then
    self.rodzajBiletu = "#ff7400NORMALNY"
  elseif math.random(1, 2) == 2 then
    self.rodzajBiletu = "#ffff00ULGOWY"
  end
  if isElement(ped) then
    destroyElement(ped)
    setTimer(function()
      exports.ST_object_preview:destroyObjectPreview(myObject)
    end, 50, 1)
  end
  self.liczbaPasazerow = self.liczbaPasazerow - 1
  if self.liczbaPasazerow <= 0 then
    self.zadowolenie = self.zadowolenie + 27
    showCursor(false)
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.ticket = false
    for _FORV_5_, _FORV_6_ in pairs(textures) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    textures = {}
    giveMoney()
    if self.zadowolenie > 100 then
      self.zadowolenie = 100
    end
  else
    setTimer(function()
      ped = createPed(getElementModel(jobPeds[self.liczbaPasazerow]), getCameraMatrix())
      myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, windowPos.x + 290 / zoom, windowPos.y + 90 / zoom, 305 / zoom, 430 / zoom, false, true)
    end, 100, 1)
  end
end
function showinfoF()
  if self.showinfo == true then
    self.showinfo = false
  else
    self.showinfo = true
  end
end
function findRotation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) < 0 and -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) + 360 or -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_))
end
function giveMoney()
  if math.random(1, 2) == 1 then
  else
  end
  if self.zadowolenie < 40 then
  elseif self.zadowolenie > 40 and self.zadowolenie < 65 then
  end
  for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
    if _FORV_6_.ulepszenie_zarobek_autobusy == 1 then
    end
  end
  if getElementData(localPlayer, "player:premium") then
  end
  if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Autobusy" then
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
  end
  setTimer(function()
    exports.st_gui:showPlayerNotification("Do wyp\197\130aty dopisano " .. math.floor(_UPVALUE0_) .. " PLN oraz " .. _UPVALUE1_ .. " EXP", "money")
    self.moneySave = self.moneySave + _UPVALUE0_
    self.expSave = self.expSave + 1
    self.money = self.money + _UPVALUE0_
    self.exp = self.exp + 1
  end, 2000, 1)
  exports.ST_levelsystem:addExp(3 + 1)
  triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
  for _FORV_9_, _FORV_10_ in pairs(jobPeds) do
    if isElement(_FORV_10_) then
      destroyElement(_FORV_10_)
    end
  end
  self.textinfo = "Zaliczone przystanki #ffbf00" .. self.jobTarget - 1 .. " #ffffff/ #ffbf00" .. self.maxTarget .. ""
  if getPedOccupiedVehicle(localPlayer) then
    triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "setFrozenVeh", localPlayer, getPedOccupiedVehicle(localPlayer), false)
  end
  if self.jobTarget ~= #posBusStop[selectLineBus] then
    jobPeds = {}
    for _FORV_10_ = 1, 4 do
      setElementFrozen(createPed(skins[math.random(1, #skins)], posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[3], (findRotation(posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2]))), true)
      table.insert(jobPeds, (createPed(skins[math.random(1, #skins)], posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[3], (findRotation(posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2])))))
    end
  end
end
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
GPS = {
  road = {},
  lastPosition = {}
}
function createGPS(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    GPS.road[_FORV_5_] = {}
    GPS.road[_FORV_5_].marker = createColSphere(_FORV_6_.x, _FORV_6_.y, _FORV_6_.z, 8)
    GPS.road[_FORV_5_].posX = _FORV_6_.x
    GPS.road[_FORV_5_].posY = _FORV_6_.y
    GPS.road[_FORV_5_].posZ = _FORV_6_.z
    GPS.road[_FORV_5_].kupa = _FORV_6_.kupa
    GPS.road[_FORV_5_].ID = _FORV_5_
    GPS.road[_FORV_5_].neighbours = _FORV_6_.neighbours
    if not false then
    elseif _FORV_6_.neighbours[_FORV_6_.id] then
      GPS.distance = GPS.distance + _FORV_6_.neighbours[_FORV_6_.id]
      GPS.road[_FORV_5_].distance = _FORV_6_.neighbours[_FORV_6_.id]
    end
  end
end
function findBestWay(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if response then
  end
  GPS.running = true
  removeGPS()
  GPS.distance = 0
  _UPVALUE0_.destination.recalculate = _UPVALUE0_.destination.recalculate
  _UPVALUE0_.destination.x, _UPVALUE0_.destination.y = _ARG_3_, _ARG_4_
  for _FORV_11_, _FORV_12_ in ipairs(customWaypoints) do
    table.insert({
      (findNodePosition(GPS.lastPosition.x, GPS.lastPosition.y, GPS.lastPosition.z))
    }, findNodePosition(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3]))
  end
  table.insert({
    (findNodePosition(GPS.lastPosition.x, GPS.lastPosition.y, GPS.lastPosition.z))
  }, (findNodePosition(_ARG_3_, _ARG_4_, 0)))
  _UPVALUE0_.pathCoroutine = coroutine.create(function()
    for _FORV_4_ = 1, #_UPVALUE0_ - 1 do
      for _FORV_9_, _FORV_10_ in ipairs((getPath(_UPVALUE0_[_FORV_4_], _UPVALUE0_[_FORV_4_ + 1]))) do
        table.insert({}, _FORV_10_)
      end
    end
    createGPS({})
  end)
  coroutine.resume(_UPVALUE0_.pathCoroutine)
end
function removeGPS()
  if #GPS.road < 1 then
    return
  end
  for _FORV_3_, _FORV_4_ in pairs(GPS.road) do
    destroyElement(GPS.road[_FORV_3_].marker)
  end
  GPS.road = {}
  GPS.waypointTurns = nil
  GPS.distance = nil
  if isTimer(GPS.checker) then
    killTimer(GPS.checker)
  end
  _UPVALUE0_.destination.x, _UPVALUE0_.destination.y = nil, nil
  _UPVALUE0_.destination.recalculate = nil
end
function getAreaID(_ARG_0_, _ARG_1_)
  return math.floor((_ARG_1_ + 3000) / 750) * 8 + math.floor((_ARG_0_ + 3000) / 750)
end
function findNodePosition(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_9_, _FORV_10_ in pairs(vehicleNodes[getAreaID(_ARG_0_, _ARG_1_)]) do
    if 15000 > getDistanceBetweenPoints3D(_ARG_0_, _ARG_1_, _ARG_2_, _FORV_10_.x, _FORV_10_.y, _FORV_10_.z) then
    end
  end
  return _FORV_10_
end
function getPath(_ARG_0_, _ARG_1_)
  for _FORV_8_, _FORV_9_ in pairs(_ARG_0_.neighbours) do
  end
  while 15000 do
    for _FORV_10_, _FORV_11_ in pairs({
      [_FORV_8_] = _FORV_9_,
      [_FORV_10_] = _FORV_11_ + _FORV_11_,
      [_FORV_10_] = nil
    }) do
      if _FORV_11_ < 15000 then
      end
    end
    if not _FORV_10_ then
      GPS.running = nil
      _UPVALUE0_.destination.recalculate = nil
      if not _UPVALUE0_.destination.recalculate then
        exports.TR_dx:setResponseEnabled(false)
      end
      removeGPS()
      return
    end
    if _ARG_1_.id == _FORV_10_ then
      while tonumber(_FORV_10_) ~= nil do
      end
      for _FORV_13_, _FORV_14_ in ipairs(customWaypoints) do
      end
      return {
        [1] = getNodeByID(vehicleNodes, _FORV_10_),
        [1 + 1] = {
          x = _FORV_14_[1],
          y = _FORV_14_[2],
          z = _FORV_14_[3],
          kupa = true
        }
      }
    end
    for _FORV_10_, _FORV_11_ in pairs(getNodeByID(vehicleNodes, _FORV_10_).neighbours) do
    end
    _UPVALUE0_.run = _UPVALUE0_.run + 1
    if _UPVALUE0_.run >= _UPVALUE0_.runs then
      _UPVALUE0_.run = 0
      setTimer(function()
        coroutine.resume(_UPVALUE0_.pathCoroutine)
      end, _UPVALUE0_.time, 1)
      coroutine.yield()
    end
  end
end
function getNodeByID(_ARG_0_, _ARG_1_)
  if math.floor(_ARG_1_ / 65536) <= 63 and math.floor(_ARG_1_ / 65536) >= 0 then
    return _ARG_0_[math.floor(_ARG_1_ / 65536)][_ARG_1_]
  end
end
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function getAngle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if math.atan2(_ARG_2_, _ARG_3_) - math.atan2(_ARG_0_, _ARG_1_) <= -math.pi then
  elseif math.atan2(_ARG_2_, _ARG_3_) - math.atan2(_ARG_0_, _ARG_1_) + math.pi * 2 > math.pi then
  end
  return math.atan2(_ARG_2_, _ARG_3_) - math.atan2(_ARG_0_, _ARG_1_) + math.pi * 2 - math.pi * 2
end
getResourceName(getThisResource(), true, 296529396)
return
