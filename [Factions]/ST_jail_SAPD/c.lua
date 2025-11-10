setElementDimension(createColCuboid(2271.84, 2467.77, -7.82, 17.65, 15.34, 5.71), 101)
setElementDimension(createMarker(2280.18677, 2480.91235, -6.4078100000000004, "cylinder", 1.5, 246, 255, 0, 255), 101)
setElementPosition(createElement("text"), 2280.18677, 2480.91235, -5.50781)
setElementDimension(createElement("text"), 101)
setElementData(createElement("text"), "name", "Op\197\130ata kaucji")
function window()
  if windows.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
    dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 35 / _UPVALUE1_, tocolor(20, 20, 20, 190), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 3 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawText("Op\197\130ata kaucji", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 29 / _UPVALUE1_, 29 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 29 / _UPVALUE1_, 29 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 396 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(10, 10, 10, 70))
    dxDrawScrollBar(#players_table, _UPVALUE0_.x + 580 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, 4 / _UPVALUE1_, 350 / _UPVALUE1_, _UPVALUE2_, _UPVALUE3_)
    for _FORV_8_ = 1, 5 do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.w - 74 / _UPVALUE1_, 65 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(10, 10, 10, 60))
    end
    for _FORV_9_, _FORV_10_ in ipairs(players_table) do
      if getElementData(_FORV_10_, "player:jail") and _FORV_9_ >= _UPVALUE3_ and _FORV_9_ <= _UPVALUE4_ and _FORV_10_ then
        if self.selectPlayer == _FORV_10_ then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 28 / _UPVALUE1_, _UPVALUE0_.y + 98 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.w - 70 / _UPVALUE1_, 69 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(255, 187, 0, 75))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.w - 74 / _UPVALUE1_, 65 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(25, 25, 25, 225))
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.w - 74 / _UPVALUE1_, 65 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(45, 45, 45, 125))
        end
        dxDrawText("#bdbdbd[#ffbf00" .. getElementData(_FORV_10_, "id") .. "#bdbdbd] #ffffff" .. getPlayerName(_FORV_10_) .. "", _UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 35 / _UPVALUE1_ + 154 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
        dxDrawText("#dcdcdcczas do ko\197\132ca: " .. resulted(tonumber(getElementData(_FORV_10_, "player:jail").time)) .. "", _UPVALUE0_.x + 123 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_ + 154 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light12"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), 2 / _UPVALUE1_, 32 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 147 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), 14 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawImage(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 105 / _UPVALUE1_ + 77 / _UPVALUE1_ * (0 + 1 - 1), 53 / _UPVALUE1_, 53 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("Op\197\130ata:\n#00ad23" .. przecinek(getElementData(_FORV_10_, "player:jail").time * 12000) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 61 / _UPVALUE1_ + 154 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 195 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
      end
    end
    if self.selectPlayer then
      if isMouseIn(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 70 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 70 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(15, 15, 15, 150))
        dxDrawText("OP\197\129A\196\134 KAUCJ\196\152", _UPVALUE0_.x + 255 / _UPVALUE1_, _UPVALUE0_.y + 850 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, _UPVALUE0_.w - 40 / _UPVALUE1_, 70 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(10, 10, 10, 150))
        dxDrawText("OP\197\129A\196\134 KAUCJ\196\152", _UPVALUE0_.x + 255 / _UPVALUE1_, _UPVALUE0_.y + 850 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 235), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(players_table) do
        if localPlayer ~= _FORV_7_ and getElementData(_FORV_7_, "player:jail") and _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and _FORV_7_ and isMouseIn(_UPVALUE3_.x + 30 / _UPVALUE2_, _UPVALUE3_.y + 100 / _UPVALUE2_ + 77 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE3_.w - 74 / _UPVALUE2_, 65 / _UPVALUE2_) then
          if getElementData(_FORV_7_, "player:jail").kaucja == 0 then
            exports.st_gui:showPlayerNotification("Brak mo\197\188liwo\197\155ci wyj\197\155cia za kaucj\196\133", "error")
            return
          end
          self.selectPlayer = _FORV_7_
          self.selectCost = getElementData(_FORV_7_, "player:jail").time * 12000
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + 20 / _UPVALUE2_, _UPVALUE3_.y + 490 / _UPVALUE2_, _UPVALUE3_.w - 40 / _UPVALUE2_, 70 / _UPVALUE2_) and windows.main == true then
      if getElementData(localPlayer, "player:moneyMNn") < tonumber(self.selectCost) then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      triggerServerEvent("ev", resourceRoot, "endPrisonPrice", localPlayer, self.selectPlayer, self.selectCost)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      windows.main = false
      showCursor(false)
      createShaderBlur(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE3_.x + _UPVALUE3_.w - 61 / _UPVALUE2_, _UPVALUE3_.y + 24 / _UPVALUE2_, 29 / _UPVALUE2_, 29 / _UPVALUE2_) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      windows.main = false
      showCursor(false)
      createShaderBlur(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.main == true then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windows.main == true then
    if _UPVALUE0_ >= #players_table then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 1
  end
end
function windowRender()
  if getTickCount() - tick > 60000 then
    tick = getTickCount()
    time = time - 1
    data = {
      time = time,
      powod = powod,
      kaucja = kaucja
    }
    triggerServerEvent("ev", resourceRoot, "updateData", localPlayer, data)
    if not isElementWithinColShape(localPlayer, _UPVALUE1_) then
      triggerServerEvent("ev", resourceRoot, "tpCela", localPlayer, data)
      return
    end
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE2_, _UPVALUE0_.y - 2 / _UPVALUE2_, _UPVALUE0_.w + 4 / _UPVALUE2_, _UPVALUE0_.h - 11 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 15 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 220))
  dxDrawText("JESTE\197\154 W WI\196\152ZIENIU#ff0016!", _UPVALUE0_.x, _UPVALUE0_.y - 112 / _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  dxDrawText("POZOSTA\197\129Y CZAS", _UPVALUE0_.x, _UPVALUE0_.y - 40 / _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
  dxDrawText(resulted(time), _UPVALUE0_.x, _UPVALUE0_.y + 15 / _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  dxDrawText("POW\195\147D", _UPVALUE0_.x, _UPVALUE0_.y + 75 / _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(150, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  dxDrawText(powod, _UPVALUE0_.x, _UPVALUE0_.y + 120 / _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(220, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, true, false)
  if time < 1 then
    tick = false
    tick1 = false
    removeEventHandler("onClientRender", root, windowRender)
    triggerServerEvent("ev", resourceRoot, "endPrison", localPlayer)
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == _UPVALUE0_ and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 3 then
    if isPedInVehicle(localPlayer) then
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    windows = {main = true}
    self = {}
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    showCursor(true)
    players_table = getElementsWithinColShape(_UPVALUE1_, "player")
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      addEventHandler("onClientRender", root, windowRender)
      tick = getTickCount()
      tick1 = getTickCount()
      time = tonumber(getElementData(localPlayer, "player:jail").time)
      powod = getElementData(localPlayer, "player:jail").powod
      kaucja = getElementData(localPlayer, "player:jail").kaucja
    else
      tick = false
      tick1 = false
      removeEventHandler("onClientRender", root, windowRender)
    end
  end
end)
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE3_.x / _UPVALUE0_, _UPVALUE3_.y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE3_.w / _UPVALUE0_, _UPVALUE3_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 35 / _UPVALUE2_ / _UPVALUE3_.w, 35 / _UPVALUE2_ / _UPVALUE3_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
end
function resulted(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if 0 <= _ARG_0_ then
    hours = math.floor(_ARG_0_ / 3600)
    mins = math.floor(_ARG_0_ / 60 - hours * 60)
    secs = math.floor(_ARG_0_ - hours * 3600 - mins * 60)
    if hours == 0 and mins == 0 then
      return "#ffbf00" .. secs .. " #dcdcdcminut"
    elseif hours == 0 and mins >= 1 then
      if mins == 5 then
        textMIns = "godzin"
      elseif mins == 4 or mins == 3 or mins == 2 then
        textMIns = "godziny"
      elseif mins == 1 then
        textMIns = "godzina"
      end
      return "#ffbf00" .. mins .. " #dcdcdc" .. textMIns .. " #ffbf00" .. secs .. " #dcdcdcminut"
    else
      return "#ffbf00" .. mins .. " #dcdcdcgodzin #ffbf00" .. secs .. " #dcdcdcminut"
    end
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(15, 15, 15, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  end
end
getResourceName(getThisResource(), true, 222561158)
return
