vehicle3D = {}
myObject = {}
for _FORV_18_, _FORV_19_ in pairs({
  {
    1348.2,
    1323.4,
    10.82,
    1319.27,
    1252.75,
    10.82
  }
}) do
  setElementPosition(createElement("text"), _FORV_19_[1], _FORV_19_[2], _FORV_19_[3])
  setElementData(createElement("text"), "name", "Gie\197\130da pojazd\195\179w lotniczych")
  addEventHandler("onClientMarkerHit", createMarker(_FORV_19_[1], _FORV_19_[2], _FORV_19_[3] - 0.95, "cylinder", 4, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ and isPedInVehicle(localPlayer) and getPedOccupiedVehicleSeat(localPlayer) == 0 and (getVehicleType(getPedOccupiedVehicle(localPlayer)) == "Plane" or getVehicleType(getPedOccupiedVehicle(localPlayer)) == "Helicopter") then
      if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        return
      end
      if getElementData(localPlayer, "player:sid") ~= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:ownedPlayer") then
        exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      windows.category = "wystawianie"
      showCursor(true)
      exports.ST_gui:createCustomEditbox("exchangeAmount", "Wpisz cene pojazdu...", _UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, _UPVALUE0_.w - 300 / _UPVALUE1_, _UPVALUE0_.h, false, "", "", 1, 120)
      exports.ST_gui:createCustomEditbox("exchangeDescription", "Kr\195\179tki opis pojazdu...", _UPVALUE0_.x, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w, _UPVALUE0_.h, false, "", "", 1)
    end
  end)
  addEventHandler("onClientMarkerLeave", createMarker(_FORV_19_[1], _FORV_19_[2], _FORV_19_[3] - 0.95, "cylinder", 4, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if localPlayer == _ARG_0_ then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      exports.ST_gui:destroyCustomEditbox("exchangeDescription")
      _UPVALUE0_ = nil
      _UPVALUE1_ = nil
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end)
  createBlip(_FORV_19_[4], _FORV_19_[5], _FORV_19_[6], 43, 0, 0, 0, 0, 0, 0, 250)
  setElementPosition(createElement("text"), _FORV_19_[4], _FORV_19_[5], _FORV_19_[6])
  setElementData(createElement("text"), "name", "Gie\197\130da pojazd\195\179w lotniczych")
  addEventHandler("onClientMarkerHit", createMarker(_FORV_19_[4], _FORV_19_[5], _FORV_19_[6] - 0.95, "cylinder", 2, 251, 255, 0, 75), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ and _UPVALUE0_[1] then
      idExchange = _UPVALUE0_[1]
      triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "showListVehicles", localPlayer, _UPVALUE0_[1])
    end
  end)
end
windows = {
  category = false,
  list_car = false,
  select_car = false
}
function window()
  if getElementData(localPlayer, "player_Trade") then
    _UPVALUE0_ = {}
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.category = false
    showCursor(false)
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    _UPVALUE0_ = {}
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.category = false
    showCursor(false)
    return
  end
  if windows.category == "wystawianie" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText("Gie\197\130da", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawText("WPISZ CEN\196\152, ZA KT\195\147R\196\132 CHCESZ WYSTAWI\196\134 POJAZD", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 30 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE3_.x + 199 / _UPVALUE2_, _UPVALUE3_.y - 21 / _UPVALUE2_, _UPVALUE3_.w - 398 / _UPVALUE2_, _UPVALUE3_.h + 62 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 143, 19, 255))
    dxDrawRoundedRectangle(_UPVALUE3_.x + 200 / _UPVALUE2_, _UPVALUE3_.y - 20 / _UPVALUE2_, _UPVALUE3_.w - 400 / _UPVALUE2_, _UPVALUE3_.h + 60 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
    dxDrawText("TWOJA OFERTA", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 180 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    if tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) then
      dxDrawText("#00ad23" .. przecinek((tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))))) .. " #ffffffPLN", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 280 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("-", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 280 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("WYSTAW", _UPVALUE4_.x + 190 / _UPVALUE2_, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE3_.x + 149 / _UPVALUE2_, _UPVALUE3_.y + 119 / _UPVALUE2_, _UPVALUE3_.w - 298 / _UPVALUE2_, _UPVALUE3_.h + 2 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 143, 19, 230))
    dxDrawRoundedRectangle(_UPVALUE3_.x + 150 / _UPVALUE2_, _UPVALUE3_.y + 120 / _UPVALUE2_, _UPVALUE3_.w - 300 / _UPVALUE2_, _UPVALUE3_.h, 15 / _UPVALUE2_, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(_UPVALUE3_.x - 1 / _UPVALUE2_, _UPVALUE3_.y + 199 / _UPVALUE2_, _UPVALUE3_.w + 2 / _UPVALUE2_, _UPVALUE3_.h + 2 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE3_.x, _UPVALUE3_.y + 200 / _UPVALUE2_, _UPVALUE3_.w, _UPVALUE3_.h, 15 / _UPVALUE2_, tocolor(25, 25, 25, 255))
    if isMouseIn(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawText("PO WYSTAWIENIU POJAZDU MO\197\187NA NADAL Z NIEGO KORZYSTA\196\134", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 725 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  if windows.category == "informacje" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 823 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 255))
    dxDrawText(exports.ST_core:changeNameClient((getVehicleNameFromModel(_UPVALUE0_.infoVehicle.model))) .. " (#FF8300" .. _UPVALUE0_.infoVehicle.id .. "#ffffff)", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawText("Informacje o poje\197\186dzie:", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 21 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light19"), "left", "center", false, false, false, false, false)
    dxDrawText("Tuning:", _UPVALUE1_.x + 447 / _UPVALUE2_, _UPVALUE1_.y - 21 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light19"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 19 / _UPVALUE2_, _UPVALUE1_.y + 114 / _UPVALUE2_, 407 / _UPVALUE2_, 307 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 120))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 115 / _UPVALUE2_, 405 / _UPVALUE2_, 305 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 255))
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehiclesStandard) do
      xY = xY + 1
      dxDrawText(_FORV_9_[1] .. "  " .. _FORV_9_[2], _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 36 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 439 / _UPVALUE2_, _UPVALUE1_.y + 114 / _UPVALUE2_, 422 / _UPVALUE2_, 307 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 120))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 440 / _UPVALUE2_, _UPVALUE1_.y + 115 / _UPVALUE2_, 420 / _UPVALUE2_, 305 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 615 / _UPVALUE2_, _UPVALUE1_.y + 130 / _UPVALUE2_, 2 / _UPVALUE2_, 280 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(27, 27, 27, 255))
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehicles1) do
      xY = xY + 1
      if _FORV_9_[3] then
        if _FORV_9_[1] == "LPG" then
          if _FORV_9_[2] == "Tak" then
            v2Name = "#039118tak"
          else
            v2Name = "#8c0000nie"
          end
        elseif _FORV_9_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_9_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_9_[2]
      end
      dxDrawText(_FORV_9_[1], _UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 26 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, _UPVALUE1_.x, _UPVALUE1_.y + 125 / _UPVALUE2_ + 26 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 240 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
    end
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehicles2) do
      xY = xY + 1
      if _FORV_9_[3] then
        if _FORV_9_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_9_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_9_[2]
      end
      dxDrawText(_FORV_9_[1], _UPVALUE1_.x + 630 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 24 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, _UPVALUE1_.x, _UPVALUE1_.y + 125 / _UPVALUE2_ + 24 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 490 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
    end
    dxDrawText("INFO OD W\197\129A\197\154CICIELA: #ffbb00" .. _UPVALUE0_.infoVehicle.description .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    if getElementData(localPlayer, "player:sid") == _UPVALUE0_.infoVehicle.uid_owner then
      exports.ST_buttons:dxCreateButton("ZABIERZ", _UPVALUE4_.x + 190 / _UPVALUE2_, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, 255, 1)
    else
      exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE4_.x + 190 / _UPVALUE2_, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, 255, 1)
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 96 / _UPVALUE2_, _UPVALUE1_.y + 22 / _UPVALUE2_, 31 / _UPVALUE2_, 31 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 96 / _UPVALUE2_, _UPVALUE1_.y + 22 / _UPVALUE2_, 31 / _UPVALUE2_, 31 / _UPVALUE2_, textures.back_arrow_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 95 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 29 / _UPVALUE2_, 29 / _UPVALUE2_, textures.back_arrow_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "potwierdzenie" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText(exports.ST_core:changeNameClient((getVehicleNameFromModel(_UPVALUE0_.infoVehicle.model))) .. " (#FF8300" .. _UPVALUE0_.infoVehicle.id .. "#ffffff)", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawText("CENA POJAZDU: #00ad23" .. przecinek(_UPVALUE0_.infoVehicle.cost) .. " #ffffffPLN", _UPVALUE1_.x, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 485 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
    dxDrawText("Wybierz form\196\153 p\197\130atno\197\155ci", _UPVALUE1_.x + 500 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light25"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x + 199 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_) then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 199 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(255, 187, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 199 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 200 / _UPVALUE2_, _UPVALUE1_.y + 190 / _UPVALUE2_, 200 / _UPVALUE2_, 200 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
    dxDrawText("GOT\195\147WKA", _UPVALUE1_.x + 238 / _UPVALUE2_, _UPVALUE1_.y + 230 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE1_.x + 260 / _UPVALUE2_, _UPVALUE1_.y + 248 / _UPVALUE2_, 80 / _UPVALUE2_, 80 / _UPVALUE2_, textures.wallet_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("#00ad23" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " #ffffffPLN", _UPVALUE1_.x + 238 / _UPVALUE2_, _UPVALUE1_.y + 520 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x + 449 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_) then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 449 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(255, 187, 0, 255))
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 449 / _UPVALUE2_, _UPVALUE1_.y + 189 / _UPVALUE2_, 202 / _UPVALUE2_, 202 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 190 / _UPVALUE2_, 200 / _UPVALUE2_, 200 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
    dxDrawText("BANK", _UPVALUE1_.x + 739 / _UPVALUE2_, _UPVALUE1_.y + 230 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE1_.x + 510 / _UPVALUE2_, _UPVALUE1_.y + 250 / _UPVALUE2_, 80 / _UPVALUE2_, 80 / _UPVALUE2_, textures.atm_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_8_, _FORV_9_ in ipairs(infoAMT) do
      dxDrawText("#00ad23" .. przecinek(_FORV_9_.bank_money .. " #ffffffPLN"), _UPVALUE1_.x + 739 / _UPVALUE2_, _UPVALUE1_.y + 520 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE4_.x + 190 / _UPVALUE2_, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, 255, 1)
  end
  if windows.category == "lista pojazd\195\179w" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText("GIE\197\129DA POJAZD\195\147W LOTNICZYCH", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 125 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 60 / _UPVALUE2_, _UPVALUE1_.y + 25 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    for _FORV_9_ = 1, 12 do
      if 0 + 1 > 4 then
      end
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 240 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), 195 / _UPVALUE2_, 150 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(45, 45, 45, 90))
    end
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE5_) do
      if _FORV_9_ >= _UPVALUE6_ and _FORV_9_ <= _UPVALUE7_ then
        if 0 + 1 > 4 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 240 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), 195 / _UPVALUE2_, 150 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 240 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), 195 / _UPVALUE2_, 150 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(35, 35, 35, 255))
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 240 / _UPVALUE2_ + 160 / _UPVALUE2_ * (0 + 1 - 1), 195 / _UPVALUE2_, 150 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(40, 40, 40, 255))
        end
        dxDrawText(exports.ST_core:changeNameClient((getVehicleNameFromModel(_FORV_10_.model))), _UPVALUE1_.x + 40 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 320 / _UPVALUE2_ + 320 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(_FORV_10_.cost) .. " #ffffffPLN", _UPVALUE1_.x + 40 / _UPVALUE2_ + 205 / _UPVALUE2_ * (1 - 1), _UPVALUE1_.y + 370 / _UPVALUE2_ + 320 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawScrollBar(#_UPVALUE5_, _UPVALUE1_.x + 853 / _UPVALUE2_, _UPVALUE1_.y + 85 / _UPVALUE2_, 5 / _UPVALUE2_, 460 / _UPVALUE2_, _UPVALUE8_, _UPVALUE6_)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showListVehiclesClient" then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      wallet_icon = dxCreateTexture(":ST_exchange/img/wallet_icon.png"),
      atm_icon = dxCreateTexture(":ST_exchange/img/atm_icon.png"),
      back_arrow_icon = dxCreateTexture(":ST_dashboard/img/back_arrow.png")
    }
    infoAMT = {}
    _UPVALUE0_ = _ARG_1_
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    windows.category = "lista pojazd\195\179w"
    showCursor(true)
    updateVehiclePreviews()
  elseif _ARG_0_ == "showInfoAMTClient" then
    infoAMT = _ARG_1_
  end
end)
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "lista pojazd\195\179w" then
      for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE0_) do
        if 0 + 1 > 4 then
        end
        if _FORV_7_ >= _UPVALUE1_ and _FORV_7_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 30 / _UPVALUE3_ + 205 / _UPVALUE3_ * (1 - 1), _UPVALUE4_.y + 240 / _UPVALUE3_ + 160 / _UPVALUE3_ * (0 + 1 - 1), 195 / _UPVALUE3_, 150 / _UPVALUE3_) then
          _UPVALUE5_.infoVehicle = _FORV_8_
          if vehicle3D then
            for _FORV_16_, _FORV_17_ in pairs(vehicle3D) do
              destroyElement(_FORV_17_)
              destroyElement(myObject[_FORV_16_])
            end
          end
          loadInfoVehicle(_FORV_8_)
          windows.category = "informacje"
          removeEventHandler("onClientKey", root, key)
        end
      end
    end
    if isMouseIn(_UPVALUE4_.x + 825 / _UPVALUE3_, _UPVALUE4_.y + 27 / _UPVALUE3_, 20 / _UPVALUE3_, 20 / _UPVALUE3_) and windows.category == "wystawianie" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      _UPVALUE6_ = nil
      _UPVALUE7_ = nil
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      exports.ST_gui:destroyCustomEditbox("exchangeDescription")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE8_.x + 190 / _UPVALUE3_, _UPVALUE8_.y, _UPVALUE8_.w, _UPVALUE8_.h) and windows.category == "wystawianie" then
      if getElementData(localPlayer, "player:sid") ~= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:ownedPlayer") then
        return
      end
      if not tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) then
        exports.st_gui:showPlayerNotification("Wpisz cen\196\153!", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("exchangeDescription"):len() > 70 then
        exports.st_gui:showPlayerNotification("Opis jest za d\197\130ugi", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) > 50000000 or tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) < 500000 then
        exports.st_gui:showPlayerNotification("Cena powinna wynosi\196\135 od 500,000 PLN do 50,000,000 PLN", "error")
        return
      end
      if getElementData(localPlayer, "eq_mask") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz mie\196\135 za\197\130o\197\188onej maski!", "error")
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      exports.ST_gui:destroyCustomEditbox("exchangeDescription")
      triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "addVehicle", localPlayer, getPedOccupiedVehicle(localPlayer), tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))), exports.ST_gui:getCustomEditboxText("exchangeDescription") or "Brak")
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE8_.x + 190 / _UPVALUE3_, _UPVALUE8_.y, _UPVALUE8_.w, _UPVALUE8_.h) and windows.category == "informacje" then
      if getElementData(localPlayer, "player:sid") == _UPVALUE5_.infoVehicle.uid_owner then
        triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "removeVehicle", localPlayer, _UPVALUE5_.infoVehicle.id)
        exports.st_gui:showPlayerNotification("Zabierasz pojazd.", "success")
        removeEventHandler("onClientRender", root, window)
        windows.category = false
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
      else
        if 150 < getPlayerPing(localPlayer) then
          exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
          return
        end
        windows.category = "potwierdzenie"
        triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "showInfoAMT", localPlayer)
      end
    elseif isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 96 / _UPVALUE3_, _UPVALUE4_.y + 22 / _UPVALUE3_, 31 / _UPVALUE3_, 31 / _UPVALUE3_) and windows.category == "informacje" then
      windows.category = "lista pojazd\195\179w"
      updateVehiclePreviews()
    elseif isMouseIn(_UPVALUE4_.x + 825 / _UPVALUE3_, _UPVALUE4_.y + 27 / _UPVALUE3_, 20 / _UPVALUE3_, 20 / _UPVALUE3_) and windows.category == "informacje" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE4_.x + 199 / _UPVALUE3_, _UPVALUE4_.y + 189 / _UPVALUE3_, 202 / _UPVALUE3_, 202 / _UPVALUE3_) and windows.category == "potwierdzenie" then
      if 150 < getPlayerPing(localPlayer) then
        exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") < tonumber(_UPVALUE5_.infoVehicle.cost) then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "buyVehicle", localPlayer, _UPVALUE5_.infoVehicle.id, _UPVALUE5_.infoVehicle.cost, _UPVALUE5_.infoVehicle.uid_owner, _UPVALUE5_.infoVehicle.name_owner, false, exports.ST_core:changeNameClient((getVehicleNameFromModel(_UPVALUE5_.infoVehicle.model))))
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE4_.x + 449 / _UPVALUE3_, _UPVALUE4_.y + 189 / _UPVALUE3_, 202 / _UPVALUE3_, 202 / _UPVALUE3_) and windows.category == "potwierdzenie" then
      if 150 < getPlayerPing(localPlayer) then
        exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(infoAMT) do
        if _FORV_7_.bank_money < tonumber(_UPVALUE5_.infoVehicle.cost) then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          return
        end
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      triggerServerEvent("evEwenciks_53jgsdfk", resourceRoot, "buyVehicle", localPlayer, _UPVALUE5_.infoVehicle.id, _UPVALUE5_.infoVehicle.cost, _UPVALUE5_.infoVehicle.uid_owner, _UPVALUE5_.infoVehicle.name_owner, true, exports.ST_core:changeNameClient((getVehicleNameFromModel(_UPVALUE5_.infoVehicle.model))))
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE8_.x + 190 / _UPVALUE3_, _UPVALUE8_.y, _UPVALUE8_.w, _UPVALUE8_.h) and windows.category == "potwierdzenie" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 61 / _UPVALUE3_, _UPVALUE4_.y + 22 / _UPVALUE3_, 32 / _UPVALUE3_, 32 / _UPVALUE3_) and windows.category == "lista pojazd\195\179w" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_) do
        if isElement(myObject[_FORV_5_]) then
          exports.ST_object_preview:destroyObjectPreview(myObject[_FORV_5_])
        end
        if isElement(vehicle3D[_FORV_5_]) then
          destroyElement(vehicle3D[_FORV_5_])
        end
      end
    end
  end
