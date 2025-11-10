CameraManager = {}
function CameraManager.setState(_ARG_0_, _ARG_1_, _ARG_2_)
  if not _ARG_1_ and type(_ARG_2_) == "number" then
    _UPVALUE0_ = _ARG_2_
  else
    _UPVALUE0_ = _UPVALUE1_
  end
  if vehicle_player and vehicle_player.matrix then
    for _FORV_7_, _FORV_8_ in pairs(cameraPresets[_ARG_0_]) do
      if _FORV_7_ == "targetPosition" then
        if type(_FORV_8_) == "string" then
          if _FORV_8_ == "car" then
            _UPVALUE2_.targetPosition = Vector3(vehicle_player)
          else
            _UPVALUE2_.targetPosition = vehicle_player.matrix:transformPosition((Vector3(vehicle_player:getComponentPosition(_FORV_8_))))
          end
        else
          _UPVALUE2_.targetPosition = vehicle_player.matrix:transformPosition(_FORV_8_)
        end
        if _ARG_1_ then
          _UPVALUE3_.targetPosition = Vector3(_UPVALUE2_.targetPosition)
        end
      else
        if _FORV_7_ == "rotationHorizontal" then
          _FORV_8_ = wrapAngle(_FORV_8_)
        end
        _UPVALUE2_[_FORV_7_] = _FORV_8_
        if _ARG_1_ then
          _UPVALUE3_[_FORV_7_] = _FORV_8_
        end
      end
    end
    _UPVALUE4_ = _ARG_0_
  end
end
function startMouseLook()
  if _UPVALUE0_ or isMTAWindowActive() then
    return
  end
  _UPVALUE0_ = true
  _UPVALUE1_ = _UPVALUE2_
  CameraManager.setState("freeLookCamera", false, 15)
  _UPVALUE3_.rotationHorizontal = _UPVALUE3_.rotationHorizontal
  _UPVALUE3_.rotationVertical = _UPVALUE3_.rotationVertical
  _UPVALUE4_.rotationHorizontal = _UPVALUE3_.rotationHorizontal
  _UPVALUE4_.rotationVertical = _UPVALUE3_.rotationVertical
end
function stopMouseLook()
  if not _UPVALUE0_ then
    return
  end
  _UPVALUE0_ = false
end
function CameraManager.start(_ARG_0_)
  CameraManager.setState("startingCamera", true)
  addEventHandler("onClientPreRender", root, _UPVALUE0_)
  addEventHandler("onClientCursorMove", root, _UPVALUE1_)
  bindKey("mouse_wheel_up", "down", scrollCamera)
  bindKey("mouse_wheel_down", "down", scrollCamera)
end
function CameraManager.stop()
  removeEventHandler("onClientPreRender", root, _UPVALUE0_)
  removeEventHandler("onClientCursorMove", root, _UPVALUE1_)
  Camera.setTarget(localPlayer)
  unbindKey("mouse_wheel_up", "down", scrollCamera)
  unbindKey("mouse_wheel_down", "down", scrollCamera)
end
function scrollCamera(_ARG_0_)
  if isCursorShowing(localPlayer) then
    return
  end
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_ < 5 then
      return
    end
    _UPVALUE0_ = _UPVALUE0_ - 1
  elseif _ARG_0_ == "mouse_wheel_down" then
    if 13 < _UPVALUE0_ then
      return
    end
    _UPVALUE0_ = _UPVALUE0_ + 1
  end
end
function CameraManager.getTargetPosition()
  return _UPVALUE0_.targetPosition
end
function CameraManager.isMouseLookEnabled()
  return not not _UPVALUE0_
end
function wrapAngle(_ARG_0_)
  if not _ARG_0_ then
    return 0
  end
  _ARG_0_ = math.mod(_ARG_0_, 360)
  if _ARG_0_ < 0 then
    _ARG_0_ = _ARG_0_ + 360
  end
  return _ARG_0_
end
function differenceBetweenAngles(_ARG_0_, _ARG_1_)
  if 180 < _ARG_1_ - _ARG_0_ then
  elseif _ARG_1_ - _ARG_0_ - 360 < -180 then
  end
  return _ARG_1_ - _ARG_0_ - 360 + 360
end
cameraPresets = {}
cameraPresets.vehicleTuning = {
  targetPosition = Vector3(0, 0, 0.3),
  rotationHorizontal = 30,
  rotationVertical = 0,
  distance = 7,
  FOV = 50,
  roll = 0
}
cameraPresets.startingCamera = {
  targetPosition = Vector3(0.5, 1, 0),
  rotationHorizontal = 210,
  rotationVertical = 5,
  distance = 7,
  FOV = 50,
  roll = 0
}
cameraPresets.freeLookCamera = {
  targetPosition = Vector3(0, 0.1, 0),
  rotationHorizontal = 30,
  rotationVertical = 5,
  distance = 7,
  FOV = 80,
  roll = 0
}
getResourceName(getThisResource(), true, 950293073)
return
