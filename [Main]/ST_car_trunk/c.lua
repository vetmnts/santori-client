bindKey(".", "down", function()
  if getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not getNearestVehicle(localPlayer, 5) then
    return
  end
  if getElementSpeed(getNearestVehicle(localPlayer, 5), "km/h") > 2 then
    exports.st_gui:showPlayerNotification("Pojazd musi sta\196\135 w miejscu", "error")
    return
  end
  if getVehicleDoorOpenRatio(getNearestVehicle(localPlayer, 5), 1) == 0 then
    exports.st_gui:showPlayerNotification("Pojazd ma zamkni\196\153ty baga\197\188nik", "error")
    return
  end
  triggerServerEvent("ev", resourceRoot, "tpTrunk", localPlayer, (getNearestVehicle(localPlayer, 5)))
end)
bindKey(",", "down", function()
  if not getNearestVehicle(localPlayer, 5) then
    return
  end
  if getElementData(getNearestVehicle(localPlayer, 5), "vehicle:ownedPlayer") ~= getElementData(localPlayer, "player:sid") then
    return
  end
  if isElementAttached(localPlayer) then
    return
  end
  triggerServerEvent("ev", resourceRoot, "openTrunk", localPlayer, (getNearestVehicle(localPlayer, 5)))
end)
function getNearestVehicle(_ARG_0_, _ARG_1_)
  for _FORV_13_, _FORV_14_ in pairs(getElementsByType("vehicle")) do
    if getElementInterior(_FORV_14_) == getElementInterior(_ARG_0_) and getElementDimension(_FORV_14_) == getElementDimension(_ARG_0_) and _ARG_1_ > getDistanceBetweenPoints3D(getElementPosition(_ARG_0_)) and _ARG_1_ - 1.0E-4 > getDistanceBetweenPoints3D(getElementPosition(_ARG_0_)) then
    end
  end
  return _FORV_14_
end
function getElementSpeed(_ARG_0_, _ARG_1_)
  assert(isElement(_ARG_0_), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(_ARG_0_) .. ")")
  assert(getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped" or getElementType(_ARG_0_) == "object" or getElementType(_ARG_0_) == "vehicle" or getElementType(_ARG_0_) == "projectile", "Invalid element type @ getElementSpeed (player/ped/object/vehicle/projectile expected, got " .. getElementType(_ARG_0_) .. ")")
  assert((_ARG_1_ == nil or type(_ARG_1_) == "string" or type(_ARG_1_) == "number") and (_ARG_1_ == nil or tonumber(_ARG_1_) and (tonumber(_ARG_1_) == 0 or tonumber(_ARG_1_) == 1 or tonumber(_ARG_1_) == 2) or _ARG_1_ == "m/s" or _ARG_1_ == "km/h" or _ARG_1_ == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
  _ARG_1_ = _ARG_1_ == nil and 0 or not tonumber(_ARG_1_) and _ARG_1_ or tonumber(_ARG_1_)
  return (Vector3(getElementVelocity(_ARG_0_)) * ((_ARG_1_ == 0 or _ARG_1_ == "m/s") and 50 or (_ARG_1_ == 1 or _ARG_1_ == "km/h") and 180 or 111.84681456)).length
end
getResourceName(getThisResource(), true, 675109398)
return
