tabelka = {}
function render()
  for _FORV_9_, _FORV_10_ in pairs(tabelka) do
    if isElement(_FORV_10_[1]) and getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])) and getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])) then
      dxDrawText(string.gsub(_FORV_10_[2], "#%x%x%x%x%x%x", ""), getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])) + 2, getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])) + 2, getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])))
      dxDrawText(_FORV_10_[2], getScreenFromWorldPosition(getElementPosition(_FORV_10_[1])))
    end
  end
end
function switch3dText(_ARG_0_)
  if _ARG_0_ then
    if not isEventHandlerAdded("onClientRender", root, render) then
      if isTimer(timer) then
        killTimer(timer)
      end
      addEventHandler("onClientRender", root, render)
      timer = setTimer(function()
        tabelka = {}
        for _FORV_7_, _FORV_8_ in ipairs((getElementsByType("text"))) do
          if _FORV_8_ and isElement(_FORV_8_) and getElementDimension(_FORV_8_) == getElementDimension(localPlayer) and getElementInterior(_FORV_8_) == getElementInterior(localPlayer) and getElementData(_FORV_8_, "name") and getDistanceBetweenPoints3D(getCameraMatrix()) < 22 then
            table.insert(tabelka, {
              _FORV_8_,
              (getElementData(_FORV_8_, "name"))
            })
          end
        end
        for _FORV_8_, _FORV_9_ in pairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
          if getElementData(_FORV_9_, "vehicle:desc") and getElementDimension(_FORV_9_) == getElementDimension(localPlayer) and getElementInterior(_FORV_9_) == getElementInterior(localPlayer) then
            table.insert(tabelka, {
              _FORV_9_,
              (getElementData(_FORV_9_, "vehicle:desc"))
            })
          end
        end
      end, 1000, 0)
    end
  else
    if isTimer(timer) then
      killTimer(timer)
    end
    removeEventHandler("onClientRender", root, render)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoClient" then
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      if _FORV_10_.settings_3dtext == 1 then
        switch3dText(true)
      else
        switch3dText(false)
      end
    end
  end
end)
addEventHandler("onClientResourceStart", resourceRoot, function(_ARG_0_)
  triggerServerEvent("ev", resourceRoot, "showInfo", localPlayer)
end)
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
getResourceName(getThisResource(), true, 415833760)
return
