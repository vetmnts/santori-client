markerStartJob = createMarker(-340.22, -1037.2, 58.59, "cylinder", 3, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(-358.89, -1044.63, 59.38, 46, 2, 0, 0, 0, 0, 0, 250)
engineImportTXD(engineLoadTXD("model/all.txd"), 1899)
engineReplaceModel(engineLoadDFF("model/kubel.dff"), 1899, true)
engineSetModelLODDistance(1899, 650, true)
table_statistics = {}
col_grass = {}
grass = {}
grassSkoszone = {}
blipGrass = {}
rt_vehicle = {}
textures0 = {}
textures1 = {}
function endJobAll()
  if isEventHandlerAdded("onClientRender", root, tracking) then
    removeEventHandler("onClientRender", root, tracking)
    for _FORV_3_, _FORV_4_ in pairs(textures1) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures1 = {}
  end
  if rt_vehicle then
    for _FORV_3_, _FORV_4_ in pairs(rt_vehicle) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
      rt_vehicle[_FORV_3_] = nil
    end
  end
  rt_vehicle = {}
  if isElement(dataJob.trawa) then
    destroyElement(dataJob.trawa)
  end
  if isEventHandlerAdded("onClientVehicleStartEnter", root, onVehEnter) then
    removeEventHandler("onClientVehicleStartEnter", root, onVehEnter)
  end
  zakonczenieZlecenia()
  dataJob.tablePkt = {}
  dataJob = {}
  dataSelect = {}
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyVehicle", localPlayer, associateUserSelect)
  if associateUserSelect then
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyVehicle", associateUserSelect, localPlayer)
    associateUserSelect = false
  end
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, false)
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "destroyVehicle", localPlayer, false)
  unbindKey("k", "down", showComputer)
end
function zakonczenieZlecenia()
  if dataJob.tablePkt then
    for _FORV_3_, _FORV_4_ in pairs(dataJob.tablePkt) do
      if isElement(col_grass[_FORV_4_[1]]) then
        destroyElement(col_grass[_FORV_4_[1]])
      end
      if isElement(grass[_FORV_4_[1]]) then
        destroyElement(grass[_FORV_4_[1]])
      end
      if isElement(grassSkoszone[_FORV_4_[1]]) then
        destroyElement(grassSkoszone[_FORV_4_[1]])
      end
      if isElement(blipGrass[_FORV_4_[1]]) then
        destroyElement(blipGrass[_FORV_4_[1]])
      end
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(grassSkoszone) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  grassSkoszone = {}
  if isElement(blip) then
    destroyElement(blip)
  end
  dataJob.idWork = false
  dataJob.tablePkt = {}
  dataJob.allPkt = 0
  dataJob.pkt = 0
  posTracking = false
  if dataJob.maKosiarke == true then
    selfTracking.text = "SCHOWAJ #ffbb00KOSIARK\196\152"
  else
    selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
  end
