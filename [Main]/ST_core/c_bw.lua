windows = {main = false, poBW = false}
function window()
  if windows.main == true then
    toggleControl("fire", false)
    toggleControl("aim_weapon", false)
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      _UPVALUE0_ = _UPVALUE0_ - 1
      time0 = time0 + 1
      toggleAllControls(false)
    end
    if _UPVALUE0_ < 1 then
      exports.ST_blackwhite:switchBlackwhite(false)
      setElementData(localPlayer, "player:bw", false)
      showChat(true)
      setElementData(localPlayer, "notshowhud", false)
      windows.main = false
      setTimer(function()
        toggleAllControls(true)
      end, 500, 1)
      if getElementData(localPlayer, "player:strefaDM") == true then
        windows.poBW = true
        _UPVALUE0_ = 60
        _UPVALUE1_ = 0
        tick = getTickCount()
        triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, false, true)
        triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 150)
        setElementData(localPlayer, "fire_block", true)
        triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "antykill", localPlayer, true)
      else
        removeEventHandler("onClientRender", root, window)
        exports.st_gui:showPlayerNotification("Odzyska\197\130e\197\155/a\197\155 przytomno\197\155\196\135", "success")
        triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, false, false)
        triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 255)
      end
    end
    dxDrawText("#00ffeeJESTE\197\154 NIEPRZYTOMNY/A", _UPVALUE2_.x + 530 / _UPVALUE3_, _UPVALUE2_.y + 250 / _UPVALUE3_, _UPVALUE2_.x + 362 / _UPVALUE3_, _UPVALUE2_.y + 204 / _UPVALUE3_, tocolor(230, 230, 230, 255), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("bold25"), "center", "center", false, false, false, true, false)
    dxDrawText("ZA #00ffee" .. _UPVALUE0_ .. " #ffffffsekund odzyskasz przytomno\197\155\196\135", _UPVALUE2_.x + 530 / _UPVALUE3_, _UPVALUE2_.y + 370 / _UPVALUE3_, _UPVALUE2_.x + 362 / _UPVALUE3_, _UPVALUE2_.y + 204 / _UPVALUE3_, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE2_.x + 319 / _UPVALUE3_, _UPVALUE2_.y + 334 / _UPVALUE3_, 242 / _UPVALUE3_, 73 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(60, 60, 60, 245), false)
    if _UPVALUE0_ then
      if 242 / _UPVALUE3_ / timeAll * time0 / _UPVALUE3_ > 30 / _UPVALUE3_ then
        dxDrawRoundedRectangle(_UPVALUE2_.x + 319 / _UPVALUE3_, _UPVALUE2_.y + 334 / _UPVALUE3_, 242 / _UPVALUE3_ / timeAll * time0 / _UPVALUE3_, 73 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(0, 255, 238, 245), false)
      else
        dxDrawRoundedRectangle(_UPVALUE2_.x + 319 / _UPVALUE3_, _UPVALUE2_.y + 334 / _UPVALUE3_, 30 / _UPVALUE3_, 73 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(0, 255, 238, 245), false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE2_.x + 320 / _UPVALUE3_, _UPVALUE2_.y + 335 / _UPVALUE3_, 240 / _UPVALUE3_, 71 / _UPVALUE3_, 15 / _UPVALUE3_, tocolor(26, 26, 26, 245), false)
    dxDrawText("Wezwij medyka", _UPVALUE2_.x + 510 / _UPVALUE3_, _UPVALUE2_.y + 540 / _UPVALUE3_, _UPVALUE2_.x + 362 / _UPVALUE3_, _UPVALUE2_.y + 204 / _UPVALUE3_, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
  end
  if windows.poBW == true then
    dxDrawText("Umar\197\130e\197\155/a\197\155 na stefie #ffd000DM#ffffff!\nJeste\197\155 #ffd000duchem #ffffffprzez #ffd000" .. _UPVALUE0_ .. " #ffffffsekund", _UPVALUE4_.x + 1 / _UPVALUE3_, _UPVALUE4_.y - 88 / _UPVALUE3_, _UPVALUE4_.x + _UPVALUE4_.w, _UPVALUE4_.y + _UPVALUE4_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE3_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      _UPVALUE0_ = _UPVALUE0_ - 1
      setElementData(localPlayer, "fire_block", true)
    end
    if _UPVALUE0_ < 1 then
      removeEventHandler("onClientRender", root, window)
      windows.poBW = false
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, false, true)
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 255)
      setElementData(localPlayer, "fire_block", false)
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "antykill", localPlayer, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and isMouseIn(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 250 / _UPVALUE1_, 80 / _UPVALUE1_) and windows.main == true then
    if getTickCount() - _UPVALUE2_ > 60000 then
      if getElementData(localPlayer, "org:przestepcza") then
        if getElementDimension(localPlayer) ~= 0 then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz wysy\197\130a\196\135 zg\197\130osze\197\132 w tym miejscu", "error")
          return
        end
        exports.st_gui:showPlayerNotification("Wezwano medyka!", "success")
        triggerServerEvent("ZawiadomienieSamc", localPlayer, localPlayer, getZoneName(getElementPosition(localPlayer)), getZoneName(getElementPosition(localPlayer)), getElementPosition(localPlayer))
        _UPVALUE2_ = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji przest\196\153pczej", "error")
      end
    else
      return exports.st_gui:showPlayerNotification("Ju\197\188 wys\197\130ano zg\197\130oszenie.", "error")
    end
  end
