function isValidCustomID(_ARG_0_)
  return _UPVALUE0_[_ARG_0_] ~= nil
end
function setTuning(_ARG_0_)
  if isSettingTuning then
    return
  end
  if getElementType(_ARG_0_) ~= "vehicle" then
    return
  end
  isSettingTuning = true
  if not tonumber(getElementData(_ARG_0_, "vehicle:customID")) or not isValidCustomID((tonumber(getElementData(_ARG_0_, "vehicle:customID")))) then
    isSettingTuning = false
    return
  end
  if _UPVALUE0_[tonumber(getElementData(_ARG_0_, "vehicle:customID"))] then
    if not setElementModel(_ARG_0_, _UPVALUE0_[tonumber(getElementData(_ARG_0_, "vehicle:customID"))]) then
      isSettingTuning = false
      return
    end
    for _FORV_7_, _FORV_8_ in pairs((getVehicleUpgrades(_ARG_0_))) do
      if not addVehicleUpgrade(_ARG_0_, _FORV_8_) then
      end
    end
    if getElementData(_ARG_0_, "vehicle:wariant") and type((getElementData(_ARG_0_, "vehicle:wariant"))) == "table" and #getElementData(_ARG_0_, "vehicle:wariant") == 2 and (getElementData(_ARG_0_, "vehicle:wariant")[1] ~= getVehicleVariant(_ARG_0_) or getElementData(_ARG_0_, "vehicle:wariant")[2] ~= getVehicleVariant(_ARG_0_)) then
      setVehicleVariant(_ARG_0_, getElementData(_ARG_0_, "vehicle:wariant")[1], getElementData(_ARG_0_, "vehicle:wariant")[2])
    end
  end
  isSettingTuning = false
end
function loadVehicleModel(_ARG_0_, _ARG_1_)
  if _UPVALUE0_[_ARG_0_] then
    return
  end
  if not fileExists("models/" .. _ARG_0_ .. ".txd") or not fileExists("models/" .. _ARG_0_ .. ".dff") then
    return
  end
  _UPVALUE0_[_ARG_0_] = engineRequestModel("vehicle", _ARG_1_)
  if not engineLoadTXD("models/" .. _ARG_0_ .. ".txd") then
    return
  end
  engineImportTXD(engineLoadTXD("models/" .. _ARG_0_ .. ".txd"), (engineRequestModel("vehicle", _ARG_1_)))
  if not engineLoadDFF("models/" .. _ARG_0_ .. ".dff") then
    return
  end
  engineReplaceModel(engineLoadDFF("models/" .. _ARG_0_ .. ".dff"), (engineRequestModel("vehicle", _ARG_1_)))
end
addEventHandler("onClientElementStreamIn", root, function()
  if getElementType(source) ~= "vehicle" or not getElementData(source, "vehicle:customID") then
    return
  end
  setTuning(source)
end)
addEventHandler("onClientResourceStart", resourceRoot, function()
  for _FORV_3_, _FORV_4_ in pairs(_UPVALUE0_) do
    loadVehicleModel(_FORV_3_, _FORV_4_)
  end
  for _FORV_3_, _FORV_4_ in pairs(getElementsByType("vehicle")) do
    if getElementData(_FORV_4_, "vehicle:customID") then
      setTuning(_FORV_4_)
    end
  end
end)
addEvent("addCustomCarsClient", true)
addEventHandler("addCustomCarsClient", root, function(_ARG_0_, _ARG_1_)
  if isElementStreamedIn(_ARG_0_) then
    setTuning(_ARG_0_)
  end
end)