end
function loadInfoVehicle(_ARG_0_)
  if _ARG_0_.usy[9] == "Brak" then
  end
  if _ARG_0_.usy[20] ~= 0 then
    paintjobText = "#039118tak"
  else
    paintjobText = "#8c0000nie"
  end
  if _ARG_0_.usy[19] ~= 0 then
  end
  tableInfoVehicles1 = {
    {
      "US1",
      _ARG_0_.usy[1],
      true
    },
    {
      "US2",
      _ARG_0_.usy[2],
      true
    },
    {
      "US3",
      _ARG_0_.usy[3],
      true
    },
    {
      "US4",
      _ARG_0_.usy[4],
      true
    },
    {
      "CHIP",
      _ARG_0_.usy[6],
      true
    },
    {
      "TURBO",
      _ARG_0_.usy[5],
      true
    },
    {"PAINTJOB", paintjobText},
    {
      "LPG",
      _ARG_0_.usy[18],
      true
    },
    {
      "NEONY",
      _ARG_0_.usy[13],
      true
    },
    {
      "TAXOMETR",
      _ARG_0_.usy[23],
      true
    },
    {
      "REGULACJA MOCY",
      _ARG_0_.usy[24],
      true
    }
  }
  tableInfoVehicles2 = {
    {
      "LICZNIK DRIFTU",
      _ARG_0_.usy[15],
      true
    },
    {
      "ZMIENNE ZAWIESZENIE",
      _ARG_0_.usy[21],
      true
    },
    {
      "PRZYCIEMNIANE SZYBY",
      _ARG_0_.usy[8],
      true
    },
    {
      "PRZYCIEMNIANE LAMPY",
      _ARG_0_.usy[12],
      true
    },
    {
      "ZMIENNY NAP\196\152D",
      _ARG_0_.usy[7],
      true
    },
    {"NITRO", "#8c0000NIE"},
    {
      "REGULACJA TRAKCJI",
      _ARG_0_.usy[16],
      true
    },
    {
      "REGULACJA K\196\132TU SKR\196\152TU",
      _ARG_0_.usy[14],
      true
    },
    {
      "REGULACJA HAMULC\195\147W",
      _ARG_0_.usy[9],
      true
    },
    {
      "REGULACJA MASY",
      _ARG_0_.usy[17],
      true
    }
  }
  if _ARG_0_.engine[3] == "Elektryczny" then
  end
  if getPlayerFromName(_ARG_0_.name_owner) or getPlayerFromName("Nieznajomy#" .. _ARG_0_.uid_owner) then
    onlineInfo = "#ffffffw\197\130a\197\155ciciel jest #00d60eonline"
  else
    onlineInfo = "#949494w\197\130a\197\155ciciel jest #910000offline"
  end
  if tonumber(_ARG_0_.usy[25][1]) == 255 and tonumber(_ARG_0_.usy[25][2]) == 255 and tonumber(_ARG_0_.usy[25][3]) == 255 then
    lightPreview = "Zwyk\197\130e"
  else
    lightPreview = "" .. RGBToHex(tonumber(_ARG_0_.usy[25][1]), tonumber(_ARG_0_.usy[25][2]), (tonumber(_ARG_0_.usy[25][3]))) .. "\226\150\136\226\150\136\226\150\136#ffffff"
  end
  tableInfoVehiclesStandard = {
    {
      "Sprzedawca:",
      _ARG_0_.colorNick_owner .. "" .. _ARG_0_.name_owner .. " #ffffff(UID: " .. _ARG_0_.colorNick_owner .. "" .. _ARG_0_.uid_owner .. "#ffffff)"
    },
    {
      "  " .. onlineInfo,
      " "
    },
    {
      "Cena:",
      "#00ad23" .. przecinek(_ARG_0_.cost) .. " #ffffffPLN"
    },
    {
      "Silnik:",
      "#ffbb00" .. _ARG_0_.engine[1] .. " " .. _ARG_0_.engine[2] .. " " .. _ARG_0_.engine[3] .. ""
    },
    {
      ({"Bateria", "KwH"})[1] .. ":",
      "#ffbb00- #e6e6e6/ #ffbb00" .. _ARG_0_.usy[22] .. " #e6e6e6" .. ({"Bateria", "KwH"})[2]
    },
    {
      "Przebieg:",
      "#ffbb00" .. przecinek(math.floor(_ARG_0_.mileage)) .. " #ffffffKM"
    },
    {
      "LICZNIK:",
      "#ffbb00Customowy"
    },
    {
      "Kolor lamp:",
      lightPreview
    }
  }
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function RGBToHex(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 0 or 255 < _ARG_0_ or _ARG_1_ < 0 or 255 < _ARG_1_ or _ARG_2_ < 0 or 255 < _ARG_2_ or _ARG_3_ and (_ARG_3_ < 0 or 255 < _ARG_3_) then
    return nil
  end
  if _ARG_3_ then
    return string.format("#%.2X%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  else
    return string.format("#%.2X%.2X%.2X", _ARG_0_, _ARG_1_, _ARG_2_)
  end
end
function getVehicleHandlingProperty(_ARG_0_, _ARG_1_)
  if isElement(_ARG_0_) and getElementType(_ARG_0_) == "vehicle" and type(_ARG_1_) == "string" and getVehicleHandling(_ARG_0_)[_ARG_1_] then
    return getVehicleHandling(_ARG_0_)[_ARG_1_]
  end
  return false
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
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.category == "lista pojazd\195\179w" then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 4
      _UPVALUE0_ = _UPVALUE0_ - 4
      updateVehiclePreviews()
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windows.category == "lista pojazd\195\179w" then
    if _UPVALUE0_ >= #_UPVALUE3_ then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 4
    _UPVALUE0_ = _UPVALUE0_ + 4
    updateVehiclePreviews()
  end
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(20, 20, 20, 255))
  if math.ceil(_ARG_6_ / 4) == 1 then
  else
  end
  if _ARG_5_ < _ARG_0_ then
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_ + (_ARG_4_ - math.max(_ARG_4_ * (_ARG_5_ / _ARG_0_), 20 / _UPVALUE0_)) / (math.ceil((_ARG_0_ - _ARG_5_) / 4 + 1) - 1) * (math.ceil(_ARG_6_ / 4) - 1), _ARG_3_, math.max(_ARG_4_ * (_ARG_5_ / _ARG_0_), 20 / _UPVALUE0_), 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  end
end
function updateVehiclePreviews()
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if isElement(myObject[_FORV_4_]) then
      exports.ST_object_preview:destroyObjectPreview(myObject[_FORV_4_])
    end
    if isElement(vehicle3D[_FORV_4_]) then
      destroyElement(vehicle3D[_FORV_4_])
    end
  end
  vehicle3D = {}
  myObject = {}
  xX = 0
  xY = 0
  for _FORV_4_ = _UPVALUE1_, _UPVALUE2_ do
    if _UPVALUE0_[_FORV_4_] then
      xX = xX + 1
      if xX > 4 then
        xX = 1
        xY = xY + 1
      end
      vehicle3D[_FORV_4_] = createVehicle(_UPVALUE0_[_FORV_4_].model, 0, 0, 50)
      setVehicleColor(vehicle3D[_FORV_4_], 255, 255, 255, 255, 255, 255)
      myObject[_FORV_4_] = exports.ST_object_preview:createObjectPreview(vehicle3D[_FORV_4_], -5, 0, 140, _UPVALUE4_.x + ({
        [487] = {
          -30,
          225,
          300
        },
        [469] = {
          -80,
          225,
          400
        },
        [593] = {
          -40,
          220,
          300
        },
        [513] = {
          -40,
          210,
          300
        },
        [511] = {
          -61,
          210,
          335
        },
        [460] = {
          -30,
          205,
          300
        }
      })[_UPVALUE0_[_FORV_4_].model][1] / _UPVALUE3_ + 205 / _UPVALUE3_ * (xX - 1), _UPVALUE4_.y + ({
        [487] = {
          -30,
          225,
          300
        },
        [469] = {
          -80,
          225,
          400
        },
        [593] = {
          -40,
          220,
          300
        },
        [513] = {
          -40,
          210,
          300
        },
        [511] = {
          -61,
          210,
          335
        },
        [460] = {
          -30,
          205,
          300
        }
      })[_UPVALUE0_[_FORV_4_].model][2] / _UPVALUE3_ + 160 / _UPVALUE3_ * (xY - 1), ({
        [487] = {
          -30,
          225,
          300
        },
        [469] = {
          -80,
          225,
          400
        },
        [593] = {
          -40,
          220,
          300
        },
        [513] = {
          -40,
          210,
          300
        },
        [511] = {
          -61,
          210,
          335
        },
        [460] = {
          -30,
          205,
          300
        }
      })[_UPVALUE0_[_FORV_4_].model][3] / _UPVALUE3_, 250 / _UPVALUE3_, false, true)
    end
  end
end
getResourceName(getThisResource(), true, 7918067)
return