end
function showComputer()
  getPedOccupiedVehicle(localPlayer)
  if nil then
    exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
    return
  end
  if windows.computer == true then
    removeEventHandler("onClientRender", root, windowComputer)
    removeEventHandler("onClientClick", root, click)
    unbindKey("mouse_wheel_up", "down", scrollBigMap)
    unbindKey("mouse_wheel_down", "down", scrollBigMap)
    removeEventHandler("onClientClick", root, moveBigMap)
    windows.computer = false
    for _FORV_4_, _FORV_5_ in pairs(textures) do
      if isElement(_FORV_5_) then
        destroyElement(_FORV_5_)
      end
    end
    textures = {}
    showCursor(false)
  else
    texturesComputer = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      map = dxCreateTexture(":ST_bus_job/img/map.png"),
      player_icon = dxCreateTexture(":ST_radar/images/radar/blips/radar_centre.png"),
      blip = dxCreateTexture(":ST_courier_job/img/blip.png")
    }
    playerX, playerY = getElementPosition(localPlayer)
    dxSetTextureEdge(texturesComputer.map, "border", tocolor(0, 0, 0, 0))
    addEventHandler("onClientRender", root, windowComputer)
    addEventHandler("onClientClick", root, click)
    bindKey("mouse_wheel_up", "down", scrollBigMap)
    bindKey("mouse_wheel_down", "down", scrollBigMap)
    addEventHandler("onClientClick", root, moveBigMap)
    windows.computer = true
    showCursor(true)
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == markerStartJob then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    loadTextures()
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    windows.category = "g\197\130\195\179wne"
    windows.background = true
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    showCursor(true)
    levelJob = {
      {
        levelJob = 1,
        exp = 0,
        level = 0,
        img = textures.level1_icon,
        money = 1
      },
      {
        levelJob = 2,
        exp = 100,
        level = 10,
        img = textures.level2_icon,
        money = 1.25
      },
      {
        levelJob = 3,
        exp = 200,
        level = 20,
        img = textures.level3_icon,
        money = 1.5
      },
      {
        levelJob = 4,
        exp = 300,
        level = 30,
        img = textures.level4_icon,
        money = 1.75
      }
    }
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_12_, _FORV_13_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153ksza pojemno\197\155\196\135 kosza",
          description = "Zwi\196\153ksza pojemno\197\155\196\135 kosza o +5kg. Ulepszenie #c77100" .. _FORV_13_.ulepszenie_kosz_kosiarki .. " #a0a0a0/ #c771008",
          price = 200,
          icon = textures.mower_icon,
          status = _FORV_13_.ulepszenie_kosz_kosiarki,
          nameDatabase = "ulepszenie_kosz_kosiarki"
        },
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 200,
          icon = textures.dolar_icon,
          status = _FORV_13_.ulepszenie_zarobek_kosiarki,
          nameDatabase = "ulepszenie_zarobek_kosiarki"
        },
        {
          name = "Zmodyfikowany pojazd",
          description = "Tw\195\179j pojazd s\197\130u\197\188bowy jest ulepszony",
          price = 300,
          icon = textures.tuning_icon,
          status = _FORV_13_.ulepszenie_tuning_kosiarki,
          nameDatabase = "ulepszenie_tuning_kosiarki"
        },
        {
          name = "Ulepszona kosiarka",
          description = "Kosiarka porusza si\196\153 znacznie szybciej",
          price = 200,
          icon = textures.mower_icon,
          status = _FORV_13_.ulepszenie_kosiarka_kosiarki,
          nameDatabase = "ulepszenie_kosiarka_kosiarki"
        }
      }
    end
  elseif _ARG_0_ == "sendOfferJobClient" then
    exports.st_gui:showPlayerNotification("Otrzymano zaproszenie do pracy duo od gracza " .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
    bindKey("P", "down", function()
      associateUserSelect = _UPVALUE0_
      positions = _UPVALUE1_
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
      if not isEventHandlerAdded("onClientRender", root, window) then
        loadTextures()
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        showCursor(true)
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            level = 0,
            img = textures.level1_icon,
            money = 1
          },
          {
            levelJob = 2,
            exp = 100,
            level = 10,
            img = textures.level2_icon,
            money = 1.25
          },
          {
            levelJob = 3,
            exp = 200,
            level = 20,
            img = textures.level3_icon,
            money = 1.5
          },
          {
            levelJob = 4,
            exp = 300,
            level = 30,
            img = textures.level4_icon,
            money = 1.75
          }
        }
      end
      dataJob.lider = false
      windows.category = "level"
      dataJob.offerLevel = true
      if isTimer(timer) then
        killTimer(timer)
      end
      unbindKey("P")
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "sendOfferJobAccept", localPlayer, _UPVALUE0_)
      setElementData(localPlayer, "player_offerTrade", false)
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, true)
    end)
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Odrzucono ofert\196\153 wsp\195\179\197\130pracy", "info")
      unbindKey("P")
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "sendOfferJobReject", localPlayer, _UPVALUE0_)
      setElementData(localPlayer, "player_offerTrade", false)
    end, 10500, 1)
  elseif _ARG_0_ == "sendOfferJobRejectClient" then
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " odrzuci\197\130 twoje zaproszenie do wsp\195\179\197\130pracy", "error")
    windows.category = "g\197\130\195\179wne"
    windows.background = true
  elseif _ARG_0_ == "sendOfferJobAcceptClient" then
    if isElement(shader) then
      destroyElement(shader)
    end
    if isElement(avatars) then
      destroyElement(avatars)
    end
    if isElement(hudMaskShader) then
      destroyElement(hudMaskShader)
    end
    if isElement(maska) then
      destroyElement(maska)
    end
    if isElement(avatarIMG) then
      destroyElement(avatarIMG)
    end
    avatarIMG = nil
    if _ARG_2_ then
      hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
      maska = dxCreateTexture(":ST_avatars/kolo.png")
      dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
      shader = dxCreateShader(":ST_avatars/masked.fx")
      avatars = dxCreateTexture(_ARG_2_, "argb", false, "clamp")
      dxSetShaderValue(shader, "sMaskTexture", maska)
      dxSetShaderValue(shader, "sPicTexture", avatars)
      avatarIMG = shader
    end
    triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, true)
    exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " zaakceptowa\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "success")
    associateUserSelect = _ARG_1_
    if isEventHandlerAdded("onClientRender", root, window) then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
    end
    windows.category = false
    windows.background = false
    showCursor(false)
    selfTracking = {}
    tick = getTickCount()
    addEventHandler("onClientRender", root, tracking)
    bindKey("k", "down", showComputer)
    textures1 = {
      truck_icon = dxCreateTexture(":ST_escort_job/img/truck_icon.png"),
      mower_icon = dxCreateTexture("img/mower_icon.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
    }
    selfTracking.money = 0
    selfTracking.time = 0
    selfTracking.exp = 0
    selfTracking.timeSave = 0
    selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
    dataJob.pkt = 0
    for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "createVehicle", localPlayer, _ARG_1_, _FORV_9_.ulepszenie_tuning_kosiarki, _FORV_9_.ulepszenie_kosiarka_kosiarki)
    end
    dataJob.lider = true
  elseif _ARG_0_ == "prepareToDrive" then
    dataJob.vehicle = _ARG_1_
    dataJob.kubel = _ARG_2_
    rt_vehicle[1] = dxCreateRenderTarget(300, 226, true)
    dataJob.zapelnienie_kubel = 0
    dataJob.MAXzapelnienie_kubel = 20
    for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
      if _FORV_9_.ulepszenie_kosz_kosiarki == 8 then
        dataJob.MAXzapelnienie_kubel = 60
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 7 then
        dataJob.MAXzapelnienie_kubel = 55
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 6 then
        dataJob.MAXzapelnienie_kubel = 50
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 5 then
        dataJob.MAXzapelnienie_kubel = 45
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 4 then
        dataJob.MAXzapelnienie_kubel = 40
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 3 then
        dataJob.MAXzapelnienie_kubel = 35
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 2 then
        dataJob.MAXzapelnienie_kubel = 30
      elseif _FORV_9_.ulepszenie_kosz_kosiarki == 1 then
        dataJob.MAXzapelnienie_kubel = 25
      else
        dataJob.MAXzapelnienie_kubel = 20
      end
    end
    dataJob.trzymaKubel = false
    renderTargetKubel()
    colVehTracking = createColSphere(0, 0, 0, 1)
    attachElements(colVehTracking, dataJob.vehicle, 0, -4, 0)
    addEventHandler("onClientVehicleEnter", dataJob.vehicle, function(_ARG_0_, _ARG_1_)
      if _ARG_0_ == localPlayer then
        setVehicleDoorOpenRatio(dataJob.vehicle, 4, 0, 2000)
        setVehicleDoorOpenRatio(dataJob.vehicle, 5, 0, 2000)
        trackingVehicleStatus = false
        attachElements(colVehTracking, dataJob.vehicle, 0, -4, 0)
      end
    end)
    addEventHandler("onClientVehicleExit", dataJob.vehicle, function(_ARG_0_, _ARG_1_)
      if _ARG_0_ == localPlayer then
        setVehicleDoorOpenRatio(dataJob.vehicle, 4, 1, 2000)
        setVehicleDoorOpenRatio(dataJob.vehicle, 5, 1, 2000)
        trackingVehicleStatus = true
        attachElements(colVehTracking, dataJob.vehicle, 0, -4, 0)
      end
    end)
  elseif _ARG_0_ == "setAvatar" then
    if isElement(shader) then
      destroyElement(shader)
    end
    if isElement(avatars) then
      destroyElement(avatars)
    end
    if isElement(hudMaskShader) then
      destroyElement(hudMaskShader)
    end
    if isElement(maska) then
      destroyElement(maska)
    end
    if isElement(avatarIMG) then
      destroyElement(avatarIMG)
    end
    avatarIMG = nil
    if _ARG_1_ then
      hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
      maska = dxCreateTexture(":ST_avatars/kolo.png")
      dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
      shader = dxCreateShader(":ST_avatars/masked.fx")
      avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
      dxSetShaderValue(shader, "sMaskTexture", maska)
      dxSetShaderValue(shader, "sPicTexture", avatars)
      avatarIMG = shader
    end
  elseif _ARG_0_ == "zatwierdzanieZlecenieSynchroClient" then
    if getElementData(localPlayer, "player:job") == "Kosiarki" and _ARG_4_ == associateUserSelect then
      if _ARG_2_ == true then
        zakonczenieZlecenia()
        if isElement(blip) then
          destroyElement(blip)
        end
        dataJob.idWork = _ARG_1_
        dataJob.tablePkt = {}
        lastIdWork = dataJob.idWork
        for _FORV_8_, _FORV_9_ in ipairs(posM[dataJob.idWork].pkt) do
          table.insert(dataJob.tablePkt, {_FORV_8_, _FORV_9_})
        end
        dataJob.pkt = 0
        dataJob.allPkt = tonumber(#dataJob.tablePkt)
        posTracking = {
          posM[dataJob.idWork].posCenter[1],
          posM[dataJob.idWork].posCenter[2],
          posM[dataJob.idWork].posCenter[3]
        }
        blip = createBlip(posM[dataJob.idWork].posCenter[1], posM[dataJob.idWork].posCenter[2], posM[dataJob.idWork].posCenter[3], 41)
        if dataJob.maKosiarke == true then
          selfTracking.text = "SCHOWAJ #ffbb00KOSIARK\196\152"
        else
          selfTracking.text = "DOJED\197\185 DO #ab0000CELU"
        end
        dataSelect = {}
        dataSelect.id = dataJob.idWork
        dataSelect.posCenter = posM[dataJob.idWork].posCenter
        dataSelect.ilosc = #posM[dataJob.idWork].pkt
        dataSelect.przewidywanyZarobek = _ARG_3_
        exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik rozpocz\196\133\197\130 nowe zlecenie", "info")
      else
        exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik zako\197\132czy\197\130 zlecenie", "info")
        dataSelect = {}
        dataJob.idWork = false
        dataSelect.ilosc = 0
        zakonczenieZlecenia()
      end
    end
  elseif _ARG_0_ == "dojazdDoCeluClient" then
    if getElementData(localPlayer, "player:job") == "Kosiarki" then
      if isElement(blip) then
        destroyElement(blip)
      end
      selfTracking.text = "WYJMIJ #ffbb00KOSIARK\196\152"
      stworzKrzaczki()
    end
  elseif _ARG_0_ == "synchronizationClient" then
    if getElementData(localPlayer, "player:job") == "Kosiarki" then
      if isElement(col_grass[_ARG_1_]) then
        destroyElement(col_grass[_ARG_1_])
        dataJob.pkt = dataJob.pkt + 1
      end
      if isElement(grass[_ARG_1_]) then
        grassSkoszone[_ARG_1_] = createObject(826, getElementPosition(grass[_ARG_1_]))
        setObjectScale(grassSkoszone[_ARG_1_], 0.3)
        destroyElement(grass[_ARG_1_])
      end
      if isElement(blipGrass[_ARG_1_]) then
        destroyElement(blipGrass[_ARG_1_])
      end
    end
  elseif _ARG_0_ == "sendNotiEndClient" then
    if getElementData(localPlayer, "player:job") == "Kosiarki" and _ARG_1_ == associateUserSelect then
      exports.st_gui:showPlayerNotification("Zako\197\132czono koszenie trawnika\nSchowaj kosiark\196\153 do pojazdu", "info")
      giveMoneyJob()
      zakonczenieZlecenia()
      if dataJob.maKosiarke then
        selfTracking.text = "SCHOWAJ #ffbb00KOSIARK\196\152"
      else
        selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
      end
    end
  elseif _ARG_0_ == "endJobClient" then
    if getElementData(localPlayer, "player:job") == "Kosiarki" then
      exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik zako\197\132czy\197\130 prac\196\153", "info")
      endJobAll()
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "tpPos", localPlayer, {
        -345.69,
        -1040.06,
        59.29
      })
    end
  elseif _ARG_0_ == "wyslijNowePozycjeClient" and getElementData(localPlayer, "player:job") == "Kosiarki" then
    positions = _ARG_1_
  end
