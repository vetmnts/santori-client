for _FORV_23_, _FORV_24_ in pairs({
  {
    "Los Santos",
    1802.72,
    -2070.95,
    13.55,
    1000,
    1000000,
    1814.38,
    -2065.3,
    13.55,
    "normal"
  },
  {
    "Las Venturas",
    1736.73,
    1859.32,
    10.82,
    30000000,
    1000000000,
    1713.38,
    1836.44,
    10.96,
    "normal"
  },
  {
    "San Fierro",
    -1892.47,
    -858.98,
    32.02,
    1000000,
    30000000,
    -1954.55,
    -843.3,
    32.22,
    "normal"
  },
  {
    "BlueBerry",
    329.42,
    -44.26,
    1.58,
    200000,
    99999999,
    309.61,
    -63.09,
    1.58,
    "truck"
  },
  {
    "Las Venturas \197\130odzie",
    1628.25,
    555.97,
    1,
    200000,
    99999999,
    1622.59,
    606.31,
    7.78,
    "boat"
  }
}) do
  setElementPosition(createElement("text"), _FORV_24_[2], _FORV_24_[3], _FORV_24_[4])
  setElementData(createElement("text"), "name", "Gie\197\130da " .. _FORV_24_[1])
  createBlip(_FORV_24_[2], _FORV_24_[3], _FORV_24_[4], 43, 0, 0, 0, 0, 0, 0, 250)
  addEventHandler("onClientMarkerHit", createMarker(_FORV_24_[2], _FORV_24_[3], _FORV_24_[4] - 0.95, "cylinder", 2, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ and isPedInVehicle(localPlayer) and getPedOccupiedVehicleSeat(localPlayer) == 0 then
      id = _UPVALUE0_[1]
      _UPVALUE1_ = _UPVALUE0_[5]
      _UPVALUE2_ = _UPVALUE0_[6]
      if id then
        _UPVALUE3_ = id
        if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
          return
        end
        if getElementModel(getPedOccupiedVehicle(localPlayer)) == 420 then
          return
        end
        if getElementData(localPlayer, "player:sid") ~= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:ownedPlayer") then
          exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
          return
        end
        if _UPVALUE4_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz wystawi\196\135 tego pojazdu.", "error")
          return
        end
        if _UPVALUE0_[10] == "truck" then
          if _UPVALUE5_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          if not _UPVALUE6_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          textures = {
            background = dxCreateTexture(":ST_gui/img/background2.png"),
            cross = dxCreateTexture(":ST_gui/img/cross.png"),
            wallet_icon = dxCreateTexture("img/wallet_icon.png"),
            atm_icon = dxCreateTexture("img/atm_icon.png")
          }
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          windows.category = "wystawianie"
          showCursor(true)
          exports.ST_gui:createCustomEditbox("exchangeAmount", "Wpisz cene pojazdu...", _UPVALUE7_.x + 150 / _UPVALUE8_, _UPVALUE7_.y + 120 / _UPVALUE8_, _UPVALUE7_.w - 300 / _UPVALUE8_, _UPVALUE7_.h, false, "", "", 1, 120)
          exports.ST_gui:createCustomEditbox("exchangeDescription", "Kr\195\179tki opis pojazdu...", _UPVALUE7_.x, _UPVALUE7_.y + 200 / _UPVALUE8_, _UPVALUE7_.w, _UPVALUE7_.h, false, "", "", 1)
        elseif _UPVALUE0_[10] == "boat" then
          if _UPVALUE6_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          if not _UPVALUE5_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          textures = {
            background = dxCreateTexture(":ST_gui/img/background2.png"),
            cross = dxCreateTexture(":ST_gui/img/cross.png"),
            wallet_icon = dxCreateTexture("img/wallet_icon.png"),
            atm_icon = dxCreateTexture("img/atm_icon.png")
          }
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          windows.category = "wystawianie"
          showCursor(true)
          exports.ST_gui:createCustomEditbox("exchangeAmount", "Wpisz cene pojazdu...", _UPVALUE7_.x + 150 / _UPVALUE8_, _UPVALUE7_.y + 120 / _UPVALUE8_, _UPVALUE7_.w - 300 / _UPVALUE8_, _UPVALUE7_.h, false, "", "", 1, 120)
          exports.ST_gui:createCustomEditbox("exchangeDescription", "Kr\195\179tki opis pojazdu...", _UPVALUE7_.x, _UPVALUE7_.y + 200 / _UPVALUE8_, _UPVALUE7_.w, _UPVALUE7_.h, false, "", "", 1)
        else
          if _UPVALUE5_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          if _UPVALUE6_[getElementModel(getPedOccupiedVehicle(localPlayer))] then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wystawi\196\135 tego pojazdu.", "error")
            return
          end
          textures = {
            background = dxCreateTexture(":ST_gui/img/background2.png"),
            cross = dxCreateTexture(":ST_gui/img/cross.png"),
            wallet_icon = dxCreateTexture("img/wallet_icon.png"),
            atm_icon = dxCreateTexture("img/atm_icon.png")
          }
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientClick", root, click)
          windows.category = "wystawianie"
          showCursor(true)
          exports.ST_gui:createCustomEditbox("exchangeAmount", "Wpisz cene pojazdu...", _UPVALUE7_.x + 150 / _UPVALUE8_, _UPVALUE7_.y + 120 / _UPVALUE8_, _UPVALUE7_.w - 300 / _UPVALUE8_, _UPVALUE7_.h, false, "", "", 1, 120)
          exports.ST_gui:createCustomEditbox("exchangeDescription", "Kr\195\179tki opis pojazdu...", _UPVALUE7_.x, _UPVALUE7_.y + 200 / _UPVALUE8_, _UPVALUE7_.w, _UPVALUE7_.h, false, "", "", 1)
        end
      end
    end
  end)
  addEventHandler("onClientMarkerLeave", createMarker(_FORV_24_[2], _FORV_24_[3], _FORV_24_[4] - 0.95, "cylinder", 2, 255, 175, 0, 75), function(_ARG_0_, _ARG_1_)
    if localPlayer == _ARG_0_ then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      exports.ST_gui:destroyCustomEditbox("exchangeDescription")
      _UPVALUE0_ = nil
      _UPVALUE1_ = nil
      _UPVALUE2_ = nil
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
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
    dxDrawText("Gie\197\130da " .. _UPVALUE3_, _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawText("WPISZ CEN\196\152, ZA KT\195\147R\196\132 CHCESZ WYSTAWI\196\134 POJAZD\n(OD #00ad23" .. przecinek(_UPVALUE4_) .. " #ffffffPLN DO #00ad23" .. przecinek(_UPVALUE5_) .. " #ffffffPLN)", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 30 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 199 / _UPVALUE2_, _UPVALUE6_.y - 21 / _UPVALUE2_, _UPVALUE6_.w - 398 / _UPVALUE2_, _UPVALUE6_.h + 62 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 143, 19, 255))
    dxDrawRoundedRectangle(_UPVALUE6_.x + 200 / _UPVALUE2_, _UPVALUE6_.y - 20 / _UPVALUE2_, _UPVALUE6_.w - 400 / _UPVALUE2_, _UPVALUE6_.h + 60 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 255))
    dxDrawText("TWOJA OFERTA", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 180 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    if tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) then
      dxDrawText("#00ad23" .. przecinek((tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))))) .. " #ffffffPLN", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 280 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("-", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y + 280 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("WYSTAW", _UPVALUE7_.x + 190 / _UPVALUE2_, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE6_.x + 149 / _UPVALUE2_, _UPVALUE6_.y + 119 / _UPVALUE2_, _UPVALUE6_.w - 298 / _UPVALUE2_, _UPVALUE6_.h + 2 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(0, 143, 19, 230))
    dxDrawRoundedRectangle(_UPVALUE6_.x + 150 / _UPVALUE2_, _UPVALUE6_.y + 120 / _UPVALUE2_, _UPVALUE6_.w - 300 / _UPVALUE2_, _UPVALUE6_.h, 15 / _UPVALUE2_, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(_UPVALUE6_.x - 1 / _UPVALUE2_, _UPVALUE6_.y + 199 / _UPVALUE2_, _UPVALUE6_.w + 2 / _UPVALUE2_, _UPVALUE6_.h + 2 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE6_.x, _UPVALUE6_.y + 200 / _UPVALUE2_, _UPVALUE6_.w, _UPVALUE6_.h, 15 / _UPVALUE2_, tocolor(25, 25, 25, 255))
    if isMouseIn(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "informacje" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 823 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 255))
    dxDrawText(_UPVALUE0_.infoVehicle.nameVeh .. " (#FF8300" .. _UPVALUE0_.infoVehicle.id .. "#ffffff)", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    dxDrawText("Informacje o poje\197\186dzie:", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 21 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light19"), "left", "center", false, false, false, false, false)
    dxDrawText("Tuning:", _UPVALUE1_.x + 447 / _UPVALUE2_, _UPVALUE1_.y - 21 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light19"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 19 / _UPVALUE2_, _UPVALUE1_.y + 114 / _UPVALUE2_, 407 / _UPVALUE2_, 307 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 120))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 115 / _UPVALUE2_, 405 / _UPVALUE2_, 305 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 255))
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(tableInfoVehiclesStandard) do
      xY = xY + 1
      dxDrawText(_FORV_8_[1] .. "  " .. _FORV_8_[2], _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 31 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    end
    dxDrawImage(_UPVALUE1_.x + 42 / _UPVALUE2_, _UPVALUE1_.y + 370 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.battery_icon, 0, 0, 0, interpolateColor(exports.ST_datasystem:getCustomData(_UPVALUE0_.infoVehicle.vehicle, "vehicle:battery", "synced"), 1000, 350, oilColors), false)
    dxDrawText("" .. string.format("%02.1f", exports.ST_datasystem:getCustomData(_UPVALUE0_.infoVehicle.vehicle, "vehicle:battery", "synced") / 10) .. "%", _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 395 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "left", "top", false, false, false, true, false)
    if vehRodzaj ~= "Elektryczny" then
      dxDrawImage(_UPVALUE1_.x + 107 / _UPVALUE2_, _UPVALUE1_.y + 368 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.oil_icon, 0, 0, 0, interpolateColor(exports.ST_datasystem:getCustomData(_UPVALUE0_.infoVehicle.vehicle, "vehicle:oil", "synced"), 1000, 350, oilColors), false)
      dxDrawText("" .. string.format("%02.1f", exports.ST_datasystem:getCustomData(_UPVALUE0_.infoVehicle.vehicle, "vehicle:oil", "synced") / 10) .. "%", _UPVALUE1_.x + 105 / _UPVALUE2_, _UPVALUE1_.y + 395 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "left", "top", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 439 / _UPVALUE2_, _UPVALUE1_.y + 114 / _UPVALUE2_, 422 / _UPVALUE2_, 307 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(60, 60, 60, 120))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 440 / _UPVALUE2_, _UPVALUE1_.y + 115 / _UPVALUE2_, 420 / _UPVALUE2_, 305 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 615 / _UPVALUE2_, _UPVALUE1_.y + 130 / _UPVALUE2_, 2 / _UPVALUE2_, 280 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(27, 27, 27, 255))
    xY = 0
    for _FORV_11_, _FORV_12_ in ipairs(tableInfoVehicles1) do
      xY = xY + 1
      if _FORV_12_[3] then
        if _FORV_12_[1] == "LPG" then
          if _FORV_12_[2] == "Tak" then
            v2Name = "#039118tak"
          else
            v2Name = "#8c0000nie"
          end
        elseif _FORV_12_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_12_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_12_[2]
      end
      dxDrawText(_FORV_12_[1], _UPVALUE1_.x + 450 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 26 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, _UPVALUE1_.x, _UPVALUE1_.y + 125 / _UPVALUE2_ + 26 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 240 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
    end
    xY = 0
    for _FORV_11_, _FORV_12_ in ipairs(tableInfoVehicles2) do
      xY = xY + 1
      if _FORV_12_[3] then
        if _FORV_12_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_12_[2] == 0 then
          v2Name = "#8c0000nie"
        end
      else
        v2Name = _FORV_12_[2]
      end
      dxDrawText(_FORV_12_[1], _UPVALUE1_.x + 630 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 24 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "left", "top", false, false, false, true, false)
      dxDrawText(v2Name, _UPVALUE1_.x, _UPVALUE1_.y + 125 / _UPVALUE2_ + 24 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 490 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
    end
    dxDrawText("INFO OD W\197\129A\197\154CICIELA: #ffbb00" .. _UPVALUE0_.infoVehicle.description .. "", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 435 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "top", false, false, false, true, false)
    if windows.select_car == true then
      exports.ST_buttons:dxCreateButton("NAMIERZ", _UPVALUE7_.x + 190 / _UPVALUE2_, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 255, 1)
    elseif getElementData(localPlayer, "player:sid") == _UPVALUE0_.infoVehicle.uid_owner then
      exports.ST_buttons:dxCreateButton("ZABIERZ", _UPVALUE7_.x + 190 / _UPVALUE2_, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 255, 1)
    else
      exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE7_.x + 190 / _UPVALUE2_, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 255, 1)
    end
    if isMouseIn(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 27 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "potwierdzenie" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    dxDrawText(_UPVALUE0_.infoVehicle.nameVeh .. " (#FF8300" .. _UPVALUE0_.infoVehicle.id .. "#ffffff)", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y - 122 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
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
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE8_) do
      dxDrawText("#00ad23" .. przecinek(_FORV_8_.bank_money .. " #ffffffPLN"), _UPVALUE1_.x + 739 / _UPVALUE2_, _UPVALUE1_.y + 520 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE7_.x + 190 / _UPVALUE2_, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 255, 1)
  end
  if windows.category == "lista pojazd\195\179w" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 52 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 20 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 20 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 140), false)
    else
      dxDrawImage(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 20 / _UPVALUE2_, 20 / _UPVALUE2_, 20 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if sortowanie == "idOD" then
      dxDrawText("\226\134\145", _UPVALUE1_.x + 60 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    elseif sortowanie == "idDO" then
      dxDrawText("\226\134\147", _UPVALUE1_.x + 60 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    elseif sortowanie == "costOD" then
      dxDrawText("\226\134\145", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    elseif sortowanie == "costDO" then
      dxDrawText("\226\134\147", _UPVALUE1_.x + 520 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    elseif sortowanie == "uidOD" then
      dxDrawText("\226\134\145", _UPVALUE1_.x + 705 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    elseif sortowanie == "uidDO" then
      dxDrawText("\226\134\147", _UPVALUE1_.x + 705 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
    end
    dxDrawText("LISTA POJAZD\195\147W NA GIE\197\129DZIE", _UPVALUE1_.x + 15 / _UPVALUE2_, _UPVALUE1_.y - 140 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, false, false)
    dxDrawText(#_UPVALUE9_ .. " POJAZD\195\147W", _UPVALUE1_.x, _UPVALUE1_.y - 140 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 435 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light17"), "right", "center", false, false, false, false, false)
    dxDrawText("ID", _UPVALUE1_.x + 35 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("POJAZD", _UPVALUE1_.x + 135 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("SILNIK", _UPVALUE1_.x + 373 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("KOSZT", _UPVALUE1_.x + 452 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    dxDrawText("W\197\129A\197\154CICIEL", _UPVALUE1_.x, _UPVALUE1_.y - 56 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 485 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 100 / _UPVALUE2_, 32 / _UPVALUE2_) then
      dxDrawRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 100 / _UPVALUE2_, 32 / _UPVALUE2_, tocolor(0, 0, 0, 80), false)
    end
    if isMouseIn(_UPVALUE1_.x + 445 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 155 / _UPVALUE2_, 32 / _UPVALUE2_) then
      dxDrawRectangle(_UPVALUE1_.x + 445 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 155 / _UPVALUE2_, 32 / _UPVALUE2_, tocolor(0, 0, 0, 80), false)
    end
    if isMouseIn(_UPVALUE1_.x + 600 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 252 / _UPVALUE2_, 32 / _UPVALUE2_) then
      dxDrawRectangle(_UPVALUE1_.x + 600 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 252 / _UPVALUE2_, 32 / _UPVALUE2_, tocolor(0, 0, 0, 80), false)
    end
    for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE9_) do
      if _FORV_8_ >= _UPVALUE10_ and _FORV_8_ <= _UPVALUE11_ and _FORV_9_.id_exchange == idExchange and _FORV_9_.id then
        if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_ + 36 / _UPVALUE2_ * (1 + 1 - 1), 822 / _UPVALUE2_, 35 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_ + 36 / _UPVALUE2_ * (1 + 1 - 1), 822 / _UPVALUE2_, 35 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(37, 37, 37, 255))
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_ + 36 / _UPVALUE2_ * (1 + 1 - 1), 822 / _UPVALUE2_, 35 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(40, 40, 40, 255))
        end
        dxDrawText(_FORV_9_.id, _UPVALUE1_.x + 35 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_ + 72 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_.nameVeh, _UPVALUE1_.x + 135 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_ + 72 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_.engine[1] .. " " .. _FORV_9_.engine[2], _UPVALUE1_.x + 372 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_ + 72 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_9_.colorNick_owner .. "" .. _FORV_9_.name_owner .. " #e6e6e6[" .. _FORV_9_.uid_owner .. "]", _UPVALUE1_.x, _UPVALUE1_.y - 56 / _UPVALUE2_ + 72 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 485 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "right", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(_FORV_9_.cost) .. " PLN", _UPVALUE1_.x + 452 / _UPVALUE2_, _UPVALUE1_.y - 56 / _UPVALUE2_ + 72 / _UPVALUE2_ * (1 + 1 - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawRectangle(_UPVALUE1_.x + 130 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 1 / _UPVALUE2_, 502 / _UPVALUE2_, tocolor(60, 60, 60, 255), false)
    dxDrawRectangle(_UPVALUE1_.x + 365 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 1 / _UPVALUE2_, 502 / _UPVALUE2_, tocolor(60, 60, 60, 255), false)
    dxDrawRectangle(_UPVALUE1_.x + 445 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 1 / _UPVALUE2_, 502 / _UPVALUE2_, tocolor(60, 60, 60, 255), false)
    dxDrawRectangle(_UPVALUE1_.x + 600 / _UPVALUE2_, _UPVALUE1_.y + 57 / _UPVALUE2_, 1 / _UPVALUE2_, 502 / _UPVALUE2_, tocolor(60, 60, 60, 255), false)
  end
end
function sort()
  if sortowanie == "idOD" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.id > _ARG_1_.id
    end)
  elseif sortowanie == "idDO" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.id < _ARG_1_.id
    end)
  elseif sortowanie == "costOD" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.cost > _ARG_1_.cost
    end)
  elseif sortowanie == "costDO" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.cost < _ARG_1_.cost
    end)
  elseif sortowanie == "uidOD" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.uid_owner > _ARG_1_.uid_owner
    end)
  elseif sortowanie == "uidDO" then
    table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.uid_owner < _ARG_1_.uid_owner
    end)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showGuiVehicles" then
    if windows.category == "informacje" then
      return
    end
    oilColors = {
      {
        0,
        255,
        0
      },
      {
        127,
        255,
        0
      },
      {
        191,
        255,
        0
      },
      {
        255,
        255,
        0
      },
      {
        255,
        191,
        0
      },
      {
        255,
        0,
        0
      }
    }
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      wallet_icon = dxCreateTexture("img/wallet_icon.png"),
      atm_icon = dxCreateTexture("img/atm_icon.png"),
      battery_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/battery1_icon.png"),
      oil_icon = dxCreateTexture(":ST_speedmeter/images/speedmeter1/oil_icon.png")
    }
    _UPVALUE0_.infoVehicle = _ARG_1_
    loadInfoVehicle(_ARG_1_)
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    windows.category = "informacje"
    showCursor(true, false)
  elseif _ARG_0_ == "closeGuiVehicles" then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    windows.category = false
    showCursor(false)
    _UPVALUE0_ = {}
    for _FORV_10_, _FORV_11_ in pairs(textures) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    textures = {}
  elseif _ARG_0_ == "showListVehiclesClient" then
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      wallet_icon = dxCreateTexture("img/wallet_icon.png"),
      atm_icon = dxCreateTexture("img/atm_icon.png")
    }
    sortowanie = "idOD"
    _UPVALUE1_ = _ARG_1_
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    windows.category = "lista pojazd\195\179w"
    sort()
    showCursor(true)
  elseif _ARG_0_ == "showInfoAMTClient" then
    _UPVALUE2_ = _ARG_1_
  end
end)
function namierzanie()
  if not namierzonyPojazd then
    return
  end
  if getScreenFromWorldPosition(getElementPosition(namierzonyPojazd)) and getScreenFromWorldPosition(getElementPosition(namierzonyPojazd)) then
    dxDrawText("\226\134\147", getScreenFromWorldPosition(getElementPosition(namierzonyPojazd)) - _UPVALUE0_ / 5, getScreenFromWorldPosition(getElementPosition(namierzonyPojazd)))
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "lista pojazd\195\179w" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE0_) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and _FORV_7_.id_exchange == idExchange and isMouseIn(_UPVALUE4_.x + 30 / _UPVALUE3_, _UPVALUE4_.y + 57 / _UPVALUE3_ + 36 / _UPVALUE3_ * (1 + 1 - 1), 822 / _UPVALUE3_, 35 / _UPVALUE3_) then
          _UPVALUE5_.infoVehicle = _FORV_7_
          loadInfoVehicle(_FORV_7_)
          windows.category = "informacje"
          windows.select_car = true
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
      _UPVALUE8_ = nil
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      exports.ST_gui:destroyCustomEditbox("exchangeDescription")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE9_.x + 190 / _UPVALUE3_, _UPVALUE9_.y, _UPVALUE9_.w, _UPVALUE9_.h) and windows.category == "wystawianie" then
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
      if getElementData(localPlayer, "eq_mask") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz mie\196\135 za\197\130o\197\188onej maski!", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) > _UPVALUE8_ or tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))) < _UPVALUE7_ then
        exports.st_gui:showPlayerNotification("Cena powinna wynosi\196\135 od " .. przecinek(_UPVALUE7_) .. " PLN do " .. przecinek(_UPVALUE8_) .. " PLN", "error")
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("exchangeAmount")
      triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "addVehicle", localPlayer, getPedOccupiedVehicle(localPlayer), _UPVALUE6_, tonumber((exports.ST_gui:getCustomEditboxText("exchangeAmount"))), exports.ST_gui:getCustomEditboxText("exchangeDescription") or "Brak")
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE9_.x + 190 / _UPVALUE3_, _UPVALUE9_.y, _UPVALUE9_.w, _UPVALUE9_.h) and windows.category == "informacje" then
      if getElementData(_UPVALUE5_.infoVehicle.vehicle, "pojazd:gielda") then
        if windows.select_car == true then
          addEventHandler("onClientRender", root, namierzanie)
          namierzonyPojazd = _UPVALUE5_.infoVehicle.vehicle
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie namierzono pojazd. Znacznik zniknie za 30 sekund", "success")
          setTimer(function()
            removeEventHandler("onClientRender", root, namierzanie)
          end, 30000, 1)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.category = false
          windows.select_car = false
          showCursor(false)
          for _FORV_5_, _FORV_6_ in pairs(textures) do
            if isElement(_FORV_6_) then
              destroyElement(_FORV_6_)
            end
          end
          textures = {}
        elseif getElementData(localPlayer, "player:sid") == getElementData(_UPVALUE5_.infoVehicle.vehicle, "vehicle:ownedPlayer") then
          triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "removeVehicle", localPlayer, _UPVALUE5_.infoVehicle.vehicle)
          exports.st_gui:showPlayerNotification("Zabierasz pojazd.", "success")
          _UPVALUE5_ = {}
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
          if getPlayerPing(localPlayer) > 150 then
            exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
            return
          end
          windows.category = "potwierdzenie"
          triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "showInfoAMT", localPlayer)
        end
      end
    elseif isMouseIn(_UPVALUE4_.x + 199 / _UPVALUE3_, _UPVALUE4_.y + 189 / _UPVALUE3_, 202 / _UPVALUE3_, 202 / _UPVALUE3_) and windows.category == "potwierdzenie" then
      if getElementData(_UPVALUE5_.infoVehicle.vehicle, "pojazd:gielda") then
        if getPlayerPing(localPlayer) > 150 then
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
        triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "removeVehicle", localPlayer, _UPVALUE5_.infoVehicle.vehicle)
        triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "buyVehicle", localPlayer, _UPVALUE5_.infoVehicle.vehicle, _UPVALUE5_.infoVehicle.cost, _UPVALUE5_.infoVehicle.uid_owner, _UPVALUE5_.infoVehicle.name_owner, false, _UPVALUE5_.infoVehicle.nameVeh)
        _UPVALUE5_ = {}
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
      end
    elseif isMouseIn(_UPVALUE4_.x + 449 / _UPVALUE3_, _UPVALUE4_.y + 189 / _UPVALUE3_, 202 / _UPVALUE3_, 202 / _UPVALUE3_) and windows.category == "potwierdzenie" then
      if getElementData(_UPVALUE5_.infoVehicle.vehicle, "pojazd:gielda") then
        if getPlayerPing(localPlayer) > 150 then
          exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE10_) do
          if _FORV_7_.bank_money < tonumber(_UPVALUE5_.infoVehicle.cost) then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
            return
          end
        end
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.category = false
        showCursor(false)
        triggerServerEvent("evEwenciks_sr6yuydfthu", resourceRoot, "buyVehicle", localPlayer, _UPVALUE5_.infoVehicle.vehicle, _UPVALUE5_.infoVehicle.cost, _UPVALUE5_.infoVehicle.uid_owner, _UPVALUE5_.infoVehicle.name_owner, true, _UPVALUE5_.infoVehicle.nameVeh)
        _UPVALUE5_ = {}
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
      end
    elseif isMouseIn(_UPVALUE9_.x + 190 / _UPVALUE3_, _UPVALUE9_.y, _UPVALUE9_.w, _UPVALUE9_.h) and windows.category == "potwierdzenie" then
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
    elseif isMouseIn(_UPVALUE4_.x + 30 / _UPVALUE3_, _UPVALUE4_.y + 57 / _UPVALUE3_, 100 / _UPVALUE3_, 32 / _UPVALUE3_) and windows.category == "lista pojazd\195\179w" then
      if sortowanie == "idOD" then
        sortowanie = "idDO"
      else
        sortowanie = "idOD"
      end
      sort()
    elseif isMouseIn(_UPVALUE4_.x + 445 / _UPVALUE3_, _UPVALUE4_.y + 57 / _UPVALUE3_, 155 / _UPVALUE3_, 32 / _UPVALUE3_) and windows.category == "lista pojazd\195\179w" then
      if sortowanie == "costOD" then
        sortowanie = "costDO"
      else
        sortowanie = "costOD"
      end
      sort()
    elseif isMouseIn(_UPVALUE4_.x + 600 / _UPVALUE3_, _UPVALUE4_.y + 57 / _UPVALUE3_, 252 / _UPVALUE3_, 32 / _UPVALUE3_) and windows.category == "lista pojazd\195\179w" then
      if sortowanie == "uidOD" then
        sortowanie = "uidDO"
      else
        sortowanie = "uidOD"
      end
      sort()
    elseif isMouseIn(_UPVALUE4_.x + 825 / _UPVALUE3_, _UPVALUE4_.y + 20 / _UPVALUE3_, 20 / _UPVALUE3_, 20 / _UPVALUE3_) and windows.category == "lista pojazd\195\179w" then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      windows.category = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE4_.x + 825 / _UPVALUE3_, _UPVALUE4_.y + 27 / _UPVALUE3_, 20 / _UPVALUE3_, 20 / _UPVALUE3_) and windows.select_car == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      windows.select_car = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
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
    end
  end
