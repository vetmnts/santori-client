selfMap = {showMap = false}
function window()
  if getKeyState("mouse1") and mapIsMoving then
    playerX = -(getCursorPosition() * _UPVALUE0_ * _UPVALUE2_ - mapOffsetX)
    playerY = getCursorPosition() * _UPVALUE1_ * _UPVALUE2_ - mapOffsetY
    playerX = math.max(-4000, math.min(4000, playerX))
    playerY = math.max(-4000, math.min(4000, playerY))
  end
  dxDrawRectangle(0, 0, _UPVALUE0_, _UPVALUE1_, tocolor(0, 0, 0, 230))
  dxDrawImageSection(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, (4000 + playerX) * _UPVALUE3_ - _UPVALUE4_.w / 2 * _UPVALUE2_, (4000 - playerY) * _UPVALUE3_ - _UPVALUE4_.h / 2 * _UPVALUE2_, _UPVALUE4_.w * _UPVALUE2_, _UPVALUE4_.h * _UPVALUE2_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
  dxDrawRoundedRectangle(_UPVALUE5_.x - 2 / _UPVALUE6_, _UPVALUE5_.y, _UPVALUE5_.w, _UPVALUE5_.h, 20 / _UPVALUE6_, tocolor(255, 187, 0, 230))
  dxDrawRoundedRectangle(_UPVALUE5_.x, _UPVALUE5_.y, _UPVALUE5_.w, _UPVALUE5_.h, 20 / _UPVALUE6_, tocolor(20, 20, 20, 255))
  dxDrawText("SantoriRPG", _UPVALUE5_.x + 10 / _UPVALUE6_, _UPVALUE5_.y + 50 / _UPVALUE6_, _UPVALUE5_.x + 662 / _UPVALUE6_, _UPVALUE5_.y + 204 / _UPVALUE6_, tocolor(255, 255, 255, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("gtav60"), "center", "top", false, true)
  dxDrawRoundedRectangle(_UPVALUE7_.x + 100 / _UPVALUE6_, _UPVALUE7_.y, 465 / _UPVALUE6_, _UPVALUE7_.h, 20 / _UPVALUE6_, tocolor(30, 30, 30, 230))
  wlaczone = false
  for _FORV_21_, _FORV_22_ in ipairs(getElementsByType("blip")) do
    if getElementInterior(_FORV_22_) == getElementInterior(localPlayer) and getElementDimension(_FORV_22_) == getElementDimension(localPlayer) then
      if getBlipIcon(_FORV_22_) == 0 then
        if getBlipSize(_FORV_22_) == 0 then
          dxDrawRoundedRectangle(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 4 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 4 / _UPVALUE6_ / 2, 4 / _UPVALUE6_ / _UPVALUE6_, 4 / _UPVALUE6_ / _UPVALUE6_, 1 / _UPVALUE6_, tocolor(getBlipColor(_FORV_22_)))
        elseif getBlipSize(_FORV_22_) == 1 then
          dxDrawRoundedRectangle(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 6 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 6 / _UPVALUE6_ / 2, 6 / _UPVALUE6_ / _UPVALUE6_, 6 / _UPVALUE6_ / _UPVALUE6_, 2 / _UPVALUE6_, tocolor(getBlipColor(_FORV_22_)))
        elseif getBlipSize(_FORV_22_) == 2 then
          dxDrawRoundedRectangle(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 8 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 8 / _UPVALUE6_ / 2, 8 / _UPVALUE6_ / _UPVALUE6_, 8 / _UPVALUE6_ / _UPVALUE6_, 2 / _UPVALUE6_, tocolor(getBlipColor(_FORV_22_)))
        elseif getBlipSize(_FORV_22_) == 3 then
          dxDrawRoundedRectangle(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 12 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 12 / _UPVALUE6_ / 2, 12 / _UPVALUE6_ / _UPVALUE6_, 12 / _UPVALUE6_ / _UPVALUE6_, 2 / _UPVALUE6_, tocolor(getBlipColor(_FORV_22_)))
        end
      end
      if _UPVALUE8_[getBlipIcon(_FORV_22_)] then
        if selfMap.selectLegend then
          if selfMap.selectLegend == getBlipIcon(_FORV_22_) then
            dxDrawImage(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, 38 / _UPVALUE6_, 38 / _UPVALUE6_, BLIP_TEXTURES[_UPVALUE8_[getBlipIcon(_FORV_22_)].texture], 0, 0, 0, tocolor(255, 255, 255, 255))
          end
        elseif _UPVALUE8_[getBlipIcon(_FORV_22_)].block == nil then
          dxDrawImage(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, 38 / _UPVALUE6_, 38 / _UPVALUE6_, BLIP_TEXTURES[_UPVALUE8_[getBlipIcon(_FORV_22_)].texture], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          if isMouseIn(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, 38 / _UPVALUE6_, 38 / _UPVALUE6_) and not wlaczone then
            wlaczone = true
            dxDrawImage(math.max(_UPVALUE4_.x + _UPVALUE4_.w / 2 - _UPVALUE4_.w / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.x + _UPVALUE4_.w / 2 + _UPVALUE4_.w / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, math.max(_UPVALUE4_.y + _UPVALUE4_.h / 2 - _UPVALUE4_.h / 2 + 38 / _UPVALUE6_ / 2, math.min(_UPVALUE4_.y + _UPVALUE4_.h / 2 + _UPVALUE4_.h / 2 - 38 / _UPVALUE6_ / 2, getMapFromWorldPosition(getElementPosition(_FORV_22_)))) - 38 / _UPVALUE6_ / 2, 38 / _UPVALUE6_, 38 / _UPVALUE6_, BLIP_TEXTURES[_UPVALUE8_[getBlipIcon(_FORV_22_)].texture], 0, 0, 0, tocolor(180, 180, 180, 255), false)
            for _FORV_38_, _FORV_39_ in pairs(_UPVALUE8_) do
              if _FORV_38_ == getBlipIcon(_FORV_22_) then
                wlaczoneName = _FORV_39_.name
                textWidth = dxGetTextWidth(_FORV_39_.name, 1, exports.ST_gui:getGUIFont("font16"), true)
              end
            end
          end
        end
      end
    end
  end
  if getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE4_.x and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE4_.x + _UPVALUE4_.w and getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE4_.y and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE4_.y + _UPVALUE4_.h then
    dxDrawImage(getMapFromWorldPosition(getElementPosition(localPlayer)) - 10, getMapFromWorldPosition(getElementPosition(localPlayer)) - 10, 20, 20, BLIP_TEXTURES.radar_centre, 360 - getElementRotation(localPlayer))
  end
  if wlaczone and isCursorShowing() then
    cxs, cys = getCursorPosition()
    cxs, cys = _UPVALUE0_ * cxs, _UPVALUE1_ * cys
    dxDrawRoundedRectangle(cxs + 3 / _UPVALUE6_, cys - 2 / _UPVALUE6_, textWidth / _UPVALUE6_ + 24 / _UPVALUE6_, 42 / _UPVALUE6_, 15 / _UPVALUE6_, tocolor(60, 60, 60, 255), false)
    dxDrawRoundedRectangle(cxs + 5 / _UPVALUE6_, cys, textWidth / _UPVALUE6_ + 20 / _UPVALUE6_, 38 / _UPVALUE6_, 15 / _UPVALUE6_, tocolor(25, 25, 25, 255), false)
    dxDrawText(wlaczoneName, cxs + 16 / _UPVALUE6_, cys + 41 / _UPVALUE6_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, true, false, false)
    dxDrawText(wlaczoneName, cxs + 15 / _UPVALUE6_, cys + 40 / _UPVALUE6_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, true, false, false)
  end
  dxDrawScrollBar(34, _UPVALUE7_.x + 550 / _UPVALUE6_, _UPVALUE7_.y + 15 / _UPVALUE6_, 6 / _UPVALUE6_, 690 / _UPVALUE6_, m, k)
  dxDrawText("Kliknij aby wy\197\155wietli\196\135 tylko wybrane blipy", _UPVALUE7_.x + 10 / _UPVALUE6_, _UPVALUE7_.y + 725 / _UPVALUE6_, _UPVALUE7_.x + 662 / _UPVALUE6_, _UPVALUE7_.y + 204 / _UPVALUE6_, tocolor(220, 220, 220, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font14"), "center", "top", false, true)
  dxDrawText("LEGENDA", _UPVALUE7_.x + 10 / _UPVALUE6_, _UPVALUE7_.y - 60 / _UPVALUE6_, _UPVALUE7_.x + 662 / _UPVALUE6_, _UPVALUE7_.y + 204 / _UPVALUE6_, tocolor(220, 220, 220, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font26"), "center", "top", false, true)
  dxDrawRoundedRectangle(_UPVALUE7_.x + 150 / _UPVALUE6_, _UPVALUE7_.y - 13 / _UPVALUE6_, _UPVALUE5_.w - 285 / _UPVALUE6_, 2 / _UPVALUE6_, 1 / _UPVALUE6_, tocolor(60, 60, 60, 230))
  for _FORV_27_, _FORV_28_ in pairs(_UPVALUE8_) do
    if 0 + 1 >= k and 0 + 1 <= n then
      if isMouseIn(_UPVALUE7_.x + 110 / _UPVALUE6_, _UPVALUE7_.y + 10 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), _UPVALUE5_.w - 220 / _UPVALUE6_, 45 / _UPVALUE6_) then
        dxDrawRoundedRectangle(_UPVALUE7_.x + 110 / _UPVALUE6_, _UPVALUE7_.y + 10 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), _UPVALUE5_.w - 220 / _UPVALUE6_, 45 / _UPVALUE6_, 17 / _UPVALUE6_, tocolor(20, 20, 20, 240))
        dxDrawText(_FORV_28_.name, _UPVALUE7_.x + 170 / _UPVALUE6_, _UPVALUE7_.y + 19 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), _UPVALUE7_.x + 662 / _UPVALUE6_, _UPVALUE7_.y + 204 / _UPVALUE6_, tocolor(230, 230, 230, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font18"), "left", "top", false, true)
        if BLIP_TEXTURES[_UPVALUE8_[_FORV_27_].texture] then
          dxDrawImage(_UPVALUE5_.x + 119 / _UPVALUE6_, _UPVALUE7_.y + 13 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), 38 / _UPVALUE6_, 38 / _UPVALUE6_, BLIP_TEXTURES[_UPVALUE8_[_FORV_27_].texture], 0, 0, 0, tocolor(230, 230, 230, 255))
        end
      else
        dxDrawRoundedRectangle(_UPVALUE7_.x + 110 / _UPVALUE6_, _UPVALUE7_.y + 10 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), _UPVALUE5_.w - 220 / _UPVALUE6_, 45 / _UPVALUE6_, 17 / _UPVALUE6_, tocolor(22, 22, 22, 220))
        dxDrawText(_FORV_28_.name, _UPVALUE7_.x + 170 / _UPVALUE6_, _UPVALUE7_.y + 19 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), _UPVALUE7_.x + 662 / _UPVALUE6_, _UPVALUE7_.y + 204 / _UPVALUE6_, tocolor(255, 255, 255, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("font18"), "left", "top", false, true)
        if BLIP_TEXTURES[_UPVALUE8_[_FORV_27_].texture] then
          dxDrawImage(_UPVALUE5_.x + 119 / _UPVALUE6_, _UPVALUE7_.y + 13 / _UPVALUE6_ + 50 / _UPVALUE6_ * (0 + 1 - 1), 38 / _UPVALUE6_, 38 / _UPVALUE6_, BLIP_TEXTURES[_UPVALUE8_[_FORV_27_].texture], 0, 0, 0, tocolor(255, 255, 255, 255))
        end
      end
    end
  end
  dxDrawRoundedRectangle(_UPVALUE5_.x + 180 / _UPVALUE6_, _UPVALUE9_.y + 340 / _UPVALUE6_, 300 / _UPVALUE6_, 50 / _UPVALUE6_, 15 / _UPVALUE6_, tocolor(30, 30, 30, 230))
  if onAreaOrg then
    dxDrawImage(_UPVALUE5_.x + 185 / _UPVALUE6_, _UPVALUE9_.y + 345 / _UPVALUE6_, 40 / _UPVALUE6_, 40 / _UPVALUE6_, textures.check, 0, 0, 0, tocolor(255, 255, 255, 255))
    if 0 < #getElementsByType("radararea") then
      for _FORV_35_, _FORV_36_ in ipairs((getElementsByType("radararea"))) do
        if isRadarAreaFlashing(_FORV_36_) then
        end
        if getMapFromWorldPosition(getElementPosition(_FORV_36_)) >= _UPVALUE4_.x and getMapFromWorldPosition(getElementPosition(_FORV_36_)) <= _UPVALUE4_.x + _UPVALUE4_.w and getMapFromWorldPosition(getElementPosition(_FORV_36_)) >= _UPVALUE4_.y and getMapFromWorldPosition(getElementPosition(_FORV_36_)) <= _UPVALUE4_.y + _UPVALUE4_.h then
          dxDrawRectangle(getMapFromWorldPosition(getElementPosition(_FORV_36_)))
        end
      end
    end
  else
    dxDrawImage(_UPVALUE5_.x + 185 / _UPVALUE6_, _UPVALUE9_.y + 345 / _UPVALUE6_, 40 / _UPVALUE6_, 40 / _UPVALUE6_, textures.check_off, 0, 0, 0, tocolor(255, 255, 255, 255))
  end
  dxDrawText("Poka\197\188 strefy organizacji", _UPVALUE9_.x - 45 / _UPVALUE6_, _UPVALUE9_.y + 350 / _UPVALUE6_, _UPVALUE9_.x + 662 / _UPVALUE6_, _UPVALUE9_.y + 204 / _UPVALUE6_, tocolor(180, 180, 180, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("normal17"), "left", "top", false, true)
  dxDrawRoundedRectangle(_UPVALUE5_.x + 180 / _UPVALUE6_, _UPVALUE9_.y + 400 / _UPVALUE6_, 300 / _UPVALUE6_, 50 / _UPVALUE6_, 15 / _UPVALUE6_, tocolor(30, 30, 30, 230))
  if onBlockBlip then
    dxDrawImage(_UPVALUE5_.x + 185 / _UPVALUE6_, _UPVALUE9_.y + 405 / _UPVALUE6_, 40 / _UPVALUE6_, 40 / _UPVALUE6_, textures.check, 0, 0, 0, tocolor(255, 255, 255, 255))
  else
    dxDrawImage(_UPVALUE5_.x + 185 / _UPVALUE6_, _UPVALUE9_.y + 405 / _UPVALUE6_, 40 / _UPVALUE6_, 40 / _UPVALUE6_, textures.check_off, 0, 0, 0, tocolor(255, 255, 255, 255))
  end
  dxDrawText("Poka\197\188 ukryte blipy", _UPVALUE9_.x - 45 / _UPVALUE6_, _UPVALUE9_.y + 410 / _UPVALUE6_, _UPVALUE9_.x + 662 / _UPVALUE6_, _UPVALUE9_.y + 204 / _UPVALUE6_, tocolor(180, 180, 180, 255), 1 / _UPVALUE6_, exports.ST_gui:getGUIFont("normal17"), "left", "top", false, true)
end
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _ARG_2_ >= _UPVALUE0_.x and _ARG_2_ <= _UPVALUE0_.x + _UPVALUE0_.w and _ARG_3_ >= _UPVALUE0_.y and _ARG_3_ <= _UPVALUE0_.y + _UPVALUE0_.h then
      mapOffsetX = _ARG_2_ * _UPVALUE1_ + playerX
      mapOffsetY = _ARG_3_ * _UPVALUE1_ - playerY
      mapIsMoving = true
      wasMapMoved = true
    end
    for _FORV_9_, _FORV_10_ in pairs(_UPVALUE2_) do
      if 0 + 1 >= k and 0 + 1 <= n and isMouseIn(_UPVALUE4_.x + 110 / _UPVALUE3_, _UPVALUE4_.y + 10 / _UPVALUE3_ + 50 / _UPVALUE3_ * (0 + 1 - 1), _UPVALUE5_.w - 220 / _UPVALUE3_, 45 / _UPVALUE3_) then
        if selfMap.selectLegend then
          if selfMap.selectLegend ~= _FORV_9_ then
            selfMap.selectLegend = _FORV_9_
          else
            selfMap.selectLegend = false
          end
        else
          selfMap.selectLegend = _FORV_9_
        end
      end
    end
    if isMouseIn(_UPVALUE5_.x + 185 / _UPVALUE3_, _UPVALUE6_.y + 345 / _UPVALUE3_, 40 / _UPVALUE3_, 40 / _UPVALUE3_) then
      if onAreaOrg then
        onAreaOrg = false
      else
        onAreaOrg = true
      end
    elseif isMouseIn(_UPVALUE5_.x + 180 / _UPVALUE3_, _UPVALUE6_.y + 400 / _UPVALUE3_, 300 / _UPVALUE3_, 50 / _UPVALUE3_, 15 / _UPVALUE3_) then
      if onBlockBlip then
        onBlockBlip = false
        _UPVALUE2_[52].block = true
        _UPVALUE2_[7].block = true
      else
        _UPVALUE2_[52].block = nil
        _UPVALUE2_[7].block = nil
        onBlockBlip = true
      end
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
    mapIsMoving = false
  end
end
function scrollBigMap(_ARG_0_)
  if _ARG_0_ == "mouse_wheel_down" then
    if isMouseIn(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 190 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, _UPVALUE0_.h - 380 / _UPVALUE1_) then
      if n >= 34 then
        return
      end
      k = k + 1
      n = n + 1
    else
      _UPVALUE2_ = math.min(_UPVALUE2_ + 0.3, 5.2)
    end
  elseif _ARG_0_ == "mouse_wheel_up" then
    if isMouseIn(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 190 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, _UPVALUE0_.h - 380 / _UPVALUE1_) then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    else
      _UPVALUE2_ = math.max(0.5, _UPVALUE2_ - 0.3)
    end
  end
end
addEventHandler("onClientKey", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "F11" and _ARG_1_ then
    if not getElementData(localPlayer, "player:sid") then
      return
    end
    if selfMap.showMap == true then
      selfMap.showMap = false
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, moveBigMap)
      showCursor(false)
      showChat(true)
      unbindKey("mouse_wheel_up", "down", scrollBigMap)
      unbindKey("mouse_wheel_down", "down", scrollBigMap)
      setPlayerHudComponentVisible("radar", true)
      setElementData(localPlayer, "notshowhud", false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    else
      playerX, playerY = getElementPosition(localPlayer)
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, moveBigMap)
      bindKey("mouse_wheel_up", "down", scrollBigMap)
      bindKey("mouse_wheel_down", "down", scrollBigMap)
      selfMap.showMap = true
      textures = {
        map = dxCreateTexture("images/map/map.png"),
        check = dxCreateTexture(":ST_dashboard/img/check.png"),
        check_off = dxCreateTexture(":ST_dashboard/img/check_off.png")
      }
      dxSetTextureEdge(textures.map, "border", tocolor(0, 0, 0, 0))
      showCursor(true, false)
      showChat(false)
      setPlayerHudComponentVisible("radar", false)
      setElementData(localPlayer, "notshowhud", true)
      k = 1
      n = 14
      m = 14
    end
    cancelEvent()
  end
end)
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (playerX - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - playerX) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - (_ARG_1_ - playerY) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + (playerY - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.y + _UPVALUE0_.h / 2)))
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
getResourceName(getThisResource(), true, 556653709)
return
