function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ == "znajdz_smieciare" then
    if isPedInVehicle(localPlayer) then
      return
    end
    if isLineOfSightClear(getElementPosition(localPlayer)) then
      return
    end
    if not processLineOfSight(getElementPosition(localPlayer)) then
      return
    end
    if getElementType(processLineOfSight(getElementPosition(localPlayer))) ~= "vehicle" then
      return
    end
    if processLineOfSight(getElementPosition(localPlayer)) and isElement(processLineOfSight(getElementPosition(localPlayer))) then
      if getElementModel(processLineOfSight(getElementPosition(localPlayer))) ~= 408 then
        return
      end
      if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) > 4 then
        return
      end
      if _UPVALUE0_ then
        return
      end
      _UPVALUE0_ = true
      triggerServerEvent("ev", resourceRoot, "attach", processLineOfSight(getElementPosition(localPlayer)))
    end
  elseif _ARG_0_ == "wskakuj_na_podana_smieciare" then
    if _UPVALUE0_ then
      return
    end
    _UPVALUE0_ = true
    triggerServerEvent("ev", resourceRoot, "attach", _ARG_1_)
  elseif _ARG_0_ == "unlock" then
    _UPVALUE0_ = false
  elseif _ARG_0_ == "wlacz_event" then
    if not _UPVALUE1_ then
      function _UPVALUE1_()
        if not isElement(_UPVALUE0_) then
          removeEventHandler("onClientPreRender", root, _UPVALUE1_)
          _UPVALUE1_ = nil
        end
        if isElement(_UPVALUE0_) then
          setCameraMatrix(getPositionFromElementOffset(_UPVALUE0_, 0, -15.5, 3))
          setPedRotation(localPlayer, getElementRotation(_UPVALUE0_) + _UPVALUE2_)
        end
      end
      addEventHandler("onClientPreRender", root, _UPVALUE1_)
    end
    _UPVALUE0_ = false
  elseif _ARG_0_ == "wylacz_event" then
    if _UPVALUE1_ then
      removeEventHandler("onClientPreRender", root, _UPVALUE1_)
      _UPVALUE1_ = nil
    end
    _UPVALUE0_ = false
  end
end)
getResourceName(getThisResource(), true, 33267554)
return
