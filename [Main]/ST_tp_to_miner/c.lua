screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 150,
  y = 10 / zoom,
  w = 300 / zoom,
  h = 120 / zoom
}
function window()
  for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
    if _FORV_5_ ~= localPlayer then
      isIn = isElementWithinColShape(_FORV_5_, zone)
      if isIn and not getElementData(_FORV_5_, "player:level") then
        table.insert({}, _FORV_5_)
      end
    end
  end
  triggerEvent("radar:onClientHudComponent", localPlayer, "radar", false)
  setPlayerHudComponentVisible("radar", false)
  dxDrawRoundedRectangle(windowsUP.x, windowsUP.y, windowsUP.w, windowsUP.h, 20 / zoom, tocolor(25, 25, 25, 200), false)
  dxDrawText("CHOWANY", windowsUP.x, windowsUP.y - 60 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  dxDrawText("MAPA: #ffbf00" .. mapid, windowsUP.x, windowsUP.y + 10 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  dxDrawText("POZOSTALI GRACZE: #ffbf00" .. #{} + 1 .. "", windowsUP.x, windowsUP.y + 70 / zoom, windowsUP.x + windowsUP.w, windowsUP.y + windowsUP.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "guiOn" then
    if _ARG_1_ then
      addEventHandler("onClientRender", root, window)
      zone = _ARG_2_
      mapid = _ARG_3_
    else
      mapid = false
      removeEventHandler("onClientRender", root, window)
    end
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
getResourceName(getThisResource(), true, 451534624)
return
