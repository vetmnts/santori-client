function release_vehicle(_ARG_0_)
  if isElement(_ARG_0_) and _UPVALUE0_ then
    setVehicleOverrideLights(_ARG_0_, 1)
    setVehicleLightState(_ARG_0_, 3, 1)
    setVehicleLightState(_ARG_0_, 1, 1)
    setVehicleLightState(_ARG_0_, 2, 1)
    setVehicleLightState(_ARG_0_, 3, 1)
  end
  if _UPVALUE1_[_ARG_0_] ~= nil then
    for _FORV_4_, _FORV_5_ in pairs(_UPVALUE1_[_ARG_0_].flist) do
      destroyElement(_FORV_5_.m)
    end
    _UPVALUE1_[_ARG_0_] = nil
  end
  if _UPVALUE2_[_ARG_0_] ~= nil then
    killTimer(_UPVALUE2_[_ARG_0_])
    _UPVALUE2_[_ARG_0_] = nil
    if isElement(_ARG_0_) and getElementData(_ARG_0_, "emerlights_source") == getPlayerName(getLocalPlayer()) then
      triggerEvent("onPlayerEmergencyLightStateChange", getRootElement(), 0)
    end
  end
end
function checkForAbility(_ARG_0_)
  if getElementData(_ARG_0_, "vehicle:customID") then
    veh_model = getElementData(_ARG_0_, "vehicle:customID")
  else
    veh_model = getElementModel(_ARG_0_)
  end
  if getElementData(_ARG_0_, "vehicle:duty") == "SAPD" then
    if _UPVALUE0_[veh_model] == nil or getElementData(_ARG_0_, "emerlights_enabled") == "false" then
      return false
    end
    return true
  else
    if _UPVALUE1_[veh_model] == nil or getElementData(_ARG_0_, "emerlights_enabled") == "false" then
      return false
    end
    return true
  end
end
function strobo_state_update(_ARG_0_)
  if isElement(_ARG_0_) then
    if _UPVALUE0_[_ARG_0_] == nil then
      if checkForAbility(_ARG_0_) == false then
        release_vehicle(_ARG_0_)
        return
      end
      if getElementData(_ARG_0_, "vehicle:customID") then
        veh_model = getElementData(_ARG_0_, "vehicle:customID")
      else
        veh_model = getElementModel(_ARG_0_)
      end
      if getElementType((getVehicleOccupant(_ARG_0_, 0))) == "player" then
        setElementData(_ARG_0_, "emerlights_source", getPlayerName((getVehicleOccupant(_ARG_0_, 0))), false)
        if getPlayerName((getVehicleOccupant(_ARG_0_, 0))) == getPlayerName(getLocalPlayer()) then
          triggerEvent("onPlayerEmergencyLightStateChange", getRootElement(), 1)
        end
      end
      _UPVALUE0_[_ARG_0_] = {}
      _UPVALUE0_[_ARG_0_].lstate = 0
      _UPVALUE0_[_ARG_0_].fstate = 0
      _UPVALUE0_[_ARG_0_].flist = {}
      if getElementData(_ARG_0_, "vehicle:duty") == "SAPD" then
        if _UPVALUE1_[veh_model].mode == nil then
        end
        if "lamp" == "lamp" then
        else
        end
        _UPVALUE0_[_ARG_0_].fmode = "lamp"
        if getElementData(_ARG_0_, "vehicle:duty") == "SAPD" then
          for _FORV_8_, _FORV_9_ in pairs(_UPVALUE1_[veh_model]) do
            if _FORV_8_ ~= "mode" then
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_] = {}
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_].m = createMarker(1.0E-4, 1.0E-4, 1.0E-4, "corona", _FORV_9_.size, _FORV_9_.color[1], _FORV_9_.color[2], _FORV_9_.color[3], 100)
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_].p = _FORV_9_.phase * (_UPVALUE2_ / 20)
              attachElements(_UPVALUE0_[_ARG_0_].flist[_FORV_8_].m, _ARG_0_, _FORV_9_.pos[1], _FORV_9_.pos[2], _FORV_9_.pos[3])
            end
          end
        end
      else
        if _UPVALUE3_[veh_model].mode == nil then
        end
        if "lamp" == "lamp" then
        else
        end
        _UPVALUE0_[_ARG_0_].fmode = "lamp"
        if getElementData(_ARG_0_, "vehicle:duty") == "SAFD" then
          for _FORV_8_, _FORV_9_ in pairs(_UPVALUE3_[veh_model]) do
            if _FORV_8_ ~= "mode" then
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_] = {}
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_].m = createMarker(1.0E-4, 1.0E-4, 1.0E-4, "corona", _FORV_9_.size, _FORV_9_.color[1], _FORV_9_.color[2], _FORV_9_.color[3], 100)
              _UPVALUE0_[_ARG_0_].flist[_FORV_8_].p = _FORV_9_.phase * (_UPVALUE2_ / 20)
              attachElements(_UPVALUE0_[_ARG_0_].flist[_FORV_8_].m, _ARG_0_, _FORV_9_.pos[1], _FORV_9_.pos[2], _FORV_9_.pos[3])
            end
          end
        end
      end
    end
    if _UPVALUE4_ then
      setVehicleOverrideLights(_ARG_0_, 2)
      if _UPVALUE0_[_ARG_0_].lstate < _UPVALUE5_ then
        setVehicleLightState(_ARG_0_, 0, 1)
        setVehicleLightState(_ARG_0_, 1, 0)
        setVehicleLightState(_ARG_0_, 2, 0)
        setVehicleLightState(_ARG_0_, 3, 1)
      else
        setVehicleLightState(_ARG_0_, 0, 0)
        setVehicleLightState(_ARG_0_, 1, 1)
        setVehicleLightState(_ARG_0_, 2, 1)
        setVehicleLightState(_ARG_0_, 3, 0)
      end
      if _UPVALUE0_[_ARG_0_].lstate >= _UPVALUE5_ * 2 then
        _UPVALUE0_[_ARG_0_].lstate = 0
      else
        _UPVALUE0_[_ARG_0_].lstate = _UPVALUE0_[_ARG_0_].lstate + 1
      end
    end
    if _UPVALUE0_[_ARG_0_].fmode == "lamp" then
      for _FORV_5_, _FORV_6_ in pairs(_UPVALUE0_[_ARG_0_].flist) do
        setMarkerColor(_FORV_6_.m, getMarkerColor(_FORV_6_.m))
      end
      _UPVALUE0_[_ARG_0_].fstate = _UPVALUE0_[_ARG_0_].fstate + _UPVALUE6_
    else
      for _FORV_5_, _FORV_6_ in pairs(_UPVALUE0_[_ARG_0_].flist) do
        if _UPVALUE0_[_ARG_0_].fstate + _FORV_6_.p > _UPVALUE2_ then
        end
        if 0 <= _UPVALUE0_[_ARG_0_].fstate + _FORV_6_.p - _UPVALUE2_ and _UPVALUE0_[_ARG_0_].fstate + _FORV_6_.p - _UPVALUE2_ < _UPVALUE7_ or _UPVALUE0_[_ARG_0_].fstate + _FORV_6_.p - _UPVALUE2_ >= _UPVALUE7_ * 6 and _UPVALUE0_[_ARG_0_].fstate + _FORV_6_.p - _UPVALUE2_ < _UPVALUE7_ * 5 then
          setMarkerColor(_FORV_6_.m, getMarkerColor(_FORV_6_.m))
        else
          setMarkerColor(_FORV_6_.m, getMarkerColor(_FORV_6_.m))
        end
      end
      _UPVALUE0_[_ARG_0_].fstate = _UPVALUE0_[_ARG_0_].fstate + 1
      if _UPVALUE0_[_ARG_0_].fstate > _UPVALUE2_ then
        _UPVALUE0_[_ARG_0_].fstate = _UPVALUE0_[_ARG_0_].fstate - _UPVALUE2_
      end
    end
  else
    release_vehicle(_ARG_0_)
  end
