function rozpocznijMalowanieSciany(_ARG_0_)
  _UPVALUE0_ = {}
  _UPVALUE1_ = 0
  _UPVALUE2_ = dxCreateTexture(":ST_devpaczka1/dev25/wall/" .. houseBuilding[dataJob.idDomu].wallPositions[_ARG_0_].tex[1] .. ".jpg")
  _UPVALUE3_ = dxCreateTexture(":ST_devpaczka1/dev25/wall/264.jpg")
  for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
    if _FORV_6_.ulepszenie_malowanie_budowlaniec == 1 then
      _UPVALUE4_ = 35
    else
      _UPVALUE4_ = 15
    end
  end
  _UPVALUE5_ = 0
  for _FORV_5_ = _UPVALUE6_.x, _UPVALUE6_.x + _UPVALUE6_.w - _UPVALUE4_, _UPVALUE4_ do
    for _FORV_9_ = _UPVALUE6_.y, _UPVALUE6_.y + _UPVALUE6_.h - _UPVALUE4_, _UPVALUE4_ do
      _UPVALUE5_ = _UPVALUE5_ + 1
    end
  end
  addEventHandler("onClientRender", root, renderMalowanieSciany)
  showCursor(true)
end
function zakonczMalowanieSciany()
  removeEventHandler("onClientRender", root, renderMalowanieSciany)
  showCursor(false)
  if isElement(_UPVALUE0_) then
    destroyElement(_UPVALUE0_)
  end
  if isElement(_UPVALUE1_) then
    destroyElement(_UPVALUE1_)
  end
end
function renderMalowanieSciany()
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE1_)
  for _FORV_7_, _FORV_8_ in pairs(_UPVALUE2_) do
    dxDrawImage(tonumber(split(_FORV_7_, ":")[1]), tonumber(split(_FORV_7_, ":")[2]), _UPVALUE3_, _UPVALUE3_, _UPVALUE4_)
  end
  dxDrawText("Post\196\153p malowania: #ffbf00" .. math.floor(_UPVALUE5_ / _UPVALUE6_ * 100) .. "#ffffff%", _UPVALUE0_.x, _UPVALUE0_.y - 51 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font21"), "center", "top", false, false, true, true)
  if getKeyState("mouse1") and getCursorPosition() and getCursorPosition() and getCursorPosition() * screenW >= _UPVALUE0_.x and getCursorPosition() * screenW <= _UPVALUE0_.x + _UPVALUE0_.w and getCursorPosition() * screenH >= _UPVALUE0_.y and getCursorPosition() * screenH <= _UPVALUE0_.y + _UPVALUE0_.h then
    for _FORV_12_ = -_UPVALUE7_, _UPVALUE7_ do
      for _FORV_16_ = -_UPVALUE7_, _UPVALUE7_ do
        if not _UPVALUE2_[math.floor((getCursorPosition() * screenW + _FORV_12_) / _UPVALUE3_) * _UPVALUE3_ .. ":" .. math.floor((getCursorPosition() * screenH + _FORV_16_) / _UPVALUE3_) * _UPVALUE3_] then
          _UPVALUE2_[math.floor((getCursorPosition() * screenW + _FORV_12_) / _UPVALUE3_) * _UPVALUE3_ .. ":" .. math.floor((getCursorPosition() * screenH + _FORV_16_) / _UPVALUE3_) * _UPVALUE3_] = true
          _UPVALUE5_ = _UPVALUE5_ + 1
        end
      end
    end
  end
  if _UPVALUE5_ >= _UPVALUE6_ * 0.9 then
    exports.st_gui:showPlayerNotification("\197\154ciana zosta\197\130a pomalowana!", "info")
    zakonczMalowanieSciany()
    triggerServerEvent("ev_budowniczy", resourceRoot, "malowanie_2", localPlayer, dataJob.malowanie.scianaID)
  end
end
