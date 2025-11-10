markerStartJob = createMarker(-2003.62, -2392.29, 29.990000000000002, "cylinder", 2, 246, 255, 0, 255)
setElementData(markerStartJob, "marker:icon", "praca")
createBlip(-2012.88, -2415.45, 30.62, 46, 2, 0, 0, 0, 0, 0, 250)
self = {}
texturesComputer = {}
oddawaniePunkty = {
  {
    -1058.35,
    -1053.19,
    129.22
  },
  {
    -1054.99,
    -1053.56,
    129.22
  },
  {
    -1051.85,
    -1053.24,
    129.22
  },
  {
    -1048.33,
    -1053.22,
    129.22
  },
  {
    -1043.91,
    -1053.18,
    129.22
  },
  {
    -1048.25,
    -1053.35,
    129.22
  },
  {
    -1043.91,
    -1053.23,
    129.22
  },
  {
    -1040.48,
    -1053.5,
    129.22
  }
}
setElementCollisionsEnabled(createObject(831, -1980.35, -2403.65, 30.05), false)
setObjectScale(createObject(831, -1980.35, -2403.65, 30.05), 0.45)
function endJobAll()
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
  twojWspolpracownik = false
  if isEventHandlerAdded("onClientVehicleStartEnter", self.vehicleJob, onVehEnter) then
    removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
  end
  if isElement(self.blipZlecenie) then
    destroyElement(self.blipZlecenie)
  end
  if isElement(self.ped) then
    destroyElement(self.ped)
  end
  if #ulozoneDrewno > 0 then
    for _FORV_3_, _FORV_4_ in ipairs(ulozoneDrewno) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
  end
  ulozoneDrewno = {}
  if 0 < #drzewa_na_aucie then
    for _FORV_3_, _FORV_4_ in ipairs(drzewa_na_aucie) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
  end
  drzewa_na_aucie = {}
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTrees) do
    if isElement(tressStandard[_FORV_4_.id]) then
      destroyElement(tressStandard[_FORV_4_.id])
    end
    if isElement(tressBlip[_FORV_4_.id]) then
      destroyElement(tressBlip[_FORV_4_.id])
    end
  end
  selfJob.tableTrees = {}
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTreesSciete) do
    if isElement(tressSciete[_FORV_4_.id]) then
      destroyElement(tressSciete[_FORV_4_.id])
    end
  end
  selfJob.tableTreesSciete = {}
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTreesDoZebrania) do
    if isElement(treesDoZebrania[_FORV_4_.id]) then
      destroyElement(treesDoZebrania[_FORV_4_.id])
    end
  end
  selfJob.tableTreesDoZebrania = {}
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "plrJob", localPlayer, false)
  unbindKey("f")
  unbindKey("enter")
  if isElement(blip) then
    destroyElement(blip)
  end
  if isElement(self.siekiera) then
    destroyElement(self.siekiera)
  end
  if isElement(self.vehicleClient) then
    destroyElement(self.vehicleClient)
  end
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "destroyVehicle", localPlayer)
  removeEventHandler("onClientRender", root, windowRender)
  if isEventHandlerAdded("onClientRender", root, windowComputer) then
    unbindKey("mouse_wheel_up", "down", scrollBigMap)
    unbindKey("mouse_wheel_down", "down", scrollBigMap)
    removeEventHandler("onClientClick", root, moveBigMap)
    windows.computer = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    removeEventHandler("onClientRender", root, windowComputer)
    removeEventHandler("onClientClick", root, click)
    showCursor(false)
  end
  unbindKey("h", "down", showinfoF)
  unbindKey("k", "down", showComputer)
  self = {}
  selfSelect = {}
  selfJob = {}
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "giveTakeWeapon", localPlayer, false)
  windows.scinanieDrewna = false
  setCameraTarget(localPlayer)
  runningBlock(localPlayer, false)
