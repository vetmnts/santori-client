function try_penalty()
  triggerServerEvent("ac:penalty", resourceRoot, _UPVALUE0_)
end
if not token or token and token ~= dxGetStatus().VideoCardName then
  try_penalty()
end
addEventHandler("onClientResourceStart", resourceRoot, function()
  setTimer(function()
    if not token or token and token ~= dxGetStatus().VideoCardName then
      _UPVALUE0_ = "lua_executor"
      try_penalty()
      killTimer(sourceTimer)
    end
  end, 5000, 0)
end)
addDebugHook("preFunction", function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, ...)
  if getResourceName(_ARG_0_) == getResourceName(resource) and _ARG_3_ == "client.lua" then
    _UPVALUE0_ = "lua_executor"
    try_penalty()
    return "skip"
  elseif _ARG_3_ == "[string \"?\"]" then
    _UPVALUE0_ = "lua_executor"
    try_penalty()
    return "skip"
  end
end, {
  "createBlip",
  "createBlipAttachedTo",
  "createBrowser",
  "createBuilding",
  "removeAllGameBuildings",
  "restoreAllGameBuildings",
  "setCameraTarget",
  "createEffect",
  "attachElements",
  "createElement",
  "destroyElement",
  "detachElements",
  "getAllElementData",
  "setElementAlpha",
  "setElementData",
  "setElementFrozen",
  "setElementHealth",
  "setElementVelocity",
  "setElementPosition",
  "setElementRotation",
  "setElementModel",
  "setElementParent",
  "setElementDimension",
  "setElementInterior",
  "setElementCollisionsEnabled",
  "triggerLatentServerEvent",
  "triggerServerEvent",
  "addEventHandler",
  "triggerEvent",
  "createExplosion",
  "createFire",
  "setDebugViewActive",
  "addCommandHandler",
  "bindKey",
  "executeCommandHandler",
  "getCommandHandlers",
  "createObject",
  "createPed",
  "killPed",
  "createPickup",
  "setPlayerMoney",
  "takePlayerMoney",
  "givePlayerMoney",
  "createProjectile",
  "fetchRemote",
  "setDevelopmentMode",
  "addDebugHook",
  "setTimer",
  "resetVehicleComponentPosition",
  "resetVehicleComponentRotation",
  "resetVehicleComponentScale",
  "resetVehicleDummyPositions",
  "setHeliBladeCollisionsEnabled",
  "setHelicopterRotorSpeed",
  "setVehicleRotorSpeed",
  "setVehicleAdjustableProperty",
  "setVehicleComponentPosition",
  "setVehicleComponentRotation",
  "setVehicleComponentScale",
  "setVehicleComponentVisible",
  "setVehicleDummyPosition",
  "setVehicleGravity",
  "setVehicleModelDummyPosition",
  "setVehicleNitroCount",
  "setVehicleNitroLevel",
  "setVehicleModelWheelSize",
  "setVehicleWheelStates",
  "setVehicleWheelScale",
  "addVehicleUpgrade",
  "attachTrailerToVehicle",
  "blowVehicle",
  "createVehicle",
  "detachTrailerFromVehicle",
  "fixVehicle",
  "setVehicleColor",
  "setVehicleDamageProof",
  "setVehicleDoorState",
  "setVehicleDoorsUndamageable",
  "setVehicleHandling",
  "setVehicleHeadLightColor",
  "setVehicleLocked",
  "setVehiclePaintjob",
  "setVehiclePlateText",
  "setVehicleSirensOn",
  "setVehicleSirens",
  "setVehicleVariant",
  "setVehicleWheelStates",
  "createWater",
  "setWaterLevel",
  "setWaveHeight",
  "createWeapon",
  "fireWeapon",
  "createSWATRope",
  "removeWorldModel",
  "setGameSpeed",
  "setGravity",
  "setWeather",
  "setWorldSpecialPropertyEnabled",
  "loadstring"
})
addEventHandler("onClientResourceStop", resourceRoot, function(_ARG_0_)
  if _ARG_0_ ~= resource then
    return
  end
  _UPVALUE0_ = "resource_stop"
  try_penalty()
end)
addEvent("ac:scanResources", true)
addEventHandler("ac:scanResources", resourceRoot, function(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  if isTransferBoxActive() then
    return
  end
  triggerServerEvent("ac:pingalive", resourceRoot)
  for _FORV_4_, _FORV_5_ in ipairs(_ARG_0_) do
    if not getResourceFromName(_FORV_5_) or getResourceFromName(_FORV_5_) and getResourceState((getResourceFromName(_FORV_5_))) ~= "running" then
      _UPVALUE0_[_FORV_5_] = (_UPVALUE0_[_FORV_5_] or 0) + 1
      if 3 <= _UPVALUE0_[_FORV_5_] then
        _UPVALUE1_ = "resource_stop"
        try_penalty()
        break
      end
    end
  end
end)
