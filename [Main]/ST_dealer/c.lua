skins = {
  0,
  19,
  21,
  22,
  28,
  29,
  30,
  47,
  48,
  100,
  101,
  102,
  103,
  104,
  108,
  109,
  110,
  114,
  115,
  116,
  121
}
dealerPed = createPed(29, 3629.32, 7347.89, 803.2, 190)
setPedAnimation(dealerPed, "DEALER", "DEALER_IDLE_01", -1, true, false)
setElementDimension(dealerPed, 5)
x, y, z = getElementPosition(dealerPed)
dealerName = createElement("text")
setElementDimension(dealerName, 5)
setElementPosition(dealerName, x, y, z + 1)
setElementData(dealerName, "name", "Znajomy diler")
screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 500 / zoom / 2,
  y = screenH / 2 - 400 / zoom / 2,
  w = 500 / zoom,
  h = 400 / zoom
}
mapPos = {
  x = screenW / 2 - 460 / zoom / 2,
  y = screenH / 2 - 230 / zoom / 2,
  w = 460 / zoom,
  h = 300 / zoom
}
dealer = createMarker(3629.32, 7347.89, 798.2, "cylinder", 2, 255, 255, 255, 0)
setElementDimension(dealer, 5)
selfRemaking = {}
windows = {
  main = false,
  selectCar = false,
  remaking = false,
  remakingSelect = false,
  mapDealer = false
}
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if windows.mapDealer == true then
    if _ARG_0_ == "left" and _ARG_1_ == "down" then
      addYMap = 0 / zoom
      if _ARG_2_ >= mapPos.x and _ARG_2_ <= mapPos.x + mapPos.w and _ARG_3_ >= mapPos.y + addYMap and _ARG_3_ <= mapPos.y + addYMap + mapPos.h then
        _UPVALUE0_ = _ARG_2_ * _UPVALUE1_ + _UPVALUE2_
        _UPVALUE3_ = _ARG_3_ * _UPVALUE1_ - _UPVALUE4_
        _UPVALUE5_ = true
        _UPVALUE6_ = true
      end
    elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
      _UPVALUE5_ = false
    end
  end
end
function scrollBigMap(_ARG_0_)
  if _ARG_0_ == "mouse_wheel_down" then
    _UPVALUE0_ = math.min(_UPVALUE0_ + 0.3, 3.2)
  elseif _ARG_0_ == "mouse_wheel_up" then
    _UPVALUE0_ = math.max(0.5, _UPVALUE0_ - 0.3)
  end
