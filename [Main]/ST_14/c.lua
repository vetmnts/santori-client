function start(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if _ARG_0_ ~= localPlayer then
    return
  end
  if getElementType(_ARG_0_) ~= "player" then
    return
  end
  if not getPedOccupiedVehicle(_ARG_0_) then
    return
  end
  _UPVALUE0_ = getTickCount()
end
addEventHandler("onClientColShapeHit", createColCuboid(3102.4904785156, -908.29620361328, 8.7055444717407, 13.25, 2.5, 5), start)
function stopd(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if _ARG_0_ ~= localPlayer then
    return
  end
  if getElementType(_ARG_0_) ~= "player" then
    return
  end
  if not getPedOccupiedVehicle(_ARG_0_) then
    return
  end
  setElementVelocity(getPedOccupiedVehicle(_ARG_0_), 0, 0, 0)
  setElementFrozen(getPedOccupiedVehicle(_ARG_0_), true)
  setTimer(setElementFrozen, 1, 1, getPedOccupiedVehicle(_ARG_0_), false)
  exports.st_gui:showPlayerNotification("Twoj wynik wraz z pojazdem za kazde ukonczenie sa nadpisywane!", "info")
end
addEventHandler("onClientColShapeHit", createColCuboid(3102.4904785156, -1110.05, 8.7055444717407, 13.25, 2.5, 5), stopd)
function koniec(_ARG_0_, _ARG_1_)
  if not _ARG_1_ then
    return
  end
  if _ARG_0_ ~= localPlayer then
    return
  end
  if getElementType(_ARG_0_) ~= "player" then
    return
  end
  if not getPedOccupiedVehicle(_ARG_0_) then
    return
  end
  if not _UPVALUE0_ then
    return
  end
  _UPVALUE0_ = (getTickCount() - _UPVALUE0_) / 1000
  exports.st_gui:showPlayerNotification("Twoj wynik " .. getVehicleName((getPedOccupiedVehicle(_ARG_0_))) .. " wykonales w czasie " .. _UPVALUE0_ .. " sekund", "success")
  if getPedOccupiedVehicleSeat(_ARG_0_) ~= 0 then
    _UPVALUE0_ = false
    return
  end
  triggerServerEvent("mila:koniec", resourceRoot, tonumber(string.format("%0.2f", _UPVALUE0_)), (getPedOccupiedVehicle(_ARG_0_)))
  _UPVALUE0_ = false
end
addEventHandler("onClientColShapeHit", createColCuboid(3102.4904785156, -1110.05, 8.7055444717407, 13.25, 2.5, 5), koniec)
getResourceName(getThisResource(), true, 33403808)
return
