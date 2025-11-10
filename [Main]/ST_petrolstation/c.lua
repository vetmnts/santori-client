station = {
  {
    2107.31,
    -108.93,
    0.99
  },
  {
    2308.44,
    531.33,
    0.9
  },
  {
    1324.03,
    1411.46,
    10.85,
    "samoloty"
  },
  {
    1308.55,
    1411.46,
    10.85,
    "samoloty"
  },
  {
    -1170.27,
    -173.73,
    14.15,
    "samoloty"
  },
  {
    1887.4,
    -2440.52,
    13.58,
    "samoloty"
  }
}
windows = {
  main = false,
  petrol = false,
  gas = false,
  diesel = false
}
costPetrol = 18
costDiesel = 15
costLPG = 11
costPetrol1 = 3.4
costDiesel1 = 2.8
costLPG1 = 1.8
function window()
  if windows.main == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ RODZAJ", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal22"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("BENZYNA", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(40 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
    exports.ST_buttons:dxCreateButton("LPG", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(180 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
    exports.ST_buttons:dxCreateButton("DIESEL", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(320 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
  end
  if windows.petrol == true then
    dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, textures.background1, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE3_.x + math.floor(75 / _UPVALUE1_), _UPVALUE3_.y + math.floor(220 / _UPVALUE1_), math.floor(640 / _UPVALUE1_), math.floor(70 / _UPVALUE1_), textures.background_bar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane > 49 then
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) * 6 + 40 - 6) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    else
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) * 6 + 40) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    end
    dxDrawText("BENZYNA", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(220 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal26"), "center", "center", false, false, false, false, false)
    dxDrawText("ABY ZATANKOWA\196\134 KLIKAJ SPACJ\196\152", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(50 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("CENA: " .. costPetrol .. " PLN/L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(30 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. math.floor(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) .. "L/" .. (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 25) .. "L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(200 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Anuluj", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(380 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
    dxDrawText("DOLANE: " .. math.floor(dolane) .. [[
L
POBRANO Z KONTA: ]] .. math.floor(pobrano) .. " PLN", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(410 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    if getKeyState("SPACE") and getPedOccupiedVehicle(localPlayer) then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane >= 100 then
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") >= costPetrol then
        addPetrol()
      end
    end
  end
  if windows.gas == true then
    dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, textures.background1, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE3_.x + math.floor(75 / _UPVALUE1_), _UPVALUE3_.y + math.floor(220 / _UPVALUE1_), math.floor(640 / _UPVALUE1_), math.floor(70 / _UPVALUE1_), textures.background_bar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if 49 < getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") + dolane then
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") + dolane) * 6 + 40 - 6) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    else
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") + dolane) * 6 + 40) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    end
    dxDrawText("LPG", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(220 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal26"), "center", "center", false, false, false, false, false)
    dxDrawText("ABY ZATANKOWA\196\134 KLIKAJ SPACJ\196\152", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(50 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("CENA: " .. costLPG .. " PLN/L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(30 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. math.floor(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") + dolane) .. "L/100L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(200 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Anuluj", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(380 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
    dxDrawText("DOLANE: " .. math.floor(dolane) .. [[
L
POBRANO Z KONTA: ]] .. math.floor(pobrano) .. " PLN", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(410 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    if getKeyState("SPACE") and getPedOccupiedVehicle(localPlayer) then
      if 100 <= getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") + dolane then
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") >= costLPG then
        addLPG()
      end
    end
  end
  if windows.diesel == true then
    dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, textures.background1, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE3_.x + math.floor(75 / _UPVALUE1_), _UPVALUE3_.y + math.floor(220 / _UPVALUE1_), math.floor(640 / _UPVALUE1_), math.floor(70 / _UPVALUE1_), textures.background_bar, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane > 49 then
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) * 6 + 40 - 6) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    else
      dxDrawRectangle(_UPVALUE3_.x + math.floor(77 / _UPVALUE1_), _UPVALUE3_.y + math.floor(222 / _UPVALUE1_), math.floor(((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) * 6 + 40) / _UPVALUE1_), math.floor(66 / _UPVALUE1_), tocolor(30, 30, 30, 245), false)
    end
    dxDrawText("DIESEL", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(220 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal26"), "center", "center", false, false, false, false, false)
    dxDrawText("ABY ZATANKOWA\196\134 KLIKAJ SPACJ\196\152", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y - math.floor(50 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("CENA: " .. costDiesel .. " PLN/L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(30 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    dxDrawText("" .. math.floor(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane) .. "L/" .. (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 25) .. "L", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(200 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Anuluj", _UPVALUE2_.x - math.floor(345 / _UPVALUE1_), _UPVALUE2_.y + math.floor(380 / _UPVALUE1_), _UPVALUE2_.w, _UPVALUE2_.h, 255)
    dxDrawText("DOLANE: " .. math.floor(dolane) .. [[
L
POBRANO Z KONTA: ]] .. math.floor(pobrano) .. " PLN", _UPVALUE0_.x + math.floor(40 / _UPVALUE1_), _UPVALUE0_.y + math.floor(410 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light20"), "center", "center", false, false, false, false, false)
    if getKeyState("SPACE") and getPedOccupiedVehicle(localPlayer) then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") + dolane >= 100 then
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") >= costDiesel then
        addDiesel()
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(40 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.main == true then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Benzyna" then
        windows.main = false
        windows.gas = false
        windows.petrol = true
        windows.diesel = false
      else
        exports.st_gui:showPlayerNotification("Tw\195\179j rodzaj silnika to nie benzyna.", "error", 15000)
      end
    elseif isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(180 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.main == true then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak" then
        windows.main = false
        windows.gas = true
        windows.petrol = false
        windows.diesel = false
      else
        exports.st_gui:showPlayerNotification("Nie posiadasz zamontowanego LPG!", "error", 15000)
      end
    elseif isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(320 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.main == true then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Diesel" then
        windows.main = false
        windows.gas = false
        windows.petrol = false
        windows.diesel = true
      else
        exports.st_gui:showPlayerNotification("Tw\195\179j rodzaj silnika to nie diesel.", "error", 15000)
      end
    elseif isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(380 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.petrol == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.petrol = false
      windows.gas = false
      windows.diesel = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(380 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.gas == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.petrol = false
      windows.gas = false
      windows.diesel = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x - math.floor(345 / _UPVALUE1_), _UPVALUE0_.y + math.floor(380 / _UPVALUE1_), _UPVALUE0_.w, _UPVALUE0_.h) and windows.diesel == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.petrol = false
      windows.gas = false
      windows.diesel = false
      showCursor(false)
    end
  end
end)
function addPetrol()
  if getElementData(localPlayer, "player:moneyMNn") >= costPetrol1 then
    if tonumber((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) >= tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak) then
      return
    end
    dolewane = 2
    dolane = dolane + 0.2
    pobrano = pobrano + costPetrol1
  end
end
function addLPG()
  if getElementData(localPlayer, "player:moneyMNn") >= costLPG1 then
    if tonumber((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas"))) >= 100 then
      return
    end
    dolewane = 1
    dolane = dolane + 0.2
    pobrano = pobrano + costLPG1
  end
end
function addDiesel()
  if getElementData(localPlayer, "player:moneyMNn") >= costDiesel1 then
    if tonumber((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) >= tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak) then
      return
    end
    dolewane = 2
    dolane = dolane + 0.2
    pobrano = pobrano + costDiesel1
  end
end
for _FORV_11_, _FORV_12_ in ipairs(station) do
  marker = createMarker(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3] - 1, "cylinder", 4, 246, 255, 0, 255)
  setElementData(marker, "marker:icon", "stacja")
  createBlipAttachedTo(marker, 40, 2, 0, 0, 0, 0, 0, 250)
  addEventHandler("onClientMarkerHit", marker, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ and getPedOccupiedVehicle(_ARG_0_) then
      if not getElementData(getPedOccupiedVehicle(_ARG_0_), "vehicle_tuning") then
        return
      end
      if getElementData(getPedOccupiedVehicle(_ARG_0_), "vehicle_tuning").rodzaj == "Elektryczny" then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz zatankowac tutaj pojazdu elektrycznego!", "error")
        return
      end
      if _UPVALUE0_[4] == "samoloty" and not _UPVALUE1_[getElementModel(getPedOccupiedVehicle(_ARG_0_))] then
        return
      end
      dolewane = false
      textures = {
        background = dxCreateTexture("img/background.png"),
        background1 = dxCreateTexture("img/background1.png"),
        background_bar = dxCreateTexture("img/background_bar.png")
      }
      addEventHandler("onClientRender", root, window)
      windows.main = true
      windows.petrol = false
      windows.gas = false
      windows.diesel = false
      showCursor(true, false)
      dolane = 0
      pobrano = 0
    end
  end)
  addEventHandler("onClientMarkerLeave", marker, function(_ARG_0_, _ARG_1_)
    if _ARG_0_ == localPlayer and _ARG_1_ and getPedOccupiedVehicle(_ARG_0_) then
      if dolewane == 1 then
        triggerServerEvent("evEwenciks_kfgsdrtb", resourceRoot, "takeMoney", localPlayer, pobrano, dolane)
      elseif dolewane == 2 then
        if tonumber((getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel"))) >= tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak) then
          return
        end
        triggerServerEvent("evEwenciks_kfgsdrtb", resourceRoot, "takeMoney", localPlayer, pobrano, dolane)
      end
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.petrol = false
      windows.gas = false
      windows.diesel = false
      showCursor(false)
      dolane = nil
      pobrano = nil
    end
  end)
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
getResourceName(getThisResource(), true, 725560396)
return
