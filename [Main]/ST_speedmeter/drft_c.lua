zmienna = 1920 / guiGetScreenSize()
function driftRender()
  if getPedOccupiedVehicle(localPlayer) then
    if 1.3 < _UPVALUE0_ then
      _UPVALUE1_ = -0.01
    elseif _UPVALUE0_ < 1.2 then
      _UPVALUE1_ = 0.01
    end
    _UPVALUE0_ = _UPVALUE0_ + _UPVALUE1_
    _UPVALUE2_ = getTickCount()
    if not (_UPVALUE2_ - (_UPVALUE3_ or 0) < 750) and _UPVALUE4_ ~= 0 then
      triggerEvent("onVehicleDriftEnd", _UPVALUE5_, _UPVALUE2_ - _UPVALUE6_ - 750)
      if getPedOccupiedVehicle(localPlayer) and getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) == localPlayer and _UPVALUE4_ ~= 0 then
        triggerServerEvent("drift:savedrift", localPlayer, _UPVALUE4_)
      end
      _UPVALUE4_ = 0
    end
    if angle((getPedOccupiedVehicle(localPlayer))) ~= 0 then
      if _UPVALUE4_ == 0 then
        triggerEvent("onVehicleDriftStart", _UPVALUE5_)
        _UPVALUE6_ = _UPVALUE2_
      end
      if _UPVALUE2_ - (_UPVALUE3_ or 0) < 750 then
        _UPVALUE4_ = _UPVALUE4_ + math.floor(angle((getPedOccupiedVehicle(localPlayer))) * angle((getPedOccupiedVehicle(localPlayer)))) * _UPVALUE7_
      else
        _UPVALUE4_ = math.floor(angle((getPedOccupiedVehicle(localPlayer))) * angle((getPedOccupiedVehicle(localPlayer)))) * _UPVALUE7_
      end
      _UPVALUE8_ = _UPVALUE4_
      _UPVALUE3_ = _UPVALUE2_
    end
    if _UPVALUE2_ - (_UPVALUE3_ or 0) < 3000 then
      dxDrawText("DRIFT:\n" .. przecinek(string.format("%d", _UPVALUE8_)), 2 / zmienna, 2 / zmienna, 1920 / zmienna, 417 / zmienna, tocolor(0, 0, 0, 255), 1, exports.ST_gui:getGUIFont("bold22"), "center", "center", false, false, false, false, false)
      dxDrawText("DRIFT:\n" .. przecinek(string.format("%d", _UPVALUE8_)), 0 / zmienna, 0 / zmienna, 1920 / zmienna, 417 / zmienna, tocolor(230, 230, 230, 255), 1, exports.ST_gui:getGUIFont("bold22"), "center", "center", false, false, false, false, false)
    end
  end
end
function angle(_ARG_0_)
  if not isVehicleOnGround(_ARG_0_) then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  if _UPVALUE2_ ~= 1 and math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) <= 0.3 and _UPVALUE0_ - (_UPVALUE1_ or 0) > 750 then
    _UPVALUE2_ = _UPVALUE2_ - 1
    _UPVALUE1_ = _UPVALUE0_
  elseif _UPVALUE0_ - (_UPVALUE1_ or 0) > 1500 then
    if 11200 <= _UPVALUE3_ then
    elseif 4200 <= _UPVALUE3_ then
    elseif 1400 <= _UPVALUE3_ then
    elseif 350 <= _UPVALUE3_ then
    end
    if 2 > _UPVALUE2_ then
      _UPVALUE2_ = 2
      _UPVALUE1_ = _UPVALUE0_
    end
  end
  if math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) <= 0.2 then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  if (-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) > 0.966 or 0 > (-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)) then
    return 0, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
  end
  return math.deg(math.acos((-math.sin(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_) + math.cos(math.rad(getElementRotation(_ARG_0_))) * getElementVelocity(_ARG_0_)) / math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))) * 0.5, (math.sqrt(getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_) + getElementVelocity(_ARG_0_) * getElementVelocity(_ARG_0_)))
end
addEvent("driftCarCrashed", true)
addEventHandler("driftCarCrashed", getRootElement(), function()
  if _UPVALUE0_ ~= 0 then
    if getPedOccupiedVehicle(localPlayer) and getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) == localPlayer then
      triggerServerEvent("drift:savedrift", localPlayer, _UPVALUE0_)
    end
    _UPVALUE0_ = 0
    _UPVALUE1_ = 1
    triggerEvent("onVehicleDriftEnd", _UPVALUE2_, 0)
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
tickABS = getTickCount()
tickABS2 = getTickCount()
function getVehicleSpeed(_ARG_0_)
  if math.ceil((getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.5 * 160) then
    return (math.ceil((getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.5 * 160))
  end
end
function absRender()
  if getPedOccupiedVehicle(localPlayer) and exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:ABS", "synced") == 1 then
    if getVehicleSpeed((getPedOccupiedVehicle(localPlayer))) > 10 and getVehicleCurrentGear((getPedOccupiedVehicle(localPlayer))) ~= 0 then
      if isVehicleOnGround((getPedOccupiedVehicle(localPlayer))) then
        if getControlState("brake_reverse") == true then
          if getTickCount() - tickABS2 >= 50 then
            tickABS2 = getTickCount()
            toggleControl("brake_reverse", false)
            setVehicleLightState(getPedOccupiedVehicle(localPlayer), 2, 1)
            setVehicleLightState(getPedOccupiedVehicle(localPlayer), 3, 1)
          end
        elseif 1 <= getTickCount() - tickABS then
          tickABS = getTickCount()
          toggleControl("brake_reverse", true)
          setVehicleLightState(getPedOccupiedVehicle(localPlayer), 2, 0)
          setVehicleLightState(getPedOccupiedVehicle(localPlayer), 3, 0)
        end
      elseif getControlState("brake_reverse") == false then
        toggleControl("brake_reverse", true)
        tickABS = getTickCount()
        setVehicleLightState(getPedOccupiedVehicle(localPlayer), 2, 0)
        setVehicleLightState(getPedOccupiedVehicle(localPlayer), 3, 0)
      end
    elseif getControlState("brake_reverse") == false then
      toggleControl("brake_reverse", true)
      tickABS = getTickCount()
      setVehicleLightState(getPedOccupiedVehicle(localPlayer), 2, 0)
      setVehicleLightState(getPedOccupiedVehicle(localPlayer), 3, 0)
    end
  end
end
getResourceName(getThisResource(), true, 186773704)
return
