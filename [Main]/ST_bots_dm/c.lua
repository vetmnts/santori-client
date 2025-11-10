function nameTagBots()
  for _FORV_6_, _FORV_7_ in ipairs(getElementsByType("ped")) do
    if getElementData(_FORV_7_, "botsDM") and getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8)) and getDistanceBetweenPoints3D(getCameraMatrix()) <= 15 then
      if getElementData(_FORV_7_, "botsDM").mode == "easy" then
        r, g, b = 0, 255, 68
      elseif getElementData(_FORV_7_, "botsDM").mode == "medium" then
        r, g, b = 255, 174, 0
      elseif getElementData(_FORV_7_, "botsDM").mode == "hard" then
        r, g, b = 255, 0, 0
      end
      dxDrawRoundedRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 120, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 20, 40, 40, 7, tocolor(r, g, b, 250))
      dxDrawRoundedRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 119, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 19, 38, 38, 7, tocolor(50, 50, 50, 250))
      dxDrawRoundedRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 75, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), 150, 20, 7, tocolor(30, 30, 30, 230))
      if getElementHealth(_FORV_7_) * 2.92 * 1.96 * 1.46 > 5 then
        dxDrawRoundedRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 73, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, getElementHealth(_FORV_7_) * 2.92 * 1.96 * 1.46, 16, 7, tocolor(255, 30, 30, 230))
      end
      dxDrawText(getElementData(_FORV_7_, "botsDM").name, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 68, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 21, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), tocolor(0, 0, 0, 255), 1, exports.ST_gui:getGUIFont("bold13"), "left", "center", false, false, false, true, true)
      dxDrawText(getElementData(_FORV_7_, "botsDM").name, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 70, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 23, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("bold13"), "left", "center", false, false, false, true, true)
      dxDrawText(getElementData(_FORV_7_, "botsDM").level, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 200, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, true, true)
      if getElementData(_FORV_7_, "botsDM").mode == "easy" then
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
      elseif getElementData(_FORV_7_, "botsDM").mode == "medium" then
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 25, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 25, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
      elseif getElementData(_FORV_7_, "botsDM").mode == "hard" then
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 40, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
        dxDrawRectangle(math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 40, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 2, 1, 12, tocolor(0, 0, 0, 255), false)
      end
      dxDrawText(math.floor((getElementHealth(_FORV_7_))) .. " HP", math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) - 70, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))) + 22, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_, 8))), tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("normal10"), "left", "center", false, false, false, true, true)
    end
  end
end
area = createColCuboid(2056.2, -2129.27, 6.38, 1681.79, 518.68, 152.12)
addEventHandler("onClientColShapeHit", area, function(_ARG_0_)
  if getElementType(_ARG_0_) == "player" then
    if nametag then
      return
    end
    nametag = true
    addEventHandler("onClientRender", root, nameTagBots)
  end
end)
addEventHandler("onClientColShapeLeave", area, function(_ARG_0_)
  if getElementType(_ARG_0_) == "player" then
    nametag = false
    removeEventHandler("onClientRender", root, nameTagBots)
  end
end)
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
end
function cancelPedDamage(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == localPlayer then
    triggerServerEvent("onPlayerAttackBot", resourceRoot, source, _ARG_3_)
  end
  cancelEvent()
end
addEventHandler("onClientPedDamage", resourceRoot, cancelPedDamage)
getResourceName(getThisResource(), true, 469169994)
return
