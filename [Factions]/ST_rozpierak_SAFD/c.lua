function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
txd = engineLoadTXD("rozpierak.txd")
engineImportTXD(txd, 361)
dff = engineLoadDFF("rozpierak.dff", 361)
engineReplaceModel(dff, 361)
bindKey("h", "down", function()
  if getElementData(localPlayer, "player:faction") == "SAFD" then
    if getPedWeapon(localPlayer) == 37 then
      if isLineOfSightClear(getElementPosition(localPlayer)) then
        return
      end
      if not processLineOfSight(getElementPosition(localPlayer)) then
        return
      end
      if getElementType(processLineOfSight(getElementPosition(localPlayer))) ~= "vehicle" then
        return
      end
      if processLineOfSight(getElementPosition(localPlayer)) and isElement(processLineOfSight(getElementPosition(localPlayer))) then
        if not processLineOfSight(getElementPosition(localPlayer)) then
          return
        end
        if processLineOfSight(getElementPosition(localPlayer)) == 5 then
        elseif 2 == 6 then
        elseif 3 == 7 then
        elseif 4 == 8 then
        else
          exports.st_gui:showPlayerNotification("Musisz sta\196\135 przodem do drzwi", "info")
          return
        end
        triggerServerEvent("ev", resourceRoot, "wylam_drzwi", processLineOfSight(getElementPosition(localPlayer)))
      end
    elseif getPedWeapon(localPlayer) == 15 then
      if isLineOfSightClear(getElementPosition(localPlayer)) then
        return
      end
      if not processLineOfSight(getElementPosition(localPlayer)) then
        return
      end
      if getElementType(processLineOfSight(getElementPosition(localPlayer))) ~= "vehicle" then
        return
      end
      if processLineOfSight(getElementPosition(localPlayer)) and isElement(processLineOfSight(getElementPosition(localPlayer))) then
        if not processLineOfSight(getElementPosition(localPlayer)) then
          return
        end
        if processLineOfSight(getElementPosition(localPlayer)) == 2 then
        elseif 1 == 3 then
        else
          exports.st_gui:showPlayerNotification("Musisz sta\196\135 przodem do maski lub maga\197\188nika", "info")
          return
        end
        triggerServerEvent("ev", resourceRoot, "wylam_bagaznikMaske", processLineOfSight(getElementPosition(localPlayer)))
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "wlacz_dzwiek" then
    setSoundVolume(playSound3D("rozpierak.mp3", _ARG_1_, _ARG_2_, _ARG_3_, false), 5)
    setSoundMaxDistance(playSound3D("rozpierak.mp3", _ARG_1_, _ARG_2_, _ARG_3_, false), 20)
  end
end)
function blokada(_ARG_0_, _ARG_1_)
  if getPedWeapon(getLocalPlayer(), _ARG_1_) == 37 then
    setElementData(getLocalPlayer(), "fire_block", true)
    toggleControl("fire", false)
  else
    setElementData(getLocalPlayer(), "fire_block", false)
    toggleControl("fire", true)
  end
end
addEventHandler("onClientPlayerWeaponSwitch", getRootElement(), blokada)
getResourceName(getThisResource(), true, 992277780)
return
