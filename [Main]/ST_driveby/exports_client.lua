function setDriverDrivebyAbility(...)
  for _FORV_5_, _FORV_6_ in ipairs({
    ...
  }) do
    if not _UPVALUE0_[_FORV_6_] then
      table.remove({
        ...
      }, _FORV_5_)
    end
  end
  settings.driver = {
    ...
  }
  lastSlot = 0
  return true
end
function setPassengerDrivebyAbility(...)
  for _FORV_5_, _FORV_6_ in ipairs({
    ...
  }) do
    if not _UPVALUE0_[_FORV_6_] then
      table.remove({
        ...
      }, _FORV_5_)
    end
  end
  settings.passenger = {
    ...
  }
  lastSlot = 0
  return true
end
function getDriverDrivebyAbility()
  return settings.driver
end
function getPassengerDrivebyAbility()
  return settings.passenger
end
function setWeaponShotDelay(_ARG_0_, _ARG_1_)
  if not _UPVALUE0_[_ARG_0_] then
    outputDebugString("setWeaponShotDelay: 'weaponID' specified is not a valid driveby weapon", 0, 255, 255, 0)
    return false
  end
  if not tonumber(_ARG_1_) then
    outputDebugString("setWeaponShotDelay: Bad 'delay' specified.", 0, 255, 255, 0)
    return false
  end
  settings.shotdelay[tostring(_ARG_0_)] = tonumber(_ARG_1_)
  return true
end
function getWeaponShotDelay(_ARG_0_)
  if not _UPVALUE0_[_ARG_0_] then
    outputDebugString("getWeaponShotDelay: 'weaponID' specified is not a valid driveby weapon", 0, 255, 255, 0)
    return false
  end
  return settings.shotdelay[tostring(_ARG_0_)] or 0
end
function setDrivebySteeringAbility(_ARG_0_, _ARG_1_)
  if _ARG_0_ == nil then
    outputDebugString("setDrivebySteeringAbility: No valid arguments were passed.", 0, 255, 255, 0)
    return false
  end
  settings.steerCars = _ARG_0_
  settings.steerBikes = type(_ARG_1_) ~= "boolean" and true or _ARG_1_
end
function getDrivebySteeringAbility(_ARG_0_)
  if _ARG_0_ == "car" then
    return settings.steerCars
  elseif _ARG_0_ == "bike" then
    return settings.steerBikes
  else
    outputDebugString("getDrivebySteeringAbility: Bad driveby type specified.  Should be 'car' or 'bike'.", 0, 255, 255, 0)
    return false
  end
end
function setDrivebyAutoEquip(_ARG_0_)
  if type(_ARG_0_) ~= "boolean" then
    outputDebugString("setDrivebyAutoEquip: Bad argument, should be a boolean.", 0, 255, 255, 0)
    return false
  end
  settings.autoEquip = _ARG_0_
  return true
end
function getDrivebyAutoEquip()
  return settings.autoEquip
end
