BLIP_TEXTURES = {}
screenW, screenH = guiGetScreenSize()
function toggleRadar()
  disabled = not _UPVALUE0_
  handleTileLoading()
  _UPVALUE1_ = setTimer(handleTileLoading, 250, 0)
  dxSetShaderValue(dxCreateShader("fx/texreplace.fx"), "gTexture", (dxCreateTexture(1, 1)))
  engineApplyShaderToWorldTexture(dxCreateShader("fx/texreplace.fx"), "radardisc")
  addEventHandler("onClientHUDRender", root, drawRadarDisc)
  for _FORV_5_ = 2, #_UPVALUE2_ do
    engineApplyShaderToWorldTexture(dxCreateShader("fx/texreplace.fx"), _UPVALUE2_[_FORV_5_][1])
    BLIP_TEXTURES[_UPVALUE2_[_FORV_5_][1]] = dxCreateTexture("images/radar/" .. _UPVALUE2_[_FORV_5_][2])
    dxSetShaderValue(dxCreateShader("fx/texreplace.fx"), "gTexture", BLIP_TEXTURES[_UPVALUE2_[_FORV_5_][1]])
  end
end
addEventHandler("onClientResourceStart", resourceRoot, toggleRadar)
function drawRadarDisc()
  if isPlayerHudComponentVisible("radar") then
    dxSetAspectRatioAdjustmentEnabled(true)
    dxDrawImage(screenW * 0.058, screenH - screenH * 0.182 - screenH * 0.056, screenW * 0.156, screenH * 0.182, "images/radar/radar_circle.png", 0, 0, 0, tocolor(16, 16, 16, 255))
    dxSetAspectRatioAdjustmentEnabled(false)
  end
end
function handleTileLoading()
  for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_) do
    if not table.find(table.merge(engineGetVisibleTextureNames("radar??"), engineGetVisibleTextureNames("radar???")), _FORV_4_) then
      unloadTile(_FORV_4_)
    end
  end
  for _FORV_4_, _FORV_5_ in ipairs((table.merge(engineGetVisibleTextureNames("radar??"), engineGetVisibleTextureNames("radar???")))) do
    loadTile(_FORV_5_)
  end
end
function table.merge(...)
  for _FORV_5_, _FORV_6_ in ipairs({
    ...
  }) do
    for _FORV_10_, _FORV_11_ in ipairs(_FORV_6_) do
      table.insert({}, _FORV_11_)
    end
  end
  return {}
end
function table.find(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_ == _ARG_1_ then
      return _FORV_5_
    end
  end
  return false
end
function loadTile(_ARG_0_)
  if type(_ARG_0_) ~= "string" then
    return false
  end
  if _UPVALUE0_[_ARG_0_] then
    return true
  end
  if not dxCreateTexture("images/radar/" .. _ARG_0_ .. ".png") then
    return false
  end
  if not dxCreateShader("fx/texreplace.fx") then
    destroyElement((dxCreateTexture("images/radar/" .. _ARG_0_ .. ".png")))
    return false
  end
  dxSetShaderValue(dxCreateShader("fx/texreplace.fx"), "gTexture", (dxCreateTexture("images/radar/" .. _ARG_0_ .. ".png")))
  dxSetShaderValue(dxCreateShader("fx/texreplace.fx"), "gTexture", tocolor(0, 255, 255, 255))
  engineApplyShaderToWorldTexture(dxCreateShader("fx/texreplace.fx"), _ARG_0_)
  _UPVALUE0_[_ARG_0_] = {
    shader = dxCreateShader("fx/texreplace.fx"),
    texture = dxCreateTexture("images/radar/" .. _ARG_0_ .. ".png")
  }
  return true
end
function unloadTile(_ARG_0_)
  if not _UPVALUE0_[_ARG_0_] then
    return false
  end
  if isElement(_UPVALUE0_[_ARG_0_].shader) then
    destroyElement(_UPVALUE0_[_ARG_0_].shader)
  end
  if isElement(_UPVALUE0_[_ARG_0_].texture) then
    destroyElement(_UPVALUE0_[_ARG_0_].texture)
  end
  _UPVALUE0_[_ARG_0_] = nil
  return true
end
getResourceName(getThisResource(), true, 876756721)
return