end
function stroboLightOn()
  playerVehicle = getPedOccupiedVehicle(getLocalPlayer())
  if playerVehicle then
    if getLocalPlayer() ~= getVehicleOccupant(playerVehicle) then
      return
    end
    setStroboLightsOn(playerVehicle, nil)
  end
end
function isStroboLightsOn(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    return 1
  else
    return 0
  end
end
function setStroboLightsOn(_ARG_0_, _ARG_1_)
  if _ARG_0_ then
    if _ARG_1_ == nil then
      if isStroboLightsOn(_ARG_0_) == 1 then
        _ARG_1_ = 0
      else
        _ARG_1_ = 1
      end
    end
    if _ARG_1_ == 0 and _UPVALUE0_[_ARG_0_] then
      release_vehicle(_ARG_0_)
    end
    if _ARG_1_ == 1 then
      if _UPVALUE0_[_ARG_0_] then
        release_vehicle(_ARG_0_)
      end
      _UPVALUE0_[_ARG_0_] = setTimer(strobo_state_update, _UPVALUE1_, 0, _ARG_0_)
    end
  end
end
function enableStroboLightsMode(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "0" or _ARG_1_ == "false" then
    _UPVALUE0_ = false
  else
    if _ARG_1_ == "1" or _ARG_1_ == "true" then
      _UPVALUE0_ = true
    else
    end
  end
end
addCommandHandler("fdsagfdgtr", enableStroboLightsMode)
function setEmerlightsState(_ARG_0_, _ARG_1_)
  if getPedOccupiedVehicle((getPlayerFromName(_ARG_0_))) then
    setStroboLightsOn(getPedOccupiedVehicle((getPlayerFromName(_ARG_0_))), _ARG_1_)
  end
end
addEvent("setEmerlights", true)
addEventHandler("setEmerlights", getRootElement(), setEmerlightsState)
function requestEmerlights()
  if not lastTickCount then
    lastTickCount = 10001
  end
  if getTickCount() - lastTickCount > 10000 then
    lastTickCount = getTickCount()
    playerVehicle = getPedOccupiedVehicle(getLocalPlayer())
    if playerVehicle then
      if getLocalPlayer() ~= getVehicleOccupant(playerVehicle) then
        return
      end
      if checkForAbility(playerVehicle) then
        triggerServerEvent("requestEmerlightChangeState", getLocalPlayer(), 1 - isStroboLightsOn(getPedOccupiedVehicle(getLocalPlayer())))
      end
    end
  end
end
addCommandHandler("sygnaly_swietlne", requestEmerlights)
bindKey("l", "down", "sygnaly_swietlne")
addEvent("onPlayerEmergencyLightStateChange")
getResourceName(getThisResource(), true, 58214096)
return
