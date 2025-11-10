function addCustomPaintJob(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ and getElementType(_ARG_0_) == "vehicle" then
    if not isEventHandlerAdded("onClientElementStreamOut", root, elementStreamOut) then
      return
    end
    if _ARG_1_ and tonumber(_ARG_1_) then
      if getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_)) and (getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[tonumber(_ARG_1_)] or tonumber(_ARG_1_) == 0) then
        if not _ARG_2_ then
          triggerServerEvent("addCustomPaintJob", localPlayer, _ARG_0_, tonumber(_ARG_1_))
        end
      else
        outputChatBox("Nieprawid\197\130owy paintjob.", 255, 0, 0)
      end
    elseif not _ARG_2_ then
      triggerServerEvent("addCustomPaintJob", localPlayer, _ARG_0_, 0)
    end
  end
end
addEventHandler("onClientResourceStart", resourceRoot, function()
  triggerServerEvent("ev", resourceRoot, "showInfo", localPlayer, true)
end)
addEvent("paintjob->TryToAddToVehicle", true)
addEventHandler("paintjob->TryToAddToVehicle", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ and getElementType(_ARG_0_) == "vehicle" then
    if not isEventHandlerAdded("onClientElementStreamOut", root, elementStreamOut) then
      return
    end
    if _ARG_1_ and _ARG_1_ ~= 0 then
      addVehiclePaintjob(_ARG_0_, _ARG_1_)
    else
      removeVehiclePaintjob(_ARG_0_)
    end
  end
end)
addEvent("addPaintJobCustomClient", true)
addEventHandler("addPaintJobCustomClient", root, function(_ARG_0_, _ARG_1_)
  if isElement(_ARG_0_) and isElementStreamedIn(_ARG_0_) and getElementType(_ARG_0_) == "vehicle" then
    if not isEventHandlerAdded("onClientElementStreamOut", root, elementStreamOut) then
      return
    end
    if _UPVALUE0_[_ARG_0_] then
      return
    end
    if _ARG_1_ and _ARG_1_ ~= 0 then
      addVehiclePaintjob(_ARG_0_, _ARG_1_)
    else
      removeVehiclePaintjob(_ARG_0_)
    end
  end
end)
function elementStreamIn()
  if getElementType(source) ~= "vehicle" then
    return
  end
  if getElementData(source, "vehicle:paintjob") then
    queuePaintjobLoading(source, (getElementData(source, "vehicle:paintjob")))
  end
end
function elementStreamOut()
  if getElementType(source) ~= "vehicle" then
    return
  end
  removeVehiclePaintjob(source)
end
function elementDestroy()
  if getElementType(source) ~= "vehicle" then
    return
  end
  removeVehiclePaintjob(source)
end
function addVehiclePaintjob(_ARG_0_, _ARG_1_)
  if not isElement(_ARG_0_) or not isElementStreamedIn(_ARG_0_) then
    return
  end
  if _UPVALUE0_[_ARG_0_] then
    return
  end
  if not getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_)) or not getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_] then
    return
  end
  if not dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle") then
    outputDebugString("Nie uda\197\130o si\196\153 stworzy\196\135 shaderu dla pojazdu: " .. getElementModel(_ARG_0_))
    return
  end
  if not fileExists("files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2]) then
    outputDebugString("Plik tekstury nie istnieje: " .. "files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2])
    destroyElement((dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle")))
    return
  end
  if not dxCreateTexture("files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2]) then
    outputDebugString("Nie uda\197\130o si\196\153 za\197\130adowa\196\135 tekstury: " .. "files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2])
    destroyElement((dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle")))
    return
  end
  dxSetShaderValue(dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle"), "TEXTURE", (dxCreateTexture("files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2])))
  engineApplyShaderToWorldTexture(dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle"), getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][1], _ARG_0_)
  _UPVALUE0_[_ARG_0_] = {
    dxCreateShader("files/textureChanger.fx", 0, 0, false, "vehicle"),
    (dxCreateTexture("files/paintjobs/" .. getAvailablePaintjobs(getElementData(_ARG_0_, "vehicle:customID") or getElementModel(_ARG_0_))[_ARG_1_][2]))
  }
end
function removeVehiclePaintjob(_ARG_0_)
  if not isElement(_ARG_0_) or not _UPVALUE0_[_ARG_0_] then
    return
  end
  destroyElement(_UPVALUE0_[_ARG_0_][1])
  destroyElement(_UPVALUE0_[_ARG_0_][2])
  _UPVALUE0_[_ARG_0_] = nil
end
function queuePaintjobLoading(_ARG_0_, _ARG_1_)
  if not isElement(_ARG_0_) or not _ARG_1_ then
    return
  end
  _UPVALUE0_[_ARG_0_] = _ARG_1_
end
function processLazyLoadQueue()
  for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_) do
    if 0 >= 5 then
      break
    end
    if not isElement(_FORV_4_) or not _UPVALUE1_[_FORV_4_] then
      addVehiclePaintjob(_FORV_4_, _FORV_5_)
      _UPVALUE0_[_FORV_4_] = nil
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoClient" then
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      if _FORV_10_.settings_customPaintjob == 1 then
        switchPaintJob(_FORV_10_.settings_customPaintjob, _ARG_2_)
      else
        switchPaintJob(false)
      end
    end
  end
end)
function switchPaintJob(_ARG_0_, _ARG_1_)
  if isEventHandlerAdded("onClientElementDestroy", root, elementDestroy) then
    removeEventHandler("onClientElementDestroy", root, elementDestroy)
  end
  if isEventHandlerAdded("onClientElementStreamOut", root, elementStreamOut) then
    removeEventHandler("onClientElementStreamOut", root, elementStreamOut)
  end
  if isEventHandlerAdded("onClientElementStreamIn", root, elementStreamIn) then
    removeEventHandler("onClientElementStreamIn", root, elementStreamIn)
  end
  if isTimer(timer) then
    killTimer(timer)
  end
  if _ARG_0_ == 1 then
    timer = setTimer(function()
      processLazyLoadQueue()
    end, 1000, 0)
    addEventHandler("onClientElementDestroy", root, elementDestroy)
    addEventHandler("onClientElementStreamOut", root, elementStreamOut)
    addEventHandler("onClientElementStreamIn", root, elementStreamIn)
    if _ARG_1_ then
      for _FORV_5_, _FORV_6_ in ipairs(getElementsByType("vehicle", root, true)) do
        if getElementData(_FORV_6_, "vehicle:paintjob") then
          addVehiclePaintjob(_FORV_6_, (getElementData(_FORV_6_, "vehicle:paintjob")))
        end
      end
    end
  end
end
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
getResourceName(getThisResource(), true, 298074981)
return
