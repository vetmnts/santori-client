createBlip(2247.84, -1662.61, 15.47, 45, 2, 0, 0, 0, 0, 0, 275)
createBlip(-2224.25, 332.35, 35.32, 45, 2, 0, 0, 0, 0, 0, 275)
pos = {
  {
    2248.33,
    -1669.77,
    15.48,
    0,
    0
  },
  {
    -2229.41,
    343.39,
    35.37,
    0,
    0
  }
}
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x + 8 / _UPVALUE1_, _UPVALUE0_.y + 4.5 / _UPVALUE1_, _UPVALUE0_.w - 15.5 / _UPVALUE1_, _UPVALUE0_.h - 8.5 / _UPVALUE1_, 40 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE2_.background, 0, 0, 0, tocolor(30, 30, 30, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 58 / _UPVALUE1_, 842 / _UPVALUE1_, 4 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
  dxDrawRoundedRectangle(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, _UPVALUE0_.w - 330 / _UPVALUE1_, _UPVALUE0_.h - 100 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(38, 38, 38, 200), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 112 / _UPVALUE1_, 553 / _UPVALUE1_, 4 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255))
  dxDrawText("PODGL\196\132D SKINA", _UPVALUE0_.x + 1120 / _UPVALUE1_, _UPVALUE0_.y - 0 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE0_.x + 208 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 208 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(50, 50, 50, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 213 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.clothes, 0, 0, 0, tocolor(150, 150, 150, 255), false)
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x + 208 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(60, 60, 60, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 213 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.clothes, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if isMouseIn(_UPVALUE0_.x + 278 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 278 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(100, 100, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 280 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 283 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.clothes, 0, 0, 0, tocolor(150, 150, 0, 255), false)
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x + 278 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(140, 140, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 280 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 283 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.clothes, 0, 0, 0, tocolor(255, 255, 0, 255), false)
  end
  if isMouseIn(_UPVALUE0_.x + 348 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 348 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(100, 0, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 353 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.bandit_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
  else
    dxDrawRoundedRectangle(_UPVALUE0_.x + 348 / _UPVALUE1_, _UPVALUE0_.y + 13 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(140, 0, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 36 / _UPVALUE1_, 36 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(22, 22, 22, 255), false)
    dxDrawImage(_UPVALUE0_.x + 353 / _UPVALUE1_, _UPVALUE0_.y + 18 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, _UPVALUE2_.bandit_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
  end
  if isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h) then
    dxDrawImage(_UPVALUE3_.x - math.floor(1 / _UPVALUE1_), _UPVALUE3_.y - math.floor(1 / _UPVALUE1_), _UPVALUE3_.w + math.floor(2 / _UPVALUE1_), _UPVALUE3_.h + math.floor(2 / _UPVALUE1_), _UPVALUE2_.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, _UPVALUE2_.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  dxDrawText("WYBIERZ SKINA", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(10 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
  dxDrawText("PRZEBIERALNIA", _UPVALUE0_.x - 151 / _UPVALUE1_, _UPVALUE0_.y - 128 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
  dxDrawText("WYBRANE SKINY: " .. _UPVALUE4_.category .. "", _UPVALUE0_.x + math.floor(435 / _UPVALUE1_), _UPVALUE0_.y - math.floor(10 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
  xY = 0
  for _FORV_7_, _FORV_8_ in ipairs(tabela_skiny) do
    if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 550 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 550 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 550 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
      end
      dxDrawText(_FORV_8_.id, _UPVALUE0_.x + 52 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 187, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText("#03b500" .. przecinek(_FORV_8_.cost) .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y + 90 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 215 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    end
  end
  if _UPVALUE4_.select == true then
    dxDrawText("Koszt: " .. przecinek(cost) .. " PLN", _UPVALUE0_.x + math.floor(1130 / _UPVALUE1_), _UPVALUE0_.y + math.floor(930 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
    dxDrawText("ID: " .. modelSkin .. "", _UPVALUE0_.x + math.floor(1130 / _UPVALUE1_), _UPVALUE0_.y + math.floor(870 / _UPVALUE1_), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Kup skina", _UPVALUE0_.x + math.floor(640 / _UPVALUE1_), _UPVALUE0_.y + math.floor(600 / _UPVALUE1_), math.floor(210 / _UPVALUE1_), math.floor(65 / _UPVALUE1_), 255, 1)
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(tabela_skiny) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 38 / _UPVALUE3_, _UPVALUE4_.y + 122 / _UPVALUE3_ + 50 / _UPVALUE3_ * (0 + 1 - 1), 550 / _UPVALUE3_, 44 / _UPVALUE3_, 10 / _UPVALUE3_) and _UPVALUE0_.main == true then
          if isElement(ped) then
            destroyElement(ped)
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end
          ped = createPed(_FORV_7_.id, getCameraMatrix())
          myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, _UPVALUE4_.x + 585 / _UPVALUE3_, _UPVALUE4_.y - 70 / _UPVALUE3_, _UPVALUE4_.w - 590 / _UPVALUE3_, _UPVALUE4_.h, false, true)
          setElementInterior(ped, getElementInterior(localPlayer))
          setElementDimension(ped, getElementDimension(localPlayer))
          _UPVALUE0_.select = true
          cost = _FORV_7_.cost
          modelSkin = _FORV_7_.id
        end
      end
    end
    if isMouseIn(_UPVALUE5_.x, _UPVALUE5_.y, _UPVALUE5_.w, _UPVALUE5_.h) and _UPVALUE0_.main == true then
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        setTimer(function()
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end, 100, 1)
      end
      for _FORV_5_, _FORV_6_ in pairs(_UPVALUE6_) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      _UPVALUE6_ = {}
    elseif isMouseIn(_UPVALUE4_.x + 640 / _UPVALUE3_, _UPVALUE4_.y + 600 / _UPVALUE3_, 210 / _UPVALUE3_, 65 / _UPVALUE3_) and _UPVALUE0_.select == true then
      if getElementData(localPlayer, "player:moneyMNn") < cost then
        exports.st_gui:showPlayerNotification("Nie posiadasz " .. cost .. " PLN na zakup skina!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zakupiono skina (ID: " .. modelSkin .. ") za " .. cost .. " PLN", "success")
      triggerServerEvent("ev", resourceRoot, "changeSkin", modelSkin, cost)
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        setTimer(function()
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end, 100, 1)
      end
      for _FORV_5_, _FORV_6_ in pairs(_UPVALUE6_) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      _UPVALUE6_ = {}
    elseif isMouseIn(_UPVALUE4_.x + 208 / _UPVALUE3_, _UPVALUE4_.y + 13 / _UPVALUE3_, 40 / _UPVALUE3_, 40 / _UPVALUE3_) and _UPVALUE0_.main == true then
      tabela_skiny = _UPVALUE7_
      _UPVALUE0_.category = "NORMALNE"
    elseif isMouseIn(_UPVALUE4_.x + 278 / _UPVALUE3_, _UPVALUE4_.y + 13 / _UPVALUE3_, 40 / _UPVALUE3_, 40 / _UPVALUE3_) and _UPVALUE0_.main == true then
      if not getElementData(localPlayer, "player:premium") then
        return exports.st_gui:showPlayerNotification("Nie posiadasz premium", "error")
      end
      tabela_skiny = _UPVALUE8_
      _UPVALUE0_.category = "#ffff00PREMIUM"
    elseif isMouseIn(_UPVALUE4_.x + 348 / _UPVALUE3_, _UPVALUE4_.y + 13 / _UPVALUE3_, 40 / _UPVALUE3_, 40 / _UPVALUE3_) and _UPVALUE0_.main == true then
      if not getElementData(localPlayer, "player:organization") then
        exports.st_gui:showPlayerNotification("Nie masz dost\196\153pu do tej opcji!", "error")
        return
      end
      if _UPVALUE9_[getElementData(localPlayer, "player:organization")] then
        tabela_skiny = _UPVALUE9_[getElementData(localPlayer, "player:organization")]
        _UPVALUE0_.category = "#ff0000CRIME"
      end
    end
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if _UPVALUE0_.main == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if _UPVALUE0_.main == true then
    scrollDown()
  end
end)
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp()
  if _UPVALUE0_ >= #tabela_skiny then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
function setup()
  for _FORV_3_, _FORV_4_ in ipairs(pos) do
    setElementDimension(createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), _FORV_4_[4])
    setElementPosition(createElement("text"), _FORV_4_[1], _FORV_4_[2], _FORV_4_[3])
    setElementData(createElement("text"), "name", "Wyb\195\179r skina")
    setElementDimension(createElement("text"), _FORV_4_[4])
    setElementInterior(createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), _FORV_4_[5])
    setElementInterior(createElement("text"), _FORV_4_[5])
    addEventHandler("onClientMarkerHit", createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
      if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
        return
      end
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      addEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = true
      _UPVALUE0_.select = true
      showCursor(true, true)
      _UPVALUE1_ = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        clothes = dxCreateTexture("img/clothes.png"),
        bandit_icon = dxCreateTexture("img/bandit_icon.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      ped = createPed(0, getCameraMatrix())
      myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, _UPVALUE2_.x + 585 / _UPVALUE3_, _UPVALUE2_.y - 70 / _UPVALUE3_, _UPVALUE2_.w - 590 / _UPVALUE3_, _UPVALUE2_.h, false, true)
      setElementInterior(ped, _UPVALUE4_[5])
      setElementDimension(ped, _UPVALUE4_[4])
      cost = math.random(2500, 5000)
      modelSkin = 0
      tabela_skiny = _UPVALUE5_
      _UPVALUE0_.category = "NORMALNE"
    end)
    addEventHandler("onClientMarkerLeave", createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 3, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
      if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
        return
      end
      if getPedOccupiedVehicle(_ARG_0_) then
        return
      end
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_.main = false
      cost = nil
      modelSkin = nil
      showCursor(false)
      if isElement(ped) then
        destroyElement(ped)
        setTimer(function()
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end, 100, 1)
      end
      for _FORV_6_, _FORV_7_ in pairs(_UPVALUE1_) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      _UPVALUE1_ = {}
    end)
  end
end
setup()
getResourceName(getThisResource(), true, 924768088)
return
