zoom = exports.st_gui:getInterfaceZoom()
value = nil
element = nil
money = 20000
function isPedAiming(_ARG_0_)
  if isElement(_ARG_0_) and (getElementType(_ARG_0_) == "player" or getElementType(_ARG_0_) == "ped") and getPedTask(_ARG_0_, "secondary", 0) == "TASK_SIMPLE_USE_GUN" then
    return true
  end
  return false
end
limitSpeed = 200
function isRendering()
  if not _UPVALUE1_.actived then
    return
  end
  if not element then
    return
  end
  if _UPVALUE1_.actived == true then
    if value == "vehicle" then
      if getElementData(element, "vehicle_tuning") then
        pojemnosc = getElementData(element, "vehicle_tuning").pojemnosc or "1.2"
        cylindry = getElementData(element, "vehicle_tuning").cylindry or "V4"
        rodzaj = getElementData(element, "vehicle_tuning").rodzaj or "Diesel"
        bak = getElementData(element, "vehicle_tuning").bak
        fuel = math.floor(getElementData(element, "vehicle:fuel")) or 0
        mileage = getElementData(element, "vehicle:mileage") or 10000
        id_veh = getElementData(element, "vehicle:id") or 0
      else
        pojemnosc = "15.7"
        cylindry = "V32"
        rodzaj = "Odrzutowy"
        bak = "Kebsiaa"
        fuel = "Patryk"
        mileage = "NIE WIEM"
        id_veh = "kryminalne zagadki san andreas"
      end
      last_driver = getElementData(element, "vehicle:driver") or "Brak"
      organization_veh = getElementData(element, "vehicle:ownedGroup") or "Brak"
      owner = getElementData(element, "vehicle:ownedPlayer") or "Brak"
      if organization_veh == "0" or organization_veh == 0 or organization_veh == " " or organization_veh then
        organization_veh = "Brak"
      end
      if getElementData(element, "vehicle:customID") then
        nameVeh = exports.ST_core:changeNameClient(getElementData(element, "vehicle:customID"))
      else
        nameVeh = exports.ST_core:changeNameClient(getVehicleName(element))
      end
      dxDrawText("Pojazd: " .. nameVeh .. "\nW\197\130a\197\155ciciel: " .. owner .. [[

Ostatni kierowca: ]] .. last_driver .. [[

Organizacja: ]] .. organization_veh .. [[

Silnik: ]] .. pojemnosc .. " " .. cylindry .. " " .. rodzaj .. [[

Paliwo: ]] .. fuel .. "L / " .. bak .. [[
L
ID Pojazdu: ]] .. id_veh .. [[

Przebieg: ]] .. mileage .. [[

Akcja: ]] .. (_UPVALUE1_[value][_UPVALUE1_.selected] or "Nie wybrano") .. "", _UPVALUE0_.x + math.floor(602 / zoom), _UPVALUE0_.y + math.floor(464 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
      dxDrawText("#ffffffPojazd: #F89700" .. nameVeh .. "\n#ffffffW\197\130a\197\155ciciel:#F89700 " .. owner .. [[

#ffffffOstatni kierowca: #F89700]] .. last_driver .. [[

#ffffffOrganizacja: #F89700]] .. organization_veh .. [[

#ffffffSilnik: #F89700]] .. pojemnosc .. " " .. cylindry .. " " .. rodzaj .. [[

#ffffffPaliwo: #F89700]] .. fuel .. "#ffffffL / #F89700" .. bak .. [[
#ffffffL
#ffffffID Pojazdu: #F89700]] .. id_veh .. [[

#ffffffPrzebieg: #F89700]] .. mileage .. [[

#ffffffAkcja: #F89700]] .. (_UPVALUE1_[value][_UPVALUE1_.selected] or "#F89700Nie wybrano") .. "", _UPVALUE0_.x + math.floor(600 / zoom), _UPVALUE0_.y + math.floor(462 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    end
    if value == "player" then
      dxDrawText("Nick: " .. string.gsub(getPlayerName(element), "#%x%x%x%x%x%x", "") .. [[

Kasa: ]] .. getElementData(element, "player:moneyMNn") .. [[

Level: ]] .. getElementData(element, "player:lvl") .. [[

Punkty premium: ]] .. getElementData(element, "player:pp") .. [[

Organizacja: ]] .. (getElementData(element, "player:organization") or "Brak") .. [[

Akcja: ]] .. (_UPVALUE1_[value][_UPVALUE1_.selected] or "Nie wybrano") .. "", _UPVALUE0_.x + math.floor(602 / zoom), _UPVALUE0_.y + math.floor(464 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
      dxDrawText("#ffffffNick: #F89700" .. string.gsub(getPlayerName(element), "#%x%x%x%x%x%x", "") .. [[

#ffffffKasa: #F89700]] .. getElementData(element, "player:moneyMNn") .. [[

#ffffffLevel: #F89700]] .. getElementData(element, "player:lvl") .. [[

#ffffffPunkty premium: #F89700]] .. getElementData(element, "player:pp") .. [[

#ffffffOrganizacja: #F89700]] .. (getElementData(element, "player:organization") or "Brak") .. [[

Akcja: ]] .. (_UPVALUE1_[value][_UPVALUE1_.selected] or "#F89700Nie wybrano") .. "", _UPVALUE0_.x + math.floor(600 / zoom), _UPVALUE0_.y + math.floor(462 / zoom), math.floor(362 / zoom), math.floor(204 / zoom), tocolor(225, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    else
    end
  end
end
function SAPD()
  if not _UPVALUE0_.actived then
    return
  end
  if not element then
    return
  end
  if _UPVALUE0_.actived == true and value == "vehicle" then
    kierowca = getVehicleController(element)
    if kierowca then
      driver = getPlayerName(kierowca)
    end
    for _FORV_6_, _FORV_7_ in pairs(getVehicleOccupants(element)) do
    end
    spd_last = math.ceil((getElementVelocity(element) ^ 2 + getElementVelocity(element) ^ 2 + getElementVelocity(element) ^ 2) ^ 0.5 * 161)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y - math.floor(60 / zoom), _UPVALUE1_.w, _UPVALUE1_.h, 7 / zoom, tocolor(0, 0, 0, 130))
    dxDrawText("Pojazd: #d1d1d1" .. exports.ST_core:changeNameClient((getVehicleNameFromModel(getElementModel(element)))) .. [[

#ffffffKierowca: #d1d1d1]] .. (driver or "brak") .. [[

#ffffffRejestracja: #d1d1d1]] .. getVehiclePlateText(element) .. "\n#ffffffIlo\197\155\196\135 pasa\197\188er\195\179w: #d1d1d1" .. 0 + 1 .. "", _UPVALUE1_.x + math.floor(170 / zoom), _UPVALUE1_.y - math.floor(110 / zoom), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
    dxDrawText(spd_last or 0, _UPVALUE1_.x - math.floor(272 / zoom), _UPVALUE1_.y - math.floor(48 / zoom), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold40"), "center")
    dxDrawText("KM/H", _UPVALUE1_.x - math.floor(272 / zoom), _UPVALUE1_.y + math.floor(20 / zoom), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold25"), "center")
    dxDrawText("LIMIT: " .. limitSpeed .. " KM/H", _UPVALUE1_.x - math.floor(272 / zoom), _UPVALUE1_.y + math.floor(60 / zoom), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center")
  end
end
function screenRender()
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y - math.floor(130 / zoom), 450 / zoom, 250 / zoom, _UPVALUE1_, -10, 0, 0, tocolor(255, 255, 255, 222), false)
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "screen" then
    addEventHandler("onClientRender", root, screenRender)
    dxUpdateScreenSource(_UPVALUE0_)
    setTimer(function()
      removeEventHandler("onClientRender", root, screenRender)
    end, 5000, 1)
  end
end)
addCommandHandler("limitsuszarka", function(_ARG_0_, _ARG_1_)
  if getElementData(localPlayer, "player:faction") == "SAPD" then
    if tonumber(_ARG_1_) >= 70 then
      exports.st_gui:showPlayerNotification("Ustawiono limit pr\196\153dko\197\155ci na " .. _ARG_1_ .. " km/h", "info")
      limitSpeed = _ARG_1_
    else
      exports.st_gui:showPlayerNotification("Limit musi by\196\135 powy\197\188ej 70 km/h", "error")
    end
  end
end)
function mandate()
  if not _UPVALUE0_.actived then
    return
  end
  if not element then
    return
  end
  if _UPVALUE0_.actived == true and value == "vehicle" and kierowca then
    if tonumber(spd_last) > tonumber(limitSpeed) then
      if stopTimer then
        return
      end
      stopTimer = true
      outputChatBox(" ", 255, 175, 0, true)
      outputChatBox("#ffffffWystawiono mandat graczowi #F89700" .. driver .. "#ffffff. Przekroczona pr\196\153dko\197\155\196\135: #F89700" .. spd_last - limitSpeed .. " #ffffffkm/h", 255, 175, 0, true)
      if (spd_last - limitSpeed) * 500 >= 50000 then
        triggerServerEvent("ev", resourceRoot, "mandate", localPlayer, kierowca, 50000, spd_last - limitSpeed)
        outputChatBox("#ffffffOtrzymano #F8970050000 #ffffffPLN", 255, 175, 0, true)
      else
        triggerServerEvent("ev", resourceRoot, "mandate", localPlayer, kierowca, (spd_last - limitSpeed) * 500, spd_last - limitSpeed)
        outputChatBox("#ffffffOtrzymano #F89700" .. (spd_last - limitSpeed) * 500 .. " #ffffffPLN", 255, 175, 0, true)
      end
      outputChatBox(" ", 255, 175, 0, true)
      setTimer(function()
        stopTimer = false
      end, 5000, 1)
    else
      exports.st_gui:showPlayerNotification("Gracz nie przekroczy\197\130 wybranej pr\196\153dko\197\155ci", "info")
    end
  end
end
function speedLimitDown()
  if tonumber(limitSpeed) >= 70 then
    limitSpeed = limitSpeed - 10
  end
end
function speedLimitUp()
  if tonumber(limitSpeed) <= 200 then
    limitSpeed = limitSpeed + 10
  end
end
function elton(_ARG_0_)
  if isPedAiming(localPlayer) and _ARG_0_ and getPedWeapon(localPlayer) == 22 and (getElementData(localPlayer, "player:level") or getElementData(localPlayer, "player:faction") == "SAPD") then
    if not _UPVALUE0_.actived then
      if getElementData(localPlayer, "player:faction") == "SAPD" then
        if getElementType(_ARG_0_) == "vehicle" then
          value = "vehicle"
          element = _ARG_0_
          _UPVALUE0_.actived = true
        else
          return
        end
        addEventHandler("onClientRender", root, SAPD)
        bindKey("mouse1", "down", mandate)
        bindKey("mouse_wheel_down", "down", speedLimitDown)
        bindKey("mouse_wheel_up", "down", speedLimitUp)
        sapdGui = true
      else
        if getElementType(_ARG_0_) == "vehicle" then
          value = "vehicle"
          element = _ARG_0_
          _UPVALUE0_.actived = true
        elseif getElementType(_ARG_0_) == "player" then
          value = "player"
          element = _ARG_0_
          _UPVALUE0_.actived = true
        else
          return
        end
        bindKey("mouse1", "down", onElementClicked)
        bindKey("mouse_wheel_down", "down", onElementMoveDown)
        bindKey("mouse_wheel_up", "down", onElementMoveUp)
        addEventHandler("onClientRender", root, isRendering)
        bindKey("arrow_r", "down", rMoney)
        bindKey("arrow_l", "down", lMoney)
      end
    end
  elseif _UPVALUE0_.actived then
    if sapdGui then
      _UPVALUE0_.actived = false
      removeEventHandler("onClientRender", root, SAPD)
      unbindKey("mouse1", "down", mandate)
      unbindKey("mouse_wheel_down", "down", speedLimitDown)
      unbindKey("mouse_wheel_up", "down", speedLimitUp)
    else
      _UPVALUE0_.actived = false
      removeEventHandler("onClientRender", root, isRendering)
      unbindKey("mouse1", "down", onElementClicked)
      unbindKey("mouse_wheel_down", "down", onElementMoveDown)
      unbindKey("mouse_wheel_up", "down", onElementMoveUp)
      unbindKey("arrow_r", "down", rMoney)
      unbindKey("arrow_l", "down", lMoney)
    end
  end
end
addEventHandler("onClientPlayerTarget", root, elton)
function onElementMoveUp()
  if value == "vehicle" then
    if _UPVALUE0_.selected > 9 then
      _UPVALUE0_.selected = 1
    else
      _UPVALUE0_.selected = _UPVALUE0_.selected + 1
    end
  elseif _UPVALUE0_.selected > 5 then
    _UPVALUE0_.selected = 1
  else
    _UPVALUE0_.selected = _UPVALUE0_.selected + 1
  end
end
function onElementMoveDown()
  if _UPVALUE0_.selected < 1 then
    if value == "vehicle" then
      _UPVALUE0_.selected = 9
    else
      _UPVALUE0_.selected = 5
    end
  else
    _UPVALUE0_.selected = _UPVALUE0_.selected - 1
  end
end
function onElementClicked()
  if _UPVALUE0_.selected > 0 then
    triggerServerEvent("ev1", resourceRoot, "onDryerAction", localPlayer, value, _UPVALUE0_.selected, element, money)
    element = nil
  end
end
function blokada(_ARG_0_, _ARG_1_)
  if getPedWeapon(getLocalPlayer(), _ARG_1_) == 22 or getPedWeapon(getLocalPlayer(), _ARG_1_) == 7 then
    toggleControl("fire", false)
  else
    toggleControl("fire", true)
  end
end
addEventHandler("onClientPlayerWeaponSwitch", getRootElement(), blokada)
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
function rMoney(_ARG_0_)
  if _ARG_0_ == "arrow_r" then
    if (_UPVALUE0_[value][_UPVALUE0_.selected] or "#F89700Nie wybrano") ~= "Oddaj na parking policyjny (" .. money .. " PLN)" then
      return
    end
    if money > 50000 then
      return
    end
    money = money + 1000
    _UPVALUE0_.vehicle = {
      "Obr\195\179\196\135 na ko\197\130a",
      "Napraw",
      "Usu\197\132 opis",
      "Przenie\197\155 do siebie",
      "Schowaj",
      "Usu\197\132 pojazd",
      "Oddaj na parking policyjny (" .. money .. " PLN)",
      "Otw\195\179rz pojazd",
      "Usu\197\132 z gie\197\130dy"
    }
  end
end
function lMoney(_ARG_0_)
  if _ARG_0_ == "arrow_l" then
    if (_UPVALUE0_[value][_UPVALUE0_.selected] or "#F89700Nie wybrano") ~= "Oddaj na parking policyjny (" .. money .. " PLN)" then
      return
    end
    if money < 5000 then
      return
    end
    money = money - 1000
    _UPVALUE0_.vehicle = {
      "Obr\195\179\196\135 na ko\197\130a",
      "Napraw",
      "Usu\197\132 opis",
      "Przenie\197\155 do siebie",
      "Schowaj",
      "Usu\197\132 pojazd",
      "Oddaj na parking policyjny (" .. money .. " PLN)",
      "Otw\195\179rz pojazd",
      "Usu\197\132 z gie\197\130dy"
    }
  end
end
getResourceName(getThisResource(), true, 286259721)
return