end
function startJob()
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "plrJob", localPlayer, true)
  tick = getTickCount()
  self = {}
  self.time = 0
  self.money = 0
  self.money1 = 0
  self.showinfo = true
  self.exp = 0
  self.exp1 = 0
  self.timeSave = 0
  self.ukladanieDrewna = false
  self.odlozoneDrewno = 0
  self.idUkladaniaPos = 1
  self.posOdkladanieDrewna = false
  selfJob.tableTrees = {}
  selfJob.tableTreesSciete = {}
  selfJob.tableTreesDoZebrania = {}
  selfSelect = {}
  selfSelect.id = false
  selfSelect.ilosc = 0
  self.siekiera = createObject(333, -1980.5, -2403.8, 30.85, 0, 120, -20)
  self.posRender = {
    -1980.5,
    -2403.8,
    30.85
  }
  self.textRender = "ABY WZI\196\132\196\134 SIEKIER\196\152 KLIKNIJ"
  self.textInfo = "Udaj si\196\153 po #ffbb00siekier\196\153"
  bindKey("h", "down", showinfoF)
  bindKey("k", "down", showComputer)
  addEventHandler("onClientRender", root, windowRender)
  self.ped = createPed(158, -1986.2, -2415.16, 30.7, 321.67)
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == markerStartJob then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    loadTextures()
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    windows.background = true
    windows.category = "g\197\130\195\179wne"
    windows.odbieraniePieniedzy = false
    windows.scinanieDrewna = false
    showCursor(true)
    setCursorAlpha(255)
  end
end)
function showinfoF()
  if self.showinfo == true then
    self.showinfo = false
  else
    self.showinfo = true
  end
