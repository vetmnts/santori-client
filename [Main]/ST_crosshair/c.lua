function render()
  if not getScreenFromWorldPosition(getPedTargetEnd(getLocalPlayer())) then
    return
  end
  dxDrawImage(getScreenFromWorldPosition(getPedTargetEnd(getLocalPlayer())) - _UPVALUE0_ / 2, getScreenFromWorldPosition(getPedTargetEnd(getLocalPlayer())) - _UPVALUE0_ / 2, _UPVALUE0_, _UPVALUE0_, "img/" .. _UPVALUE1_ .. ".png", 0, 0, 0, tocolor(_UPVALUE2_[currentColorID][1], _UPVALUE2_[currentColorID][2], _UPVALUE2_[currentColorID][3]))
end
function aim_driveBy(_ARG_0_)
  if _ARG_0_ then
    addEventHandler("onClientHUDRender", root, _UPVALUE0_)
  else
    removeEventHandler("onClientHUDRender", root, _UPVALUE0_)
  end
end
function aim_weapon(_ARG_0_, _ARG_1_)
  if _ARG_1_ == "down" then
    if not _UPVALUE0_[getPedWeapon(localPlayer)] then
      addEventHandler("onClientHUDRender", root, render)
      setPlayerHudComponentVisible("crosshair", false)
    else
      setPlayerHudComponentVisible("crosshair", true)
    end
  elseif not _UPVALUE0_[getPedWeapon(localPlayer)] then
    removeEventHandler("onClientHUDRender", root, render)
  else
    setPlayerHudComponentVisible("crosshair", false)
  end
end
function switchCrosshair(_ARG_0_, _ARG_1_)
  if tonumber(_ARG_0_) == 0 then
    _UPVALUE0_ = 0
    currentColorID = 1
    unbindKey("aim_weapon", "both", aim_weapon)
    setPlayerHudComponentVisible("crosshair", true)
  else
    _UPVALUE0_, currentColorID = tonumber(_ARG_0_), tonumber(_ARG_1_)
    unbindKey("aim_weapon", "both", aim_weapon)
    bindKey("aim_weapon", "both", aim_weapon)
  end
end
getResourceName(getThisResource(), true, 528088298)
return
