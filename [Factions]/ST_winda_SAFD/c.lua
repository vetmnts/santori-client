function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 2 / _UPVALUE2_, _UPVALUE1_.y - 2 / _UPVALUE2_, _UPVALUE1_.w + 4 / _UPVALUE2_, _UPVALUE1_.h + 4 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(255, 196, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, 25 / _UPVALUE2_, tocolor(30, 30, 30, 255))
    dxDrawText("WINDA", _UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y - 145 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 50 / _UPVALUE2_, _UPVALUE1_.w - 40 / _UPVALUE2_, 2 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 196, 0, 255))
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(table_pos) do
      xY = xY + 1
      if id == _FORV_7_ then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 14 / _UPVALUE2_, _UPVALUE1_.y + 61 / _UPVALUE2_ + 40 / _UPVALUE2_ * (xY - 1), 220 / _UPVALUE2_, 37 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 255))
      end
      if isMouseIn(_UPVALUE1_.x + 15 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_ + 40 / _UPVALUE2_ * (xY - 1), 218 / _UPVALUE2_, 35 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 15 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_ + 40 / _UPVALUE2_ * (xY - 1), 218 / _UPVALUE2_, 35 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(22, 22, 22, 255))
        dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 31 / _UPVALUE2_, _UPVALUE1_.y - 42 / _UPVALUE2_ + 80 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 15 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_ + 40 / _UPVALUE2_ * (xY - 1), 218 / _UPVALUE2_, 35 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(25, 25, 25, 255))
        dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 31 / _UPVALUE2_, _UPVALUE1_.y - 42 / _UPVALUE2_ + 80 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and _UPVALUE0_.main == true then
    for _FORV_6_, _FORV_7_ in ipairs(table_pos) do
      if isMouseIn(_UPVALUE2_.x + 15 / _UPVALUE1_, _UPVALUE2_.y + 62 / _UPVALUE1_ + 40 / _UPVALUE1_ * (0 + 1 - 1), 218 / _UPVALUE1_, 35 / _UPVALUE1_) then
        if isPedInVehicle(localPlayer) then
          return
        end
        if id == _FORV_6_ then
          return
        end
        fadeCamera(false)
        closeGui()
        showChat(false)
        setTimer(function()
          triggerServerEvent("ev", resourceRoot, "setElementPos", localPlayer, _UPVALUE0_.pos)
        end, 1000, 1)
        setTimer(function()
          fadeCamera(true)
          showChat(true)
        end, 1200, 1)
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "openGui" then
    if _ARG_1_ then
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      _UPVALUE0_.main = true
      table_pos = _ARG_2_
      id = _ARG_3_
    else
      closeGui()
    end
  end
end)
function closeGui()
  removeEventHandler("onClientRender", root, window)
  removeEventHandler("onClientClick", root, click)
  _UPVALUE0_.main = false
  textures = {}
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
getResourceName(getThisResource(), true, 988959808)
return