end
function showComputer()
  if windows.computer == true then
    removeEventHandler("onClientRender", root, windowComputer)
    removeEventHandler("onClientClick", root, click)
    unbindKey("mouse_wheel_up", "down", scrollBigMap)
    unbindKey("mouse_wheel_down", "down", scrollBigMap)
    removeEventHandler("onClientClick", root, moveBigMap)
    windows.computer = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    showCursor(false)
  else
    if isElement(self.siekiera) then
      return
    end
    if not isElement(self.vehicleJob) then
      return
    end
    if self.ukladanieDrewna then
      return
    end
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
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "odstawilDrewnoSynchroClient" then
    if not _ARG_2_ then
      selfJob.zapakowaneDoPojazdu = selfJob.zapakowaneDoPojazdu + 1
      attachTreeToVehicle(self.vehicleJob, self.exp1 + selfJob.zapakowaneDoPojazdu)
      self.textInfo = "Po\197\155cinaj oraz zapakuj drewno #ffbf00" .. selfJob.zapakowaneDoPojazdu .. " #ffffff/ #ffbf00" .. selfJob.ilosc .. ""
    end
    if twojWspolpracownik and not _ARG_2_ then
      exports.st_gui:showPlayerNotification(getPlayerName(twojWspolpracownik) .. " zapakowa\197\130/a drewno " .. selfJob.zapakowaneDoPojazdu .. "/" .. selfJob.ilosc .. " do pojazdu", "info")
    end
    if _ARG_1_ then
      if _ARG_2_ then
        self.exp = self.exp + selfJob.zapakowaneDoPojazdu
        self.exp1 = self.exp1 + selfJob.zapakowaneDoPojazdu
        kasa = selfJob.zarobek * moneyJob / selfJob.ilosc * selfJob.zapakowaneDoPojazdu
      else
        self.exp = self.exp + selfJob.ilosc
        self.exp1 = self.exp1 + selfJob.ilosc
        kasa = selfJob.zarobek * moneyJob
      end
      if getElementData(localPlayer, "player:premium") then
        kasa = math.floor(kasa * 1.1)
      end
      for _FORV_9_, _FORV_10_ in ipairs(table_statistics) do
        if _FORV_10_.ulepszenie_zarobek_drwal == 1 then
          kasa = math.floor(kasa * 1.1)
        end
      end
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Drwal" then
        kasa = kasa * getElementData(localPlayer, "player:bonusJob").addMoney
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
        kasa = kasa * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
      end
      self.money = self.money + math.floor(kasa)
      self.money1 = self.money1 + math.floor(kasa)
      setTimer(function()
        if _UPVALUE0_ then
          exports.st_gui:showPlayerNotification("Anulowano zlecenie", "info")
        else
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie za\197\130adowano wszystkie drewna do pojazdu", "success")
        end
        setTimer(function()
          exports.st_gui:showPlayerNotification("Wybierz kolejne zleceniu lub wr\195\179\196\135 do tartaku", "info")
          self.textInfo = "Wybierz nast\196\153pne #ffbb00zlecenie#ffffff lub wr\195\179\196\135 na #ffbb00tartak"
        end, 2000, 1)
      end, 1000, 1)
      if selfJob.trzymaDrewno then
        triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
      end
      usunDrzewa_anulowanie()
      selfSelect = {}
      selfSelect.id = false
      selfSelect.ilosc = 0
      selfJob = {}
      selfJob.tableTrees = {}
      selfJob.tableTreesSciete = {}
      selfJob.tableTreesDoZebrania = {}
    end
  elseif _ARG_0_ == "synchroUkladanieClient" then
    if _ARG_1_ == "dajkase" then
      if _ARG_2_ then
        self.odlozoneDrewno = self.odlozoneDrewno + 1
        drewnoUlozone(self.odlozoneDrewno, self.idUkladaniaPos)
      end
      giveMoney(_ARG_2_)
    elseif _ARG_1_ == "rozpocznij" then
      attachElements(createObject(1463, 9999, 9999, 9999, 99), self.vehicleJob, -1, 0, 0)
      self.posTylPojazdu = {
        getElementPosition((createObject(1463, 9999, 9999, 9999, 99)))
      }
      if isElement((createObject(1463, 9999, 9999, 9999, 99))) then
        destroyElement((createObject(1463, 9999, 9999, 9999, 99)))
      end
      self.ukladanieDrewna = true
      self.odlozoneDrewno = 0
      self.idUkladaniaPos = _ARG_2_
      exports.st_gui:showPlayerNotification(getPlayerName(twojWspolpracownik) .. " wybra\197\130/a opcj\196\153 uk\197\130adania drewna", "info")
      self.textInfo = "Pouk\197\130adaj drewno #ffbf00" .. self.odlozoneDrewno .. " #ffffff/ #ffbf00" .. self.exp1 .. ""
      addEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
    elseif _ARG_1_ == "podnosiDrewno" then
      if 0 < #drzewa_na_aucie then
        attachTreeToVehicle(self.vehicleJob, #drzewa_na_aucie - 1)
      else
        attachTreeToVehicle(self.vehicleJob, 0)
      end
    elseif _ARG_1_ == "odkladaDrewno" then
      self.odlozoneDrewno = self.odlozoneDrewno + 1
      exports.st_gui:showPlayerNotification(getPlayerName(twojWspolpracownik) .. " u\197\130o\197\188y\197\130 drewno " .. self.odlozoneDrewno .. "/" .. self.exp1 .. "", "info")
      self.textInfo = "Pouk\197\130adaj drewno #ffbf00" .. self.odlozoneDrewno .. " #ffffff/ #ffbf00" .. self.exp1 .. ""
      drewnoUlozone(self.odlozoneDrewno, self.idUkladaniaPos)
    end
  elseif _ARG_0_ == "synchroScinanieClient" then
    if getElementData(localPlayer, "player:job") == "Drwal" then
      if _ARG_1_ == "usunTabele" then
        if self.lider == true and selfJob.idScinanegoDrewna == _ARG_2_ then
          if isTimer(timerAnim) then
            killTimer(timerAnim)
          end
          setCameraTarget(localPlayer)
          setElementFrozen(localPlayer, false)
          setPedAnimation(localPlayer, false)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          windows.scinanieDrewna = false
          selfJob.punktyRabanie = 0
          return
        end
        if isElement(tressStandard[_ARG_2_]) then
          removeById(selfJob.tableTrees, _ARG_2_)
        elseif isElement(tressSciete[_ARG_2_]) then
          removeById(selfJob.tableTreesSciete, _ARG_2_)
        end
      elseif _ARG_1_ == "stworzNoweDrewno" then
        if isElement(tressStandard[_ARG_2_]) then
          tressSciete[_ARG_2_] = createObject(846, getElementPosition(tressStandard[_ARG_2_]))
          setObjectScale(tressSciete[_ARG_2_], 0.9)
          table.insert(selfJob.tableTreesSciete, {id = _ARG_2_})
          destroyElement(tressStandard[_ARG_2_])
          if isElement(tressBlip[_ARG_2_]) then
            destroyElement(tressBlip[_ARG_2_])
          end
        elseif isElement(tressSciete[_ARG_2_]) then
          treesDoZebrania[_ARG_2_] = createObject(1463, getElementPosition(tressSciete[_ARG_2_]))
          setObjectScale(treesDoZebrania[_ARG_2_], 0.35)
          setElementCollisionsEnabled(treesDoZebrania[_ARG_2_], false)
          table.insert(selfJob.tableTreesDoZebrania, {id = _ARG_2_})
          destroyElement(tressSciete[_ARG_2_])
        end
      elseif _ARG_1_ == "podnosiDrewno" then
        if self.lider == true and selfJob.trzymaDrewno == _ARG_2_ then
          selfJob.trzymaDrewno = false
          if isElement(selfJob.drzewoPojazdAlpha) then
            destroyElement(selfJob.drzewoPojazdAlpha)
          end
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
          if isEventHandlerAdded("onClientVehicleStartEnter", self.vehicleJob, onVehEnter) then
            removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
          end
        end
        if isElement(treesDoZebrania[_ARG_2_]) then
          destroyElement(treesDoZebrania[_ARG_2_])
          removeById(selfJob.tableTreesDoZebrania, _ARG_2_)
        end
      end
    end
  elseif _ARG_0_ == "wyslijTabeleDrzewa1Client" then
    if getElementData(localPlayer, "player:job") == "Drwal" and twojWspolpracownik == _ARG_5_ then
      for _FORV_9_, _FORV_10_ in pairs(selfJob.tableTrees) do
        if isElement(tressStandard[_FORV_10_.id]) then
          destroyElement(tressStandard[_FORV_10_.id])
        end
        if isElement(tressBlip[_FORV_10_.id]) then
          destroyElement(tressBlip[_FORV_10_.id])
        end
      end
      selfJob.tableTrees = _ARG_1_
      selfSelect.id = _ARG_2_
      selfJob.posCenter = positionTree[selfSelect.id].center
      selfSelect.posCenter = positionTree[selfSelect.id].center
      selfJob.id = selfSelect.id
      selfJob.zapakowaneDoPojazdu = 0
      selfJob.ilosc = #_ARG_1_
      selfJob.zarobek = _ARG_3_
      selfSelect.przewidywanyZarobek = selfJob.zarobek
      table.remove(positions, _ARG_4_)
      for _FORV_9_, _FORV_10_ in ipairs(selfJob.tableTrees) do
        tressStandard[_FORV_10_.id] = createObject(_FORV_10_.modelID, _FORV_10_.pos[1], _FORV_10_.pos[2], _FORV_10_.pos[3] - 1.2)
        tressBlip[_FORV_10_.id] = createBlip(_FORV_10_.pos[1], _FORV_10_.pos[2], _FORV_10_.pos[3], 0, 1, 255, 191, 0)
        setElementFrozen(tressStandard[_FORV_10_.id], true)
      end
      self.blipZlecenie = createBlip(selfJob.posCenter[1], selfJob.posCenter[2], selfJob.posCenter[3], 41, 2, 0, 0, 0, 0, 0, 9999)
      self.textInfo = "Jed\197\186 do wybranego #b80000celu"
    end
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_14_, _FORV_15_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 350,
          icon = textures.dolar_icon,
          status = _FORV_15_.ulepszenie_zarobek_drwal,
          nameDatabase = "ulepszenie_zarobek_drwal"
        },
        {
          name = "Nowy samoch\195\179d",
          description = "Otrzymujesz nowy samoch\195\179d by lepiej radzi\196\135 sobie w terenie",
          price = 300,
          icon = textures.car_icon,
          status = _FORV_15_.ulepszenie_auto_drwal,
          nameDatabase = "ulepszenie_auto_drwal"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 100,
          icon = textures.condition_icon,
          status = _FORV_15_.ulepszenie_kondycja_drwal,
          nameDatabase = "ulepszenie_kondycja_drwal"
        },
        {
          name = "Do\197\155wiadczony",
          description = "Dodaje dwa drzewa wi\196\153cej przy ka\197\188dym zleceniu",
          price = 500,
          icon = textures.energy_icon,
          status = _FORV_15_.ulepszenie_energiczny_drwal,
          nameDatabase = "ulepszenie_energiczny_drwal"
        },
        {
          name = "Ulepszony silnik",
          description = "W twoim poje\197\186dzie zostaje ulepszony silnik",
          price = 400,
          icon = textures.car_icon,
          status = _FORV_15_.ulepszenie_silnik_drwal,
          nameDatabase = "ulepszenie_silnik_drwal"
        }
      }
    end
  elseif _ARG_0_ == "destroyVehicleClient" then
    self.posRender = false
    if isElement(self.vehicleClient) then
      destroyElement(self.vehicleClient)
    end
    self.vehicleJob = _ARG_1_
    self.textInfo = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
  elseif _ARG_0_ == "endJobClient" then
    exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik zako\197\132czy\197\130 prac\196\153", "info")
    endJobAll()
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "tpPos", localPlayer, {
      -2014.65,
      -2419.88,
      30.62
    })
  elseif _ARG_0_ == "sendOfferJobClient" then
    setElementData(localPlayer, "player_offerTrade", true)
    exports.st_gui:showPlayerNotification("Otrzymano zaproszenie do pracy duo od gracza " .. getPlayerName(_ARG_1_) .. " kliknij przycisk \"P\" aby zaakceptowa\196\135", "info", 0, 10000)
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
    bindKey("P", "down", function()
      twojWspolpracownik = _UPVALUE0_
      if not isEventHandlerAdded("onClientRender", root, window) then
        loadTextures()
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        showCursor(true)
      end
      positions = _UPVALUE1_
      pozycjaPojazdu = _UPVALUE2_
      self.lider = false
      windows.category = "level"
      windows.background = false
      self.offerLevel = true
      if isTimer(timer) then
        killTimer(timer)
      end
      unbindKey("P")
      triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "sendOfferJob2", localPlayer, _UPVALUE0_, "akceptacja")
      setElementData(localPlayer, "player_offerTrade", false)
      triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "plrJob", localPlayer, true)
    end)
    timer = setTimer(function()
      exports.st_gui:showPlayerNotification("Odrzucono ofert\196\153 wsp\195\179\197\130pracy", "info")
      unbindKey("P")
      triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "sendOfferJob2", localPlayer, _UPVALUE0_, "odrzucil")
      setElementData(localPlayer, "player_offerTrade", false)
    end, 10500, 1)
  elseif _ARG_0_ == "sendOfferJob2Client" then
    if _ARG_3_ == "akceptacja" then
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
      twojWspolpracownik = _ARG_1_
      windows.category = false
      windows.background = false
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      for _FORV_9_, _FORV_10_ in pairs(textures) do
        if isElement(_FORV_10_) then
          destroyElement(_FORV_10_)
        end
      end
      textures = {}
      texturesRender = {
        user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
      }
      startJob()
      self.lider = true
      exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " zapakowa\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "success")
    else
      exports.st_gui:showPlayerNotification("Gracz " .. getPlayerName(_ARG_1_) .. " odrzuci\197\130/a twoje zaproszenie do wsp\195\179\197\130pracy", "error")
      windows.category = "g\197\130\195\179wne"
      windows.background = true
    end
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
  elseif _ARG_0_ == "wyslijNowePozycjeClient" then
    positions = _ARG_1_
    selfSelect.id = false
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
function klikniecieSpacjiMiniGierka()
  if not clickC then
    selfJob.punktyRabanie = selfJob.punktyRabanie + 1
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "setPedAnimation", localPlayer, {
      "baseball",
      "bat_1",
      1,
      false
    })
    if selfJob.punktyRabanie >= selfJob.punktyRabanieMax then
      clickC = true
      setTimer(function()
        if isTimer(_UPVALUE0_) then
          killTimer(_UPVALUE0_)
        end
        setCameraTarget(localPlayer)
        setElementFrozen(localPlayer, false)
        triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "setPedAnimation", localPlayer, false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        windows.scinanieDrewna = false
        selfJob.punktyRabanie = 0
        clickC = true
        setTimer(function()
          clickC = false
        end, 550, 1)
        if isElement(tressStandard[selfJob.idScinanegoDrewna]) then
          tressSciete[selfJob.idScinanegoDrewna] = createObject(846, getElementPosition(tressStandard[selfJob.idScinanegoDrewna]))
          setObjectScale(tressSciete[selfJob.idScinanegoDrewna], 0.9)
          table.insert(selfJob.tableTreesSciete, {
            id = selfJob.idScinanegoDrewna
          })
          if isElement(tressStandard[selfJob.idScinanegoDrewna]) then
            destroyElement(tressStandard[selfJob.idScinanegoDrewna])
          end
          if isElement(tressBlip[selfJob.idScinanegoDrewna]) then
            destroyElement(tressBlip[selfJob.idScinanegoDrewna])
          end
        elseif isElement(tressSciete[selfJob.idScinanegoDrewna]) then
          treesDoZebrania[selfJob.idScinanegoDrewna] = createObject(1463, getElementPosition(tressSciete[selfJob.idScinanegoDrewna]))
          setObjectScale(treesDoZebrania[selfJob.idScinanegoDrewna], 0.35)
          setElementCollisionsEnabled(treesDoZebrania[selfJob.idScinanegoDrewna], false)
          table.insert(selfJob.tableTreesDoZebrania, {
            id = selfJob.idScinanegoDrewna
          })
          if isElement(tressSciete[selfJob.idScinanegoDrewna]) then
            destroyElement(tressSciete[selfJob.idScinanegoDrewna])
          end
        end
        if twojWspolpracownik then
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroScinanie", localPlayer, twojWspolpracownik, "stworzNoweDrewno", selfJob.idScinanegoDrewna, selfJob.idScinanegoDrewna_i)
        end
        selfJob.idScinanegoDrewna = false
        selfJob.idScinanegoDrewna_i = false
      end, 550, 1)
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
function loadTextures()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    widget = dxCreateTexture(":ST_jobs_settings/img/widget_jobs.png"),
    off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
    info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
    improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
    start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
    stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
    game_photo = dxCreateTexture("img/game_photo.png"),
    dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
    level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
    level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
    level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
    level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
    energy_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/energy_icon.png"),
    money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
    card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png"),
    car_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/car_icon.png"),
    condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
    lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
    unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
    requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
    duo_icon = dxCreateTexture(":ST_mower_job/img/duo_icon.png"),
    solo_icon = dxCreateTexture(":ST_mower_job/img/solo_icon.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png")
  }
  levelJobTable = {
    {
      levelJob = 1,
      exp = 0,
      moneyJob = "0",
      level = 0,
      img = textures.level1_icon,
      money = 1
    },
    {
      levelJob = 2,
      exp = 500,
      moneyJob = "0",
      level = 10,
      img = textures.level2_icon,
      money = 1.2
    },
    {
      levelJob = 3,
      exp = 1000,
      moneyJob = "0",
      level = 25,
      img = textures.level3_icon,
      money = 1.4
    },
    {
      levelJob = 4,
      exp = 2000,
      moneyJob = "0",
      level = 40,
      img = textures.level4_icon,
      money = 1.6
    }
  }
