screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 225,
  y = 20 / zoom,
  w = 450 / zoom,
  h = 140 / zoom
}
dataJob = {startJob = false}
function renderJob()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    dataJob.time = dataJob.time + 1
    dataJob.timeSave = dataJob.timeSave + 1
  end
  dxDrawRoundedRectangle(windowsUP.x - 2 / zoom, windowsUP.y - 2 / zoom, windowsUP.w + 4 / zoom, windowsUP.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 15 / zoom, tocolor(25, 25, 25, 220))
  dxDrawText(dataJob.text, windowsUP.x, windowsUP.y + 0 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, true, false, true, false)
  dxDrawText("RYBAK - LEVEL #00a118" .. dataJob.levelJob, windowsUP.x, windowsUP.y - 75 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(dataJob.time) .. "", windowsUP.x + 10 / zoom, windowsUP.y + 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. dataJob.exp .. "", windowsUP.x + 10 / zoom, windowsUP.y + 60 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
  dxDrawText("Z\197\130owione: #ffbf00" .. przecinek(dataJob.zlowioneKG) .. "#f0f0f0 KG", windowsUP.x, windowsUP.y + 110 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  if dataJob.rodzajPrzynety then
    dxDrawText("Przyn\196\153ty premium: #ffbf00" .. przynetyPremium, windowsUP.x, windowsUP.y + 60 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  else
    dxDrawText("Przyn\196\153ty: #ffbf00" .. przynety, windowsUP.x, windowsUP.y + 60 / zoom, windowsUP.x + windowsUP.w - 10 / zoom, windowsUP.y + windowsUP.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
  end
  dxDrawText("Aby zako\197\132czy\196\135 prac\196\153 #ffbc00/zakonczprace", windowsUP.x, windowsUP.y + 173 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "center", "center", false, false, false, true, false)
  dxDrawText("Aby zmieni\196\135 rodzaj przyn\196\153ty kliknij \"#ffbc00H#c8c8c8\"", windowsUP.x, windowsUP.y + 213 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "center", "center", false, false, false, true, false)
end
bindKey("mouse1", "down", function()
  if getPedWeapon(localPlayer) == 7 then
    if dataJob.startJob then
      rzucLinke()
    else
      if getElementData(localPlayer, "player:job") then
        return
      end
      startJob()
    end
  end
end)
function bindZwijanieDown()
  if renderMiniGierka then
    return
  end
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    if dataJob.jestBranie then
      return
    end
    _FORV_4_.isReeling = true
  end
end
function bindZwijanieUp()
  if renderMiniGierka then
    return
  end
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    if dataJob.jestBranie then
      return
    end
    _FORV_4_.isReeling = false
  end
end
function rzucLinke()
  if renderMiniGierka then
    triggerServerEvent("ev", resourceRoot, "lowienie", 3)
    return
  end
  if dataJob.jestBranie and not dataJob.zlowilRybke then
    triggerServerEvent("ev", resourceRoot, "lowienie", 3)
    addEventHandler("onClientRender", root, miniGierkaRender)
    randomArrowSpeed = math.random(2, 10)
    randomArrow = math.random(1, 2)
    if randomArrow == 1 then
      arrowPos = math.random(20, 150)
    else
      arrowPos = math.random(340, 430)
    end
    renderMiniGierka = true
    if tonumber(szybszeLowienie_ulepsznie) == 1 then
    end
    timer = setTimer(function()
      if arrowPos >= 270 and arrowPos <= 400 then
        dataJob.jestBranie = false
        triggerServerEvent("ev", resourceRoot, "lowienie", 2)
        exports.st_gui:showPlayerNotification("Zwi\197\132 \197\188y\197\130k\196\153", "info")
        dataJob.text = "zaczepiono ryb\196\153, zwi\197\132 \197\188y\197\130k\196\153 #ffbf00PPM"
        dataJob.zlowilRybke = true
      else
        usunZylke()
      end
      removeEventHandler("onClientRender", root, miniGierkaRender)
      renderMiniGierka = false
    end, 5000, 1)
  else
    mozeLowic = false
    isBoatOwner = false
    x, y, z = getElementPosition(localPlayer)
    veh = getPedContactElement(localPlayer)
    modelLodzi = false
    if veh and getElementType(veh) == "vehicle" then
      model = getElementModel(veh)
      if getVehicleType(veh) == "Boat" then
        if not getElementData(veh, "salonXDXD") then
          if getElementData(veh, "vehicle:id") then
            players = {}
            for _FORV_3_, _FORV_4_ in ipairs(getElementsByType("player")) do
              if getElementData(veh, "vehicle:id") and getPedContactElement(_FORV_4_) == veh and getPedContactElement(_FORV_4_) and getElementType((getPedContactElement(_FORV_4_))) == "vehicle" and getVehicleType((getPedContactElement(_FORV_4_))) == "Boat" and getElementData(getPedContactElement(_FORV_4_), "vehicle:id") then
                table.insert(players, _FORV_4_)
                if getElementData(getPedContactElement(_FORV_4_), "vehicle:rent") then
                  if getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedPlayer") == getElementData(_FORV_4_, "player:sid") or tonumber((getElementData(getPedContactElement(_FORV_4_), "vehicle:rent"))) == getElementData(_FORV_4_, "player:sid") or getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedGroup") and getElementData(_FORV_4_, "player:organization") and getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedGroup") == getElementData(_FORV_4_, "player:organization") then
                    isBoatOwner = true
                  end
                elseif getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedPlayer") == getElementData(_FORV_4_, "player:sid") or getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedGroup") and getElementData(_FORV_4_, "player:organization") and getElementData(getPedContactElement(_FORV_4_), "vehicle:ownedGroup") == getElementData(_FORV_4_, "player:organization") then
                  isBoatOwner = true
                end
              end
            end
            if isBoatOwner then
              if isPlayerLimitOk(model, #players) then
              else
                exports.st_gui:showPlayerNotification("Na \197\130odzi jest zbyt wiele graczy", "error")
              end
              modelLodzi = model
              mozeLowic = true
            else
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz \197\130owi\196\135 gdy w\197\130a\197\155ciciela nie ma na \197\130odzi.", "error")
            end
          end
        else
          exports.st_gui:showPlayerNotification("No to tak nie dzia\197\130a", "troll")
        end
      end
    elseif isPedOnGround(localPlayer) then
      if 2 > z then
        mozeLowic = true
      else
        exports.st_gui:showPlayerNotification("Nie jeste\197\155 na wodzie", "error")
      end
    end
    if mozeLowic and not dataJob.zlowilRybke then
      if zapelnienieEkwipunku + 0.1 >= maxKgZapelnienie then
        exports.st_gui:showPlayerNotification("Ekwipunek pe\197\130ny \226\128\147 nie mo\197\188esz z\197\130owi\196\135 wi\196\153cej ryb", "error")
        return
      end
      arrowPos = 0
      dataJob.text = "zarzucono sp\197\130awik, poczekaj na branie"
      for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
        if _FORV_4_.isCasting or _FORV_4_.isReeling or 2 < #_FORV_4_.ropeSegments then
          return
        end
      end
      if dataJob.rodzajPrzynety then
        if 0 >= przynetyPremium then
          exports.st_gui:showPlayerNotification("Nie posiadasz przyn\196\153t premium", "error")
          return
        end
        przynetyPremium = przynetyPremium - 1
      else
        if 0 >= przynety then
          exports.st_gui:showPlayerNotification("Nie posiadasz przyn\196\153t", "error")
          return
        end
        przynety = przynety - 1
      end
      ropesElements[createRope(wedka_job, {
        0.15,
        -0.015,
        1.5
      }, 0.5, 50, 0.15, 0.9, tocolor(200, 200, 200), 0.2)].castTarget = {
        x = getElementPosition(localPlayer) + math.cos((math.rad(getElementRotation(localPlayer) + 90))) * 27,
        y = getElementPosition(localPlayer) + math.sin((math.rad(getElementRotation(localPlayer) + 90))) * 27,
        z = getElementPosition(localPlayer)
      }
      triggerServerEvent("ev", resourceRoot, "lowienie", 1, dataJob.rodzajPrzynety)
      obj = createObject(1213, 188.67042541504, -146.88671875, 0.0445815324783)
      setObjectScale(obj, 0.5)
      attachRopeElement(createRope(wedka_job, {
        0.15,
        -0.015,
        1.5
      }, 0.5, 50, 0.15, 0.9, tocolor(200, 200, 200), 0.2), obj, {
        0,
        0,
        0.2
      }, {
        0,
        0,
        0
      })
      setTimer(function()
        if isElement(obj) then
          dataJob.veh = createVehicle(462, 188.67042541504, -146.88671875, 0.0445815324783, 0, 0, 0)
          setElementCollisionsEnabled(dataJob.veh, false)
          setElementAlpha(dataJob.veh, 0)
          attachElements(dataJob.veh, obj, 0, 0, -0.55)
        end
      end, 9900, 1)
    end
  end
end
function usunZylke()
  dataJob.jestBranie = false
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    if _FORV_4_.attached and isElement(_FORV_4_.attached.element) then
      destroyElement(_FORV_4_.attached.element)
    end
    destroyElement(_FORV_3_)
  end
  if isElement(dataJob.veh) then
    destroyElement(dataJob.veh)
  end
  triggerServerEvent("ev", resourceRoot, "lowienie", false)
  if arrowPos >= 270 and arrowPos <= 400 then
    addFish(modelLodzi)
  else
    exports.st_gui:showPlayerNotification("Urwano \197\188y\197\130k\196\153", "error")
  end
  dataJob.zlowilRybke = false
  dataJob.text = "ZARZU\196\134 W\196\152DK\196\152, kliknij #ffbf00LPM"
end
function startJob()
  texturesJob = {
    belt = dxCreateTexture("img/belt.png"),
    arrow = dxCreateTexture("/img/arrow.png")
  }
  przynety = 0
  przynetyPremium = 0
  triggerServerEvent("ev", resourceRoot, "showStatisticsJobsNew", localPlayer)
  tick = getTickCount()
  dataJob = {}
  dataJob.text = "ZARZU\196\134 W\196\152DK\196\152, kliknij #ffbf00LPM"
  dataJob.time = 0
  dataJob.timeSave = 0
  dataJob.exp = 0
  dataJob.jestBranie = false
  dataJob.levelJob = 0
  dataJob.zlowioneKG = 0
  dataJob.veh = false
  dataJob.rodzajPrzynety = false
  addEventHandler("onClientRender", root, renderJob)
  addEventHandler("onClientPreRender", root, updateRope)
  dataJob.startJob = true
  bindKey("H", "down", zmianaPrzynety)
  bindKey("mouse2", "down", bindZwijanieDown)
  bindKey("mouse2", "up", bindZwijanieUp)
  addCommandHandler("zakonczprace", endJobAll)
  triggerServerEvent("ev", resourceRoot, "plrJob", localPlayer, true)
  wedka_job = createObject(338, 188.67042541504, -146.88671875, 0.0445815324783)
  setElementAlpha(wedka_job, 0)
  exports.pattach:attach(wedka_job, localPlayer, 24, 0, 0, 0, 0, 0, 0)
end
function endJobAll()
  unbindKey("mouse2", "down", bindZwijanieDown)
  unbindKey("mouse2", "up", bindZwijanieUp)
  unbindKey("H", "down", zmianaPrzynety)
  removeEventHandler("onClientRender", root, renderJob)
  removeEventHandler("onClientPreRender", root, updateRope)
  removeCommandHandler("zakonczprace", endJobAll)
  triggerServerEvent("ev", resourceRoot, "plrJob", localPlayer, false)
  triggerServerEvent("ev", resourceRoot, "lowienie", 0)
  triggerServerEvent("ev", resourceRoot, "timeSave", dataJob.timeSave)
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    if _FORV_4_.attached and isElement(_FORV_4_.attached.element) then
      destroyElement(_FORV_4_.attached.element)
    end
    destroyElement(_FORV_3_)
  end
  if isElement(dataJob.veh) then
    destroyElement(dataJob.veh)
  end
  dataJob = {}
  if isElement(wedka_job) then
    destroyElement(localPlayer)
  end
  for _FORV_3_, _FORV_4_ in pairs(texturesJob) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  texturesJob = {}
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    zapelnienieEkwipunku = 0
    przynety = 0
    przynetyPremium = 0
    zapelnienie_ulepszenie = 0
    wedka_ulepszenie = 0
    if dataJob then
      for _FORV_10_, _FORV_11_ in ipairs(table_statistics) do
        przynety = _FORV_11_.przynety_rybak
        przynetyPremium = _FORV_11_.przynetyPremium_rybak
        dataJob.levelJob = _FORV_11_.level_fishingRod
        szybszeLowienie_ulepsznie = _FORV_11_.szybszeLowienie_ulepsznie
        zapelnienieEkwipunku = _FORV_11_.Makrela + _FORV_11_.Karp + _FORV_11_.Dorsz + _FORV_11_.Szczupak + _FORV_11_.Rekin + _FORV_11_.Zlota
        zapelnienie_ulepszenie = _FORV_11_.zapelnienie_ulepszenie
        if zapelnienie_ulepszenie == 0 then
          maxKgZapelnienie = 1000
        elseif zapelnienie_ulepszenie == 1 then
          maxKgZapelnienie = 1500
        elseif zapelnienie_ulepszenie == 2 then
          maxKgZapelnienie = 3000
        elseif zapelnienie_ulepszenie == 3 then
          maxKgZapelnienie = 6000
        elseif zapelnienie_ulepszenie == 4 then
          maxKgZapelnienie = 10000
        end
        if _ARG_2_ == "Kupno" then
          maWedke = _ARG_3_
          if windows.category == "Sklep" then
            lista_sklep = {
              {
                "W\196\153dka",
                textures.fishing_rod_icon,
                2000000,
                numberSelect = 0,
                maxIlosc = 1,
                aktualnaIlosc = maWedke
              },
              {
                "Przyn\196\153ty standardowe",
                textures.przyneta_icon,
                500,
                numberSelect = 0,
                maxIlosc = przynetyMax,
                aktualnaIlosc = przynety
              },
              {
                "Przyn\196\153ty premium +10%",
                textures.przyneta1_icon,
                1200,
                numberSelect = 0,
                maxIlosc = przynetyPremiumMax,
                aktualnaIlosc = przynetyPremium
              }
            }
          end
        elseif _ARG_2_ == "Sprzedaz" then
          for _FORV_16_, _FORV_17_ in ipairs(rybkiSprzedaz_tabela) do
            _FORV_17_.numberSelect = 0
            if _FORV_17_.name == "Makrela" then
              _FORV_17_.history = _ARG_3_[1]
              _FORV_17_.cena = _ARG_4_[1]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Makrela)
            elseif _FORV_17_.name == "Karp" then
              _FORV_17_.history = _ARG_3_[2]
              _FORV_17_.cena = _ARG_4_[2]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Karp)
            elseif _FORV_17_.name == "Dorsz" then
              _FORV_17_.history = _ARG_3_[3]
              _FORV_17_.cena = _ARG_4_[3]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Dorsz)
            elseif _FORV_17_.name == "Szczupak" then
              _FORV_17_.history = _ARG_3_[4]
              _FORV_17_.cena = _ARG_4_[4]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Szczupak)
            elseif _FORV_17_.name == "Rekin" then
              _FORV_17_.history = _ARG_3_[5]
              _FORV_17_.cena = _ARG_4_[5]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Rekin)
            elseif _FORV_17_.name == "Z\197\130ota rybka" then
              _FORV_17_.history = _ARG_3_[6]
              _FORV_17_.cena = _ARG_4_[6]
              _FORV_17_.ilosc = ("%.2f"):format(_FORV_11_.Zlota)
            end
          end
        elseif _ARG_2_ == "Ulepszenie" then
          szybszeLowienie_ulepsznie = _FORV_11_.szybszeLowienie_ulepsznie
          zapelnienie_ulepszenie = _FORV_11_.zapelnienie_ulepszenie
          wedka_ulepszenie = _FORV_11_.level_fishingRod
          przynetyMax_ulepszenie = _FORV_11_.przynetyMax_ulepszenie
          przynetyPremiumMax_ulepszenie = _FORV_11_.przynetyPremiumMax_ulepszenie
          upgrades = {
            {
              name = "Ulepszenie w\196\153dki",
              price = {
                1000000,
                1500000,
                2000000,
                4000000
              },
              wymagania = {
                10000,
                20000,
                30000,
                50000
              },
              zmiana = {
                5,
                10,
                15,
                20
              },
              unit = {"+", "%"},
              icon = textures.fishing_rod_icon,
              status = wedka_ulepszenie,
              nameDatabase = "level_fishingRod",
              maxLevel = 4
            },
            {
              name = "Wi\196\153ksza pojemno\197\155\196\135 przyn\196\153t standardowych",
              price = {
                300000,
                550000,
                750000,
                1000000
              },
              wymagania = {
                2500,
                5000,
                10000,
                20000
              },
              zmiana = {
                50,
                80,
                125,
                300
              },
              unit = {"", "szt."},
              icon = textures.przyneta_icon,
              status = przynetyMax_ulepszenie,
              nameDatabase = "przynetyMax_ulepszenie",
              maxLevel = 4
            },
            {
              name = "Wi\196\153ksza pojemno\197\155\196\135 przyn\196\153t premium",
              price = {
                300000,
                500000,
                750000,
                1000000
              },
              wymagania = {
                1000,
                2000,
                3000,
                4000
              },
              zmiana = {
                30,
                50,
                75,
                150
              },
              unit = {"", "szt."},
              icon = textures.przyneta1_icon,
              status = przynetyPremiumMax_ulepszenie,
              nameDatabase = "przynetyPremiumMax_ulepszenie",
              maxLevel = 4
            },
            {
              name = "Wi\196\153ksza pojemno\197\155\196\135 ekwipunku",
              price = {
                500000,
                1000000,
                1500000,
                3000000
              },
              wymagania = {
                5000,
                10000,
                15000,
                30000
              },
              zmiana = {
                1500,
                3000,
                6000,
                10000
              },
              unit = {"", "kg"},
              icon = textures.fish_icon,
              status = zapelnienie_ulepszenie,
              nameDatabase = "zapelnienie_ulepszenie",
              maxLevel = 4
            },
            {
              name = "Szybsze \197\130owienie ryby",
              price = {2000000},
              wymagania = {
                20000,
                2000,
                3000,
                4000
              },
              zmiana = {5},
              unit = {"-", "s"},
              icon = textures.time_icon,
              status = szybszeLowienie_ulepsznie,
              nameDatabase = "szybszeLowienie_ulepsznie",
              maxLevel = 1
            }
          }
        end
      end
    end
  elseif _ARG_0_ == "showGui" then
    if _ARG_1_ == true then
      textures = {
        sell_icon = dxCreateTexture("img/sell_icon.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
        dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
        off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
        shop_icon = dxCreateTexture(":ST_dashboard/img/shop_icon.png"),
        duo_icon = dxCreateTexture(":ST_mower_job/img/duo_icon.png"),
        upgrade_icon = dxCreateTexture("img/upgrade_icon.png"),
        przyneta_icon = dxCreateTexture("img/przyneta_icon.png"),
        przyneta1_icon = dxCreateTexture("img/przyneta1_icon.png"),
        time_icon = dxCreateTexture("img/time_icon.png"),
        fish_icon = dxCreateTexture("img/fish_icon.png"),
        goldfish_icon = dxCreateTexture("img/goldfish_icon.png"),
        fishing_rod_icon = dxCreateTexture(":ST_invetory/img/fishing_rod_icon.png"),
        carp_icon = dxCreateTexture(":ST_invetory/img/carp_icon.png"),
        mackerel_icon = dxCreateTexture(":ST_invetory/img/mackerel_icon.png"),
        cod_icon = dxCreateTexture(":ST_invetory/img/cod_icon.png"),
        pike_icon = dxCreateTexture(":ST_invetory/img/pike_icon.png"),
        shark_icon = dxCreateTexture(":ST_invetory/img/shark_icon.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      addEventHandler("onClientClick", root, click)
      showCursor(true)
      windows.background = true
      windows.category = "Informacje"
      table_statistics = _ARG_3_
      zapelnienieEkwipunku = 0
      zapelnienie_ulepszenie = 0
      wedka_ulepszenie = 0
      szybszeLowienie_ulepsznie = 0
      maxKgZapelnienie = 1000
      przynety = 0
      przynetyPremium = 0
      przynetyMax_ulepszenie = 0
      przynetyMax = 0
      przynetyPremiumMax_ulepszenie = 0
      przynetyPremiumMax = 0
      lacznaCenaRyb = 0
      maWedke = _ARG_5_
      czas_przeladowanie = _ARG_6_
      for _FORV_17_, _FORV_18_ in ipairs(_ARG_3_) do
        zapelnienieEkwipunku = _FORV_18_.Makrela + _FORV_18_.Karp + _FORV_18_.Dorsz + _FORV_18_.Szczupak + _FORV_18_.Rekin + _FORV_18_.Zlota
        zapelnienie_ulepszenie = _FORV_18_.zapelnienie_ulepszenie
        if zapelnienie_ulepszenie == 0 then
          maxKgZapelnienie = 1000
        elseif zapelnienie_ulepszenie == 1 then
          maxKgZapelnienie = 1500
        elseif zapelnienie_ulepszenie == 2 then
          maxKgZapelnienie = 3000
        elseif zapelnienie_ulepszenie == 3 then
          maxKgZapelnienie = 6000
        elseif zapelnienie_ulepszenie == 4 then
          maxKgZapelnienie = 10000
        end
        przynetyMax_ulepszenie = _FORV_18_.przynetyMax_ulepszenie
        if przynetyMax_ulepszenie == 0 then
          przynetyMax = 30
        elseif przynetyMax_ulepszenie == 1 then
          przynetyMax = 50
        elseif przynetyMax_ulepszenie == 2 then
          przynetyMax = 80
        elseif przynetyMax_ulepszenie == 3 then
          przynetyMax = 125
        elseif przynetyMax_ulepszenie == 4 then
          przynetyMax = 300
        end
        szybszeLowienie_ulepsznie = _FORV_18_.szybszeLowienie_ulepsznie
        wedka_ulepszenie = _FORV_18_.level_fishingRod
        przynetyPremiumMax_ulepszenie = _FORV_18_.przynetyPremiumMax_ulepszenie
        if przynetyPremiumMax_ulepszenie == 0 then
          przynetyPremiumMax = 20
        elseif przynetyPremiumMax_ulepszenie == 1 then
          przynetyPremiumMax = 30
        elseif przynetyPremiumMax_ulepszenie == 2 then
          przynetyPremiumMax = 50
        elseif przynetyPremiumMax_ulepszenie == 3 then
          przynetyPremiumMax = 75
        elseif przynetyPremiumMax_ulepszenie == 4 then
          przynetyPremiumMax = 150
        end
        przynety = _FORV_18_.przynety_rybak
        przynetyPremium = _FORV_18_.przynetyPremium_rybak
        lacznaCenaRyb = math.floor(_ARG_2_[1] * ("%.2f"):format(_FORV_18_.Makrela) + _ARG_2_[2] * ("%.2f"):format(_FORV_18_.Karp) + _ARG_2_[3] * ("%.2f"):format(_FORV_18_.Dorsz) + _ARG_2_[4] * ("%.2f"):format(_FORV_18_.Szczupak) + _ARG_2_[5] * ("%.2f"):format(_FORV_18_.Rekin) + _ARG_2_[6] * ("%.2f"):format(_FORV_18_.Zlota))
        lista_sklep = {
          {
            "W\196\153dka",
            textures.fishing_rod_icon,
            2000000,
            numberSelect = 0,
            maxIlosc = 1,
            aktualnaIlosc = maWedke
          },
          {
            "Przyn\196\153ty standardowe",
            textures.przyneta_icon,
            200,
            numberSelect = 0,
            maxIlosc = przynetyMax,
            aktualnaIlosc = przynety
          },
          {
            "Przyn\196\153ty premium",
            textures.przyneta1_icon,
            600,
            numberSelect = 0,
            maxIlosc = przynetyPremiumMax,
            aktualnaIlosc = przynetyPremium
          }
        }
        rybkiSprzedaz_tabela = {
          {
            name = "Makrela",
            icon = textures.mackerel_icon,
            cena = _ARG_2_[1],
            numberSelect = ("%.2f"):format(_FORV_18_.Makrela),
            history = _ARG_4_[1],
            max = {100, 700},
            ilosc = ("%.2f"):format(_FORV_18_.Makrela)
          },
          {
            name = "Karp",
            icon = textures.carp_icon,
            cena = _ARG_2_[2],
            numberSelect = ("%.2f"):format(_FORV_18_.Karp),
            history = _ARG_4_[2],
            max = {200, 450},
            ilosc = ("%.2f"):format(_FORV_18_.Karp)
          },
          {
            name = "Dorsz",
            icon = textures.cod_icon,
            cena = _ARG_2_[3],
            numberSelect = ("%.2f"):format(_FORV_18_.Dorsz),
            history = _ARG_4_[3],
            max = {100, 350},
            ilosc = ("%.2f"):format(_FORV_18_.Dorsz)
          },
          {
            name = "Szczupak",
            icon = textures.pike_icon,
            cena = _ARG_2_[4],
            numberSelect = ("%.2f"):format(_FORV_18_.Szczupak),
            history = _ARG_4_[4],
            max = {300, 850},
            ilosc = ("%.2f"):format(_FORV_18_.Szczupak)
          },
          {
            name = "Rekin",
            icon = textures.shark_icon,
            cena = _ARG_2_[5],
            numberSelect = ("%.2f"):format(_FORV_18_.Rekin),
            history = _ARG_4_[5],
            max = {300, 1100},
            ilosc = ("%.2f"):format(_FORV_18_.Rekin)
          },
          {
            name = "Z\197\130ota rybka",
            icon = textures.goldfish_icon,
            cena = _ARG_2_[6],
            numberSelect = ("%.2f"):format(_FORV_18_.Zlota),
            history = _ARG_4_[6],
            max = {7000, 50000},
            ilosc = ("%.2f"):format(_FORV_18_.Zlota)
          }
        }
        upgrades = {
          {
            name = "Ulepszenie w\196\153dki",
            price = {
              1000000,
              1500000,
              2000000,
              4000000
            },
            wymagania = {
              10000,
              20000,
              30000,
              50000
            },
            zmiana = {
              5,
              10,
              15,
              20
            },
            unit = {"+", "%"},
            icon = textures.fishing_rod_icon,
            status = wedka_ulepszenie,
            nameDatabase = "level_fishingRod",
            maxLevel = 4
          },
          {
            name = "Wi\196\153ksza pojemno\197\155\196\135 przyn\196\153t standardowych",
            price = {
              300000,
              550000,
              750000,
              1000000
            },
            wymagania = {
              2500,
              5000,
              10000,
              20000
            },
            zmiana = {
              50,
              80,
              125,
              300
            },
            unit = {"", "szt."},
            icon = textures.przyneta_icon,
            status = przynetyMax_ulepszenie,
            nameDatabase = "przynetyMax_ulepszenie",
            maxLevel = 4
          },
          {
            name = "Wi\196\153ksza pojemno\197\155\196\135 przyn\196\153t premium",
            price = {
              300000,
              500000,
              750000,
              1000000
            },
            wymagania = {
              1000,
              2000,
              3000,
              4000
            },
            zmiana = {
              30,
              50,
              75,
              150
            },
            unit = {"", "szt."},
            icon = textures.przyneta1_icon,
            status = przynetyPremiumMax_ulepszenie,
            nameDatabase = "przynetyPremiumMax_ulepszenie",
            maxLevel = 4
          },
          {
            name = "Wi\196\153ksza pojemno\197\155\196\135 ekwipunku",
            price = {
              500000,
              1000000,
              1500000,
              3000000
            },
            wymagania = {
              5000,
              10000,
              15000,
              30000
            },
            zmiana = {
              1500,
              3000,
              6000,
              10000
            },
            unit = {"", "kg"},
            icon = textures.fish_icon,
            status = zapelnienie_ulepszenie,
            nameDatabase = "zapelnienie_ulepszenie",
            maxLevel = 4
          },
          {
            name = "Szybsze \197\130owienie ryby",
            price = {2000000},
            wymagania = {
              20000,
              2000,
              3000,
              4000
            },
            zmiana = {5},
            unit = {"-", "s"},
            icon = textures.time_icon,
            status = szybszeLowienie_ulepsznie,
            nameDatabase = "szybszeLowienie_ulepsznie",
            maxLevel = 1
          }
        }
      end
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      for _FORV_10_, _FORV_11_ in pairs(textures) do
        if isElement(_FORV_11_) then
          destroyElement(_FORV_11_)
        end
      end
      textures = {}
      showCursor(false)
    end
  end
end)
function getRandomFish(_ARG_0_)
  for _FORV_6_, _FORV_7_ in pairs(_UPVALUE0_) do
    if (_FORV_7_.weightByBoat[_ARG_0_] or _FORV_7_.weightByBoat.none) and math.random() * 100 <= 0 + _FORV_7_.chance then
      return _FORV_6_
    end
  end
  return nil
end
function getFishWeight(_ARG_0_, _ARG_1_)
  if not _UPVALUE0_[_ARG_0_] then
    return 1
  end
  if not (_UPVALUE0_[_ARG_0_].weightByBoat[_ARG_1_] or _UPVALUE0_[_ARG_0_].weightByBoat.none) then
    return 1
  end
  return math.random((_UPVALUE0_[_ARG_0_].weightByBoat[_ARG_1_] or _UPVALUE0_[_ARG_0_].weightByBoat.none)[1], (_UPVALUE0_[_ARG_0_].weightByBoat[_ARG_1_] or _UPVALUE0_[_ARG_0_].weightByBoat.none)[2])
end
function addFish(_ARG_0_)
  kgRandom = 0
  if not getRandomFish(_ARG_0_ or "none") then
    exports.st_gui:showPlayerNotification("Nie uda\197\130o si\196\153 z\197\130owi\196\135 ryby", "error")
    return
  end
  kgRandom = getFishWeight(getRandomFish(_ARG_0_ or "none"), _ARG_0_ or "none")
  for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
    if _FORV_8_.level_fishingRod == 1 then
      kgRandom = kgRandom * 1.05
    elseif _FORV_8_.level_fishingRod == 1 then
      kgRandom = kgRandom * 1.1
    elseif _FORV_8_.level_fishingRod == 3 then
      kgRandom = kgRandom * 1.15
    elseif _FORV_8_.level_fishingRod == 4 then
      kgRandom = kgRandom * 1.2
    end
  end
  if dataJob.rodzajPrzynety then
    kgRandom = kgRandom * 1.1
  end
  if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Rybak" then
    kgRandom = kgRandom * getElementData(localPlayer, "player:bonusJob").addMoney
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    kgRandom = kgRandom * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
  end
  kgRandom = kgRandom
  kgRandom = kgRandom
  kgRandom = kgRandom / 10
  kgRandom1 = kgRandom
  if maxKgZapelnienie - zapelnienieEkwipunku < kgRandom1 then
    kgRandom1 = maxKgZapelnienie - zapelnienieEkwipunku
    kgRandom = kgRandom1
  end
  if 0 >= kgRandom1 then
    exports.st_gui:showPlayerNotification("Ekwipunek pe\197\130ny \226\128\147 nie mo\197\188esz z\197\130owi\196\135 wi\196\153cej ryb", "error")
    return
  end
  zapelnienieEkwipunku = zapelnienieEkwipunku + tonumber(("%.2f"):format(kgRandom))
  dataJob.zlowioneKG = dataJob.zlowioneKG + tonumber(("%.2f"):format(kgRandom))
  if math.random(1, 3) == 2 then
    dataJob.exp = dataJob.exp + 1
    exports.st_gui:showPlayerNotification("Wy\197\130owiono ryb\196\153 " .. getRandomFish(_ARG_0_ or "none") .. " - " .. tonumber(("%.2f"):format(kgRandom)) .. [[
kg
Zdobywasz 1 exp]], "money")
    exports.ST_levelsystem:addExp(1)
    triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
  else
    exports.st_gui:showPlayerNotification("Wy\197\130owiono ryb\196\153 " .. getRandomFish(_ARG_0_ or "none") .. " - " .. tonumber(("%.2f"):format(kgRandom)) .. "kg", "money")
  end
  triggerServerEvent("ev", resourceRoot, "addFish", {
    getRandomFish(_ARG_0_ or "none"),
    tonumber(("%.2f"):format(kgRandom1))
  })
end
function miniGierkaRender()
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y - math.floor(170 / zoom), _UPVALUE0_.w, _UPVALUE0_.h, texturesJob.belt, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  if getKeyState("mouse1") == true or getKeyState("space") == true then
    if randomArrowSpeed == 2 then
      plus = math.random(100, 150)
    elseif randomArrowSpeed == 3 then
      plus = math.random(150, 200)
    elseif randomArrowSpeed == 4 then
      plus = math.random(200, 250)
    elseif randomArrowSpeed == 5 then
      plus = math.random(250, 300)
    elseif randomArrowSpeed == 6 then
      plus = math.random(300, 350)
    elseif randomArrowSpeed == 7 then
      plus = math.random(350, 400)
    elseif randomArrowSpeed == 8 then
      plus = math.random(400, 450)
    elseif randomArrowSpeed == 9 then
      plus = math.random(450, 500)
    elseif randomArrowSpeed == 10 then
      plus = math.random(500, 550)
    end
    plus = math.floor(plus / 100)
    arrowPos = arrowPos + plus
  else
    if randomArrowSpeed == 2 then
      minus = math.random(100, 150)
    elseif randomArrowSpeed == 3 then
      minus = math.random(150, 200)
    elseif randomArrowSpeed == 4 then
      minus = math.random(200, 250)
    elseif randomArrowSpeed == 5 then
      minus = math.random(250, 300)
    elseif randomArrowSpeed == 6 then
      minus = math.random(300, 350)
    elseif randomArrowSpeed == 7 then
      minus = math.random(350, 400)
    elseif randomArrowSpeed == 8 then
      minus = math.random(400, 450)
    elseif randomArrowSpeed == 9 then
      minus = math.random(450, 500)
    elseif randomArrowSpeed == 10 then
      minus = math.random(500, 550)
    end
    minus = math.floor(minus / 100)
    arrowPos = arrowPos - minus
  end
  if arrowPos < 1 or arrowPos > 640 then
    usunZylke()
    removeEventHandler("onClientRender", root, miniGierkaRender)
    renderMiniGierka = false
    triggerServerEvent("ev", resourceRoot, "lowienie", false)
    if isTimer(timer) then
      killTimer(timer)
    end
    if isTimer(timer1) then
      killTimer(timer1)
    end
  end
  dxDrawImage(_UPVALUE0_.x + arrowPos / zoom, _UPVALUE0_.y - math.floor(175 / zoom), 60 / zoom, 55 / zoom, texturesJob.arrow, 0, 0, 0, tocolor(200, 200, 200, 255), false)
end
function zmianaPrzynety()
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    if _FORV_4_.isCasting or _FORV_4_.isReeling or #_FORV_4_.ropeSegments > 2 then
      return
    end
  end
  if dataJob.rodzajPrzynety then
    dataJob.rodzajPrzynety = false
  else
    dataJob.rodzajPrzynety = true
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
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  _ARG_6_ = _ARG_6_ or {}
  dxDrawRectangle(_ARG_0_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))), _ARG_1_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))), _ARG_2_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_3_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_5_)
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_, _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) > 0 then
    dxDrawRectangle(_ARG_0_, _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + _ARG_2_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_5_)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  end
end
function isPlayerLimitOk(_ARG_0_, _ARG_1_)
  return _ARG_1_ <= (({
    [472] = 3,
    [473] = 3,
    [452] = 5,
    [595] = 5,
    [454] = 6,
    [484] = 6,
    [493] = 6,
    [453] = 10,
    none = 1
  })[_ARG_0_] or 1)
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbb00" .. hours .. "#e6e6e6h #ffbb00" .. mins .. "#e6e6e6m #ffbb00" .. secs .. "#e6e6e6s"
  end
end
getResourceName(getThisResource(), true, 201324956)
return
