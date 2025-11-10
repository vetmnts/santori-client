function findRotation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) < 0 and -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_)) + 360 or -math.deg(math.atan2(_ARG_2_ - _ARG_0_, _ARG_3_ - _ARG_1_))
end
function getElementSpeed(_ARG_0_, _ARG_1_)
  assert(isElement(_ARG_0_), "Bad argument 1 @ getElementSpeed (element expected, got " .. type(_ARG_0_) .. ")")
  assert(getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped" or getElementType(_ARG_0_) == "object" or getElementType(_ARG_0_) == "vehicle", "Invalid element type @ getElementSpeed (player/ped/object/vehicle expected, got " .. getElementType(_ARG_0_) .. ")")
  assert((_ARG_1_ == nil or type(_ARG_1_) == "string" or type(_ARG_1_) == "number") and (_ARG_1_ == nil or tonumber(_ARG_1_) and (tonumber(_ARG_1_) == 0 or tonumber(_ARG_1_) == 1 or tonumber(_ARG_1_) == 2) or _ARG_1_ == "m/s" or _ARG_1_ == "km/h" or _ARG_1_ == "mph"), "Bad argument 2 @ getElementSpeed (invalid speed unit)")
  _ARG_1_ = _ARG_1_ == nil and 0 or not tonumber(_ARG_1_) and _ARG_1_ or tonumber(_ARG_1_)
  return (Vector3(getElementVelocity(_ARG_0_)) * ((_ARG_1_ == 0 or _ARG_1_ == "m/s") and 50 or (_ARG_1_ == 1 or _ARG_1_ == "km/h") and 180 or 111.84681456)).length
end
function timerRefreshWR()
  if not getPedOccupiedVehicle(localPlayer) then
    _UPVALUE0_ = {}
    return
  end
  if getPedOccupiedVehicleSeat(localPlayer) > 1 then
    return
  end
  for _FORV_14_, _FORV_15_ in ipairs((getElementsWithinRange(getElementPosition((getPedOccupiedVehicle(localPlayer)))))) do
    if _FORV_15_ ~= getPedOccupiedVehicle(localPlayer) and getElementData(_FORV_15_, "vehicle:duty") ~= "SAPD" and 65 > getDistanceBetweenPoints3D(getElementPosition((getPedOccupiedVehicle(localPlayer)))) and math.abs(findRotation(getElementPosition((getPedOccupiedVehicle(localPlayer)))) - getElementRotation((getPedOccupiedVehicle(localPlayer)))) <= 10 and (not nil or nil > getDistanceBetweenPoints3D(getElementPosition((getPedOccupiedVehicle(localPlayer))))) then
    end
  end
  if _FORV_15_ then
    vehTarget = _FORV_15_
    for _FORV_17_ in pairs((getVehicleOccupants(_FORV_15_))) do
    end
    _UPVALUE0_ = {
      model = getVehicleName(_FORV_15_),
      driverName = getVehicleController(_FORV_15_) and getPlayerName((getVehicleController(_FORV_15_))) or "brak",
      plate = getVehiclePlateText(_FORV_15_) or "brak",
      id = getElementData(_FORV_15_, "vehicle:id") or "brak",
      passengers = 0 + 1 or 0,
      customName = getElementData(_FORV_15_, "vehicle:customID")
    }
  else
    _UPVALUE0_ = {}
  end
end
function window()
  if not _UPVALUE0_.model then
    return
  end
  if not vehTarget then
    return
  end
  dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y - 60 / _UPVALUE2_, _UPVALUE1_.w, _UPVALUE1_.h, 15 / _UPVALUE2_, tocolor(20, 20, 20, 230))
  dxDrawText(string.format("#d1d1d1ID: #d1d1d1%s\nPojazd: #d1d1d1%s\n#ffffffKierowca: #d1d1d1%s\n#ffffffRejestracja: #d1d1d1%s\n#ffffffIlo\197\155\196\135 pasa\197\188er\195\179w: #d1d1d1%d", _UPVALUE0_.id, _UPVALUE0_.customName and exports.ST_core:changeNameClient(_UPVALUE0_.customName) or _UPVALUE0_.model, _UPVALUE0_.driverName, _UPVALUE0_.plate, _UPVALUE0_.passengers), _UPVALUE1_.x + 170 / _UPVALUE2_, _UPVALUE1_.y - 117 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, white, 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, true, true)
  dxDrawText(math.ceil((getElementVelocity(vehTarget) ^ 2 + getElementVelocity(vehTarget) ^ 2 + getElementVelocity(vehTarget) ^ 2) ^ 0.5 * 161), _UPVALUE1_.x - 272 / _UPVALUE2_, _UPVALUE1_.y - 38 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, white, 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold40"), "center", "top", false, false, true)
  dxDrawText("KM/H", _UPVALUE1_.x - 272 / _UPVALUE2_, _UPVALUE1_.y + 30 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, grey, 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("bold25"), "center", "top", false, false, true)
end
addCommandHandler("wr", function()
  if not getElementData(localPlayer, "player:faction") == "SAPD" then
    return
  end
  if not getPedOccupiedVehicle(localPlayer) then
    exports.st_gui:showPlayerNotification("Aby w\197\130\196\133czy\196\135 wideorejestrator musisz siedzie\196\135 w poje\197\186dzie", "error")
    return
  end
  if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:duty") == "SAPD" then
    if _UPVALUE0_ then
      removeEventHandler("onClientRender", root, window)
      _UPVALUE0_ = false
      if isTimer(timerWR) then
        killTimer(timerWR)
      end
      exports.st_gui:showPlayerNotification("Wy\197\130\196\133czono wideorejestrator", "info")
    else
      addEventHandler("onClientRender", root, window)
      _UPVALUE0_ = true
      timerWR = setTimer(function()
        timerRefreshWR()
      end, _UPVALUE1_, 0)
      exports.st_gui:showPlayerNotification("W\197\130\196\133czono wideorejestrator", "info")
    end
  end
end)
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1, true)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_, true)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_, true)
end
getResourceName(getThisResource(), true, 400605215)
return