end
function findRotation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) < 0 then
  end
  return -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) + 360
end
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function giveMoney(_ARG_0_)
  if isEventHandlerAdded("onClientVehicleStartEnter", self.vehicleJob, onVehEnter) then
    removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
  end
  self.posOdkladanieDrewna = false
  if isElement(selfJob.drzewoPojazdAlpha) then
    destroyElement(selfJob.drzewoPojazdAlpha)
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
    runningBlock(localPlayer, false)
  end
  if _ARG_0_ then
    exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek((math.floor(math.floor(self.money1) * 1.2))) .. " PLN za dostarczenie oraz pouk\197\130adanie drewna", "money")
  else
    exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek((math.floor(math.floor(self.money1) * 1.2))) .. " PLN za dostarczenie drewna", "money")
  end
  self.money = self.money - self.money1
  self.money = self.money + math.floor(math.floor(self.money1) * 1.2)
  self.ukladanieDrewna = false
  self.odlozoneDrewno = 0
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "wages", localPlayer, self.exp1, math.floor(math.floor(self.money1) * 1.2), self.timeSave)
  if self.lider == true then
    refreshPacks()
  end
  self.exp1 = 0
  self.money1 = 0
  self.timeSave = 0
  setTimer(function()
    if #ulozoneDrewno > 0 then
      for _FORV_3_, _FORV_4_ in ipairs(ulozoneDrewno) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
    end
    ulozoneDrewno = {}
  end, 60000, 1)
  if 0 < #drzewa_na_aucie then
    for _FORV_5_, _FORV_6_ in ipairs(drzewa_na_aucie) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
  end
  drzewa_na_aucie = {}
  if selfJob.trzymaDrewno then
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
  end
  self.textInfo = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "zablokujPojazd", localPlayer, self.vehicleJob, false)
  _ARG_0_ = false