end
function loadInfoVehicle(_ARG_0_)
  if getVehicleUpgradeOnSlot(_ARG_0_.vehicle, 8) ~= 0 then
    nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. getElementData(_ARG_0_.vehicle, "vehicle:nitro") .. "#e6e6e6/#ffbb00" .. getElementData(_ARG_0_.vehicle, "vehicle_tuning").butlaN .. "#e6e6e6L )"
  else
    nitroText = "#8c0000NIE"
  end
  if _ARG_0_.usy[9] == "Brak" then
  end
  for _FORV_6_, _FORV_7_ in pairs(wheelsName) do
    if _FORV_7_[1] == _ARG_0_.usy[11] then
      wheelsR = wheelsName[_FORV_6_][2]
    end
    if _FORV_7_[1] == _ARG_0_.usy[10] then
      wheelsF = wheelsName[_FORV_6_][2]
    end
  end
  if getElementData(_ARG_0_.vehicle, "vehicle:paintjob") then
    paintjobText = "#039118tak"
  else
    paintjobText = "#8c0000nie"
  end
  if getElementData(_ARG_0_.vehicle, "vehicle_tuning").licznik ~= 0 then
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
      getElementData(_ARG_0_.vehicle, "vehicle_tuning").lpg_montage,
      true
    },
    {
      "NEONY",
      _ARG_0_.usy[13],
      true
    },
    {
      "TAXOMETR",
      getElementData(_ARG_0_.vehicle, "vehicle_tuning").taxometr,
      true
    },
    {
      "REGULACJA MOCY",
      getElementData(_ARG_0_.vehicle, "vehicle_tuning").regulationAcceleration,
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
      getElementData(_ARG_0_.vehicle, "vehicle_tuning").rh,
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
    {"NITRO", nitroText},
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
    },
    {
      "TYLNE OPONY",
      wheelsR
    },
    {
      "PRZEDNIE OPONY",
      wheelsF
    }
  }
  if getElementData(_ARG_0_.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
  end
  if getPlayerFromName(_ARG_0_.name_owner) or getPlayerFromName("Nieznajomy#" .. _ARG_0_.uid_owner) then
    onlineInfo = "#ffffffw\197\130a\197\155ciciel jest #00d60eonline"
  else
    onlineInfo = "#949494w\197\130a\197\155ciciel jest #910000offline"
  end
  if getVehicleHeadLightColor(_ARG_0_.vehicle) == 255 and getVehicleHeadLightColor(_ARG_0_.vehicle) == 255 and getVehicleHeadLightColor(_ARG_0_.vehicle) == 255 then
    lightPreview = "Zwyk\197\130e"
  else
    lightPreview = "" .. RGBToHex(getVehicleHeadLightColor(_ARG_0_.vehicle)) .. "\226\150\136\226\150\136\226\150\136#ffffff"
  end
  vehRodzaj = getElementData(_ARG_0_.vehicle, "vehicle_tuning").rodzaj
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
      "#ffbb00" .. math.floor(getElementData(_ARG_0_.vehicle, "vehicle:fuel")) .. " #e6e6e6/ #ffbb00" .. getElementData(_ARG_0_.vehicle, "vehicle_tuning").bak .. " #e6e6e6" .. ({"Bateria", "KwH"})[2]
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
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windows.category == "lista pojazd\195\179w" then
    if _UPVALUE0_ >= #_UPVALUE3_ then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 1
  end
end
wheelsName = {
  {
    0,
    "#c8c8c8Standardowe"
  },
  {
    1,
    "#ffbb00ultra-cienkie"
  },
  {
    2,
    "#ffbb00cienkie"
  },
  {
    4,
    "#ffbb00szerokie"
  },
  {
    8,
    "#ffbb00ultra-szerokie"
  }
}
function interpolateColor(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 351 then
    _ARG_0_ = 351
  end
  return tocolor(_ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][1] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][2] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][3] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3]), 190)
end
getResourceName(getThisResource(), true, 414036385)
return
