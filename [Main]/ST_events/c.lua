screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 225,
  y = 10 / zoom,
  w = 450 / zoom,
  h = 179 / zoom
}
windows = {
  main = false,
  panele = false,
  kolorowe = false,
  drift = false,
  szklany = false
}
nextMarker = 0
staffhex = {
  [4] = "770000",
  [35] = "004099",
  [3] = "8426b8",
  [25] = "801f4e",
  [2] = "a80000",
  [17] = "0077ff",
  [15] = "00b30f",
  [1] = "00eaff",
  [11] = "00ff9e",
  [0] = "fcba03"
}
function window()
  if windows.main == true then
    dxDrawImage(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
    if nameEvent == "derby" then
      nameEvent = "DERBY"
    elseif nameEvent == "wyscigSkuterki" then
      nameEvent = "WY\197\154CIG SKUTERKAMI"
    elseif nameEvent == "wyscigUliczny" then
      nameEvent = "WY\197\154CIG ULICZNY"
    elseif nameEvent == "wyscigOffroadowy" then
      nameEvent = "WY\197\154CIG OFFROADOWY"
    elseif nameEvent == "wyscigGokardami" then
      nameEvent = "WY\197\154CIG GOKARDAMI"
    elseif nameEvent == "spadajacePanele" then
      nameEvent = "SPADAJ\196\132CE PANELE"
    elseif nameEvent == "kolorowePanele" then
      nameEvent = "KOLOROWE PANELE"
    elseif nameEvent == "drift" then
      nameEvent = "DRIFT"
    elseif nameEvent == "szklanyMost" then
      nameEvent = "SZKLANY MOST"
    end
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      timeEnd = timeEnd - 1
    end
    dxDrawText("EVENT: " .. nameEvent .. "", windowsUP.x, windowsUP.y - 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    dxDrawText("Rozpocz\196\153ty przez #" .. staffhex[getElementData(playerOwn, "player:level")] .. "" .. getPlayerName(playerOwn), windowsUP.x, windowsUP.y - 35 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffffffSTART EVENTU ZA " .. resulted(timeEnd) .. " #ffffff| SLOTY: #fcba03" .. slots .. " #ffffff/ #fcba03" .. slotsMax .. "", windowsUP.x, windowsUP.y + 40 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    if zapisanoSie then
      dxDrawText("Zapisano si\196\153 na event!", windowsUP.x, windowsUP.y + 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(0, 200, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("Aby do\197\130\196\133czy\196\135 wpisz #fcba03/dolacz", windowsUP.x, windowsUP.y + 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.panele == true then
    for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_5_, "dolaczylDoEventu") == "spadajacePanele" then
        table.insert({}, _FORV_5_)
      end
    end
    dxDrawImage(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
    dxDrawText("SPADAJ\196\132CE PANELE", windowsUP.x, windowsUP.y - 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("POZOSTALI GRACZE: #fcba03" .. #{} .. "", windowsUP.x, windowsUP.y - 5 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("POZOSTA\197\129E PANELE: #fcba03" .. #pozostalePanele .. " #ffffff/ #fcba03" .. #maxWszystkichPaneli .. "", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.kolorowe == true then
    for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_5_, "dolaczylDoEventu") == "kolorowePanele" then
        table.insert({}, _FORV_5_)
      end
    end
    dxDrawImage(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
    dxDrawText("KOLOROWE PANELE", windowsUP.x, windowsUP.y - 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("POZOSTALI GRACZE: #fcba03" .. #{} .. "", windowsUP.x, windowsUP.y - 22 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("AKTUALNY KOLOR: " .. (currentColorHex or "#ffffff") .. (currentColorName or "BRAK") .. [[
 
 #ffffffCzas: #fcba03]] .. (koloroweTimer or 0) .. " sec", windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.szklany == true then
    for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_5_, "dolaczylDoEventu") == "szklanyMost" then
        table.insert({}, _FORV_5_)
      end
    end
    dxDrawImage(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
    dxDrawText("SZKLANY MOST", windowsUP.x, windowsUP.y - 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("POZOSTALI GRACZE: #fcba03" .. #{} .. "", windowsUP.x, windowsUP.y - 22 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("NIE WSKOCZ NA Z\197\129E SZK\197\129O!", windowsUP.x, windowsUP.y + 80 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.drift == true then
    for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_5_, "dolaczylDoEventu") == "drift" then
        table.insert({}, _FORV_5_)
      end
    end
    if drifttabelka then
      for _FORV_4_, _FORV_5_ in ipairs(drifttabelka) do
        if _FORV_5_.name == getPlayerName(localPlayer) then
          twojemiejsce = _FORV_4_
          punkty = _FORV_5_.points
          break
        end
      end
    end
    punkty = punkty or totalScore or 0
    twojemiejsce = twojemiejsce or 25
    dxDrawImage(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 200), false)
    dxDrawText("EVENT DRIFTU", windowsUP.x, windowsUP.y - 110 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center")
    dxDrawText("POZOSTALI GRACZE: #fcba03" .. #{} .. "#ffffff / Czas: #fcba03 " .. string.format("%02d:%02d", math.floor(czasDoKonca / 60), czasDoKonca % 60), windowsUP.x, windowsUP.y - 22 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true)
    dxDrawText("TWOJE PUNKTY: #fcba03 " .. punkty .. [[

 #ffffffTWOJE MIEJSCE: #fcba03 ]] .. twojemiejsce, windowsUP.x, windowsUP.y + 90 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true)
  end
end
score = 0
totalScore = 0
mult = 1
addEvent("drift:zacznijliczyc", true)
addEventHandler("drift:zacznijliczyc", root, function()
  score = 0
  mult = 1
  removeEventHandler("onClientRender", root, driftRender)
  addEventHandler("onClientRender", root, driftRender)
end)
czasDoKonca = 0
addEvent("drift:czasStart", true)
addEventHandler("drift:czasStart", root, function(_ARG_0_)
  czasDoKonca = _ARG_0_
  if isTimer(czasTimer) then
    killTimer(czasTimer)
  end
  czasTimer = setTimer(function()
    if czasDoKonca > 0 then
      czasDoKonca = czasDoKonca - 1
    end
  end, 1000, 0)
end)
drifttabelka = {}
addEvent("drift:updateMiejsce", true)
addEventHandler("drift:updateMiejsce", resourceRoot, function(_ARG_0_)
  drifttabelka = _ARG_0_
  for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_) do
  end
end)
addEvent("drift:przestanliczyc", true)
addEventHandler("drift:przestanliczyc", root, function()
  removeEventHandler("onClientRender", root, driftRender)
  score = 0
  mult = 1
  totalScore = 0
  drifttabelka = {}
  czasDoKonca = 0
  if isTimer(czasTimer) then
    killTimer(czasTimer)
  end
end)
addEvent("rozbijSzybe", true)
addEventHandler("rozbijSzybe", root, function(_ARG_0_)
  if isElement(_ARG_0_) then
    breakObject(_ARG_0_)
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGuiEvent" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png")
      }
      addEventHandler("onClientRender", root, window)
      windows.main = true
      nameEvent = _ARG_2_
      slots = 0
      slotsMax = _ARG_3_
      playerOwn = _ARG_4_
      timeEnd = 90
      tick = getTickCount()
    else
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      nameEvent = nil
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      zapisanoSie = false
      playerOwn = false
    end
  elseif _ARG_0_ == "slots" then
    slots = _ARG_1_
  elseif _ARG_0_ == "startWyscigSkuterki" then
    if _ARG_1_ == "wyscigUliczny" then
      posRace = posWyscigUliczny
    elseif _ARG_1_ == "wyscigSkuterki" then
      posRace = posWyscigSkuterkami
    elseif _ARG_1_ == "wyscigOffroadowy" then
      posRace = posWyscigOffroadowy
    elseif _ARG_1_ == "wyscigGokardami" then
      posRace = posWyscigGokardami
    end
    nextMarker = 0
    maxTarget = #posRace
    showMarker()
  elseif _ARG_0_ == "removeMarkerAll" then
    if isElement(raceMarker) then
      destroyElement(raceMarker)
    end
    if nextMarker and isElement(nextMarker) then
      destroyElement(nextMarker)
      nextMarker = nil
      nextMarker = 0
    end
  elseif _ARG_0_ == "dolaczlDoEventuC" then
    zapisanoSie = true
  elseif _ARG_0_ == "showGuiPanele" then
    if _ARG_2_ then
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.panele = false
      pozostalePanele = false
      maxWszystkichPaneli = false
    else
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png")
      }
      addEventHandler("onClientRender", root, window)
      windows.panele = true
      pozostalePanele = _ARG_1_
      maxWszystkichPaneli = _ARG_1_
    end
  elseif _ARG_0_ == "showGuiKolorowe" then
    if _ARG_2_ then
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      if windows.kolorowe then
        removeEventHandler("onClientRender", root, window)
        windows.kolorowe = false
      end
      currentColorHex = nil
      currentColorName = nil
      koloroweTimer = 0
    else
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png")
      }
      if not windows.kolorowe then
        addEventHandler("onClientRender", root, window)
        windows.kolorowe = true
      end
      currentColorHex = nil
      currentColorName = nil
      koloroweTimer = 0
    end
  elseif _ARG_0_ == "showGuiDrift" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png")
      }
      if not windows.drift then
        addEventHandler("onClientRender", root, window)
        windows.drift = true
      end
    else
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      if windows.drift then
        removeEventHandler("onClientRender", root, window)
        windows.drift = false
      end
    end
  elseif _ARG_0_ == "showGuiSzklany" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png")
      }
      if not windows.szklany then
        addEventHandler("onClientRender", root, window)
        windows.szklany = true
      end
    else
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(textrue)
        end
      end
      textures = {}
      if windows.szklany then
        removeEventHandler("onClientRender", root, window)
        windows.szklany = false
      end
    end
  elseif _ARG_0_ == "allPanels" then
    pozostalePanele = _ARG_1_
  end
end)
addEvent("updateKolorowePanelColor", true)
addEventHandler("updateKolorowePanelColor", root, function(_ARG_0_, _ARG_1_, _ARG_2_)
  currentColorHex = _ARG_0_
  currentColorName = _ARG_1_
  if _ARG_2_ then
    koloroweTimer = 3
    if not isTimer(koloroweTimerTimer) then
      koloroweTimerTimer = setTimer(function()
        if koloroweTimer > 0 then
          koloroweTimer = koloroweTimer - 1
        end
      end, 1000, 0)
    end
  end
end)
function showMarker()
  if isElement(raceMarker) then
    destroyElement(raceMarker)
  end
  nextMarker = nextMarker + 1
  raceMarker = createMarker(posRace[nextMarker][1], posRace[nextMarker][2], posRace[nextMarker][3], "checkpoint", 7, 252, 186, 3)
  setElementDimension(raceMarker, 99)
  if posRace[nextMarker + 1] then
    setMarkerTarget(raceMarker, posRace[nextMarker + 1][1], posRace[nextMarker + 1][2], posRace[nextMarker + 1][3])
  end
  addEventHandler("onClientMarkerHit", raceMarker, checkRaceEnd)
end
function checkRaceEnd(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if nextMarker > maxTarget and getPedOccupiedVehicle(_ARG_0_) then
    return
  end
  if nextMarker == maxTarget and not getPedOccupiedVehicle(_ARG_0_) then
    return
  end
  if nextMarker == #posRace then
    triggerServerEvent("ev", resourceRoot, "endRace", localPlayer)
  else
    showMarker()
  end
end
addEventHandler("onClientColShapeHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and getElementData(source, "event_shape") and getElementData(localPlayer, "dolaczylDoEventu") == "labirynt" then
    triggerServerEvent("ev", resourceRoot, "zakoczenieLabiryntu", localPlayer)
  end
end)
addEventHandler("onClientColShapeLeave", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if getElementData(source, "event_shape") then
    if getElementData(localPlayer, "dolaczylDoEventu") == "derby" then
      triggerServerEvent("ev", resourceRoot, "removePedVehicle", localPlayer, true)
    elseif getElementData(localPlayer, "dolaczylDoEventu") == "spadajacePanele" then
      removeEventHandler("onClientRender", root, window)
      windows.panele = false
      pozostalePanele = false
      maxWszystkichPaneli = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      triggerServerEvent("ev", resourceRoot, "removePedVehicle", localPlayer)
    elseif getElementData(localPlayer, "dolaczylDoEventu") == "kolorowePanele" then
      removeEventHandler("onClientRender", root, window)
      windows.kolorowe = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      triggerServerEvent("ev", resourceRoot, "removePedVehicle", localPlayer)
    elseif getElementData(localPlayer, "dolaczylDoEventu") == "szklanyMost" then
      removeEventHandler("onClientRender", root, window)
      windows.szklany = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      triggerServerEvent("ev", resourceRoot, "removePedVehicle", localPlayer)
    end
  end
end)
function resulted(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#fcba03" .. mins .. "#ffffff:#fcba03" .. secs .. ""
  end
end
addEvent("shader:applyColors", true)
addEventHandler("shader:applyColors", resourceRoot, function(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_) do
    if (not _UPVALUE0_[_FORV_5_[1]] or not isElement(_UPVALUE0_[_FORV_5_[1]])) and dxCreateShader("shader.fx", 0, 0, false) then
      engineApplyShaderToWorldTexture(dxCreateShader("shader.fx", 0, 0, false), "214", _FORV_5_[1])
      _UPVALUE0_[_FORV_5_[1]] = dxCreateShader("shader.fx", 0, 0, false)
    end
    if _UPVALUE0_[_FORV_5_[1]] then
      dxSetShaderValue(_UPVALUE0_[_FORV_5_[1]], "gColor", _FORV_5_[2][1] / 255, _FORV_5_[2][2] / 255, _FORV_5_[2][3] / 255, 1)
    end
    _UPVALUE1_[_FORV_5_[1]] = _FORV_5_[2]
  end
end)
addEvent("shader:removeAll", true)
addEventHandler("shader:removeAll", resourceRoot, function()
  for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_) do
    if isElement(_FORV_5_) then
      destroyElement(_FORV_5_)
    end
  end
  _UPVALUE0_ = {}
  _UPVALUE1_ = {}
  outputDebugString("[CLIENT] del kolorowych shader\195\179w: " .. 0 + 1)
end)
zmienna = 1920 / guiGetScreenSize()
function driftRender()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  _UPVALUE0_ = getTickCount()
  if not (_UPVALUE0_ - (_UPVALUE1_ or 0) < 750) and score ~= 0 then
    totalScore = totalScore + score
    triggerServerEvent("drift:aktualizujpunkty", localPlayer, totalScore)
    triggerEvent("onVehicleDriftEnd", root, _UPVALUE0_ - _UPVALUE2_ - 750)
    score = 0
  end
  if angle((getPedOccupiedVehicle(localPlayer))) ~= 0 then
    if score == 0 then
      triggerEvent("onVehicleDriftStart", root)
      _UPVALUE2_ = _UPVALUE0_
    end
    if _UPVALUE0_ - (_UPVALUE1_ or 0) < 750 then
      score = score + math.floor(angle((getPedOccupiedVehicle(localPlayer))) * angle((getPedOccupiedVehicle(localPlayer)))) * _UPVALUE3_
    else
      score = math.floor(angle((getPedOccupiedVehicle(localPlayer))) * angle((getPedOccupiedVehicle(localPlayer)))) * _UPVALUE3_
    end
    _UPVALUE4_ = score
    _UPVALUE1_ = _UPVALUE0_
  end
  if _UPVALUE0_ - (_UPVALUE1_ or 0) < 3000 then
    dxDrawText("DRIFT:\n" .. przecinek(string.format("%d", _UPVALUE4_)), 2 / zmienna, 2 / zmienna, 1920 / zmienna, 417 / zmienna, tocolor(0, 0, 0, 255), 1, exports.ST_gui:getGUIFont("bold22"), "center", "center", false, false, false, false, false)
    dxDrawText("DRIFT:\n" .. przecinek(string.format("%d", _UPVALUE4_)), 0 / zmienna, 0 / zmienna, 1920 / zmienna, 417 / zmienna, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("bold22"), "center", "center", false, false, false, false, false)
  end
end
function angle(_ARG_0_)
  if not isVehicleOnGround(_ARG_0_) then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  if _UPVALUE2_ ~= 1 and math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) <= 0.3 and _UPVALUE0_ - (_UPVALUE1_ or 0) > 750 then
    _UPVALUE2_ = _UPVALUE2_ - 1
    _UPVALUE1_ = _UPVALUE0_
  elseif _UPVALUE0_ - (_UPVALUE1_ or 0) > 1500 then
    if score >= 11200 then
    elseif score >= 4200 then
    elseif score >= 1400 then
    elseif score >= 350 then
    end
    if 2 > _UPVALUE2_ then
      _UPVALUE2_ = 2
      _UPVALUE1_ = _UPVALUE0_
    end
  end
  if math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) <= 0.2 then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  if (-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) > 0.966 or 0 > (-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  return math.deg(math.acos((-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))) * 0.5, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
end
addEvent("driftCarCrashed", true)
addEventHandler("driftCarCrashed", getRootElement(), function()
  if score ~= 0 then
    if getPedOccupiedVehicle(localPlayer) and getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) == localPlayer then
      triggerServerEvent("drift:savedrift", localPlayer, score)
    end
    score = 0
    _UPVALUE0_ = 1
    triggerEvent("onVehicleDriftEnd", _UPVALUE1_, 0)
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
getResourceName(getThisResource(), true, 950731713)
return
