windows = {
  warning = false,
  afk = false,
  kick = false
}
function window()
  if windows.warning == true then
    dxDrawText("#ff0000ANTY AFK", _UPVALUE0_.x, _UPVALUE0_.y - 250 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
    dxDrawText("SYSTEM B\196\152DZIE PR\195\147BOWA\197\129 PRZE\197\129\196\132CZY\196\134 CI\196\152 W #ffbb00TRYB AFK #e6e6e6za #ffbb00" .. secondsToClock1(countN) .. "", _UPVALUE0_.x, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    dxDrawText("MO\197\187ESZ TO ZROBI\196\134 TERAZ WPISUJ\196\132C /#ffbb00AFK", _UPVALUE0_.x, _UPVALUE0_.y - 60 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      countN = countN - 1
      if countN <= 0 then
        if getElementData(localPlayer, "player:job") or getElementData(localPlayer, "player:faction") then
          countN = 60
          tick = getTickCount()
          windows.warning = false
          windows.kick = true
          setTimer(setWindowFlashing, 200, 1, true, 30)
          createTrayNotification("Za chwile zostaniesz wyrzucony/a z serwera! | SantoriRPG", "error")
        else
          exports.ST_blackwhite:switchBlackwhite(true)
          removeEventHandler("onClientRender", root, window)
          addEventHandler("onClientRender", root, window)
          exports.st_gui:showPlayerNotification("Automatycznie prze\197\130\196\133czono ci\196\153 w tryb afk", "success")
          triggerServerEvent("ev", resourceRoot, "startAFKplayer", localPlayer, true)
          playSoundFrontEnd(101)
          windows.warning = false
          windows.kick = false
          windows.afk = true
          showCursor(true)
          addEventHandler("onClientClick", root, click)
          tick = getTickCount()
          timeAFK = 0
        end
      end
    end
  end
  if windows.afk == true then
    dxDrawRectangle(0, 0, _UPVALUE2_, _UPVALUE3_, tocolor(5, 5, 5, 100), false)
    dxDrawText("#ffbb00TRYB AFK", _UPVALUE4_.x + 530 / _UPVALUE1_, _UPVALUE4_.y + 250 / _UPVALUE1_, _UPVALUE4_.x + 362 / _UPVALUE1_, _UPVALUE4_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold40"), "center", "center", false, false, false, true, false)
    dxDrawText("JESTE\197\154 W TRYBIE AFK OD " .. secondsToClock(timeAFK) .. "", _UPVALUE4_.x + 530 / _UPVALUE1_, _UPVALUE4_.y + 430 / _UPVALUE1_, _UPVALUE4_.x + 362 / _UPVALUE1_, _UPVALUE4_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("WR\195\147\196\134 DO GRY", _UPVALUE4_.x + 320 / _UPVALUE1_, _UPVALUE4_.y + 375 / _UPVALUE1_, 240 / _UPVALUE1_, 71 / _UPVALUE1_, 255, 1)
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      timeAFK = timeAFK + 1
    end
  end
  if windows.kick == true then
    dxDrawText("#ff0000KICK ZA #b8b8b8" .. secondsToClock1(countN) .. "", _UPVALUE0_.x, _UPVALUE0_.y - 250 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
    dxDrawText("SYSTEM NIE M\195\147G\197\129 PRZENIE\197\154\196\134 CI\196\152 NA TRYB AFK", _UPVALUE0_.x, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    dxDrawText("ZOSTANIESZ WYRZUCONY/A ZA #ff0000" .. secondsToClock1(countN) .. "", _UPVALUE0_.x, _UPVALUE0_.y - 60 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    if getTickCount() - tick > 1000 then
      tick = getTickCount()
      countN = countN - 1
      if countN <= 0 then
        triggerServerEvent("ev", resourceRoot, "afkKick", localPlayer)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.afk == true and isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 375 / _UPVALUE1_, 240 / _UPVALUE1_, 71 / _UPVALUE1_) then
    exports.ST_blackwhite:switchBlackwhite(false)
    triggerServerEvent("ev", resourceRoot, "startAFKplayer", localPlayer, false)
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.afk = false
    showCursor(false)
  end
end
function secondsToClock1(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. mins .. ":" .. secs
  end
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "#ffbb0000#ffffff:#ffbb0000#ffffff:#ffbb0000"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbb00" .. hours .. "#ffffff:#ffbb00" .. mins .. "#ffffff:#ffbb00" .. secs
  end
end
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
addCommandHandler("afk", function()
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:afk", "synced") then
    return
  end
  if getElementData(localPlayer, "player:bw") then
    return
  end
  if getElementData(localPlayer, "player:job") or getElementData(localPlayer, "player:faction") then
    exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
  else
    exports.st_gui:showPlayerNotification("Prze\197\130\196\133czono si\196\153 w tryb afk", "success")
    exports.ST_blackwhite:switchBlackwhite(true)
    triggerServerEvent("ev", resourceRoot, "startAFKplayer", localPlayer, true)
    windows.warning = false
    windows.kick = false
    windows.afk = true
    showCursor(true)
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    tick = getTickCount()
    timeAFK = 0
  end
end)
addEventHandler("onClientResourceStop", resourceRoot, function()
  for _FORV_3_, _FORV_4_ in ipairs(getElementsByType("player")) do
    if exports.ST_datasystem:getCustomData(_FORV_4_, "player:afk", "synced") then
      exports.ST_blackwhite:switchBlackwhite(false)
    end
  end
end)
afkTime = 480000
addEventHandler("onClientKey", root, function()
  _UPVALUE0_ = getTickCount()
end)
function isPlayerAFK()
  return getTickCount() - _UPVALUE0_ < afkTime or getElementVelocity(getPedOccupiedVehicle(localPlayer) or localPlayer, "kmh") > 5
end
setTimer(function()
  updateAFKStatus(not isPlayerAFK())
end, 5000, 0)
function updateAFKStatus(_ARG_0_)
  if _ARG_0_ == true then
    if windows.warning == true then
      return
    end
    if windows.afk == true then
      return
    end
    if windows.kick == true then
      return
    end
    createTrayNotification("Za chwile system prze\197\130\196\133czy ci\196\153 w tryb AFK | SantoriRPG", "warning")
    countN = 60
    tick = getTickCount()
    addEventHandler("onClientRender", root, window)
    windows.kick = false
    windows.warning = true
  elseif windows.warning == true or windows.kick == true then
    removeEventHandler("onClientRender", root, window)
    windows.kick = false
    windows.warning = false
  end
end
getResourceName(getThisResource(), true, 410890032)
return
