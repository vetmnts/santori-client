zoom = exports.st_gui:getInterfaceZoom()
render1 = {
  x = guiGetScreenSize()
}
render1.x = render1.x - guiGetScreenSize()
render22 = {
  x = guiGetScreenSize()
}
render22.x = render22.x - guiGetScreenSize()
windowPos = {
  x = guiGetScreenSize() / 2 - 889 / zoom / 2,
  y = 30 / zoom,
  w = 889 / zoom,
  h = 500 / zoom
}
function cmd_admins(_ARG_0_)
  for _FORV_14_, _FORV_15_ in ipairs(getElementsByType("player")) do
    if getElementData(_FORV_15_, "player:level") then
      if exports.ST_datasystem:getCustomData(_FORV_15_, "player:afk", "synced") then
        statusAfk = "#ff6a00AFK"
      else
        statusAfk = getElementData(_FORV_15_, "id")
      end
      if getElementData(_FORV_15_, "player:level") == 4 then
        table.insert({}, "#ffffff[#770000" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. " ")
      end
      if getElementData(_FORV_15_, "player:level") == 35 then
        table.insert({}, "#ffffff[#004099" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. " ")
      end
      if getElementData(_FORV_15_, "player:level") == 25 then
        table.insert({}, "#ffffff[#801f4e" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. " ")
      end
      if getElementData(_FORV_15_, "player:level") == 3 then
        table.insert({}, "#ffffff[#8426b8" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. " ")
      end
      if getElementData(_FORV_15_, "player:level") == 2 then
        table.insert({}, "#ffffff[#ff0000" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. "")
      end
      if getElementData(_FORV_15_, "player:level") == 17 then
        table.insert({}, "#ffffff[#0077ff" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. "")
      end
      if getElementData(_FORV_15_, "player:level") == 15 then
        table.insert({}, "#ffffff[#00b30f" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. "")
      end
      if getElementData(_FORV_15_, "player:level") == 1 then
        table.insert({}, "#ffffff[#00eaff" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. "")
      end
      if getElementData(_FORV_15_, "player:level") == 11 then
        table.insert({}, "#ffffff[#00ff9e" .. statusAfk .. "#ffffff] " .. getPlayerName(_FORV_15_):gsub("#%x%x%x%x%x%x", "") .. "")
      end
    end
  end
  liczba_adm = #{} + #{} + #{} + #{} + #{} + #{} + #{} + #{} + #{}
  outputChatBox(" ", 100, 255, 0, true)
  outputChatBox("#770000Ownerzy - " .. #{} .. "#ffffff", 252, 119, 3, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Project Manager - " .. #{} .. "", 0, 64, 153, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Developerzy - " .. #{} .. "", 132, 38, 184, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Administratorzy RCON - " .. #{} .. "", 128, 31, 78, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Administratorzy - " .. #{} .. "", 255, 0, 0, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Global Moderator - " .. #{} .. "", 0, 119, 255, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Moderatorzy - " .. #{} .. "", 0, 179, 15, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Supporterzy - " .. #{} .. "", 0, 234, 255, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox("Helperzy - " .. #{} .. "", 0, 255, 158, true)
  if 0 < #{} then
    outputChatBox("#1aff00\226\156\148#ffffff - " .. table.concat({}, ", "), 255, 255, 255, true)
  else
    outputChatBox("#ff1100\226\156\152#ffffff - Brak", 255, 255, 255, true)
  end
  outputChatBox(" ", 100, 255, 0, true)
  outputChatBox("#1aff00\226\156\148#ffffff Liczba aktywnych os\195\179b w administracji: " .. liczba_adm .. "", 100, 255, 0, true)
end
addCommandHandler("admins", cmd_admins, false, false)
addCommandHandler("ekipa", cmd_admins, false, false)
addCommandHandler("admini", cmd_admins, false, false)
addEvent("admin:addTextHGFhjd", true)
addEventHandler("admin:addTextHGFhjd", root, function(_ARG_0_)
  if type(_ARG_0_) == "string" and #_ARG_0_ <= _UPVALUE0_ then
    table.insert(gameView, _ARG_0_)
    if #gameView > 10 then
      table.remove(gameView, 1)
    end
  end
end)
function getOwner(_ARG_0_)
  if getPlayerSerial(_ARG_0_) == "9E16962BFFD951D52F138899822F42F3" then
    return true
  else
    return false
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
animations = {progressBackground = 200}
function renderingInfo()
  dxDrawRectangle(_UPVALUE0_.x, _UPVALUE0_.y + animations.progressBackground, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(0, 0, 0, 155), false)
  dxDrawText(xtext:gsub("#%x%x%x%x%x%x", ""), _UPVALUE0_.x + math.floor(5 / zoom), math.floor(_UPVALUE0_.y) + animations.progressBackground, _UPVALUE0_.x + _UPVALUE0_.w, math.floor(_UPVALUE0_.y) + _UPVALUE0_.h, tocolor(255, 175, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, false, false)
end
addEvent("admin:reports:set", true)
addEventHandler("admin:reports:set", root, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_ or {}
end)
addEvent("admin:logs:set", true)
addEventHandler("admin:logs:set", root, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_ or {}
end)
function reports()
  if not getElementData(localPlayer, "player:level") then
    return
  end
  if getElementData(localPlayer, "reporty") or getElementData(localPlayer, "player:reporty") then
    return
  end
  for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE0_) do
    if _FORV_10_[1] then
      table.insert({}, _FORV_10_[1])
    end
  end
  concat = table.concat({}, "\n")
  dxDrawText(concat:gsub("#%x%x%x%x%x%x", ""), render22.x, render22.y - math.floor(429 / zoom), render22.x + render22.w + math.floor(1 / zoom), render22.y + render22.h, tocolor(0, 0, 0, 255), 1.4 / zoom, "default", "right", "top", false, true, false, true)
  dxDrawText(concat, render22.x, render22.y - math.floor(430 / zoom), render22.x + render22.w, render22.y + render22.h, tocolor(255, 255, 255, 255), 1.4 / zoom, "default", "right", "top", false, true, false, true)
  if not getElementData(localPlayer, "logi") then
    return
  end
  for _FORV_11_, _FORV_12_ in ipairs(_UPVALUE1_) do
    if _FORV_12_[1] then
      table.insert({}, _FORV_12_[1])
    end
  end
  concat = table.concat({}, "\n")
  dxDrawText(concat:gsub("#%x%x%x%x%x%x", ""), render1.x + math.floor(16 / zoom), render1.y - math.floor(349 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1.4 / zoom, "default", "left", "top", false, true, false, true)
  dxDrawText(concat, render1.x + math.floor(15 / zoom), render1.y - math.floor(350 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1.4 / zoom, "default", "left", "top", false, true, false, true)
end
blipsCar1 = {}
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "admin_rendering" then
    xtext = _ARG_1_
    if isEventHandlerAdded("onClientRender", root, renderingInfo) then
      removeEventHandler("onClientRender", root, renderingInfo)
    end
    createAnimation(100, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.progressBackground = _ARG_0_
    end)
    addEventHandler("onClientRender", root, renderingInfo)
    setTimer(function()
      createAnimation(0, 100, "InOutQuad", 400, function(_ARG_0_)
        animations.progressBackground = _ARG_0_
      end)
    end, 4600, 1)
    setTimer(function()
      removeEventHandler("onClientRender", root, renderingInfo)
    end, 5000, 1)
  elseif _ARG_0_ == "showGuiReports" then
    if _ARG_1_ then
      addEventHandler("onClientRender", root, reports)
    else
      removeEventHandler("onClientRender", root, reports)
    end
  elseif _ARG_0_ == "graphicCard" then
    for _FORV_8_, _FORV_9_ in pairs(dxGetStatus()) do
      if _FORV_8_ == "VideoCardName" then
        setElementData(_ARG_1_, "kartaGraficzna", _FORV_9_)
      end
    end
  elseif _ARG_0_ == "allBlipsCar" then
    if loadBlips then
      loadBlips = false
      for _FORV_8_, _FORV_9_ in pairs(getElementsByType("vehicle")) do
        if isElement(blipsCar1[getElementData(_FORV_9_, "vehicle:id")]) then
          destroyElement(blipsCar1[getElementData(_FORV_9_, "vehicle:id")])
        end
      end
    else
      loadBlips = true
      for _FORV_8_, _FORV_9_ in pairs(getElementsByType("vehicle")) do
        if isElement(blipsCar1[getElementData(_FORV_9_, "vehicle:id")]) then
          destroyElement(blipsCar1[getElementData(_FORV_9_, "vehicle:id")])
        end
        blipsCar1[getElementData(_FORV_9_, "vehicle:id")] = createBlipAttachedTo(_FORV_9_, 19, 25, 25, 25, 25, 0, 9999)
      end
    end
  elseif _ARG_0_ == "specPlayer" then
    if _ARG_1_ then
      bindKey("arrow_l", "down", previousPlayerSpec)
      bindKey("arrow_r", "down", nextPlayerSpec)
      specowany = _ARG_2_
      for _FORV_8_, _FORV_9_ in pairs(getElementsByType("player")) do
        if _FORV_9_ == specowany then
          numberPlayer = _FORV_8_
          break
        end
      end
      setCameraTarget(_ARG_2_)
      specowany = specowany
      attachElements(localPlayer, _ARG_2_, 0, 0, -5)
      setElementInterior(localPlayer, getElementInterior(_ARG_2_))
      setElementDimension(localPlayer, getElementDimension(_ARG_2_))
    else
      detachElements(localPlayer, specowany)
      setElementPosition(localPlayer, getElementData(localPlayer, "spec:pos")[1], getElementData(localPlayer, "spec:pos")[2], getElementData(localPlayer, "spec:pos")[3])
      setCameraTarget(localPlayer, localPlayer)
      setElementData(localPlayer, "spec:pos", false)
      unbindKey("arrow_l", "down", previousPlayerSpec)
      unbindKey("arrow_r", "down", nextPlayerSpec)
    end
  elseif _ARG_0_ == "onMyClientScreenShot" then
    if isElement(imageScreen) then
      destroyElement(imageScreen)
      imageScreen = dxCreateTexture(_ARG_1_)
      if isTimer(timerScreen) then
        killTimer(timerScreen)
      end
      timerScreen = setTimer(function()
        if isElement(imageScreen) then
          destroyElement(imageScreen)
          removeEventHandler("onClientRender", root, windowScreenShot)
        end
      end, 3000, 1)
    else
      imageScreen = dxCreateTexture(_ARG_1_)
      addEventHandler("onClientRender", root, windowScreenShot)
      timerScreen = setTimer(function()
        if isElement(imageScreen) then
          destroyElement(imageScreen)
          removeEventHandler("onClientRender", root, windowScreenShot)
        end
      end, 15000, 1)
    end
  elseif _ARG_0_ == "warn" then
    selfWarn = {}
    selfWarn.text = _ARG_2_
    selfWarn.admin = _ARG_1_
    addEventHandler("onClientRender", root, warnPlayer)
    texturesWarn = {
      background = dxCreateTexture(":ST_gui/img/background2.png")
    }
    selfWarn.randomColorWarn = math.random(2, 3)
    setTimer(function()
      selfWarn = {}
      removeEventHandler("onClientRender", root, warnPlayer)
      for _FORV_3_, _FORV_4_ in pairs(texturesWarn) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      texturesWarn = {}
    end, 7000, 1)
    setTimer(function()
      if selfWarn.randomColorWarn == 2 then
        selfWarn.randomColorWarn = 3
      else
        selfWarn.randomColorWarn = 2
      end
      playSoundFrontEnd(5)
    end, 160, 41)
  elseif _ARG_0_ == "addExp" then
    exports.ST_levelsystem:addExp(1)
  elseif _ARG_0_ == "sprawdzSpeedGame" then
    triggerServerEvent("evEwenciks_43hgdfdfg", resourceRoot, "checkSpeedGameServer", _ARG_1_, (getGameSpeed()))
  elseif _ARG_0_ == "setSpeedGame" then
    if tonumber(_ARG_2_) == 1 then
      setGameSpeed(1)
    else
      setGameSpeed(0.3)
    end
  elseif _ARG_0_ == "blueScreen" then
    if _ARG_1_ then
      removeEventHandler("onClientRender", root, windowBlueScreen)
    else
      addEventHandler("onClientRender", root, windowBlueScreen)
    end
  end
end)
function windowScreenShot()
  dxDrawRectangle(windowPos.x - 2 / zoom, windowPos.y - 2 / zoom, windowPos.w + 4 / zoom, windowPos.h + 4 / zoom, tocolor(252, 186, 3, 230))
  dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, imageScreen)
end
function previousPlayerSpec()
  numberPlayer = numberPlayer - 1
  if numberPlayer < 1 then
    numberPlayer = #getElementsByType("player")
  end
  specowany = getElementsByType("player")[numberPlayer]
  triggerServerEvent("evEwenciks_43hgdfdfg", resourceRoot, "specNext1", localPlayer, specowany)
  setCameraTarget(specowany)
  if specowany then
    detachElements(localPlayer, specowany)
  end
  specowany = specowany
  attachElements(localPlayer, specowany, 0, 0, -5)
  setElementInterior(localPlayer, getElementInterior(specowany))
  setElementDimension(localPlayer, getElementDimension(specowany))
end
function nextPlayerSpec()
  numberPlayer = numberPlayer + 1
  if numberPlayer > #getElementsByType("player") then
    numberPlayer = 1
  end
  specowany = getElementsByType("player")[numberPlayer]
  triggerServerEvent("evEwenciks_43hgdfdfg", resourceRoot, "specNext1", localPlayer, specowany)
  setCameraTarget(specowany)
  if specowany then
    detachElements(localPlayer, specowany)
  end
  specowany = specowany
  attachElements(localPlayer, specowany, 0, 0, -5)
  setElementInterior(localPlayer, getElementInterior(specowany))
  setElementDimension(localPlayer, getElementDimension(specowany))
end
function warnPlayer()
  dxDrawRoundedRectangle(windowPos.x + 12.5 / zoom, render22.y - 406 / zoom, windowPos.w - 25 / zoom, windowPos.h + 63 / zoom, 35 / zoom, _UPVALUE0_[selfWarn.randomColorWarn], false)
  dxDrawImage(windowPos.x + 3.5 / zoom, render22.y - 411 / zoom, windowPos.w - 7 / zoom, windowPos.h + 73 / zoom, texturesWarn.background, 0, 0, 0, tocolor(25, 25, 25, 220), false)
  dxDrawText("OTRZYMUJESZ OSTRZE\197\187ENIE\nOD #ffc7c7" .. selfWarn.admin .. " #ffffff!", windowPos.x + 515 / zoom, render22.y - 800 / zoom, windowPos.x + 362 / zoom, render22.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
  dxDrawText("#ffffffPOWOD: #ff0000" .. selfWarn.text .. "#ffffff", windowPos.x + 515 / zoom, render22.y - 450 / zoom, windowPos.x + 362 / zoom, render22.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
  dxDrawText("ZLEKCEWA\197\187ENIE OSTRZE\197\187ENIA MO\197\187E SKUTKOWA\196\134 KICKIEM LUB BANEM!", windowPos.x + 515 / zoom, render22.y - 100 / zoom, windowPos.x + 362 / zoom, render22.y + 204 / zoom, tocolor(237, 0, 0, 225), 1, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
end
addCommandHandler("gp", function()
  if getElementData(localPlayer, "player:level") then
    p = string.format("%.2f, %.2f, %.2f", getElementPosition(localPlayer))
    outputChatBox("\226\156\148 #ffffffPozycja gracza: " .. p, 0, 255, 0, true)
    setClipboard(p)
    if getPedOccupiedVehicle(localPlayer) then
      p = string.format("%.2f, %.2f, %.2f, %.1f, %.1f, %.1f", getElementPosition((getPedOccupiedVehicle(localPlayer))))
      outputChatBox("\226\156\148 #ffffffPozycja pojazdu: " .. p, 0, 255, 0, true)
      setClipboard(p)
    end
  end
end)
addCommandHandler("gp1", function()
  if getElementData(localPlayer, "player:level") then
    p = string.format("%.2f, %.2f, %.2f, %.2f", getElementPosition(localPlayer))
    outputChatBox("\226\156\148 #ffffffPozycja gracza: " .. p, 0, 255, 0, true)
    setClipboard(p)
  end
end)
addCommandHandler("pokazNametagiInv", function()
  if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 2 or getElementData(localPlayer, "player:level") == 25 then
    if pokazNametagiInv then
      pokazNametagiInv = false
      removeEventHandler("onClientRender", root, nametagiInv)
      outputChatBox("Nametagi inv wylaczone")
    else
      pokazNametagiInv = true
      addEventHandler("onClientRender", root, nametagiInv)
      outputChatBox("Nametagi inv wlaczone")
    end
  end
end)
function nametagiInv()
  for _FORV_7_, _FORV_8_ in pairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
    if getElementAlpha(_FORV_8_) < 255 and getScreenFromWorldPosition(getPedBonePosition(_FORV_8_, 8)) and getPlayerName(_FORV_8_) ~= "ReDsKill" then
      dxDrawText("[" .. (getElementData(_FORV_8_, "id") or 0) .. "] " .. getPlayerName(_FORV_8_):gsub("#%x%x%x%x%x%x", "") .. "", getScreenFromWorldPosition(getPedBonePosition(_FORV_8_, 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_8_, 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_8_, 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_8_, 8)) + 1, tocolor(255, 255, 255, 255), 1, "default", "center", "center", false, false, false, true, true)
    end
  end
end
function windowBlueScreen(...)
  dxDrawImage(0, 0, _UPVALUE0_, _UPVALUE1_, "gfdoiublue.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
end
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
getResourceName(getThisResource(), true, 213264106)
return
