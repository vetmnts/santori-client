screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = math.floor(screenW / 2 - 500 / zoom / 2),
  y = math.floor(screenH / 2 - 400 / zoom / 2),
  w = math.floor(500 / zoom),
  h = math.floor(400 / zoom)
}
buttonsPos = {
  x = math.floor(screenW / 2 - 170 / zoom / 2),
  y = math.floor(screenH / 2 + 200 / zoom / 2),
  w = math.floor(180 / zoom),
  h = math.floor(61 / zoom)
}
windows = {main = false}
function window()
  if windows.main == true then
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("LI\197\154CIE KOKI", windowPos.x + math.floor(146 / zoom), windowPos.y - math.floor(90 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal23"), "center", "center", false, false, false, false, false)
    dxDrawText("WIELKO\197\154\196\134: " .. ("%.2f"):format(data.wielkosc / 10) .. " m\nDOJRZA\197\129E: " .. ("%.2f"):format(data.dojrzale) .. "%", windowPos.x + math.floor(146 / zoom), windowPos.y + math.floor(110 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    if loading then
      if getTickCount() - tick > 1000 then
        tick = getTickCount()
        time = time - 1
      end
      if 1 > time then
        removeEventHandler("onClientRender", root, window)
        windows.main = false
        loading = false
        showCursor(false)
        triggerServerEvent("ev", resourceRoot, "animations", localPlayer, false, data.id, math.random(3, 6), data.type, data.uid, data.organization)
      end
      dxDrawText("POZOSTA\197\129Y CZAS: " .. time .. " sekund", windowPos.x + math.floor(146 / zoom), windowPos.y + math.floor(390 / zoom), windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    else
      exports.ST_buttons:dxCreateButton("ZBIERZ", buttonsPos.x, buttonsPos.y, buttonsPos.w, buttonsPos.h, 255)
      if isMouseIn(windowPos.x + math.floor(424 / zoom), windowPos.y + math.floor(40 / zoom), math.floor(27 / zoom), math.floor(27 / zoom)) then
        dxDrawImage(windowPos.x + math.floor(424 / zoom), windowPos.y + math.floor(40 / zoom), math.floor(27 / zoom), math.floor(27 / zoom), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(windowPos.x + math.floor(425 / zoom), windowPos.y + math.floor(41 / zoom), math.floor(25 / zoom), math.floor(25 / zoom), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
end
addEventHandler("onClientColShapeHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if isPedInVehicle(_ARG_0_) then
    return
  end
  data = getElementData(source, "leaves:data")
  if windows.main == true then
    return
  end
  if not getElementData(_ARG_0_, "player:organization") then
    return
  end
  if getElementData(localPlayer, "org:przestepcza") then
    if #getElementsWithinColShape(source, "player") > 1 then
      exports.st_gui:showPlayerNotification("Jaki\197\155 gracz zbiera ju\197\188 topy.", "info")
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background1.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    addEventHandler("onClientRender", root, window)
    windows.main = true
    loading = false
    showCursor(true)
  end
end)
addEventHandler("onClientColShapeLeave", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if isPedInVehicle(_ARG_0_) then
    return
  end
  removeEventHandler("onClientRender", root, window)
  windows.main = false
  loading = false
  showCursor(false)
end)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(windowPos.x + math.floor(425 / zoom), windowPos.y + math.floor(41 / zoom), math.floor(25 / zoom), math.floor(25 / zoom)) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      loading = false
      showCursor(false)
    elseif isMouseIn(buttonsPos.x, buttonsPos.y, buttonsPos.w, buttonsPos.h) and windows.main == true then
      if loading then
        return
      end
      if getElementData(localPlayer, "player:faction") == "SAPD" then
        loading = true
        triggerServerEvent("ev", resourceRoot, "animations", localPlayer, true)
        time = 10
        tick = getTickCount()
      else
        if not getElementData(localPlayer, "player:organization") then
          return
        end
        if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
          if data.dojrzale <= 99 then
            exports.st_gui:showPlayerNotification("Ten krzak nie jest wystarczaj\196\133co dojrza\197\130y.", "error")
            return
          end
          loading = true
          triggerServerEvent("ev", resourceRoot, "animations", localPlayer, true)
          time = 10
          tick = getTickCount()
        else
          exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
        end
      end
    end
  end
end)
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
  end
end
getResourceName(getThisResource(), true, 980696166)
return