end
bindKey("mouse_wheel_up", "down", scrollBigMap)
bindKey("mouse_wheel_down", "down", scrollBigMap)
addEventHandler("onClientClick", root, moveBigMap)
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  if windows.selectJobs == true then
    addYMap = 120 / zoom
  else
    addYMap = 0 / zoom
  end
  return math.max(mapPos.x + mapPos.w / 2 - (_UPVALUE0_ - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.x + mapPos.w / 2 + (_ARG_0_ - _UPVALUE0_) / _UPVALUE1_ * _UPVALUE2_, mapPos.x + mapPos.w / 2)), (math.max(mapPos.y + addYMap + mapPos.h / 2 - (_ARG_1_ - _UPVALUE3_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.y + addYMap + mapPos.h / 2 + (_UPVALUE3_ - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, mapPos.y + addYMap + mapPos.h / 2)))
end
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 25 / zoom, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 40 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("DIALOG - ZNAJOMY DILER", windowPos.x + 20 / zoom, windowPos.y - 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dialogue = {
      {
        id = 1,
        text = "Chc\196\153 przerobi\196\135 traw\196\153, ogarniesz mi jakie\197\155\nmiejsce?"
      },
      {
        id = 2,
        text = "Chc\196\153 sprzeda\196\135 traw\196\153, ogarniesz jakiego\197\155 typa?\n(#ffae00150,000 #e6e6e6PLN)"
      },
      {
        id = 3,
        text = "Jednak si\196\153 rozmy\197\155li\197\130em, siema"
      }
    }
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(dialogue) do
      xY = xY + 1
      if isMouseIn(windowPos.x + 20 / zoom, windowPos.y + 70 / zoom + 115 / zoom * (xY - 1), 420 / zoom, 50 / zoom) then
        dxDrawText(_FORV_8_.text, windowPos.x + 75 / zoom, windowPos.y - 15 / zoom + 230 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 12.5 / zoom, windowPos.y + 67.5 / zoom + 115 / zoom * (xY - 1), 55 / zoom, 55 / zoom, textures.chat_icon, 0, 0, 0, tocolor(255, 174, 0, 255), false)
      else
        dxDrawText(_FORV_8_.text, windowPos.x + 75 / zoom, windowPos.y - 15 / zoom + 230 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 15 / zoom, windowPos.y + 70 / zoom + 115 / zoom * (xY - 1), 50 / zoom, 50 / zoom, textures.chat_icon, 0, 0, 0, tocolor(255, 174, 0, 255), false)
      end
    end
  end
  if windows.selectCar == true then
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 25 / zoom, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 37 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("WYBIERZ POJAZD", windowPos.x + 20 / zoom, windowPos.y - 165 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 42 / zoom, windowPos.w - 30 / zoom, 46 / zoom, 10 / zoom, tocolor(25, 25, 25, 250))
    dxDrawText("Dozwolone prywatne pojazdy:", windowPos.x + 138 / zoom, windowPos.y - 95 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, false, false)
    dxDrawText("#ffae00Ford Transit#e6e6e6, #ffae00Burrito#e6e6e6, #ffae00Pony#e6e6e6, #ffae00Rumpo", windowPos.x + 138 / zoom, windowPos.y - 52 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "center", "center", false, false, false, true, false)
    for _FORV_8_ = 1, 7 do
      dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 90 / zoom + 44 / zoom * (0 + 1 - 1), windowPos.w - 30 / zoom, 40 / zoom, 10 / zoom, tocolor(45, 45, 45, 50))
    end
    vehicle = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("vehicle")) do
      if 50 > getDistanceBetweenPoints3D(1671.22, -2138.22, 13.55, getElementPosition(_FORV_9_)) and getElementData(localPlayer, "player:sid") == getElementData(_FORV_9_, "vehicle:ownedPlayer") then
        table.insert(vehicle, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(1671.22, -2138.22, 13.55, getElementPosition(_FORV_9_)))
        })
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(vehicle) do
      if isMouseIn(windowPos.x + 15 / zoom, windowPos.y + 90 / zoom + 44 / zoom * (0 + 1 - 1), windowPos.w - 30 / zoom, 40 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 90 / zoom + 44 / zoom * (0 + 1 - 1), windowPos.w - 30 / zoom, 40 / zoom, 10 / zoom, tocolor(42, 42, 42, 150))
        dxDrawText(exports.ST_core:changeNameClient((getVehicleName(_FORV_9_[1]))), windowPos.x + 25 / zoom, windowPos.y + 20 / zoom + 88 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText(getElementData(_FORV_9_[1], "vehicle:id"), windowPos.x, windowPos.y + 20 / zoom + 88 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 115 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 90 / zoom + 44 / zoom * (0 + 1 - 1), windowPos.w - 30 / zoom, 40 / zoom, 10 / zoom, tocolor(45, 45, 45, 150))
        dxDrawText(exports.ST_core:changeNameClient((getVehicleName(_FORV_9_[1]))), windowPos.x + 25 / zoom, windowPos.y + 20 / zoom + 88 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText(getElementData(_FORV_9_[1], "vehicle:id"), windowPos.x, windowPos.y + 20 / zoom + 88 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 115 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(windowPos.x + windowPos.w - 38 / zoom, windowPos.y + 8 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(windowPos.x + windowPos.w - 39 / zoom, windowPos.y + 7 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + windowPos.w - 38 / zoom, windowPos.y + 8 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.mapDealer == true then
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 25 / zoom, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 40 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("DILER - DOK\197\129ADNE MIEJSCE NA MAPIE", windowPos.x + 20 / zoom, windowPos.y - 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + windowPos.w - 38 / zoom, windowPos.y + 10 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(windowPos.x + windowPos.w - 39 / zoom, windowPos.y + 9 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + windowPos.w - 38 / zoom, windowPos.y + 10 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText("#ffae00" .. getZoneName(posDealer[1], posDealer[2], posDealer[3], true) .. "#ffffff, #ffae00" .. getZoneName(posDealer[1], posDealer[2], posDealer[3], false) .. ", #ffffffzmiana lokalizacji za " .. secondsToClock(timeDealer) .. "", windowPos.x + 20 / zoom, windowPos.y - 70 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and _UPVALUE0_ then
      if not cursorX then
      else
      end
      _UPVALUE1_ = -(cursorX * screenW * _UPVALUE2_ - _UPVALUE3_)
      _UPVALUE4_ = cursorY * screenH * _UPVALUE2_ - _UPVALUE5_
      _UPVALUE1_ = math.max(-3000, math.min(3000, _UPVALUE1_))
      _UPVALUE4_ = math.max(-3000, math.min(3000, _UPVALUE4_))
    end
    dxDrawImageSection(mapPos.x, mapPos.y, mapPos.w, mapPos.h, (3000 + _UPVALUE1_) * _UPVALUE6_ - mapPos.w / 2 * _UPVALUE2_, (3000 - _UPVALUE4_) * _UPVALUE6_ - mapPos.h / 2 * _UPVALUE2_, mapPos.w * _UPVALUE2_, mapPos.h * _UPVALUE2_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawRoundedRectangle(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posDealer[1], posDealer[2]))) - 15 / zoom / 2, math.max(mapPos.y + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posDealer[1], posDealer[2]))) - 15 / zoom / 2, 15 / zoom, 15 / zoom, 5 / zoom, tocolor(150, 0, 0, 230))
  end
  if windows.remaking == true then
    if getElementData(localPlayer, "player_Trade") then
      removeEventHandler("onClientRender", root, window)
      windows.remaking = false
      showCursor(false)
      windows.main = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
      return
    end
    if getElementData(localPlayer, "player_offerTrade") then
      removeEventHandler("onClientRender", root, window)
      windows.remaking = false
      showCursor(false)
      windows.main = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
      return
    end
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 25 / zoom, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 40 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("WYBIERZ TYP", windowPos.x + 20 / zoom, windowPos.y - 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(table_drugs) do
      xY = xY + 1
      if isMouseIn(windowPos.x + 35 / zoom + 275 / zoom * (xY - 1), windowPos.y + 130 / zoom, 150 / zoom, 150 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 35 / zoom + 275 / zoom * (xY - 1), windowPos.y + 130 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(40, 40, 40, 255))
        dxDrawImage(windowPos.x + 50 / zoom + 275 / zoom * (xY - 1), windowPos.y + 130 / zoom, 120 / zoom, 120 / zoom, textures.weed_icon, 0, 0, 0, tocolor(6, 181, 0, 255), false)
        dxDrawText(_FORV_8_.name, windowPos.x - 140 / zoom + 550 / zoom * (xY - 1), windowPos.y + 320 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.number, windowPos.x, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom - 190 / zoom + 275 / zoom * (xY - 1), windowPos.y + 204 / zoom, tocolor(9, 201, 2, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 35 / zoom + 275 / zoom * (xY - 1), windowPos.y + 130 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(43, 43, 43, 255))
        dxDrawImage(windowPos.x + 50 / zoom + 275 / zoom * (xY - 1), windowPos.y + 130 / zoom, 120 / zoom, 120 / zoom, textures.weed_icon, 0, 0, 0, tocolor(255, 174, 0, 255), false)
        dxDrawText(_FORV_8_.name, windowPos.x - 140 / zoom + 550 / zoom * (xY - 1), windowPos.y + 320 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.number, windowPos.x, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom - 190 / zoom + 275 / zoom * (xY - 1), windowPos.y + 204 / zoom, tocolor(7, 217, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.remakingSelect == true then
    if getElementData(localPlayer, "player_Trade") then
      removeEventHandler("onClientRender", root, window)
      windows.remakingSelect = false
      showCursor(false)
      windows.main = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
      return
    end
    if getElementData(localPlayer, "player_offerTrade") then
      removeEventHandler("onClientRender", root, window)
      windows.remakingSelect = false
      showCursor(false)
      windows.main = false
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      textures = {}
      return
    end
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 25 / zoom, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 40 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("WYBIERZ ILO\197\154\196\134", windowPos.x + 20 / zoom, windowPos.y - 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 35 / zoom, windowPos.y + 120 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(40, 40, 40, 255))
    dxDrawImage(windowPos.x + 55 / zoom, windowPos.y + 125 / zoom, 110 / zoom, 110 / zoom, textures.weed_icon, 0, 0, 0, tocolor(6, 181, 0, 255), false)
    dxDrawText(selfRemaking.name, windowPos.x - 140 / zoom, windowPos.y + 300 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawText(selfRemaking.number - selfRemaking.numberMarihuana .. " #ffffff(#b30000-" .. selfRemaking.numberMarihuana .. "#ffffff)", windowPos.x, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom - 190 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    dxDrawText("\226\135\168", windowPos.x + 140 / zoom, windowPos.y + 180 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light45"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + windowPos.w - 190 / zoom, windowPos.y + 120 / zoom, 150 / zoom, 150 / zoom, 25 / zoom, tocolor(40, 40, 40, 255))
    dxDrawImage(windowPos.x + windowPos.w - 175 / zoom, windowPos.y + 130 / zoom, 120 / zoom, 120 / zoom, textures.weed1_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("Przer. " .. selfRemaking.name .. "", windowPos.x + 407 / zoom, windowPos.y + 300 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText(selfRemaking.numberPrzerobiona, windowPos.x, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom + 85 / zoom, windowPos.y + 204 / zoom, tocolor(7, 217, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 35 / zoom, windowPos.y + 290 / zoom, 425 / zoom, 25 / zoom, 10 / zoom, tocolor(40, 40, 40, 255))
    dxDrawRoundedRectangle(windowPos.x + 60 / zoom + selfRemaking.posX / zoom, windowPos.y + 290 / zoom, 25 / zoom, 25 / zoom, 10 / zoom, tocolor(255, 174, 0, 255))
    dxDrawRoundedRectangle(windowPos.x + 35 / zoom, windowPos.y + 290 / zoom, 25 / zoom, 25 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
    dxDrawText("<", windowPos.x - 265 / zoom, windowPos.y + 400 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 435 / zoom, windowPos.y + 290 / zoom, 25 / zoom, 25 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
    dxDrawText(">", windowPos.x + 535 / zoom, windowPos.y + 400 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    if 1 <= selfRemaking.numberPrzerobiona then
      exports.ST_buttons:dxCreateButton("PRZERABIAJ", windowPos.x + 170 / zoom, windowPos.y + 335 / zoom, 150 / zoom, 50 / zoom, 255, 1)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(dialogue) do
        if isMouseIn(windowPos.x + 20 / zoom, windowPos.y + 70 / zoom + 115 / zoom * (0 + 1 - 1), 450 / zoom, 50 / zoom) then
          if _FORV_7_.id == 1 then
            if marihuana_indica <= 10 and 10 >= marihuana_sativa then
              exports.st_gui:showPlayerNotification("Posiadasz zbyt ma\197\130\196\133 ilo\197\155\196\135 marihuany", "info")
              return
            end
            vehicle = {}
            windows.main = false
            windows.selectCar = true
          elseif _FORV_7_.id == 2 then
            if getElementData(localPlayer, "player:moneyMNn") < 150000 then
              exports.st_gui:showPlayerNotification("Nie posiadasz 150,000 PLN!", "error")
              return
            end
            timeDealer = 0
            posDealer = {
              0,
              0,
              0
            }
            windows.main = false
            dxSetTextureEdge(textures.map, "border", tocolor(110, 158, 204, 255))
            windows.mapDealer = true
            triggerServerEvent("getDealerPosition", localPlayer, localPlayer)
            triggerServerEvent("ev_dealer", resourceRoot, "takeMoney", localPlayer, 150000)
          elseif _FORV_7_.id == 3 then
            for _FORV_12_, _FORV_13_ in pairs(textures) do
              if isElement(_FORV_13_) then
                destroyElement(_FORV_13_)
              end
            end
            textures = {}
            removeEventHandler("onClientRender", root, window)
            windows.main = false
            showCursor(false)
          end
        end
      end
    end
    if windows.selectCar == true then
      for _FORV_6_, _FORV_7_ in ipairs(vehicle) do
        if isMouseIn(windowPos.x + 15 / zoom, windowPos.y + 90 / zoom + 44 / zoom * (0 + 1 - 1), windowPos.w - 30 / zoom, 40 / zoom) then
          if getElementModel(_FORV_7_[1]) == 459 or getElementModel(_FORV_7_[1]) == 482 or getElementModel(_FORV_7_[1]) == 413 or getElementModel(_FORV_7_[1]) == 440 then
            vehicleSelectId = getElementData(_FORV_7_[1], "vehicle:id")
            selfRemaking = {}
            selfRemaking.random = math.random(1, 7)
            skin = math.random(1, #skins)
            pedRemaking = createPed(skins[skin], randomPositionRemaking[selfRemaking.random].ped[1], randomPositionRemaking[selfRemaking.random].ped[2], randomPositionRemaking[selfRemaking.random].ped[3], randomPositionRemaking[selfRemaking.random].ped[4])
            posTracking = {
              randomPositionRemaking[selfRemaking.random].ped[1],
              randomPositionRemaking[selfRemaking.random].ped[2],
              randomPositionRemaking[selfRemaking.random].ped[3]
            }
            trackingTEXT = "ROZPOCZNIJ KONWERSACJ\196\152"
            addEventHandler("onClientVehicleEnter", getRootElement(), function(_ARG_0_, _ARG_1_)
              if _ARG_0_ == getLocalPlayer() and vehicleSelectId == getElementData(source, "vehicle:id") and _ARG_1_ == 0 then
                addEventHandler("onClientRender", root, tracking)
              end
            end)
            addEventHandler("onClientVehicleExit", getRootElement(), function(_ARG_0_, _ARG_1_)
              if _ARG_0_ == getLocalPlayer() and vehicleSelectId == getElementData(source, "vehicle:id") and not blockVehicles and _ARG_1_ == 0 then
                removeEventHandler("onClientRender", root, tracking)
              end
            end)
            removeEventHandler("onClientRender", root, window)
            windows.selectCar = false
            showCursor(false)
            exports.st_gui:showPlayerNotification("Wsi\196\133d\197\186 do wybranego pojazdu i udaj si\196\153 do celu", "info")
            blockVehicles = false
          else
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz jecha\196\135 pojazdem tego typu", "error")
          end
        end
      end
    end
    if isMouseIn(windowPos.x + windowPos.w - 38 / zoom, windowPos.y + 10 / zoom, 27 / zoom, 27 / zoom) and (windows.selectCar == true or windows.mapDealer == true) then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.selectCar = false
      windows.mapDealer = false
      showCursor(false)
    end
    if windows.remaking == true then
      for _FORV_6_, _FORV_7_ in ipairs(table_drugs) do
        if isMouseIn(windowPos.x + 35 / zoom + 275 / zoom * (0 + 1 - 1), windowPos.y + 130 / zoom, 150 / zoom, 150 / zoom) then
          selfRemaking.name = _FORV_7_.name
          selfRemaking.name1 = _FORV_7_.name1
          selfRemaking.number = _FORV_7_.number
          selfRemaking.id = _FORV_7_.id
          windows.remaking = false
          windows.remakingSelect = true
          selfRemaking.posX = 0
          selfRemaking.numberPrzerobiona = 0
          selfRemaking.numberMarihuana = 0
        end
      end
    end
    if isMouseIn(windowPos.x + 35 / zoom, windowPos.y + 290 / zoom, 25 / zoom, 25 / zoom) and windows.remakingSelect == true then
      if 0 >= selfRemaking.posX then
        selfRemaking.posX = 0
        return
      end
      selfRemaking.posX = selfRemaking.posX - 10
      selfRemaking.numberPrzerobiona = selfRemaking.numberPrzerobiona - 1
      selfRemaking.numberMarihuana = selfRemaking.numberMarihuana - 2
    elseif isMouseIn(windowPos.x + 435 / zoom, windowPos.y + 290 / zoom, 25 / zoom, 25 / zoom) and windows.remakingSelect == true then
      if 0 >= selfRemaking.number - selfRemaking.numberMarihuana - 2 then
        return
      end
      if selfRemaking.posX >= 350 then
        selfRemaking.posX = 350
        return
      end
      selfRemaking.posX = selfRemaking.posX + 10
      selfRemaking.numberPrzerobiona = selfRemaking.numberPrzerobiona + 1
      selfRemaking.numberMarihuana = selfRemaking.numberMarihuana + 2
    elseif isMouseIn(windowPos.x + 170 / zoom, windowPos.y + 335 / zoom, 150 / zoom, 50 / zoom) and windows.remakingSelect == true and 1 <= selfRemaking.numberPrzerobiona then
      triggerServerEvent("ev_dealer", resourceRoot, "deleteItems", localPlayer, selfRemaking.numberMarihuana, selfRemaking.id, selfRemaking.name)
    end
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == dealer then
    if vehicleSelectId then
      return
    end
    triggerServerEvent("ev_dealer", resourceRoot, "checkItems", localPlayer, getElementData(localPlayer, "player:sid"))
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      chat_icon = dxCreateTexture("img/chat_icon.png"),
      weed_icon = dxCreateTexture(":ST_invetory/img/weed_icon.png"),
      weed1_icon = dxCreateTexture(":ST_invetory/img/weed1_icon.png"),
      map = dxCreateTexture(":ST_dashboard/img/map.png")
    }
    addEventHandler("onClientRender", root, window)
    windows.main = true
    showCursor(true)
  end
end)
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
  end
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
randomPositionRemaking = {
  [1] = {
    ped = {
      -1673.86,
      2594.65,
      81.36,
      90
    },
    przerabianie = {
      {
        -1678.41,
        2594.74,
        81.43
      },
      {
        -1678.98,
        2604.68,
        81.08
      },
      {
        -1684.07,
        2600.77,
        81.52
      },
      {
        -1682.46,
        2593.35,
        81.54
      }
    }
  },
  [2] = {
    ped = {
      388,
      12.83,
      6.51,
      -90
    },
    przerabianie = {
      {
        390.08,
        15.7,
        6.6
      },
      {
        389.47,
        6.51,
        5.96
      },
      {
        395.01,
        13.88,
        6.18
      },
      {
        393.49,
        9.77,
        5.97
      },
      {
        390.95,
        15.87,
        6.56
      }
    }
  },
  [3] = {
    ped = {
      1299.94,
      134.34,
      20.41,
      -100
    },
    przerabianie = {
      {
        1302.32,
        131.23,
        20.5
      },
      {
        1302.11,
        134.55,
        20.43
      },
      {
        1304.61,
        135.92,
        20.42
      },
      {
        1307.61,
        133.61,
        20.5
      },
      {
        1303.74,
        135,
        20.43
      },
      {
        1303.34,
        138.37,
        20.35
      }
    }
  },
  [4] = {
    ped = {
      -1131.5,
      -1067.35,
      129.22,
      180
    },
    przerabianie = {
      {
        -1125.88,
        -1084.27,
        129.22
      },
      {
        -1140.62,
        -1084.19,
        129.22
      },
      {
        -1171.37,
        -1095.86,
        129.22
      },
      {
        -1181.51,
        -1095.79,
        129.22
      },
      {
        -1188.28,
        -1095.94,
        129.23
      },
      {
        -1077.09,
        -1095.61,
        129.22
      },
      {
        -1083.38,
        -1095.56,
        129.22
      },
      {
        -1095.91,
        -1094.77,
        129.22
      },
      {
        -1094.53,
        -1084.28,
        129.22
      },
      {
        -1078.16,
        -1084.48,
        129.22
      }
    }
  },
  [5] = {
    ped = {
      687.34,
      -1627.3,
      3.38,
      90
    },
    przerabianie = {
      {
        680.41,
        -1619.98,
        3.35
      },
      {
        685.67,
        -1620.88,
        3.37
      },
      {
        683.49,
        -1624.18,
        3.36
      },
      {
        686.23,
        -1624.74,
        3.37
      },
      {
        680.43,
        -1627.95,
        3.35
      },
      {
        683.93,
        -1628.82,
        3.36
      },
      {
        680.05,
        -1632.86,
        3.35
      },
      {
        683.77,
        -1635.53,
        3.36
      },
      {
        686.95,
        -1631.52,
        3.38
      },
      {
        678.88,
        -1631.05,
        3.34
      }
    }
  },
  [6] = {
    ped = {
      2359.13,
      -647.37,
      128.14,
      -90
    },
    przerabianie = {
      {
        2364.66,
        -653.94,
        127.86
      },
      {
        2367.02,
        -647.73,
        127.71
      },
      {
        2363.02,
        -646.04,
        127.97
      },
      {
        2362.91,
        -649.54,
        127.9
      },
      {
        2360.25,
        -650.63,
        128.14
      },
      {
        2364.15,
        -650.67,
        127.83
      },
      {
        2367.3,
        -654.53,
        127.85
      },
      {
        2364.75,
        -649.87,
        127.8
      },
      {
        2367.26,
        -647,
        127.7
      },
      {
        2367.42,
        -650.55,
        127.69
      }
    }
  },
  [7] = {
    ped = {
      2546.98,
      -953.94,
      82.53,
      0
    },
    przerabianie = {
      {
        2554.96,
        -950.66,
        82.72
      },
      {
        2551.36,
        -951.3,
        82.64
      },
      {
        2548.11,
        -951.9,
        82.56
      },
      {
        2543.46,
        -952.66,
        82.46
      },
      {
        2538.84,
        -952.86,
        82.33
      },
      {
        2540.92,
        -949.07,
        82.51
      },
      {
        2545.49,
        -948.88,
        82.55
      },
      {
        2551.52,
        -947.46,
        82.68
      },
      {
        2555.41,
        -945.37,
        82.84
      },
      {
        2549.34,
        -946.07,
        82.76
      }
    }
  }
}
function tracking()
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    if trackingTEXT == "ROZPOCZNIJ KONWERSACJ\196\152" then
      imgTracking = {
        textures.chat_icon,
        {
          255,
          255,
          255
        }
      }
    else
      if trackingTEXT ~= "PRZERABIAJ #ffe100" .. selfRemaking.numberPrzerobiona1 .. "#ffffff/#ffe100" .. selfRemaking.numberPrzerobiona .. "" then
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 27.5 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 67.5 / zoom, 55 / zoom, 55 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      imgTracking = {
        textures.weed1_icon,
        {
          255,
          255,
          255
        }
      }
    end
    if 200 > math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) then
      blockVehicles = true
    end
    if 2 > math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 86 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 85 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText(trackingTEXT, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      if trackingTEXT == "PRZERABIANIE..." then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 80 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 60 / zoom, 160 / zoom, 15 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        posXX = posXX + 0.07
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 80 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 60 / zoom, posXX / zoom, 15 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
        if 160 <= posXX then
          selfRemaking.numberPrzerobiona1 = selfRemaking.numberPrzerobiona1 + 1
          trackingTEXT = "PRZERABIAJ #ffe100" .. selfRemaking.numberPrzerobiona1 .. "#ffffff/#ffe100" .. selfRemaking.numberPrzerobiona .. ""
          posTracking = {
            randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][1],
            randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][2],
            randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][3] - 0.5
          }
          triggerServerEvent("ev_dealer", resourceRoot, "setAnimations", localPlayer)
          if selfRemaking.numberPrzerobiona1 == selfRemaking.numberPrzerobiona then
            triggerServerEvent("ev_dealer", resourceRoot, "addItems", localPlayer, selfRemaking.name1, selfRemaking.numberPrzerobiona1, getElementData(localPlayer, "player:sid"))
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie przerobiono marihuan\196\153", "success")
            posTracking = false
            imgTracking = false
            removeEventHandler("onClientRender", root, tracking)
            vehicleSelectId = nil
            selfRemaking.numberPrzerobiona1 = 0
            selfRemaking.numberPrzerobiona = 0
            if isElement(pedRemaking) then
              destroyElement(pedRemaking)
            end
            for _FORV_13_, _FORV_14_ in pairs(textures) do
              if isElement(_FORV_14_) then
                destroyElement(_FORV_14_)
              end
            end
            textures = {}
          else
            exports.st_gui:showPlayerNotification("Udaj si\196\153 do nast\196\153pnego punktu", "info")
          end
        end
      else
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 10 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      end
      if getKeyState("Q") then
        if trackingTEXT == "ROZPOCZNIJ KONWERSACJ\196\152" then
          if windows.remaking == true then
            return
          end
          table_drugs = {
            {
              name = "INDICA",
              number = 0,
              id = 0,
              name1 = "Przerobiona marihuana indica"
            },
            {
              name = "SATIVA",
              number = 0,
              id = 0,
              name1 = "Przerobiona marihuana indica"
            }
          }
          addEventHandler("onClientRender", root, window)
          windows.remaking = true
          showCursor(true)
          triggerServerEvent("ev_dealer", resourceRoot, "checkItems", localPlayer, getElementData(localPlayer, "player:sid"))
        elseif trackingTEXT == "PRZERABIAJ #ffe100" .. selfRemaking.numberPrzerobiona1 .. "#ffffff/#ffe100" .. selfRemaking.numberPrzerobiona .. "" then
          triggerServerEvent("ev_dealer", resourceRoot, "setAnimations", localPlayer, true)
          trackingTEXT = "PRZERABIANIE..."
          posXX = 10
        end
      end
    end
    if imgTracking then
      dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, imgTracking[1], 0, 0, 0, tocolor(imgTracking[2][1], imgTracking[2][2], imgTracking[2][3], 255), false)
    end
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("#ffe100" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - screenW / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  if _ARG_0_ == "checkItemsClient" then
    marihuana_indica = 0
    marihuana_sativa = 0
    for _FORV_13_, _FORV_14_ in ipairs(_ARG_1_) do
      if _FORV_14_.name == "Marihuana indica" then
        marihuana_indica = _FORV_14_.ilosc
        id_indica = _FORV_14_.id
      end
      if _FORV_14_.name == "Marihuana sativa" then
        marihuana_sativa = _FORV_14_.ilosc
        id_sativa = _FORV_14_.id
      end
    end
    table_drugs = {
      {
        name = "INDICA",
        number = marihuana_indica,
        name1 = "Przerobiona marihuana indica",
        id = id_indica
      },
      {
        name = "SATIVA",
        number = marihuana_sativa,
        name1 = "Przerobiona marihuana sativa",
        id = id_sativa
      }
    }
  elseif _ARG_0_ == "next" then
    if _ARG_1_ then
      removeEventHandler("onClientRender", root, window)
      windows.remakingSelect = false
      showCursor(false)
      selfRemaking.numberPrzerobiona1 = 0
      trackingTEXT = "PRZERABIAJ #ffe100" .. selfRemaking.numberPrzerobiona1 .. "#ffffff/#ffe100" .. selfRemaking.numberPrzerobiona .. ""
      posTracking = {
        randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][1],
        randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][2],
        randomPositionRemaking[selfRemaking.random].przerabianie[math.random(1, #randomPositionRemaking[selfRemaking.random].przerabianie)][3] - 0.5
      }
    else
      removeEventHandler("onClientRender", root, window)
      windows.remakingSelect = false
      showCursor(false)
    end
  end
end)
addEvent("getDealerPositionClient", true)
addEventHandler("getDealerPositionClient", root, function(_ARG_0_, _ARG_1_)
  posDealer = {
    _ARG_0_[1],
    _ARG_0_[2],
    _ARG_0_[3]
  }
  timeDealer = _ARG_1_ / 1000
end)
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "#ffae001 #ffffffminut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffae00" .. mins .. " #ffffffminut"
  end
end
getResourceName(getThisResource(), true, 620842941)
return