end)
function bw()
  if getElementData(localPlayer, "player:bw") then
    return
  end
  if isPedInVehicle(localPlayer) then
    removePedFromVehicle(localPlayer)
  end
  exports.ST_blackwhite:switchBlackwhite(true)
  setElementData(localPlayer, "player:bw", true)
  addEventHandler("onClientRender", root, window)
  windows.main = true
  showChat(false)
  if getElementData(localPlayer, "org:przestepcza") then
    _UPVALUE0_ = 120
    time0 = 0
    timeAll = 120
  else
    _UPVALUE0_ = 60
    time0 = 0
    timeAll = 60
  end
  _UPVALUE1_ = 0
  tick = getTickCount()
  setElementData(localPlayer, "notshowhud", true)
  setTimer(function()
    if getElementData(localPlayer, "player:strefaDM") == true then
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, true, true)
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 150)
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "antykill", localPlayer, true)
    else
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, true)
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 255)
    end
  end, 10, 3)
end
addEventHandler("onClientPlayerWasted", localPlayer, bw)
addEvent("usunBw", true)
addEventHandler("usunBw", root, function()
  removeEventHandler("onClientRender", root, window)
  exports.ST_blackwhite:switchBlackwhite(false)
  toggleAllControls(true)
  setElementData(localPlayer, "player:bw", false)
  windows.main = false
  showChat(true)
  _UPVALUE0_ = 0
  setElementData(localPlayer, "notshowhud", false)
  setTimer(function()
    setElementHealth(localPlayer, 2)
  end, 10, 1)
  triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, false, true)
  triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 255)
  triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "antykill", localPlayer, false)
  setElementData(localPlayer, "fire_block", false)
  time0 = nil
  timeAll = nil
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
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, false)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1, false)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1, false)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1, false)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1, false)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, false)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, false)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, false)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, false)
end
function startScript()
  if getElementData(localPlayer, "player:bw") then
    exports.ST_blackwhite:switchBlackwhite(false)
    setElementData(localPlayer, "player:bw", false)
    showChat(true)
    setElementData(localPlayer, "notshowhud", false)
    windows.main = false
    setTimer(function()
      toggleAllControls(true)
    end, 500, 1)
    removeEventHandler("onClientRender", root, window)
    exports.st_gui:showPlayerNotification("Odzyska\197\130e\197\155/a\197\155 przytomno\197\155\196\135", "success")
    triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "wadsed", localPlayer, false, false)
    triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "alpha", localPlayer, 255)
  end
end
startScript()
getResourceName(getThisResource(), true, 844800947)
return
