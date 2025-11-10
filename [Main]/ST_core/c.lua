removeWorldModel(11360, 5, -2038.873046875, 169.986328125, 28.839275360107)
addEvent("setBreakable", true)
addEventHandler("setBreakable", root, function(_ARG_0_)
  setObjectBreakable(_ARG_0_, false)
end)
function nodamage(_ARG_0_, _ARG_1_)
  if not _ARG_0_ then
    return
  end
  if getElementType(_ARG_0_) == "vehicle" then
    cancelEvent()
  end
end
addEventHandler("onClientPlayerDamage", getLocalPlayer(), nodamage)
addEventHandler("onClientResourceStart", resourceRoot, function()
  setWorldSpecialPropertyEnabled("extraairresistance", false)
end)
setTimer(function()
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "addHrs", localPlayer, 6)
end, 360000, 0)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "shader_details" then
    exports.ST_shader_details:enableDetail()
  elseif _ARG_0_ == "shader_distanse" then
    setFarClipDistance(4000)
  elseif _ARG_0_ == "shader_sky" then
    exports.ST_shader_sky:startDynamicSky()
  elseif _ARG_0_ == "shader_water" then
    exports.ST_shader_water:enableWaterShine()
  elseif _ARG_0_ == "shader_dof" then
    exports.ST_shader_dof:enableDoF()
  elseif _ARG_0_ == "shader_shadow" then
    exports.ST_shader_shadow:enableAO()
  elseif _ARG_0_ == "shader_snow" then
    if _ARG_1_ == 1 then
      exports.ST_snow:setSnowEnabled(true)
    else
      exports.ST_snow:setSnowEnabled(false)
    end
  elseif _ARG_0_ == "snow_rainfall" then
    if _ARG_1_ == 1 then
      exports.ST_snow1:toggleSnow(true)
    else
      exports.ST_snow1:toggleSnow(false)
    end
  elseif _ARG_0_ == "radio_volume" then
    exports.ST_radio:playRadio(_ARG_1_)
  elseif _ARG_0_ == "load_custom_skin" then
    if tonumber(string.sub(getElementData(localPlayer, "custom_model"), 9, 14)) >= 101 and tonumber(string.sub(getElementData(localPlayer, "custom_model"), 9, 14)) <= 200 then
      exports.ST_customs_skins2:loadCustomSkin((getElementData(localPlayer, "custom_model")))
    else
      exports.ST_customs_skins1:loadCustomSkin((getElementData(localPlayer, "custom_model")))
    end
  elseif _ARG_0_ == "shader_fxaa" then
    exports.ST_shader_fxaa:switchFxaa(_ARG_1_)
  elseif _ARG_0_ == "dodajlevla" then
    setTimer(function()
      exports.ST_levelsystem:addExp(1)
    end, 10000, 1)
  elseif _ARG_0_ == "soundLock" then
    setSoundVolume(playSound("sounds/lock.mp3"), 0.1)
  elseif _ARG_0_ == "setTimerBoostJobClient" then
    setTimer(function()
      triggerServerEvent("evEwenciks_khgdfhgj", resourceRoot, "stopJobBoost", localPlayer)
    end, _ARG_1_ * 1000, 1)
  end
end)
function cancelWeaponSwitch(_ARG_0_, _ARG_1_)
  if getTickCount() - _UPVALUE0_ > 100 then
    _UPVALUE0_ = getTickCount()
  else
    cancelEvent()
  end
end
addEventHandler("onClientPlayerWeaponSwitch", localPlayer, cancelWeaponSwitch)
function destroyBlipsAttachedTo(_ARG_0_)
  if getAttachedElements(_ARG_0_) then
    for _FORV_5_, _FORV_6_ in ipairs((getAttachedElements(_ARG_0_))) do
      if getElementType(_FORV_6_) == "blip" then
        destroyElement(_FORV_6_)
      end
    end
  end
end
blipsCar1 = {}
blipsCar2 = {}
blipsCar3 = {}
function veh_blips()
  for _FORV_3_, _FORV_4_ in pairs(getElementsByType("vehicle")) do
    if getElementData(_FORV_4_, "vehicle:id") then
      if getElementData(_FORV_4_, "vehicle:ownedGroup") == getElementData(localPlayer, "player:organization") then
        if isElement(blipsCar1[getElementData(_FORV_4_, "vehicle:id")]) then
          destroyElement(blipsCar1[getElementData(_FORV_4_, "vehicle:id")])
        end
        blipsCar1[getElementData(_FORV_4_, "vehicle:id")] = createBlipAttachedTo(_FORV_4_, 17, 25, 25, 25, 25, 0, 9999)
      end
      if getElementData(_FORV_4_, "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") then
        if isElement(blipsCar2[getElementData(_FORV_4_, "vehicle:id")]) then
          destroyElement(blipsCar2[getElementData(_FORV_4_, "vehicle:id")])
        end
        blipsCar2[getElementData(_FORV_4_, "vehicle:id")] = createBlipAttachedTo(_FORV_4_, 19, 25, 25, 25, 25, 0, 9999)
      end
      if tonumber((getElementData(_FORV_4_, "vehicle:rent"))) == getElementData(localPlayer, "player:sid") then
        if isElement(blipsCar3[getElementData(_FORV_4_, "vehicle:id")]) then
          destroyElement(blipsCar3[getElementData(_FORV_4_, "vehicle:id")])
        end
        blipsCar3[getElementData(_FORV_4_, "vehicle:id")] = createBlipAttachedTo(_FORV_4_, 14, 25, 25, 25, 25, 0, 9999)
      end
    end
  end
end
setTimer(veh_blips, 30000, 0)
function changeNameClient(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    if _ARG_1_ ~= 0 then
      if _UPVALUE0_[_ARG_1_] then
        return _UPVALUE0_[_ARG_1_]
      else
        return _ARG_0_
      end
    elseif _UPVALUE0_[_ARG_0_] then
      return _UPVALUE0_[_ARG_0_]
    else
      return _ARG_0_
    end
  elseif _UPVALUE0_[_ARG_0_] then
    return _UPVALUE0_[_ARG_0_]
  else
    return _ARG_0_
  end
end
addEventHandler("onClientElementDestroy", root, function()
  if getElementType(source) == "vehicle" then
    destroyBlipsAttachedTo(source)
  end
end)
addEventHandler("onClientPlayerDamage", root, function()
  if getElementData(source, "admin:antykill") then
    cancelEvent()
  end
end)
addEventHandler("onClientPlayerStealthKill", localPlayer, function(_ARG_0_)
  if getElementData(_ARG_0_, "admin:antykill") then
    cancelEvent()
  end
end)
getResourceName(getThisResource(), true, 713889187)
return
