function putPlayerInPosition(_ARG_0_)
  _ARG_0_ = _ARG_0_ * 0.1
  if isChatBoxInputActive() or isConsoleActive() or isMainMenuActive() or isTransferBoxActive() then
    return
  end
  if getKeyState("lctrl") then
    _ARG_0_ = _ARG_0_ * 9
  end
  if getKeyState("lalt") then
    _ARG_0_ = _ARG_0_ * 0.25
  end
  if getKeyState("2") then
    abx, aby = abx + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()))), aby + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix())))
  end
  if getKeyState("w") then
    abx, aby = abx + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()))), aby + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix())))
  end
  if getKeyState("s") then
    abx, aby = abx - (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()))), aby - (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix())))
  end
  if getKeyState("a") then
    abx, aby = abx - (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()))), aby + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix())))
  end
  if getKeyState("d") then
    abx, aby = abx + (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()))), aby - (getCameraMatrix() - getCameraMatrix()) * (_ARG_0_ / math.sqrt((getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix()) + (getCameraMatrix() - getCameraMatrix()) * (getCameraMatrix() - getCameraMatrix())))
  end
  if getKeyState("space") then
    abz = abz + _ARG_0_
  end
  if getKeyState("lshift") then
    abz = abz - _ARG_0_
  end
  if isPedInVehicle(getLocalPlayer()) then
    setElementPosition(getPedOccupiedVehicle(getLocalPlayer()), abx, aby, abz)
    setElementRotation(getPedOccupiedVehicle(getLocalPlayer()), 0, 0, -getPedCameraRotation(getLocalPlayer()))
  else
    setElementRotation(getLocalPlayer(), 0, 0, (getPedCameraRotation(getLocalPlayer())))
    setElementPosition(getLocalPlayer(), abx, aby, abz)
  end
end
function toggleAirBrakec()
  if not getElementData(localPlayer, "player:level") then
    return
  end
  if getElementData(localPlayer, "player:level") then
    if type((getElementData(localPlayer, "player:level"))) == "number" then
      if getElementData(localPlayer, "player:level") < 1 then
        return
      end
    elseif type((getElementData(localPlayer, "player:level"))) == "table" and getElementData(localPlayer, "player:level")[1] < 1 then
      return
    end
    toggleAirBrake()
  end
end
function toggleAirBrake()
  air_brake = not air_brake or nil
  if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "admin_noclip") or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 25 then
    if (getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "admin_noclip")) and getElementData(localPlayer, "player:job") then
      exports.st_gui:showPlayerNotification(localPlayer, "Nie ma bugowania w pracy!", "error")
      return
    end
    if air_brake then
      if isPedInVehicle(getLocalPlayer()) then
        abx, aby, abz = getElementPosition((getPedOccupiedVehicle(getLocalPlayer())))
        Speed, AlingSpeedX, AlingSpeedY = 0, 1, 1
        OldX, OldY, OldZ = 0
        setElementCollisionsEnabled(getPedOccupiedVehicle(getLocalPlayer()), false)
        setElementFrozen(getPedOccupiedVehicle(getLocalPlayer()), true)
        setElementAlpha(getLocalPlayer(), 0)
        addEventHandler("onClientPreRender", root, putPlayerInPosition)
      else
        abx, aby, abz = getElementPosition(localPlayer)
        Speed, AlingSpeedX, AlingSpeedY = 0, 1, 1
        OldX, OldY, OldZ = 0
        setElementCollisionsEnabled(localPlayer, false)
        addEventHandler("onClientPreRender", root, putPlayerInPosition)
      end
    elseif isPedInVehicle(getLocalPlayer()) then
      abx, aby, abz = nil, nil, nil
      setElementFrozen(getPedOccupiedVehicle(getLocalPlayer()), false)
      setElementCollisionsEnabled(getPedOccupiedVehicle(getLocalPlayer()), true)
      setElementAlpha(getLocalPlayer(), 255)
      removeEventHandler("onClientPreRender", root, putPlayerInPosition)
    else
      abx, aby, abz = nil, nil, nil
      setElementCollisionsEnabled(localPlayer, true)
      removeEventHandler("onClientPreRender", root, putPlayerInPosition)
    end
  end
end
bindKey("x", "down", toggleAirBrakec)
getResourceName(getThisResource(), true, 787271186)
return
