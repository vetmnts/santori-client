screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 600 / zoom / 2,
  y = screenH / 2 - 300 / zoom / 2,
  w = 600 / zoom,
  h = 300 / zoom
}
windows = {main = false}
function window()
  if windows.main == true then
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(windowPos.x + 15 / zoom, windowPos.y + 48 / zoom, windowPos.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("KRZACZEK MARIHUANY - [" .. getElementData(colShape, "weed:data").uid .. "] " .. getElementData(colShape, "weed:data").nick, windowPos.x + 20 / zoom, windowPos.y - 145 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
    dxDrawText("KRZACZEK uro\197\155nie za: " .. secondsToClock(timeNext), windowPos.x + 20 / zoom, windowPos.y - 55 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    dxDrawText("" .. getElementData(colShape, "weed:data").organization .. "", windowPos.x + 240 / zoom, windowPos.y - 55 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(getElementData(colShape, "weed:data").rgb[1], getElementData(colShape, "weed:data").rgb[2], getElementData(colShape, "weed:data").rgb[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawText("WYSOKO\197\154\196\134", windowPos.x + 240 / zoom, windowPos.y + 15 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. ("%.2f"):format(getElementData(colShape, "weed:data").wielkosc) .. "m", windowPos.x + 240 / zoom, windowPos.y + 70 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    dxDrawCircle(windowPos.x + 100 / zoom, windowPos.y + 160 / zoom, 55 / zoom, 0, 360, tocolor(60, 60, 60, 255))
    dxDrawCircle(windowPos.x + 100 / zoom, windowPos.y + 160 / zoom, 55 / zoom, 270, 270 + getElementData(colShape, "weed:data").dojrzale * 3.6, tocolor(0, 255, 0, 255))
    dxDrawCircle(windowPos.x + 100 / zoom, windowPos.y + 160 / zoom, 45 / zoom, 0, 360, tocolor(35, 35, 35, 255))
    dxDrawText("" .. getElementData(colShape, "weed:data").dojrzale .. "%", windowPos.x - 162 / zoom, windowPos.y + 120 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("ZBIERZ", windowPos.x + 40 / zoom, windowPos.y + 230 / zoom, 120 / zoom, 50 / zoom, 255, 1)
    dxDrawCircle(windowPos.x + windowPos.w - 100 / zoom, windowPos.y + 160 / zoom, 55 / zoom, 0, 360, tocolor(60, 60, 60, 255))
    dxDrawCircle(windowPos.x + windowPos.w - 100 / zoom, windowPos.y + 160 / zoom, 55 / zoom, 270, 270 + getElementData(colShape, "weed:data").water * 3.6, tocolor(3, 111, 252, 255))
    dxDrawCircle(windowPos.x + windowPos.w - 100 / zoom, windowPos.y + 160 / zoom, 45 / zoom, 0, 360, tocolor(35, 35, 35, 255))
    dxDrawText("" .. getElementData(colShape, "weed:data").water .. "%", windowPos.x + 639 / zoom, windowPos.y + 119 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("NAWODNIJ", windowPos.x + 440 / zoom, windowPos.y + 230 / zoom, 120 / zoom, 50 / zoom, 255, 1)
    dxDrawImage(windowPos.x + windowPos.w - 45 / zoom, windowPos.y + 16 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(windowPos.x + windowPos.w - 350 / zoom, windowPos.y + 150 / zoom, 100 / zoom, 100 / zoom, textures.weed_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. getElementData(colShape, "weed:data").type .. "", windowPos.x + 240 / zoom, windowPos.y + 350 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(windowPos.x + windowPos.w - 45 / zoom, windowPos.y + 16 / zoom, 25 / zoom, 25 / zoom) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 40 / zoom, windowPos.y + 230 / zoom, 120 / zoom, 50 / zoom) and windows.main == true then
      if loading then
        return
      end
      posXX = 10
      if getElementData(localPlayer, "player:faction") == "SAPD" or getElementData(localPlayer, "player:level") then
        if getElementData(colShape, "weed:data").uid == getElementData(localPlayer, "player:sid") and getElementData(colShape, "weed:data").dojrzale <= 99 then
          exports.st_gui:showPlayerNotification("Ten krzak nie jest wystarczaj\196\133co dojrza\197\130y.", "error")
          return
        end
        loading = getElementData(colShape, "weed:data").id
        triggerServerEvent("ev", resourceRoot, "animations", localPlayer, true)
        removeEventHandler("onClientRender", root, window)
        windows.main = false
        showCursor(false)
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
      else
        if not getElementData(localPlayer, "player:organization") then
          return
        end
        if getElementData(colShape, "weed:data").uid == getElementData(localPlayer, "player:sid") then
          if getElementData(localPlayer, "org:przestepcza") or getElementData(localPlayer, "org:group") then
            if getElementData(colShape, "weed:data").dojrzale <= 99 then
              exports.st_gui:showPlayerNotification("Ten krzak nie jest wystarczaj\196\133co dojrza\197\130y.", "error")
              return
            end
            loading = getElementData(colShape, "weed:data").id
            triggerServerEvent("ev", resourceRoot, "animations", localPlayer, true)
            removeEventHandler("onClientRender", root, window)
            windows.main = false
            showCursor(false)
            for _FORV_6_, _FORV_7_ in pairs(textures) do
              if isElement(_FORV_7_) then
                destroyElement(_FORV_7_)
              end
            end
            textures = {}
          else
            exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji lub grupie przestepczej.", "error")
          end
        else
          exports.st_gui:showPlayerNotification("Konopie nie nale\197\188\196\133 do ciebie", "info")
        end
      end
    elseif isMouseIn(windowPos.x + 440 / zoom, windowPos.y + 230 / zoom, 120 / zoom, 50 / zoom) and windows.main == true then
      if data.organization == getElementData(localPlayer, "player:organization") then
        if getElementData(colShape, "weed:data").water >= 100 then
          exports.st_gui:showPlayerNotification("Ten krzak jest w zupe\197\130no\197\155ci nawodniony.", "error")
          return
        end
        triggerServerEvent("ev", resourceRoot, "water", localPlayer, getElementData(colShape, "weed:data").id, {
          getElementData(colShape, "weed:data").dojrzale,
          getElementData(colShape, "weed:data").wielkosc,
          getElementData(colShape, "weed:data").type,
          getElementData(colShape, "weed:data").organization,
          getElementData(colShape, "weed:data").uid,
          getElementData(colShape, "weed:data").nick,
          getElementData(colShape, "weed:data").rgb,
          getElementData(colShape, "weed:data").water
        })
      else
        exports.st_gui:showPlayerNotification("Konopie nie nale\197\188\196\133 do twojej organizacji", "info")
      end
    end
  end
end)
addEventHandler("onClientMarkerHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if isPedInVehicle(_ARG_0_) then
    return
  end
  if getElementData(source, "weed:data") then
    data = getElementData(source, "weed:data")
    colShape = source
    if windows.main == true then
      return
    end
    if not getElementData(_ARG_0_, "player:organization") then
      return
    end
    if countPlayersInMarker(colShape) > 1 then
      exports.st_gui:showPlayerNotification("Jaki\197\155 gracz zbiera ju\197\188 topy.", "info")
      return
    end
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      weed_icon = dxCreateTexture(":ST_invetory/img/weed_icon.png")
    }
    addEventHandler("onClientRender", root, window)
    windows.main = true
    loading = false
    showCursor(true)
    triggerServerEvent("ev", resourceRoot, "checkTime", localPlayer)
  end
end)
addEventHandler("onClientMarkerLeave", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if isPedInVehicle(_ARG_0_) then
    return
  end
  if getElementData(source, "weed:data") then
    removeEventHandler("onClientRender", root, window)
    windows.main = false
    loading = false
    showCursor(false)
    for _FORV_5_, _FORV_6_ in pairs(textures) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    textures = {}
  end
end)
addEventHandler("onClientColShapeHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ ~= localPlayer or not _ARG_1_ then
    return
  end
  if isPedInVehicle(_ARG_0_) then
    return
  end
  if isEventHandlerAdded("onClientRender", root, renderGuiWeed) then
    return
  end
  addEventHandler("onClientRender", root, renderGuiWeed)
  texturesRender = {
    weed_icon = dxCreateTexture(":ST_invetory/img/weed_icon.png")
  }
end)
function countPlayersInMarker(_ARG_0_)
  for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("player")) do
    if getDistanceBetweenPoints3D(getElementPosition(_ARG_0_)) <= 1 then
    end
  end
  return 0 + 1
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "blockWeedClient" then
    weed_table = {}
    weed_table = _ARG_1_
    if getElementData(localPlayer, "org:przestepcza") then
      limitWeed_user = 8
    else
      limitWeed_user = 5
    end
    for _FORV_13_, _FORV_14_ in ipairs(_ARG_3_) do
      if _FORV_14_.ulepszenie_limitkonopii == 1 then
        limitWeed_user = limitWeed_user + 3
      end
    end
    object = {}
    for _FORV_13_, _FORV_14_ in ipairs(getElementsByType("object")) do
      if getElementModel(_FORV_14_) == 325 and getElementDimension(_FORV_14_) == getElementDimension(localPlayer) and getElementInterior(_FORV_14_) == getElementInterior(localPlayer) and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 2 then
        table.insert(object, {
          _FORV_14_,
          (getDistanceBetweenPoints3D(getElementPosition(localPlayer)))
        })
      end
    end
    if 1 <= #object then
      exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj nic posadzi\196\135", "error")
      triggerServerEvent("ev", resourceRoot, "zwrocDoEQ", localPlayer, _ARG_2_)
      return
    end
    for _FORV_13_, _FORV_14_ in ipairs(weed_table) do
      if _FORV_14_.uid == getElementData(localPlayer, "player:sid") and 0 + 1 >= limitWeed_user then
        exports.st_gui:showPlayerNotification("Mo\197\188esz posadzi\196\135 maksymalnie " .. limitWeed_user .. " krzak\195\179w", "error")
        return
      end
      if _FORV_14_.organization == getElementData(localPlayer, "player:organization") and 100 <= 0 + 1 then
        exports.st_gui:showPlayerNotification("W organizacji mo\197\188e by\196\135 maksymalnie " .. 100 .. " krzak\195\179w", "error")
        return
      end
    end
    triggerServerEvent("ev", resourceRoot, "blockWeed", localPlayer, _ARG_2_)
  elseif _ARG_0_ == "checkTimeClient" then
    timeNext = _ARG_1_ / 1000
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
function renderGuiWeed()
  object = {}
  for _FORV_3_, _FORV_4_ in ipairs(getElementsByType("marker")) do
    if getElementData(_FORV_4_, "weed:data") and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 5 then
      table.insert(object, _FORV_4_)
    end
  end
  for _FORV_3_, _FORV_4_ in ipairs(object) do
    if getElementData(_FORV_4_, "weed:data") and getScreenFromWorldPosition(getElementPosition(_FORV_4_)) and getScreenFromWorldPosition(getElementPosition(_FORV_4_)) and getElementDimension(_FORV_4_) == getElementDimension(localPlayer) and getElementInterior(_FORV_4_) == getElementInterior(localPlayer) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 96 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 19 / zoom, 192 / zoom, 77 / zoom, 10 / zoom, tocolor(getElementData(_FORV_4_, "weed:data").rgb[1], getElementData(_FORV_4_, "weed:data").rgb[2], getElementData(_FORV_4_, "weed:data").rgb[3], 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 95 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 20 / zoom, 190 / zoom, 75 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      if getElementData(_FORV_4_, "weed:data").id == loading then
        posXX = posXX + 0.07
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 80 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 60 / zoom, 165 / zoom, 15 / zoom, 5 / zoom, tocolor(35, 35, 35, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 80 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 60 / zoom, posXX / zoom, 15 / zoom, 5 / zoom, tocolor(getElementData(_FORV_4_, "weed:data").rgb[1], getElementData(_FORV_4_, "weed:data").rgb[2], getElementData(_FORV_4_, "weed:data").rgb[3], 255))
        dxDrawText("Trwa zbieranie..", getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 1 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 80 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
        if posXX >= 165 then
          loading = false
          if getElementData(localPlayer, "player:faction") == "SAPD" or getElementData(localPlayer, "player:level") then
            if getElementData(colShape, "weed:data").uid == getElementData(localPlayer, "player:sid") then
              triggerServerEvent("ev", resourceRoot, "animations", localPlayer, false, getElementData(colShape, "weed:data").id, math.random(3, 6), getElementData(colShape, "weed:data").type, getElementData(colShape, "weed:data").uid, getElementData(colShape, "weed:data").organization)
            else
              triggerServerEvent("ev", resourceRoot, "destroyWeed", localPlayer, false, getElementData(colShape, "weed:data").id, math.random(3, 6), getElementData(colShape, "weed:data").type, getElementData(colShape, "weed:data").uid, getElementData(colShape, "weed:data").organization)
            end
          else
            triggerServerEvent("ev", resourceRoot, "animations", localPlayer, false, getElementData(colShape, "weed:data").id, math.random(3, 6), getElementData(colShape, "weed:data").type, getElementData(colShape, "weed:data").uid, getElementData(colShape, "weed:data").organization)
          end
        end
      else
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 23 / zoom, 0, 360, tocolor(60, 60, 60, 255))
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 23 / zoom, 270, 270 + getElementData(_FORV_4_, "weed:data").dojrzale * 3.6, tocolor(0, 255, 0, 255))
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 21 / zoom, 0, 360, tocolor(30, 30, 30, 255))
        dxDrawText(getElementData(_FORV_4_, "weed:data").dojrzale .. "%", getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 120 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 135 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 23 / zoom, 0, 360, tocolor(60, 60, 60, 255))
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 23 / zoom, 270, 270 + getElementData(_FORV_4_, "weed:data").water * 3.6, tocolor(3, 111, 252, 255))
        dxDrawCircle(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, 21 / zoom, 0, 360, tocolor(30, 30, 30, 255))
        dxDrawText(getElementData(_FORV_4_, "weed:data").water .. "%", getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 120 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 135 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
        dxDrawImage(getScreenFromWorldPosition(getElementPosition(_FORV_4_)) - 18 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 37 / zoom, 35 / zoom, 35 / zoom, texturesRender.weed_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(getElementData(_FORV_4_, "weed:data").type, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 1 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 167 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
        dxDrawText(getElementData(_FORV_4_, "weed:data").organization .. " #ffffff[#ffbf00" .. getElementData(_FORV_4_, "weed:data").id .. "#ffffff]", getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 1 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)) + 65 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_)))
      end
    end
  end
  if #object == 0 then
    removeEventHandler("onClientRender", root, renderGuiWeed)
    for _FORV_3_, _FORV_4_ in pairs(texturesRender) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    texturesRender = {}
  end
end
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
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "#ffae001 #ffffffminut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffae00" .. mins .. " #ffffffminut"
  end
end
function weedReload(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_)
  if isEventHandlerAdded("onClientRender", root, window) then
    exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
    return
  end
  triggerServerEvent("ev", resourceRoot, "reloadWeed", localPlayer, {
    v.id,
    v.pos,
    v.interior,
    v.dimension,
    v.type,
    v.wielkosc,
    v.dojrzale,
    v.uid,
    v.organization,
    v.color,
    v.water,
    v.nick
  })
end
getResourceName(getThisResource(), true, 5352322)
return