end)
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
end
function tracking()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfTracking.time = selfTracking.time + 1
    selfTracking.timeSave = selfTracking.timeSave + 1
  end
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 15 / zoom, tocolor(25, 25, 25, 200))
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfTracking.time) .. "", windowsUP.x + 10 / zoom, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfTracking.exp .. "", windowsUP.x + 10 / zoom, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfTracking.money) .. " #f0f0f0PLN", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  dxDrawText("LEVEL: #ffbf00" .. selectLevel, windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  if selfTracking.text == "DOJED\197\185 DO #ab0000CELU" or selfTracking.text == "WYJMIJ #ffbb00KOSIARK\196\152" or selfTracking.text == "SCHOWAJ #ffbb00KOSIARK\196\152" or selfTracking.text == "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\"" then
    dxDrawText(selfTracking.text, windowsUP.x, windowsUP.y + 15 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, true, false, true, false)
  elseif not isElement(blip) and selfTracking.text == "SKO\197\154 TRAW\196\152" then
    dxDrawRoundedRectangle(windowsUP.x + 120 / zoom, windowsUP.y + 55 / zoom, windowsUP.w - 240 / zoom, 18 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
    if (windowsUP.w - 240 / zoom) / dataJob.allPkt * dataJob.pkt / zoom < 20 / zoom then
      dxDrawRoundedRectangle(windowsUP.x + 120 / zoom, windowsUP.y + 55 / zoom, 20 / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
    else
      dxDrawRoundedRectangle(windowsUP.x + 120 / zoom, windowsUP.y + 55 / zoom, (windowsUP.w - 240 / zoom) / dataJob.allPkt * dataJob.pkt / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
    end
    dxDrawText("" .. ("%.2f"):format(100 / dataJob.allPkt * dataJob.pkt) .. "%", windowsUP.x + 2 / zoom, windowsUP.y + 12 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
    dxDrawText("" .. ("%.2f"):format(100 / dataJob.allPkt * dataJob.pkt) .. "%", windowsUP.x, windowsUP.y + 10 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
  end
  if associateUserSelect then
    if getElementData(associateUserSelect, "player:sid") then
      dxDrawImage(windowsUP.x - 15 / zoom, windowsUP.y - 10 / zoom, 70 / zoom, 70 / zoom, textures1.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if avatarIMG then
        dxDrawImage(windowsUP.x - 15 / zoom, windowsUP.y - 10 / zoom, 70 / zoom, 70 / zoom, avatarIMG, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("Wsp\195\179\197\130praca z #ffbf00" .. getPlayerName(associateUserSelect) .. "", windowsUP.x + 60 / zoom, windowsUP.y - 85 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
    else
      endJobAll()
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "tpPos", localPlayer, {
        -345.69,
        -1040.06,
        59.29
      })
      exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153, poniewa\197\188 wsp\195\179\197\130pracownik wyszed\197\130 z serwera", "info")
    end
  else
    dxDrawText("KOSIARKI - LEVEL #00a118" .. selectLevel, windowsUP.x, windowsUP.y - 60 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
  end
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    if dataJob.lider == true and 100 > math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) and isElement(blip) then
      destroyElement(blip)
      stworzKrzaczki()
      selfTracking.text = "WYJMIJ #ffbb00KOSIARK\196\152"
      if associateUserSelect then
        triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "dojazdDoCelu", localPlayer, associateUserSelect, dataJob.tablePkt)
      end
    end
    dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.mower_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if isElement(blip) then
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    else
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 80 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 10 / zoom, 165 / zoom, 20 / zoom, 5 / zoom, tocolor(35, 35, 35, 255))
      if 165 / dataJob.allPkt * dataJob.pkt / zoom < 20 / zoom then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 80 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 10 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 255))
      else
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 80 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 10 / zoom, 165 / dataJob.allPkt * dataJob.pkt / zoom, 20 / zoom, 5 / zoom, tocolor(255, 187, 0, 255))
      end
      dxDrawText("SKO\197\154 TRAW\196\152", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5 + 2 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 4 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      dxDrawText("SKO\197\154 TRAW\196\152", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 6 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      dxDrawText("" .. ("%.2f"):format(100 / dataJob.allPkt * dataJob.pkt) .. "%", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5 + 2 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 44 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      dxDrawText("" .. ("%.2f"):format(100 / dataJob.allPkt * dataJob.pkt) .. "%", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 42 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    end
  end
  if trackingVehicleStatus and getScreenFromWorldPosition(getElementPosition(colVehTracking)) and getScreenFromWorldPosition(getElementPosition(colVehTracking)) then
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 25 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 65 / zoom, 50 / zoom, 50 / zoom, textures1.truck_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 90 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 29 / zoom, 180 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 89 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 30 / zoom, 178 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      if dataJob.trzymaKubel then
        dxDrawText("ABY OPR\195\147\197\187NI\196\134 KOSZ KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      elseif dataJob.maKosiarke == true then
        dxDrawText("ABY SCHOWA\196\134 KOSIARK\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      else
        dxDrawText("ABY WYJ\196\132\196\134 KOSIARK\196\152 KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      if getKeyState("R") and not clickC then
        clickC = true
        if dataJob.trzymaKubel then
          if 10 < dataJob.zapelnienie_kubel then
            exports.st_gui:showPlayerNotification("Opr\195\179\197\188niono kosz", "info")
            dataJob.zapelnienie_kubel = 0
            renderTargetKubel()
            if isElement(dataJob.trawa) then
              destroyElement(dataJob.trawa)
            end
          else
            exports.st_gui:showPlayerNotification("Kosz nie jest jeszcze pe\197\130ny", "info")
          end
        elseif dataJob.maKosiarke == true then
          if getPedOccupiedVehicle(localPlayer) then
            dataJob.maKosiarke = false
            if dataJob.idWork then
            else
              selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
            end
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "takeMower", localPlayer, dataJob.vehicle, false, dataJob.lider)
          end
        elseif isElementFrozen(dataJob.vehicle) then
          attachElements(createColSphere(0, 0, 0, 1), dataJob.vehicle, 0, -6, 0)
          dataJob.maKosiarke = true
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "takeMower", localPlayer, dataJob.vehicle, true, {
            getElementPosition((createColSphere(0, 0, 0, 1)))
          })
          if selfTracking.text == "WYJMIJ #ffbb00KOSIARK\196\152" then
            selfTracking.text = "SKO\197\154 TRAW\196\152"
          end
          setTimer(function()
            if isElement(_UPVALUE0_) then
              destroyElement(_UPVALUE0_)
            end
          end, 500, 1)
        else
          exports.st_gui:showPlayerNotification("Najpierw zaci\196\133gnij hamulec r\196\153czny", "error")
        end
        setTimer(function()
          clickC = false
        end, 2000, 1)
      end
    end
  end
  if dataJob.maKosiarke == true and getPedOccupiedVehicle(localPlayer) then
    if 10 < (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 and isVehicleReversing((getPedOccupiedVehicle(localPlayer))) then
      setElementVelocity(getPedOccupiedVehicle(localPlayer), getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
    end
    for _FORV_18_, _FORV_19_ in ipairs(table_statistics) do
      if _FORV_19_.ulepszenie_kosiarka_kosiarki == 1 then
        if 35 < (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 then
          setElementVelocity(getPedOccupiedVehicle(localPlayer), getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
        end
      elseif 25 < (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161 then
        setElementVelocity(getPedOccupiedVehicle(localPlayer), getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9, getElementVelocity((getPedOccupiedVehicle(localPlayer))) * 0.9)
      end
    end
  end
  if isElement(dataJob.kubel) and getElementBoundingBox(dataJob.kubel) then
    x1, y1, z1 = getPositionFromElementOffset(dataJob.kubel, 0, getElementBoundingBox(dataJob.kubel) + 0.029, -0.05)
    lx, ly, lz = getPositionFromElementOffset(dataJob.kubel, 0, -5, 0)
    dxDrawMaterialLine3D(x1, y1, z1 + 0.25, x1, y1, z1 - 0.5, rt_vehicle[1], 1, tocolor(255, 255, 255, 255), false, lx, ly, lz)
    if getScreenFromWorldPosition(getElementPosition(dataJob.kubel)) and getScreenFromWorldPosition(getElementPosition(dataJob.kubel)) and 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(dataJob.kubel))) and getKeyState("R") and not clickC and not getPedOccupiedVehicle(localPlayer) then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      if dataJob.maKosiarke == true then
        if dataJob.trzymaKubel then
          if 2 > math.floor(getDistanceBetweenPoints3D(x2, y2, z2, getElementPosition(localPlayer))) then
            removeEventHandler("onClientVehicleStartEnter", root, onVehEnter)
            dataJob.trzymaKubel = false
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "chwycKubel", localPlayer, false)
          end
        else
          addEventHandler("onClientVehicleStartEnter", root, onVehEnter)
          dataJob.trzymaKubel = true
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "chwycKubel", localPlayer, true)
          x2, y2, z2 = getElementPosition(dataJob.kubel)
        end
      end
    end
  end
end
function renderTargetKubel()
  dxSetRenderTarget(rt_vehicle[1], true)
  dxDrawText("ZAPE\197\129NIENIE", 0, 76, 300, 122, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxDrawText("#ffbf00" .. tonumber(dataJob.zapelnienie_kubel) .. " #ffffffKG / #ffbf00" .. tonumber(dataJob.MAXzapelnienie_kubel) .. " #ffffffKG", 0, 110, 300, 122, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
  dxDrawRoundedRectangle(70, 135, 160, 15, 5, tocolor(35, 35, 35, 255))
  if 160 * tonumber(dataJob.zapelnienie_kubel) / tonumber(dataJob.MAXzapelnienie_kubel) > 20 then
    dxDrawRoundedRectangle(70, 135, 160 * tonumber(dataJob.zapelnienie_kubel) / tonumber(dataJob.MAXzapelnienie_kubel), 15, 5, tocolor(252, 186, 3, 255), false)
  end
  dxSetRenderTarget()
end
function giveMoneyJob()
  selfTracking.exp = selfTracking.exp + 1
  moneyXDD = tonumber(dataJob.allPkt * dataSelect.przewidywanyZarobek) * moneyADD
  if getElementData(localPlayer, "player:premium") then
    exports.ST_levelsystem:addExp(3)
    moneyXDD = moneyXDD * 1.1
  else
    exports.ST_levelsystem:addExp(2)
  end
  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
    if _FORV_4_.ulepszenie_zarobek_kosiarki == 1 then
      moneyXDD = moneyXDD * 1.1
    end
  end
  if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Kosiarki" then
    moneyXDD = moneyXDD * getElementData(localPlayer, "player:bonusJob").addMoney
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    moneyXDD = moneyXDD * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
  end
  moneyXDD = math.floor(moneyXDD)
  triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "wages", localPlayer, {
    math.floor(moneyXDD),
    selfTracking.timeSave
  })
  selfTracking.money = selfTracking.money + math.floor(moneyXDD)
  exports.st_gui:showPlayerNotification("Do wyp\197\130aty dopisano " .. przecinek(math.floor(moneyXDD)) .. " PLN", "money")
  selfTracking.timeSave = 0
  dataSelect = {}
  if dataJob.lider == true then
    refreshPacks()
  end
end
function stworzKrzaczki()
  for _FORV_3_, _FORV_4_ in pairs(dataJob.tablePkt) do
    col_grass[_FORV_4_[1]] = createColSphere(_FORV_4_[2][1], _FORV_4_[2][2], getGroundPosition(_FORV_4_[2][1], _FORV_4_[2][2], _FORV_4_[2][3]) + 0.5, 1)
    grass[_FORV_4_[1]] = createObject(826, _FORV_4_[2][1], _FORV_4_[2][2], getGroundPosition(_FORV_4_[2][1], _FORV_4_[2][2], _FORV_4_[2][3]) + 0.5, 0, 0, 0)
    blipGrass[_FORV_4_[1]] = createBlip(_FORV_4_[2][1], _FORV_4_[2][2], _FORV_4_[2][3], 0, 1, 255, 191, 0)
    setObjectScale(grass[_FORV_4_[1]], 0.3)
    addEventHandler("onClientColShapeHit", col_grass[_FORV_4_[1]], function(_ARG_0_, _ARG_1_)
      if _ARG_0_ == localPlayer and _ARG_1_ and getPedOccupiedVehicle(localPlayer) then
        if dataJob.zapelnienie_kubel >= dataJob.MAXzapelnienie_kubel then
          if clickC then
            return
          end
          clickC = true
          exports.st_gui:showPlayerNotification("Kosz kosiarki jest pe\197\130ny", "error")
          setTimer(function()
            clickC = false
          end, 2000, 1)
          return
        end
        if getElementModel((getPedOccupiedVehicle(localPlayer))) == 572 then
          if isElement(col_grass[_UPVALUE0_[1]]) then
            destroyElement(col_grass[_UPVALUE0_[1]])
          end
          if isElement(grass[_UPVALUE0_[1]]) then
            grassSkoszone[_UPVALUE0_[1]] = createObject(826, _UPVALUE0_[2][1], _UPVALUE0_[2][2], getGroundPosition(_UPVALUE0_[2][1], _UPVALUE0_[2][2], _UPVALUE0_[2][3]) - 0.4, 180, 0, 0)
            setObjectScale(grassSkoszone[_UPVALUE0_[1]], 0.3)
            destroyElement(grass[_UPVALUE0_[1]])
          end
          if isElement(blipGrass[_UPVALUE0_[1]]) then
            destroyElement(blipGrass[_UPVALUE0_[1]])
          end
          table.remove(dataJob.tablePkt, _UPVALUE0_[1])
          if associateUserSelect then
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "synchronization", localPlayer, associateUserSelect, _UPVALUE0_[1])
          end
          dataJob.pkt = dataJob.pkt + 1
          dataJob.zapelnienie_kubel = dataJob.zapelnienie_kubel + math.random(5, 15) / 100
          renderTargetKubel()
          updateGrassObject()
          createEffect("tree_hit_fir", getElementPosition((getPedOccupiedVehicle(localPlayer))))
          createEffect("tree_hit_fir", getElementPosition(localPlayer))
          if dataJob.pkt >= dataJob.allPkt then
            giveMoneyJob()
            zakonczenieZlecenia()
            selfTracking.text = "SCHOWAJ #ffbb00KOSIARK\196\152"
            exports.st_gui:showPlayerNotification("Zako\197\132czono koszenie trawnika\nSchowaj kosiark\196\153 do pojazdu", "info")
            if associateUserSelect then
              triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "sendNotiEnd", localPlayer, associateUserSelect)
            end
          end
        end
      end
    end)
  end
end
function updateGrassObject()
  if not isElement(dataJob.trawa) then
    dataJob.trawa = createObject(8084, -348.51, -1037.2, 59.32)
    setElementCollisionsEnabled(dataJob.trawa, false)
    setElementData(dataJob.trawa, "dev25tex2", 2)
    setElementData(dataJob.trawa, "dev25tex1", 2)
  end
  setObjectScale(dataJob.trawa, 0.25 + 0.04999999999999999 * math.min(dataJob.zapelnienie_kubel / dataJob.MAXzapelnienie_kubel, 1), 0.1 + 0.1 * math.min(dataJob.zapelnienie_kubel / dataJob.MAXzapelnienie_kubel, 1), 0.2)
  attachElements(dataJob.trawa, dataJob.kubel, 0, 0.4, -0.63 + (-0.25 - -0.63) * math.min(dataJob.zapelnienie_kubel / dataJob.MAXzapelnienie_kubel, 1), 90, 0, 90)
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
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    cancelEvent()
  end
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
function isVehicleReversing(_ARG_0_)
  if getVehicleCurrentGear(_ARG_0_) == 0 and Vector3(getElementVelocity(_ARG_0_)).x * getElementMatrix(_ARG_0_)[2][1] + Vector3(getElementVelocity(_ARG_0_)).y * getElementMatrix(_ARG_0_)[2][2] + Vector3(getElementVelocity(_ARG_0_)).z * getElementMatrix(_ARG_0_)[2][3] < 0 then
    return true
  end
  return false
end
function loadTextures()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    game_photo = dxCreateTexture("img/game_photo.png"),
    unlock_icon = dxCreateTexture(":ST_jobs_settings/img/unlock_icon.png"),
    lock_icon = dxCreateTexture(":ST_jobs_settings/img/lock_icon.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    requirements_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/requirements_icon.png"),
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
    stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
    duo_icon = dxCreateTexture("img/duo_icon.png"),
    solo_icon = dxCreateTexture("img/solo_icon.png"),
    tuning_icon = dxCreateTexture("img/tuning_icon.png"),
    mower_icon = dxCreateTexture("img/mower_icon.png"),
    money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
    card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png")
  }
end
getResourceName(getThisResource(), true, 658623007)
return
