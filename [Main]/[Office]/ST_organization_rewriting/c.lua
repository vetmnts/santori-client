function setup()
  for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE0_) do
    setElementDimension(createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 1.5, 255, 175, 0, 75), _FORV_4_[4])
    setElementPosition(createElement("text"), _FORV_4_[1], _FORV_4_[2], _FORV_4_[3])
    setElementData(createElement("text"), "name", "#F6FF00Organizacja#ffffff\nPrzepisywanie pojazd\195\179w")
    setElementDimension(createElement("text"), _FORV_4_[4])
    addEventHandler("onClientMarkerHit", createMarker(_FORV_4_[1], _FORV_4_[2], _FORV_4_[3] - 0.95, "cylinder", 1.5, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
      if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      addEventHandler("onClientKey", root, key)
      triggerServerEvent("ev", resourceRoot, "showVehicle", localPlayer)
      _UPVALUE0_.main = true
      _UPVALUE0_.select = false
      showCursor(true)
    end)
  end
end
setup()
function window()
  if _UPVALUE2_.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 823 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, _UPVALUE0_.w - 310 / _UPVALUE1_, _UPVALUE0_.h - 100 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(38, 38, 38, 200), false)
    dxDrawText("PRZYPISYWANIE POJAZD\195\147W", _UPVALUE0_.x - 40 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      if _FORV_7_ >= _UPVALUE4_ and _FORV_7_ <= _UPVALUE5_ then
        xY = xY + 1
        if _UPVALUE2_.select and _UPVALUE2_.select[1] == _FORV_8_.id then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 36 / _UPVALUE1_, _UPVALUE0_.y + 88 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 544 / _UPVALUE1_, 48 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        end
        if isMouseIn(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 540 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 540 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 38 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 540 / _UPVALUE1_, 44 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255), false)
        end
        if _FORV_8_.ownedGroup == "" then
          group = "Nie przypisano"
        else
          group = _FORV_8_.ownedGroup
        end
        dxDrawText("#ffffff[#ffbb00" .. _FORV_8_.id .. "#ffffff]  #ffffff" .. exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_8_.model), _FORV_8_.custom_model), _UPVALUE0_.x + 50 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 187, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
        dxDrawText(group, _UPVALUE0_.x, _UPVALUE0_.y + 22 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 210 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawScrollBar(#_UPVALUE3_, _UPVALUE0_.x + 587 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_, 6 / _UPVALUE1_, 437 / _UPVALUE1_, _UPVALUE6_, _UPVALUE4_)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if _UPVALUE2_.select then
    dxDrawText([[
ID pojazdu:
#FFBB00]] .. _UPVALUE2_.select[1] .. "", _UPVALUE0_.x + 1105 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", true, false, true, true, false)
    dxDrawText([[
Wybrany Pojazd:
#FFBB00]] .. _UPVALUE2_.select[2] .. "", _UPVALUE0_.x + 1105 / _UPVALUE1_, _UPVALUE0_.y + 260 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", true, false, true, true, false)
    dxDrawText([[
Twoja Organizacja:
#FFBB00]] .. (getElementData(localPlayer, "player:organization") or "Nie jeste\197\155 w \197\188adnej organizacji") .. "", _UPVALUE0_.x + 1105 / _UPVALUE1_, _UPVALUE0_.y + 410 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", true, false, true, true, false)
    dxDrawText([[
Lokalizacja:
#FFBB00]] .. _UPVALUE2_.select[4] .. "", _UPVALUE0_.x + 1105 / _UPVALUE1_, _UPVALUE0_.y + 560 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "center", "center", true, false, true, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 613 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, _UPVALUE0_.w - 642 / _UPVALUE1_, _UPVALUE0_.h - 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(38, 38, 38, 200))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 623 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_, _UPVALUE0_.w - 662 / _UPVALUE1_, 4 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawText("INFORMACJE", _UPVALUE0_.x + 1105 / _UPVALUE1_, _UPVALUE0_.y - 5 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    if _UPVALUE2_.select[3] == "" then
      exports.ST_buttons:dxCreateButton("Przepisz", _UPVALUE0_.x + 633 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 200 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    else
      exports.ST_buttons:dxCreateButton("Wypisz", _UPVALUE0_.x + 633 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 200 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE1_) do
        if _FORV_6_ >= _UPVALUE2_ and _FORV_6_ <= _UPVALUE3_ and isMouseIn(_UPVALUE5_.x + 38 / _UPVALUE4_, _UPVALUE5_.y + 90 / _UPVALUE4_ + 50 / _UPVALUE4_ * (0 + 1 - 1), 540 / _UPVALUE4_, 44 / _UPVALUE4_) then
          if tonumber(_FORV_7_.parking) == 1 then
            location = "Przechowalnia"
          elseif _FORV_7_.police == 1 then
            location = "Parking policyjny"
          else
            for _FORV_12_, _FORV_13_ in ipairs(getElementsByType("vehicle")) do
              if getElementData(_FORV_13_, "vehicle:id") and getElementData(_FORV_13_, "vehicle:id") == _FORV_7_.id then
                location = getZoneName(getElementPosition(_FORV_13_)) .. ", " .. getZoneName(getElementPosition(_FORV_13_))
              end
            end
          end
          _UPVALUE0_.select = {
            _FORV_7_.id,
            exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_7_.model), _FORV_7_.custom_model),
            _FORV_7_.ownedGroup,
            location
          }
          triggerServerEvent("ev", resourceRoot, "showVehiclesOrganizationRewriting")
        end
      end
    end
    if isMouseIn(_UPVALUE5_.x + _UPVALUE5_.w - 61 / _UPVALUE4_, _UPVALUE5_.y + 24 / _UPVALUE4_, 27 / _UPVALUE4_, 27 / _UPVALUE4_) and _UPVALUE0_.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      exports.ST_gui:destroyCustomEditbox("rejestracja")
      _UPVALUE0_.main = false
      _UPVALUE0_.select = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE5_.x + 633 / _UPVALUE4_, _UPVALUE5_.y + 470 / _UPVALUE4_, 200 / _UPVALUE4_, 60 / _UPVALUE4_) and _UPVALUE0_.select then
      if _UPVALUE0_.select[3] == "" then
        if not getElementData(localPlayer, "player:organization") then
          exports.st_gui:showPlayerNotification("Nie jeste\197\155 w \197\188adnej organizacji", "error")
          return
        end
        triggerServerEvent("ev", resourceRoot, "rewritingOrganizationOperation", localPlayer, _UPVALUE0_.select[1], getElementData(localPlayer, "player:organization"))
        exports.st_gui:showPlayerNotification("Zmieniono pojazdowi ID [" .. _UPVALUE0_.select[1] .. "] przypis na organizacje", "info")
      else
        triggerServerEvent("ev", resourceRoot, "rewritingOrganizationOperation", localPlayer, _UPVALUE0_.select[1], "")
        exports.st_gui:showPlayerNotification("Wypisa\197\130e\197\155 pojazd ID [" .. _UPVALUE0_.select[1] .. "] z organizacji", "info")
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      exports.ST_gui:destroyCustomEditbox("rejestracja")
      _UPVALUE0_.main = false
      _UPVALUE0_.select = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  if _ARG_0_ == "showVehicleClient" then
    _UPVALUE0_ = _ARG_1_
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_ == _UPVALUE1_ then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ - 1
    _UPVALUE0_ = _UPVALUE0_ - 1
  elseif _ARG_0_ == "mouse_wheel_down" then
    if _UPVALUE0_ >= #_UPVALUE3_ then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 1
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
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(20, 20, 20, 255))
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
getResourceName(getThisResource(), true, 192332762)
return
