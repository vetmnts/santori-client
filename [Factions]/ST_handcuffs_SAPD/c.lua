function changeRotation()
  if not _UPVALUE0_.player then
    deleteRotation()
  end
  dxDrawText("POSIADASZ ZAKUTEGO GRACZA W KAJDANKACH: #ffbb00" .. getPlayerName(_UPVALUE0_.player) .. "", _UPVALUE1_.x, _UPVALUE1_.y - 60 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  if not isPedInVehicle(localPlayer) then
    if not isPedInVehicle(_UPVALUE0_.player) then
      setElementRotation(_UPVALUE0_.player, getElementRotation(localPlayer))
    end
    for _FORV_7_, _FORV_8_ in ipairs(getElementsByType("vehicle")) do
      if isPedInVehicle(_UPVALUE0_.player) then
        distance1 = 5
      else
        distance1 = 999
      end
      if getDistanceBetweenPoints3D(getElementPosition(_UPVALUE0_.player)) < distance1 and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 5 and getVehicleMaxPassengers(_FORV_8_) > 2 and getScreenFromWorldPosition(getElementPosition(_FORV_8_)) and getScreenFromWorldPosition(getElementPosition(_FORV_8_)) and getElementDimension(_FORV_8_) == getElementDimension(localPlayer) and getElementInterior(_FORV_8_) == getElementInterior(localPlayer) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_8_)) - 131 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 19 / _UPVALUE2_, 262 / _UPVALUE2_, 72 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(255, 187, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_8_)) - 130 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 20 / _UPVALUE2_, 260 / _UPVALUE2_, 70 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(30, 30, 30, 255))
        if not isPedInVehicle(_UPVALUE0_.player) then
          dxDrawText("Aby wsadzi\196\135 skut\196\133 osob\196\153 do pojazdu kliknij", getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 80 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)))
        else
          dxDrawText("Aby wysadzi\196\135 skut\196\133 osob\196\153 do pojazdu kliknij", getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 1 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 80 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)))
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_8_)) - 10 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 58 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(_FORV_8_)) - _UPVALUE3_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + 138 / _UPVALUE2_, getScreenFromWorldPosition(getElementPosition(_FORV_8_)) + _UPVALUE3_ / 5, getScreenFromWorldPosition(getElementPosition(_FORV_8_)))
        if getKeyState("Q") then
          if click then
            return
          end
          click = true
          if not isPedInVehicle(_UPVALUE0_.player) then
            triggerServerEvent("ev", resourceRoot, "warpPlayerVehicle", localPlayer, _UPVALUE0_.player, _FORV_8_, true)
          else
            triggerServerEvent("ev", resourceRoot, "warpPlayerVehicle", localPlayer, _UPVALUE0_.player, _FORV_8_, false)
          end
          setTimer(function()
            click = false
          end, 1500, 1)
        end
      end
    end
  end
end
function changeRotation1()
  if not _UPVALUE0_.player then
    deleteRotation()
  end
  setElementRotation(localPlayer, getElementRotation(_UPVALUE0_.player))
  if getElementDimension(_UPVALUE0_.player) == getElementDimension(localPlayer) and getElementInterior(_UPVALUE0_.player) == getElementInterior(localPlayer) then
  else
    if click then
      return
    end
    click = true
    if _UPVALUE0_.player then
      triggerServerEvent("ev", resourceRoot, "synchro", localPlayer, _UPVALUE0_.player)
      setTimer(function()
        click = false
      end, 1500, 1)
    end
  end
  dxDrawText("JESTE\197\154 ZAKUTY/A W KAJDANKACH PRZEZ: #ffbb00" .. getPlayerName(_UPVALUE0_.player) .. "", _UPVALUE1_.x, _UPVALUE1_.y - 60 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "addCuffs" then
    _UPVALUE0_.player = _ARG_2_
    addEventHandler("onClientRender", root, changeRotation)
  elseif _ARG_0_ == "addCuffsC" then
    _UPVALUE0_.player = _ARG_1_
    addEventHandler("onClientRender", root, changeRotation1)
  elseif _ARG_0_ == "delCuffs" then
    _UPVALUE0_.player = nil
    removeEventHandler("onClientRender", root, changeRotation)
  elseif _ARG_0_ == "delCuffsC" then
    _UPVALUE0_.player = nil
    removeEventHandler("onClientRender", root, changeRotation1)
  end
end)
function deleteRotation()
  if isEventHandlerAdded("onClientRender", root, changeRotation) then
    removeEventHandler("onClientRender", root, changeRotation)
  end
end
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
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
getResourceName(getThisResource(), true, 695205675)
return