end
function renderBieganie()
  keys = getBoundKeys("forwards")
  for _FORV_3_, _FORV_4_ in pairs(keys) do
    if _FORV_4_ and blocked then
      setPedControlState(localPlayer, "walk", true)
    end
  end
end
function runningBlock(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
    addEventHandler("onClientRender", root, renderBieganie)
    for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
      if _FORV_6_.ulepszenie_kondycja_drwal == 1 then
        toggleControl("walk", true)
        toggleControl("crouch", true)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setPedControlState("walk", false)
        blocked = false
      else
        blocked = true
        toggleControl("walk", false)
        toggleControl("crouch", false)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setPedControlState("walk", true)
      end
    end
  else
    removeEventHandler("onClientRender", root, renderBieganie)
    blocked = false
    toggleControl("walk", true)
    toggleControl("crouch", true)
    toggleControl("sprint", true)
    toggleControl("jump", true)
    setPedControlState("walk", false)
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
  end
end
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    cancelEvent()
  end
end
function usunDrzewa_anulowanie()
  if isElement(self.blipZlecenie) then
    destroyElement(self.blipZlecenie)
  end
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTrees) do
    if isElement(tressStandard[_FORV_4_.id]) then
      destroyElement(tressStandard[_FORV_4_.id])
    end
    if isElement(tressBlip[_FORV_4_.id]) then
      destroyElement(tressBlip[_FORV_4_.id])
    end
  end
  selfJob.tableTrees = {}
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTreesSciete) do
    if isElement(tressSciete[_FORV_4_.id]) then
      destroyElement(tressSciete[_FORV_4_.id])
    end
  end
  selfJob.tableTreesSciete = {}
  for _FORV_3_, _FORV_4_ in pairs(selfJob.tableTreesDoZebrania) do
    if isElement(treesDoZebrania[_FORV_4_.id]) then
      destroyElement(treesDoZebrania[_FORV_4_.id])
    end
  end
  selfJob.tableTreesDoZebrania = {}
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
  runningBlock(localPlayer, false)
  if isEventHandlerAdded("onClientVehicleStartEnter", self.vehicleJob, onVehEnter) then
    removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
  end
end
function removeById(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_.id == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return true
    end
  end
  return false
end
getResourceName(getThisResource(), true, 758171424)
return
