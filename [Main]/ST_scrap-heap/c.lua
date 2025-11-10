setElementPosition(createElement("text"), 265.65, -286.66, 1.58)
setElementData(createElement("text"), "name", "Z\197\130omowanie pojazdu")
createBlip(265.65, -286.66, 1.58, 42, 2, 0, 0, 0, 0, 0, 275)
screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
money = nil
windows = {main = false}
function window()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  money1 = getVehicleHandling((getPedOccupiedVehicle(localPlayer))).maxVelocity * 999
  money = math.floor(money1 / 100)
  if windows.main == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("Z\197\130omowanie pojazdu", _UPVALUE0_.x + math.floor(520 / zoom), _UPVALUE0_.y - math.floor(140 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal22"), "center", "center", false, false, false, false, false)
    dxDrawText("Za z\197\130omowanie tego pojazdu otrzymasz:\n" .. money .. " PLN", _UPVALUE0_.x + math.floor(520 / zoom), _UPVALUE0_.y + math.floor(160 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Z\197\129OMUJ", _UPVALUE1_.x - math.floor(345 / zoom), _UPVALUE1_.y + math.floor(320 / zoom), _UPVALUE1_.w, _UPVALUE1_.h, 255)
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and isMouseIn(_UPVALUE0_.x - math.floor(345 / zoom), _UPVALUE0_.y + math.floor(320 / zoom), _UPVALUE0_.w, _UPVALUE0_.h) and windows.main == true then
    triggerServerEvent("evEwenciks_hgfdshfsdgb", resourceRoot, "recycling", localPlayer, money)
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == _UPVALUE0_ and getPedOccupiedVehicle(_ARG_0_) then
    if not getElementData(getPedOccupiedVehicle(_ARG_0_), "vehicle:ownedPlayer") == getElementData(_ARG_0_, "player:sid") then
      exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd", "error")
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background.png")
    }
    addEventHandler("onClientRender", root, window)
    windows.main = true
    showCursor(true, false)
  end
end)
addEventHandler("onClientMarkerLeave", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == _UPVALUE0_ then
    removeEventHandler("onClientRender", root, window)
    windows.main = false
    showCursor(false)
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
getResourceName(getThisResource(), true, 78863825)
return
