screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = math.floor(screenW / 2 - 1000 / zoom / 2),
  y = math.floor(screenH / 2 - 250 / zoom / 2),
  w = math.floor(1000 / zoom),
  h = math.floor(250 / zoom)
}
windows = {main = false}
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(windowPos.x + 100 / zoom, windowPos.y, windowPos.w - 200 / zoom, windowPos.h, 25 / zoom, tocolor(35, 35, 35, 250))
    dxDrawRoundedRectangle(windowPos.x + 110 / zoom, windowPos.y + 40 / zoom, 780 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("WY\197\154LIJ ZG\197\129OSZENIE DO WYBRANEJ FRAKCJI", windowPos.x + 120 / zoom, windowPos.y - 155 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    playerFactionSapd = {}
    playerFactionSafd = {}
    playerFactionSamc = {}
    for _FORV_7_, _FORV_8_ in ipairs(getElementsByType("player")) do
      if getElementData(_FORV_8_, "player:faction") == "SAPD" then
        table.insert(playerFactionSapd, _FORV_8_)
      end
      if getElementData(_FORV_8_, "player:factionMedic") then
        table.insert(playerFactionSamc, _FORV_8_)
      end
      if getElementData(_FORV_8_, "player:faction") == "SAFD" then
        table.insert(playerFactionSafd, _FORV_8_)
      end
    end
    dxDrawText("#ff9d00" .. #playerFactionSafd + #playerFactionSapd .. " #ffffffAKTYWNYCH", windowPos.x, windowPos.y - 155 / zoom, windowPos.x + math.floor(362 / zoom) + 520 / zoom, windowPos.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
    faction = {
      {
        "#c90d00SAFD",
        textures.fireFighter,
        playerFactionSafd,
        "SAFD"
      },
      {
        "#00ffeeSAMC",
        textures.medic,
        playerFactionSamc,
        "SAMC"
      },
      {
        "#0015b8SAPD",
        textures.police,
        playerFactionSapd,
        "SAPD"
      }
    }
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(faction) do
      xY = xY + 1
      if isMouseIn(windowPos.x + 290 / zoom * (xY - 1) + 107 / zoom, windowPos.y + 108 / zoom, 204 / zoom, 124 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 290 / zoom * (xY - 1) + 107 / zoom, windowPos.y + 108 / zoom, 204 / zoom, 124 / zoom, 25 / zoom, tocolor(30, 30, 30, 250))
        dxDrawRoundedRectangle(windowPos.x + 290 / zoom * (xY - 1) + 115 / zoom, windowPos.y + 115 / zoom, 59 / zoom, 109 / zoom, 25 / zoom, tocolor(25, 25, 25, 250))
        if _FORV_8_[1] == "#0015b8SAPD" or _FORV_8_[1] == "#00ffeeSAMC" then
          yXD = 5 / zoom
        else
          yXD = 0
        end
        dxDrawImage(windowPos.x + 109 / zoom + 290 / zoom * (xY - 1) - yXD, windowPos.y + 129 / zoom, 82 / zoom, 82 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1] .. " - " .. #_FORV_8_[3], windowPos.x + 95 / zoom + 580 / zoom * (xY - 1), windowPos.y + 70 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "center", "center", false, false, false, true, false)
        dxDrawText("WY\197\154LIJ", windowPos.x + 95 + 580 / zoom * (xY - 1), windowPos.y + 200 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(50, 255, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 290 / zoom * (xY - 1) + 110 / zoom, windowPos.y + 110 / zoom, 200 / zoom, 120 / zoom, 25 / zoom, tocolor(30, 30, 30, 250))
        dxDrawRoundedRectangle(windowPos.x + 290 / zoom * (xY - 1) + 117 / zoom, windowPos.y + 117 / zoom, 55 / zoom, 105 / zoom, 25 / zoom, tocolor(25, 25, 25, 250))
        if _FORV_8_[1] == "#0015b8SAPD" or _FORV_8_[1] == "#00ffeeSAMC" then
          yXD = 5 / zoom
        else
          yXD = 0
        end
        dxDrawImage(windowPos.x + 110 / zoom + 290 / zoom * (xY - 1) - yXD, windowPos.y + 130 / zoom, 80 / zoom, 80 / zoom, _FORV_8_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_[1] .. " - " .. #_FORV_8_[3], windowPos.x + 95 + 580 / zoom * (xY - 1), windowPos.y + 70 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        dxDrawText("WY\197\154LIJ", windowPos.x + 95 + 580 / zoom * (xY - 1), windowPos.y + 200 / zoom, windowPos.x + math.floor(362 / zoom), windowPos.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
      end
    end
  end
end
bindKey("F5", "down", function()
  if windows.main == false then
    if not getElementData(localPlayer, "player:sid") then
      return
    end
    showCursor(true)
    addEventHandler("onClientRender", root, window)
    exports.ST_gui:createCustomEditbox("faction:zawiadomienia:edit", "Tre\197\155\196\135 zawiadomienia...", windowPos.x + 110, windowPos.y + 50 / zoom, windowPos.w - 220, 50 / zoom, false, "", "", 1)
    windows.main = true
    textures = {
      fireFighter = dxCreateTexture(":ST_scoreboard/img/fireFighter.png"),
      police = dxCreateTexture(":ST_scoreboard/img/police.png"),
      medic = dxCreateTexture("medic.png")
    }
  else
    removeEventHandler("onClientRender", root, window)
    exports.ST_gui:destroyCustomEditbox("faction:zawiadomienia:edit")
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
  end
end)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.main == true then
    for _FORV_6_, _FORV_7_ in ipairs(faction) do
      if isMouseIn(windowPos.x + 290 / zoom * (0 + 1 - 1) + 107 / zoom, windowPos.y + 108 / zoom, 204 / zoom, 124 / zoom) and windows.main == true then
        if timerSend then
          exports.st_gui:showPlayerNotification("Przed wys\197\130aniem nast\196\153pnego zg\197\130oszenia musisz odczeka\196\135 1 minut\196\153", "error")
          return
        end
        if _FORV_7_[4] == "SAFD" then
          if #playerFactionSafd == 0 then
            exports.st_gui:showPlayerNotification("Brak aktywnych cz\197\130onk\195\179w", "error")
            return
          end
        elseif _FORV_7_[4] == "SAPD" then
          if #playerFactionSapd == 0 then
            exports.st_gui:showPlayerNotification("Brak aktywnych cz\197\130onk\195\179w", "error")
            return
          end
        elseif _FORV_7_[4] == "SAMC" and #playerFactionSafd == 0 then
          exports.st_gui:showPlayerNotification("Brak aktywnych cz\197\130onk\195\179w", "error")
          return
        end
        if exports.ST_gui:getCustomEditboxText("faction:zawiadomienia:edit"):len() < 5 then
          exports.st_gui:showPlayerNotification("Wpisz tre\197\155\196\135 zg\197\130oszenia", "error")
          return
        end
        triggerServerEvent("ev1", resourceRoot, "send", localPlayer, _FORV_7_[4], exports.ST_gui:getCustomEditboxText("faction:zawiadomienia:edit"), getZoneName(getElementPosition(localPlayer)), getZoneName(getElementPosition(localPlayer)), getElementPosition(localPlayer))
        timerSend = true
        setTimer(function()
          timerSend = false
        end, 60000, 1)
        removeEventHandler("onClientRender", root, window)
        exports.ST_gui:destroyCustomEditbox("faction:zawiadomienia:edit")
        showCursor(false)
        windows.main = false
        for _FORV_19_, _FORV_20_ in pairs(textures) do
          if isElement(_FORV_20_) then
            destroyElement(_FORV_20_)
          end
        end
        textures = {}
      end
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
getResourceName(getThisResource(), true, 618847367)
return
