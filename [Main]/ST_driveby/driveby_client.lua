addEventHandler("onClientPlayerVehicleEnter", localPlayer, function(_ARG_0_, _ARG_1_)
  _UPVALUE0_ = _ARG_1_ == 0
  setPedWeaponSlot(localPlayer, 0)
  if _UPVALUE1_.autoEquip then
    toggleDriveby()
  end
end)
addEventHandler("onClientResourceStart", resourceRoot, function()
  bindKey("mouse2", "down", toggleDriveby, "")
  bindKey("e", "down", switchDrivebyWeapon, 1)
  bindKey("q", "down", switchDrivebyWeapon, -1)
  toggleControl("vehicle_next_weapon", false)
  toggleControl("vehicle_previous_weapon", false)
  triggerServerEvent("driveby_clientScriptLoaded", localPlayer)
end)
addEventHandler("onClientResourceStop", resourceRoot, function()
  toggleControl("vehicle_next_weapon", true)
  toggleControl("vehicle_previous_weapon", true)
end)
addEvent("doSendDriveBySettings", true)
addEventHandler("doSendDriveBySettings", localPlayer, function(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
  for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_.blockedVehicles) do
  end
  _UPVALUE0_.blockedVehicles = {
    [_FORV_6_] = true
  }
end)
function toggleDriveby()
  if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "player:faction") == "SAPD" then
    if isCursorShowing() or not isPedInVehicle(localPlayer) then
      return
    end
    if _UPVALUE0_.blockedVehicles[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getVehicleType((getPedOccupiedVehicle(localPlayer))) == "Automobile" and isVehicleWindowOpen(getPedOccupiedVehicle(localPlayer), _UPVALUE1_[getPedOccupiedVehicleSeat(localPlayer)]) == false then
      exports.st_gui:showPlayerNotification("Otw\195\179rz szyb\196\153", "info")
      return
    end
    if getPedWeaponSlot(localPlayer) == 0 then
      if 0 < getPedTotalAmmo(localPlayer, _UPVALUE3_) and listContains(_UPVALUE2_ and _UPVALUE0_.driver or _UPVALUE0_.passenger, getPedWeapon(localPlayer, _UPVALUE3_)) then
      else
        for _FORV_10_, _FORV_11_ in ipairs(_UPVALUE2_ and _UPVALUE0_.driver or _UPVALUE0_.passenger) do
          if getPedWeapon(localPlayer, (getSlotFromWeapon(_FORV_11_))) == _FORV_11_ and 0 < getPedTotalAmmo(localPlayer, (getSlotFromWeapon(_FORV_11_))) and getSlotFromWeapon(_FORV_11_) == 4 then
            break
          end
        end
      end
      if not getSlotFromWeapon(_FORV_11_) then
        return
      end
      setPedDoingGangDriveby(localPlayer, true)
      setPedWeaponSlot(localPlayer, (getSlotFromWeapon(_FORV_11_)))
      limitDrivebySpeed(_FORV_11_)
      toggleControl("vehicle_look_left", false)
      toggleControl("vehicle_look_right", false)
      toggleControl("vehicle_secondary_fire", false)
      toggleTurningKeys(getElementModel((getPedOccupiedVehicle(localPlayer))), false)
      addEventHandler("onClientPlayerVehicleExit", localPlayer, removeKeyToggles)
      exports.ST_crosshair:aim_driveBy(true)
    else
      setPedDoingGangDriveby(localPlayer, false)
      setPedWeaponSlot(localPlayer, 0)
      limitDrivebySpeed()
      toggleControl("vehicle_look_left", true)
      toggleControl("vehicle_look_right", true)
      toggleControl("vehicle_secondary_fire", true)
      toggleTurningKeys(getElementModel((getPedOccupiedVehicle(localPlayer))), true)
      removeEventHandler("onClientPlayerVehicleExit", localPlayer, removeKeyToggles)
      exports.ST_crosshair:aim_driveBy(false)
    end
  end
end
function switchDrivebyWeapon(_ARG_0_, _ARG_1_, _ARG_2_)
  if _UPVALUE0_ or not isPedInVehicle(localPlayer) then
    return
  end
  if not indexOf(_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger, (getPedWeapon(localPlayer))) then
    return
  end
  repeat
    if indexOf(_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger, (getPedWeapon(localPlayer))) + _ARG_2_ < 1 then
    elseif #(_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger) > #(_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger) then
    end
    if getPedWeapon(localPlayer, (getSlotFromWeapon((_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1]))) == (_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1] and getPedTotalAmmo(localPlayer, (getSlotFromWeapon((_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1]))) > 0 then
      setPedWeaponSlot(localPlayer, (getSlotFromWeapon((_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1])))
      limitDrivebySpeed((_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1])
      _UPVALUE3_ = getSlotFromWeapon((_UPVALUE1_ and _UPVALUE2_.driver or _UPVALUE2_.passenger)[1])
      break
    end
  until false
end
function limitDrivebySpeed(_ARG_0_)
  if _ARG_0_ and _UPVALUE0_.shotdelay[tostring(_ARG_0_)] then
    toggleControl("vehicle_fire", false)
    bindKey("vehicle_fire", "both", limitedKeyPress, _ARG_0_ and _UPVALUE0_.shotdelay[tostring(_ARG_0_)])
  else
    toggleControl("vehicle_fire", true)
    unbindKey("vehicle_fire", "both", limitedKeyPress)
  end
end
function limitedKeyPress(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ == "down" then
    if _UPVALUE0_ then
      return
    end
    _UPVALUE1_ = true
    pressKey("vehicle_fire")
    _UPVALUE0_ = true
    setTimer(function()
      _UPVALUE0_ = false
    end, _ARG_2_, 1)
    _UPVALUE2_ = setTimer(pressKey, _ARG_2_, 0, "vehicle_fire")
  else
    _UPVALUE1_ = false
    if isTimer(_UPVALUE2_) then
      killTimer(_UPVALUE2_)
    end
  end
end
function pressKey(_ARG_0_)
  setControlState(_ARG_0_, true)
  setTimer(setControlState, 150, 1, _ARG_0_, false)
end
function listContains(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_ == _ARG_1_ then
      return true
    end
  end
end
function indexOf(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_ == _ARG_1_ then
      return _FORV_5_
    end
  end
end
function toggleTurningKeys(_ARG_0_, _ARG_1_)
  if not (not _UPVALUE0_[_ARG_0_] or _UPVALUE1_.steerBikes) or not _UPVALUE0_[_ARG_0_] and not _UPVALUE1_.steerCars then
    toggleControl("vehicle_left", _ARG_1_)
    toggleControl("vehicle_right", _ARG_1_)
  end
end
function removeKeyToggles()
  toggleControl("vehicle_look_left", true)
  toggleControl("vehicle_look_right", true)
  toggleControl("vehicle_secondary_fire", true)
  toggleTurningKeys(getElementModel(source), true)
  exports.ST_crosshair:aim_driveBy(false)
end
