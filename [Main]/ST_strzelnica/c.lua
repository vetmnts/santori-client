createBlip(1368.44, -1279.73, 13.55, 25, 2, 0, 0, 0, 0, 0, 250)
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
  dxDrawText("STRZELNICA", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
  dxDrawText("Twoje umiej\196\153tno\197\155ci strzelania z poszczeg\195\179lnych broni", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y - 10 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE0_.x + 822 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) then
    dxDrawImage(_UPVALUE0_.x + 823 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
  else
    dxDrawImage(_UPVALUE0_.x + 824 / _UPVALUE1_, _UPVALUE0_.y + 26 / _UPVALUE1_, 23 / _UPVALUE1_, 23 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  xY = 0
  for _FORV_7_, _FORV_8_ in ipairs(weaponsSkils) do
    xY = xY + 1
    dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 80 / _UPVALUE1_, 0, 360, tocolor(45, 45, 45, 255))
    dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 80 / _UPVALUE1_, 270, 270 + _FORV_8_[3] / 2.775, tocolor(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3], 255))
    if isMouseIn(_UPVALUE0_.x + 264 / _UPVALUE1_ - 70 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_ - 70 / _UPVALUE1_, 140 / _UPVALUE1_, 140 / _UPVALUE1_) then
      dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 80 / _UPVALUE1_, 270, 270 + _FORV_8_[3] / 2.775, tocolor(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3], 255))
      dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 65 / _UPVALUE1_, 0, 360, tocolor(27, 27, 27, 255))
    else
      dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 80 / _UPVALUE1_, 270, 270 + _FORV_8_[3] / 2.775, tocolor(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3], 200))
      dxDrawCircle(_UPVALUE0_.x + 264 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 205 / _UPVALUE1_, 65 / _UPVALUE1_, 0, 360, tocolor(30, 30, 30, 255))
    end
    dxDrawText(RGBToHex(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3]) .. "" .. _FORV_8_[3] / 10 .. "#ffffff%", _UPVALUE0_.x + 165 / _UPVALUE1_ + 360 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 290 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    if _FORV_8_[1] == "Pistolety" then
      dxDrawImage(_UPVALUE0_.x + 226 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 170 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, _FORV_8_[4], 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 221 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 165 / _UPVALUE1_, 80 / _UPVALUE1_, 80 / _UPVALUE1_, _FORV_8_[4], 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 165 / _UPVALUE1_ + 360 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 135 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  xY = 0
  for _FORV_7_, _FORV_8_ in ipairs(weaponsSkils1) do
    xY = xY + 1
    dxDrawCircle(_UPVALUE0_.x + 354 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_, 80 / _UPVALUE1_, 0, 360, tocolor(45, 45, 45, 255))
    if isMouseIn(_UPVALUE0_.x + 354 / _UPVALUE1_ - 70 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_ - 70 / _UPVALUE1_, 140 / _UPVALUE1_, 140 / _UPVALUE1_) then
      dxDrawCircle(_UPVALUE0_.x + 354 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_, 80 / _UPVALUE1_, 270, 270 + _FORV_8_[3] / 2.775, tocolor(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3], 200))
      dxDrawCircle(_UPVALUE0_.x + 354 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_, 65 / _UPVALUE1_, 0, 360, tocolor(27, 27, 27, 255))
    else
      dxDrawCircle(_UPVALUE0_.x + 354 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_, 80 / _UPVALUE1_, 270, 270 + _FORV_8_[3] / 2.775, tocolor(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3], 255))
      dxDrawCircle(_UPVALUE0_.x + 354 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 355 / _UPVALUE1_, 65 / _UPVALUE1_, 0, 360, tocolor(30, 30, 30, 255))
    end
    dxDrawText(RGBToHex(_FORV_8_[5][1], _FORV_8_[5][2], _FORV_8_[5][3]) .. "" .. _FORV_8_[3] / 10 .. "#ffffff%", _UPVALUE0_.x + 350 / _UPVALUE1_ + 360 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 590 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE0_.x + 310 / _UPVALUE1_ + 180 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 315 / _UPVALUE1_, 80 / _UPVALUE1_, 80 / _UPVALUE1_, _FORV_8_[4], 20, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(_FORV_8_[1], _UPVALUE0_.x + 350 / _UPVALUE1_ + 360 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  if selectTableSkils then
    dxDrawText(selectTableSkils[1], _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 700 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText("KOSZT: #00ad2350,000 #ffffffPLN", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 755 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE0_.x + 360 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, 170 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    for _FORV_6_, _FORV_7_ in ipairs(weaponsSkils) do
      if isMouseIn(_UPVALUE1_.x + 264 / _UPVALUE0_ - 70 / _UPVALUE0_ + 180 / _UPVALUE0_ * (0 + 1 - 1), _UPVALUE1_.y + 205 / _UPVALUE0_ - 70 / _UPVALUE0_, 140 / _UPVALUE0_, 140 / _UPVALUE0_) then
        selectTableSkils = weaponsSkils[_FORV_6_]
      end
    end
    for _FORV_7_, _FORV_8_ in ipairs(weaponsSkils1) do
      if isMouseIn(_UPVALUE1_.x + 354 / _UPVALUE0_ - 70 / _UPVALUE0_ + 180 / _UPVALUE0_ * (0 + 1 - 1), _UPVALUE1_.y + 355 / _UPVALUE0_ - 70 / _UPVALUE0_, 140 / _UPVALUE0_, 140 / _UPVALUE0_) then
        selectTableSkils = weaponsSkils1[_FORV_7_]
      end
    end
    if isMouseIn(_UPVALUE1_.x + 360 / _UPVALUE0_, _UPVALUE1_.y + 500 / _UPVALUE0_, 170 / _UPVALUE0_, 50 / _UPVALUE0_) then
      if selectTableSkils then
        isWeapon = false
        for _FORV_7_, _FORV_8_ in ipairs(selectTableSkils[6]) do
          if getPedWeapon(localPlayer) == tonumber(_FORV_8_) then
            isWeapon = true
          end
        end
        if isWeapon then
          if getElementData(localPlayer, "player:moneyMNn") < 50000 then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("ev", resourceRoot, "takeMoney", localPlayer, 50000)
          startSkills()
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          showCursor(false)
          for _FORV_7_, _FORV_8_ in pairs(textures) do
            if isElement(_FORV_8_) then
              destroyElement(_FORV_8_)
            end
          end
          textures = {}
        else
          exports.st_gui:showPlayerNotification("Musisz mie\196\135 wybran\196\133 bro\197\132 w d\197\130oni", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 822 / _UPVALUE0_, _UPVALUE1_.y + 24 / _UPVALUE0_, 25 / _UPVALUE0_, 25 / _UPVALUE0_) then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    end
  end
end
function windowRender()
  if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) > 70 then
    setElementData(localPlayer, "player:strzelnica", false)
    unbindKey("backspace")
    removeEventHandler("onClientPlayerWeaponFire", localPlayer, onClientFire)
    removeEventHandler("onClientRender", root, windowRender)
    self = {}
    setElementFrozen(localPlayer, false)
    if isElement(object) then
      destroyElement(object)
    end
    triggerServerEvent("ev", resourceRoot, "tppos", localPlayer, {
      1365.16,
      -1281.8,
      13.55,
      0
    }, false)
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("TRENOWANIE STRZELANIA Z KATEGORII " .. RGBToHex(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3]) .. "" .. selectTableSkils[1], _UPVALUE0_.x, _UPVALUE0_.y - 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
  dxDrawText("( " .. selectTableSkils[7] .. " )", _UPVALUE0_.x, _UPVALUE0_.y - 40 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, true, false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 64 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
  if (_UPVALUE0_.w - 200 / _UPVALUE1_) / 1000 * selectTableSkils[3] / _UPVALUE1_ < 20 / _UPVALUE1_ then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 64 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3], 255))
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 64 / _UPVALUE1_, (_UPVALUE0_.w - 200 / _UPVALUE1_) / 1000 * selectTableSkils[3] / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3], 255))
  end
  dxDrawText("" .. selectTableSkils[3] / 10 .. "%", _UPVALUE0_.x + 2 / _UPVALUE1_, _UPVALUE0_.y + 12 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
  dxDrawText("" .. selectTableSkils[3] / 10 .. "%", _UPVALUE0_.x, _UPVALUE0_.y + 10 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
  dxDrawText("CELNE STRZA\197\129Y: #ffbb00" .. self.pkt1 .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
  dxDrawText("WSZYSTKIE STRZA\197\129Y: #ffbb00" .. self.pkt2 .. "", _UPVALUE0_.x, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, true, false)
end
function startSkills()
  exports.st_gui:showPlayerNotification("Rozpocz\196\153to trenowanie umiej\196\153tno\197\155ci strzelania", "info")
  addEventHandler("onClientPlayerWeaponFire", localPlayer, onClientFire)
  addEventHandler("onClientRender", root, windowRender)
  self = {}
  self.allPkt = math.random(5, 25)
  self.pkt = 0
  self.pkt1 = 0
  self.pkt2 = 0
  bindKey("backspace", "down", endShooting)
  setElementData(localPlayer, "player:strzelnica", true)
  dimension = math.random(21, 300)
  triggerServerEvent("ev", resourceRoot, "tppos", localPlayer, {
    305.3095703125,
    -64.4189453125,
    1001.515625,
    dimension
  }, true)
  strzelnica()
  outputChatBox(" ", 255, 255, 255, true)
  outputChatBox("#FFC000\226\151\143 #ffffffAby wyj\197\155\196\135 kliknij przycisk #FFC000backspace", 255, 255, 255, true)
  outputChatBox(" ", 255, 255, 255, true)
end
function strzelnica()
  object = createObject(_UPVALUE0_[math.random(1, #_UPVALUE0_)][1], _UPVALUE0_[math.random(1, #_UPVALUE0_)][2], _UPVALUE0_[math.random(1, #_UPVALUE0_)][3], _UPVALUE0_[math.random(1, #_UPVALUE0_)][4], _UPVALUE0_[math.random(1, #_UPVALUE0_)][5], _UPVALUE0_[math.random(1, #_UPVALUE0_)][6], _UPVALUE0_[math.random(1, #_UPVALUE0_)][7])
  setElementRotation(object, 0, 0, 90)
  setElementInterior(object, 4)
  setElementDimension(object, dimension)
  if math.random(1, 6) == 1 then
    setElementPosition(object, _UPVALUE0_[math.random(1, #_UPVALUE0_)][2], -56, _UPVALUE0_[math.random(1, #_UPVALUE0_)][4])
    moveObject(object, 5000, _UPVALUE0_[math.random(1, #_UPVALUE0_)][2], -72, _UPVALUE0_[math.random(1, #_UPVALUE0_)][4])
  elseif math.random(1, 6) == 2 then
    setElementPosition(object, _UPVALUE0_[math.random(1, #_UPVALUE0_)][2], -72, _UPVALUE0_[math.random(1, #_UPVALUE0_)][4])
    moveObject(object, 5000, _UPVALUE0_[math.random(1, #_UPVALUE0_)][2], -58, _UPVALUE0_[math.random(1, #_UPVALUE0_)][4])
  end
end
function endShooting()
  setElementData(localPlayer, "player:strzelnica", false)
  unbindKey("backspace")
  removeEventHandler("onClientPlayerWeaponFire", localPlayer, onClientFire)
  removeEventHandler("onClientRender", root, windowRender)
  self = {}
  setElementFrozen(localPlayer, false)
  if isElement(object) then
    destroyElement(object)
  end
  triggerServerEvent("ev", resourceRoot, "tppos", localPlayer, {
    298.37,
    -70.04,
    1001.52,
    20
  }, false)
  exports.st_gui:showPlayerNotification("Zako\197\132czono trenowanie umiej\196\153tno\197\155ci", "info")
  if isPlayerFaction then
  end
  triggerServerEvent("ev", resourceRoot, "addSkilsTable", localPlayer, selectTableSkils[9], selectTableSkils[3])
end
function onClientFire(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if not isElement(_ARG_6_) then
    playSoundFrontEnd(4)
  end
  self.pkt2 = self.pkt2 + 1
  if isElement(_ARG_6_) and isElement(object) then
    if _ARG_0_ == 43 or _ARG_0_ == 41 then
      return
    end
    destroyElement(object)
    strzelnica()
    self.pkt = self.pkt + 1
    self.pkt1 = self.pkt1 + 1
    playSoundFrontEnd(32)
    if self.pkt == self.allPkt then
      setTimer(function()
        self.allPkt = math.random(15, 85)
        self.pkt = 0
        triggerServerEvent("ev", resourceRoot, "addSkils", localPlayer, selectTableSkils[2])
        playSoundFrontEnd(18)
      end, 2000, 1)
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showGui" then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      ak47_icon = dxCreateTexture(":ST_invetory/img/ak47_icon.png"),
      deagle_icon = dxCreateTexture(":ST_invetory/img/deagle_icon.png"),
      sniper_icon = dxCreateTexture(":ST_invetory/img/sniper_icon.png"),
      mp5_icon = dxCreateTexture(":ST_invetory/img/mp5_icon.png"),
      obrzyn_icon = dxCreateTexture(":ST_invetory/img/obrzyn_icon.png")
    }
    weaponsSkils = {
      {
        "Pistolety",
        {
          69,
          70,
          71
        },
        getPedStat(localPlayer, 69),
        textures.deagle_icon,
        {
          13,
          158,
          13
        },
        {
          22,
          23,
          24
        },
        "Deagle",
        24,
        "skillPistol"
      },
      {
        "Shotguny",
        {
          72,
          73,
          74
        },
        getPedStat(localPlayer, 72),
        textures.obrzyn_icon,
        {
          26,
          52,
          173
        },
        {
          25,
          26,
          27
        },
        "Strzelba bojowa, Obrzyn",
        26,
        "skillShotgun"
      },
      {
        "Maszynowe",
        {75, 76},
        getPedStat(localPlayer, 75),
        textures.mp5_icon,
        {
          242,
          151,
          39
        },
        {
          28,
          29,
          32
        },
        "UZI, MP5, TEC9",
        29,
        "skillMachine"
      }
    }
    weaponsSkils1 = {
      {
        "Karabiny",
        {77, 78},
        getPedStat(localPlayer, 77),
        textures.ak47_icon,
        {
          212,
          0,
          0
        },
        {30, 31},
        "M4, AK47",
        30,
        "skillRifles"
      },
      {
        "Strzelby",
        {79},
        getPedStat(localPlayer, 79),
        textures.sniper_icon,
        {
          126,
          26,
          173
        },
        {33, 34},
        "Karabin snajperski",
        33,
        "skillSniper"
      }
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    showCursor(true)
    isPlayerFaction = _ARG_1_
  elseif _ARG_0_ == "reloadSkill" then
    if tonumber(selectTableSkils[3] + _ARG_1_) < 1000 then
      selectTableSkils[3] = selectTableSkils[3] + _ARG_1_
    else
      selectTableSkils[3] = 1000
    end
    outputChatBox("Dodano " .. RGBToHex(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3]) .. "+" .. _ARG_1_ / 10 .. "% #ffffffdo umiej\196\153tno\197\155ci strzelania z kategorii " .. RGBToHex(selectTableSkils[5][1], selectTableSkils[5][2], selectTableSkils[5][3]) .. "" .. selectTableSkils[1] .. "", 255, 255, 255, true)
  end
end)
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or _ARG_3_ and (_ARG_3_ < 0 or 255 < _ARG_3_) then
    return nil
  end
  if _ARG_3_ then
    return string.format("#%.2X%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  else
    return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
getResourceName(getThisResource(), true, 914237401)
return
