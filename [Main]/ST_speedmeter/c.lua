data = {battery = 800, oil = 800}
function renderSpeedMeter3()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE0_ and pobierajLitry and getTickCount() - _UPVALUE1_ > 3000 then
      _UPVALUE1_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getElementData(localPlayer, "notshowspeedmeter") then
      return
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, _UPVALUE5_.background_light_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, _UPVALUE5_.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, _UPVALUE5_.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, _UPVALUE5_.numbers, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if isElectric then
        dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 320 / _UPVALUE4_, 100 / infoVehicles.bak * data.fuel / _UPVALUE4_, 15 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 80 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE6_.x + 165 / _UPVALUE4_, _UPVALUE6_.y + 275 / _UPVALUE4_, 35 / _UPVALUE4_, 35 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 60 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 120 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE6_.x + 170 / _UPVALUE4_, _UPVALUE6_.y + 280 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 320 / _UPVALUE4_, 100 / infoVehicles.bak * data.fuel / _UPVALUE4_, 15 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      dxDrawText("000", _UPVALUE3_.x, _UPVALUE3_.y - 15 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 140 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, cyfry30, "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y - 15 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 140 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry30, "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 338 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 110 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if not _UPVALUE8_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 90 / _UPVALUE4_, _UPVALUE3_.y + 180 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, interpolateColor(data.oil, 1000, 350, _UPVALUE7_), false)
      end
      dxDrawImage(_UPVALUE3_.x + 251 / _UPVALUE4_, _UPVALUE3_.y + 180 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, interpolateColor(data.battery, 1000, 350, _UPVALUE7_), false)
    else
      dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, _UPVALUE5_.background_light_speedometer2, 0, 0, 0, tocolor(140, 140, 140, 255), false)
      dxDrawImage(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w, _UPVALUE3_.h, _UPVALUE5_.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, _UPVALUE5_.lines, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, _UPVALUE5_.numbers, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      if isElectric then
        dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 320 / _UPVALUE4_, 100 / infoVehicles.bak * data.fuel / _UPVALUE4_, 15 / _UPVALUE4_, tocolor(150, 150, 150, 255), false)
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 80 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE6_.x + 170 / _UPVALUE4_, _UPVALUE6_.y + 280 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(190, 190, 190, 255), false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 60 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 120 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE6_.x + 170 / _UPVALUE4_, _UPVALUE6_.y + 283 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(190, 190, 190, 255), false)
        dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 320 / _UPVALUE4_, 100 / infoVehicles.bak * data.fuel / _UPVALUE4_, 15 / _UPVALUE4_, tocolor(150, 150, 150, 255), false)
      end
      dxDrawText("000", _UPVALUE3_.x, _UPVALUE3_.y - 15 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 140 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, cyfry30, "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y - 15 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 140 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry30, "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 7 / _UPVALUE4_, _UPVALUE3_.y + 338 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 110 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      if not _UPVALUE8_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 90 / _UPVALUE4_, _UPVALUE3_.y + 180 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      end
      dxDrawImage(_UPVALUE3_.x + 251 / _UPVALUE4_, _UPVALUE3_.y + 180 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if not _UPVALUE8_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
      dxDrawText("" .. string.format("%02.1f", data.oil / 10) .. "%", _UPVALUE3_.x - 150 / _UPVALUE4_, _UPVALUE3_.y + 220 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    end
    dxDrawText("" .. string.format("%02.1f", data.battery / 10) .. "%", _UPVALUE3_.x + 166 / _UPVALUE4_, _UPVALUE3_.y + 220 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 318 / _UPVALUE4_, 100 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE3_.x + 136 / _UPVALUE4_, _UPVALUE3_.y + 318 / _UPVALUE4_, 2 / _UPVALUE4_, 19 / _UPVALUE4_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE3_.x + 138 / _UPVALUE4_, _UPVALUE3_.y + 335 / _UPVALUE4_, 100 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(255, 191, 0, 255), false)
    dxDrawRectangle(_UPVALUE3_.x + 238 / _UPVALUE4_, _UPVALUE3_.y + 318 / _UPVALUE4_, 2 / _UPVALUE4_, 19 / _UPVALUE4_, tocolor(255, 191, 0, 255), false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 150 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 150 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 230 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 230 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE6_.x + 180 / _UPVALUE4_, _UPVALUE6_.y + 180 / _UPVALUE4_, _UPVALUE6_.w - 40 / _UPVALUE4_, _UPVALUE6_.h - 40 / _UPVALUE4_, tocolor(35, 35, 35, 200), 205, 35, 8)
      exports.shader_circle:dxDrawCircle(_UPVALUE6_.x + 180 / _UPVALUE4_, _UPVALUE6_.y + 180 / _UPVALUE4_, _UPVALUE6_.w - 40 / _UPVALUE4_, _UPVALUE6_.h - 40 / _UPVALUE4_, tocolor(52, 192, 235, 200), 205, 35 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 8)
      dxDrawImage(_UPVALUE6_.x + 63 / _UPVALUE4_, _UPVALUE6_.y + 248 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.nitro_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE3_.x - 155 / _UPVALUE4_, _UPVALUE3_.y + 380 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, _UPVALUE5_.indicator_speedometer2, 7.5 + (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 107, 0, 0, tocolor(255, 255, 255, 255), false)
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE6_.x + 40 / _UPVALUE4_, _UPVALUE6_.y + 375 / _UPVALUE4_, 285 / _UPVALUE4_, 32 / _UPVALUE4_, 10 / _UPVALUE4_, tocolor(40, 40, 40, 255), false)
      if (data.gas or 100) > 5 then
        dxDrawRoundedRectangle(_UPVALUE6_.x + 43 / _UPVALUE4_, _UPVALUE6_.y + 378 / _UPVALUE4_, 2.79 * (data.gas or 100) / _UPVALUE4_, 26 / _UPVALUE4_, 10 / _UPVALUE4_, tocolor(255, 196, 0, 245), false)
      end
      dxDrawText("LPG", _UPVALUE3_.x, _UPVALUE3_.y + 593 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(255, 255, 255, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter1()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE0_ and pobierajLitry and getTickCount() - _UPVALUE1_ > 3000 then
      _UPVALUE1_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getElementData(localPlayer, "notshowspeedmeter") then
      return
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    if math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 320 then
    end
    dxDrawImage(_UPVALUE3_.x + 13 / _UPVALUE4_, _UPVALUE3_.y + 13 / _UPVALUE4_, _UPVALUE3_.w - 26 / _UPVALUE4_, _UPVALUE3_.h - 26 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
    dxDrawImage(_UPVALUE3_.x + 15 / _UPVALUE4_, _UPVALUE3_.y + 15 / _UPVALUE4_, _UPVALUE3_.w - 30 / _UPVALUE4_, _UPVALUE3_.h - 30 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(35, 35, 35, 248), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(65, 65, 65, 255), 125, 53, 5)
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE6_.x + 22 / _UPVALUE4_, _UPVALUE6_.y + 22 / _UPVALUE4_, _UPVALUE6_.w - 44 / _UPVALUE4_, _UPVALUE6_.h - 44 / _UPVALUE4_, _UPVALUE5_.indicator, 243 - 10, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE6_.x + 82.5 / _UPVALUE4_, _UPVALUE6_.y + 82.5 / _UPVALUE4_, _UPVALUE6_.w - 165 / _UPVALUE4_, _UPVALUE6_.h - 165 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE6_.x + 85 / _UPVALUE4_, _UPVALUE6_.y + 85 / _UPVALUE4_, _UPVALUE6_.w - 170 / _UPVALUE4_, _UPVALUE6_.h - 170 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(25, 25, 25, 245), false)
      dxDrawImage(_UPVALUE3_.x + 120 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE3_.x - 5 / _UPVALUE4_, _UPVALUE3_.y - 5 / _UPVALUE4_, _UPVALUE3_.w + 10 / _UPVALUE4_, _UPVALUE3_.h + 10 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if isElectric then
        dxDrawImage(_UPVALUE6_.x + 227 / _UPVALUE4_, _UPVALUE6_.y + 265 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        dxDrawImage(_UPVALUE6_.x + 230 / _UPVALUE4_, _UPVALUE6_.y + 265 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      if 10 > tonumber(data.fuel or 100) then
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - _UPVALUE7_) / 800, "SineCurve")), 125, 53 / infoVehicles.bak * (data.fuel or 100), 5)
        dxDrawText(("%.1f"):format(tonumber(data.fuel or 100)) .. "", _UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 415 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - _UPVALUE7_) / 800, "SineCurve")), 0.9 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 125, 53 / infoVehicles.bak * (data.fuel or 100), 5)
        dxDrawText(("%.1f"):format(tonumber(data.fuel or 100)) .. "", _UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 415 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      end
      dxDrawText("" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. "", _UPVALUE3_.x, _UPVALUE3_.y + 38 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, font30, "center", "center", false, false, false, false, false)
      dxDrawText("km/h", _UPVALUE3_.x, _UPVALUE3_.y + 105 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(255, 255, 255, 255), 1 / _UPVALUE4_, font18, "center", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 5 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      if isElectric then
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x, _UPVALUE3_.y + 168 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x, _UPVALUE3_.y + 210 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      end
      if not _UPVALUE9_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 105 / _UPVALUE4_, _UPVALUE3_.y + 170 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, interpolateColor(data.oil, 1000, 350, _UPVALUE8_), false)
      end
      dxDrawImage(_UPVALUE3_.x + 236 / _UPVALUE4_, _UPVALUE3_.y + 170 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, interpolateColor(data.battery, 1000, 350, _UPVALUE8_), false)
    else
      dxDrawImage(_UPVALUE6_.x + 22 / _UPVALUE4_, _UPVALUE6_.y + 22 / _UPVALUE4_, _UPVALUE6_.w - 44 / _UPVALUE4_, _UPVALUE6_.h - 44 / _UPVALUE4_, _UPVALUE5_.indicator, 243 - 10, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE6_.x + 82.5 / _UPVALUE4_, _UPVALUE6_.y + 82.5 / _UPVALUE4_, _UPVALUE6_.w - 165 / _UPVALUE4_, _UPVALUE6_.h - 165 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE6_.x + 85 / _UPVALUE4_, _UPVALUE6_.y + 85 / _UPVALUE4_, _UPVALUE6_.w - 170 / _UPVALUE4_, _UPVALUE6_.h - 170 / _UPVALUE4_, _UPVALUE5_.background, 0, 0, 0, tocolor(25, 25, 25, 245), false)
      dxDrawImage(_UPVALUE3_.x + 120 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      dxDrawImage(_UPVALUE3_.x - 5 / _UPVALUE4_, _UPVALUE3_.y - 5 / _UPVALUE4_, _UPVALUE3_.w + 10 / _UPVALUE4_, _UPVALUE3_.h + 10 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if isElectric then
        dxDrawImage(_UPVALUE6_.x + 227 / _UPVALUE4_, _UPVALUE6_.y + 265 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE6_.x + 230 / _UPVALUE4_, _UPVALUE6_.y + 265 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      if (data.fuel or 100) < 10 then
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - _UPVALUE7_) / 800, "SineCurve")), 125, 53 / infoVehicles.bak * (data.fuel or 100), 5)
        dxDrawText(("%.1f"):format(data.fuel or 100) .. "", _UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 415 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(interpolateBetween(60, 60, 60, 255, 0, 0, (getTickCount() - _UPVALUE7_) / 800, "SineCurve")), 0.9 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(120, 120, 120, 255), 125, 53 / infoVehicles.bak * (data.fuel or 100), 5)
        dxDrawText(("%.1f"):format(data.fuel or 100) .. "", _UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 415 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      end
      if isElectric then
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      else
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x, _UPVALUE3_.y + 168 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x, _UPVALUE3_.y + 210 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      end
      dxDrawText("" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. "", _UPVALUE3_.x, _UPVALUE3_.y + 38 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, font30, "center", "center", false, false, false, false, false)
      dxDrawText("km/h", _UPVALUE3_.x, _UPVALUE3_.y + 105 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, font18, "center", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 5 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
      if not _UPVALUE9_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 105 / _UPVALUE4_, _UPVALUE3_.y + 170 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      end
      dxDrawImage(_UPVALUE3_.x + 236 / _UPVALUE4_, _UPVALUE3_.y + 170 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if not _UPVALUE9_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
      dxDrawText("" .. string.format("%02.1f", data.oil / 10) .. "%", _UPVALUE3_.x - 121 / _UPVALUE4_, _UPVALUE3_.y + 200 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    end
    dxDrawText("" .. string.format("%02.1f", data.battery / 10) .. "%", _UPVALUE3_.x + 137 / _UPVALUE4_, _UPVALUE3_.y + 200 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 155 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 155 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 225 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 225 / _UPVALUE4_, _UPVALUE3_.y + 218 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if getElementHealth((getPedOccupiedVehicle(localPlayer))) < 500 then
      alpcha = 255
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 500 and getElementHealth((getPedOccupiedVehicle(localPlayer))) < 600 then
      alpcha = 150
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 600 and getElementHealth((getPedOccupiedVehicle(localPlayer))) < 700 then
      alpcha = 100
    elseif getElementHealth((getPedOccupiedVehicle(localPlayer))) > 700 and 800 > getElementHealth((getPedOccupiedVehicle(localPlayer))) then
      alpcha = 70
    elseif 800 < getElementHealth((getPedOccupiedVehicle(localPlayer))) and 1000 > getElementHealth((getPedOccupiedVehicle(localPlayer))) then
      alpcha = 30
    else
      alpcha = 0
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(65, 65, 65, 255), 180, 53, 5)
      if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 180, 53 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      else
        exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 185 / _UPVALUE4_, _UPVALUE3_.y + 185 / _UPVALUE4_, _UPVALUE3_.w - 50 / _UPVALUE4_, _UPVALUE3_.h - 50 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 180, 53 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      end
      dxDrawImage(_UPVALUE6_.x + 95 / _UPVALUE4_, _UPVALUE6_.y + 260 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.nitro_icon, 0, 0, 0, tocolor(52, 192, 235, 255), false)
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE3_.x - 125 / _UPVALUE4_, _UPVALUE3_.y + 413 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(52, 192, 235, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE3_.x + 15 / _UPVALUE4_, _UPVALUE3_.y + 15 / _UPVALUE4_, _UPVALUE3_.w - 30 / _UPVALUE4_, _UPVALUE3_.h - 30 / _UPVALUE4_, _UPVALUE5_.broken_texture, 0, 0, 0, tocolor(255, 255, 255, alpcha), false)
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE6_.x + 40 / _UPVALUE4_, _UPVALUE6_.y + 375 / _UPVALUE4_, 285 / _UPVALUE4_, 32 / _UPVALUE4_, 10 / _UPVALUE4_, tocolor(40, 40, 40, 255), false)
      if (data.gas or 100) > 5 then
        dxDrawRoundedRectangle(_UPVALUE6_.x + 43 / _UPVALUE4_, _UPVALUE6_.y + 378 / _UPVALUE4_, 2.79 * (data.gas or 100) / _UPVALUE4_, 26 / _UPVALUE4_, 10 / _UPVALUE4_, tocolor(255, 196, 0, 245), false)
      end
      dxDrawText("LPG", _UPVALUE3_.x, _UPVALUE3_.y + 593 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(255, 255, 255, 255), 1 / _UPVALUE4_, cyfry12, "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter2()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE0_ and pobierajLitry and getTickCount() - _UPVALUE1_ > 3000 then
      _UPVALUE1_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getElementData(localPlayer, "notshowspeedmeter") then
      return
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawRoundedRectangle(_UPVALUE3_.x - 202 / _UPVALUE4_, _UPVALUE3_.y + 258 / _UPVALUE4_, 569 / _UPVALUE4_, 174 / _UPVALUE4_, 35 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawRoundedRectangle(_UPVALUE3_.x - 200 / _UPVALUE4_, _UPVALUE3_.y + 260 / _UPVALUE4_, 565 / _UPVALUE4_, 170 / _UPVALUE4_, 35 / _UPVALUE4_, tocolor(30, 30, 30, 255), false)
      dxDrawText("000", _UPVALUE3_.x, _UPVALUE3_.y + 450 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, cyfry40, "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y + math.floor(450 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_ - math.floor(50 / _UPVALUE4_), _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry40, "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(550 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawText(string.format("%.1f", data.fuel) .. "L", _UPVALUE3_.x - math.floor(515 / _UPVALUE4_), _UPVALUE3_.y + math.floor(510 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE3_.x - math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(270 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), _UPVALUE5_.fuel_spedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawImage(_UPVALUE3_.x - math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(300 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), _UPVALUE5_.fuel_indicator_spedometer2, -110 + 110 / infoVehicles.bak * data.fuel, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 545 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 500 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 0.9 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE3_.x - 170 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 240 / _UPVALUE4_, 120 / _UPVALUE4_, _UPVALUE5_.battery_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawRoundedRectangle(_UPVALUE3_.x - 148 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 178 / infoVehicles.bak * data.fuel / _UPVALUE4_, 69 / _UPVALUE4_, 7 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
        dxDrawText(string.format("%.1f", data.fuel) .. " kWh", _UPVALUE3_.x - 480 / _UPVALUE4_, _UPVALUE3_.y + 495 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(255, 255, 255, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      end
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 324 / _UPVALUE4_, _UPVALUE3_.y + 290 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, interpolateColor(data.oil, 1000, 350, _UPVALUE6_), false)
      end
      dxDrawImage(_UPVALUE3_.x + 326 / _UPVALUE4_, _UPVALUE3_.y + 328 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, interpolateColor(data.battery, 1000, 350, _UPVALUE6_), false)
    else
      dxDrawRoundedRectangle(_UPVALUE3_.x - 202 / _UPVALUE4_, _UPVALUE3_.y + 258 / _UPVALUE4_, 569 / _UPVALUE4_, 174 / _UPVALUE4_, 35 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawRoundedRectangle(_UPVALUE3_.x - 200 / _UPVALUE4_, _UPVALUE3_.y + 260 / _UPVALUE4_, 565 / _UPVALUE4_, 170 / _UPVALUE4_, 35 / _UPVALUE4_, tocolor(30, 30, 30, 255), false)
      dxDrawText("000", _UPVALUE3_.x, _UPVALUE3_.y + 450 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, cyfry40, "right", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y + math.floor(450 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_ - math.floor(50 / _UPVALUE4_), _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, cyfry40, "right", "center", false, false, false, false, false)
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(550 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 190 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawText(string.format("%.1f", data.fuel) .. "L", _UPVALUE3_.x - math.floor(515 / _UPVALUE4_), _UPVALUE3_.y + math.floor(510 / _UPVALUE4_), _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE3_.x - math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(270 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), _UPVALUE5_.fuel_spedometer2, 0, 0, 0, tocolor(140, 140, 140, 255), false)
        dxDrawImage(_UPVALUE3_.x - math.floor(170 / _UPVALUE4_), _UPVALUE3_.y + math.floor(300 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), math.floor(190 / _UPVALUE4_), _UPVALUE5_.fuel_indicator_spedometer2, -110 + 110 / infoVehicles.bak * data.fuel, 0, 0, tocolor(140, 140, 140, 255), false)
        if infoVehicles.turbo then
          turbo1 = "T"
        else
          turbo1 = ""
        end
        dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 545 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
        dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 500 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE3_.x - 170 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 240 / _UPVALUE4_, 120 / _UPVALUE4_, _UPVALUE5_.battery_icon, 0, 0, 0, tocolor(230, 230, 230, 255), false)
        dxDrawRoundedRectangle(_UPVALUE3_.x - 148 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 178 / infoVehicles.bak * data.fuel / _UPVALUE4_, 69 / _UPVALUE4_, 7 / _UPVALUE4_, tocolor(60, 60, 60, 245), false)
        dxDrawText(string.format("%.1f", data.fuel) .. " kWh", _UPVALUE3_.x - 480 / _UPVALUE4_, _UPVALUE3_.y + 495 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(255, 255, 255, 255), 1 / _UPVALUE4_, cyfry15, "center", "center", false, false, false, false, false)
      end
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 324 / _UPVALUE4_, _UPVALUE3_.y + 290 / _UPVALUE4_, 26 / _UPVALUE4_, 26 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      end
      dxDrawImage(_UPVALUE3_.x + 326 / _UPVALUE4_, _UPVALUE3_.y + 328 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
      dxDrawText("" .. string.format("%02.1f", data.oil / 10) .. "%", _UPVALUE3_.x + 312 / _UPVALUE4_, _UPVALUE3_.y + 430 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    end
    dxDrawText("" .. string.format("%02.1f", data.battery / 10) .. "%", _UPVALUE3_.x + 312 / _UPVALUE4_, _UPVALUE3_.y + 510 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 230 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 230 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 270 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 270 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 310 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 310 / _UPVALUE4_, _UPVALUE3_.y + 390 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro then
      dxDrawImage(_UPVALUE3_.x + 32 / _UPVALUE4_, _UPVALUE3_.y + 398 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.nitro_icon, 0, 0, 0, tocolor(2, 192, 235, 255), false)
      dxDrawRoundedRectangle(_UPVALUE3_.x + 55 / _UPVALUE4_, _UPVALUE3_.y + 410 / _UPVALUE4_, 120 / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(40, 40, 40, 245), false)
      if 1 < (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) then
        dxDrawRoundedRectangle(_UPVALUE3_.x + 55 / _UPVALUE4_, _UPVALUE3_.y + 410 / _UPVALUE4_, 115 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(2, 192, 235, 245), false)
      end
      dxDrawText(string.format("%02.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L", _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 595 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, font12, "center", "center", false, false, false, false, false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE3_.x + 55 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 120 / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(40, 40, 40, 245), false)
      if (data.gas or 100) > 1 then
        dxDrawRoundedRectangle(_UPVALUE3_.x + 55 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 1.2 * (data.gas or 100) / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(60, 250, 60, 245), false)
      end
      dxDrawText("LPG", _UPVALUE3_.x - 135 / _UPVALUE4_, _UPVALUE3_.y + 345 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 1 / _UPVALUE4_, font12, "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter4()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE0_ and pobierajLitry and getTickCount() - _UPVALUE1_ > 3000 then
      _UPVALUE1_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getElementData(localPlayer, "notshowspeedmeter") then
      return
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    dxDrawImage(_UPVALUE3_.x + 60 / _UPVALUE4_, _UPVALUE3_.y + 100 / _UPVALUE4_, _UPVALUE3_.w - 75 / _UPVALUE4_, _UPVALUE3_.h - 75 / _UPVALUE4_, _UPVALUE5_.background_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(65, 65, 65, 255), 140, 80, 5)
    exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(65, 65, 65, 255), 249, 222, 5)
    dxDrawText("000", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 300 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, font26, "center", "center", false, false, false, false, false)
    if isElectric then
      dxDrawText("ELEKTRYK", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 375 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(40, 40, 40, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    else
      if infoVehicles.turbo then
        turbo1 = "T"
      else
        turbo1 = ""
      end
      dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 395 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(40, 40, 40, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
      dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 360 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(40, 40, 40, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    end
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y + 300 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 134 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, font26, "right", "center", false, false, false, false, false)
      if math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 333 then
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 249, 333 / 1.5, 5)
      dxDrawImage(_UPVALUE3_.x + 70 / _UPVALUE4_, _UPVALUE3_.y + 110 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE3_.x + 70 / _UPVALUE4_, _UPVALUE3_.y + 110 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, _UPVALUE5_.numbers, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if isElectric then
        dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 340 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 340 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 140, 80 / infoVehicles.bak * (data.fuel or 100), 5)
      dxDrawImage(_UPVALUE3_.x + 140 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 230 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, interpolateColor(data.oil, 1000, 350, _UPVALUE6_), false)
      end
      dxDrawImage(_UPVALUE3_.x + 254 / _UPVALUE4_, _UPVALUE3_.y + 230 / _UPVALUE4_, 21 / _UPVALUE4_, 21 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, interpolateColor(data.battery, 1000, 350, _UPVALUE6_), false)
    else
      dxDrawText(333, _UPVALUE3_.x, _UPVALUE3_.y + 300 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 134 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, font26, "right", "center", false, false, false, false, false)
      if 333 < 333 then
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(255, 255, 255, 150), 249, 333 / 1.5, 5)
      dxDrawImage(_UPVALUE3_.x + 70 / _UPVALUE4_, _UPVALUE3_.y + 110 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(_UPVALUE3_.x + 70 / _UPVALUE4_, _UPVALUE3_.y + 110 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, _UPVALUE5_.numbers, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      if isElectric then
        dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 340 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 340 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, tocolor(150, 150, 150, 150), 140, 80 / infoVehicles.bak * (data.fuel or 100), 5)
      dxDrawImage(_UPVALUE3_.x + 140 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 132 / _UPVALUE4_, _UPVALUE3_.y + 230 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      end
      dxDrawImage(_UPVALUE3_.x + 254 / _UPVALUE4_, _UPVALUE3_.y + 230 / _UPVALUE4_, 21 / _UPVALUE4_, 21 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
      dxDrawText("" .. string.format("%02.1f", data.oil / 10) .. "%", _UPVALUE3_.x - 20 / _UPVALUE4_, _UPVALUE3_.y + 315 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    end
    dxDrawText("" .. string.format("%02.1f", data.battery / 10) .. "%", _UPVALUE3_.x + 220 / _UPVALUE4_, _UPVALUE3_.y + 315 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 175 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 175 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 210 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 210 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 240 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 240 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 25 / _UPVALUE4_, 25 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 208 / _UPVALUE4_, _UPVALUE3_.y + 255 / _UPVALUE4_, _UPVALUE3_.w - 185 / _UPVALUE4_, _UPVALUE3_.h - 185 / _UPVALUE4_, tocolor(35, 35, 35, 200), 320, 80, 5)
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 208 / _UPVALUE4_, _UPVALUE3_.y + 255 / _UPVALUE4_, _UPVALUE3_.w - 185 / _UPVALUE4_, _UPVALUE3_.h - 185 / _UPVALUE4_, tocolor(52, 192, 235, 200), 320, 80 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 165 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.nitro_icon, 90, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE3_.x + 170 / _UPVALUE4_, _UPVALUE3_.y + 215 / _UPVALUE4_, 70 / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(35, 35, 35, 200), false)
      if (data.gas or 100) > 5 then
        dxDrawRoundedRectangle(_UPVALUE3_.x + 170 / _UPVALUE4_, _UPVALUE3_.y + 215 / _UPVALUE4_, 0.7 * (data.gas or 100) / _UPVALUE4_, 5 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(60, 250, 60, 205), false)
      end
      dxDrawText("LPG", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 210 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(50, 50, 50, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    end
  end
end
function renderSpeedMeter5()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE0_ and pobierajLitry and getTickCount() - _UPVALUE1_ > 3000 then
      _UPVALUE1_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if getElementData(localPlayer, "notshowspeedmeter") then
      return
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE3_.x + 57.5 / _UPVALUE4_, _UPVALUE3_.y + 97.5 / _UPVALUE4_, _UPVALUE3_.w - 70 / _UPVALUE4_, _UPVALUE3_.h - 70 / _UPVALUE4_, _UPVALUE5_.background_light_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
    else
      dxDrawImage(_UPVALUE3_.x + 57.5 / _UPVALUE4_, _UPVALUE3_.y + 97.5 / _UPVALUE4_, _UPVALUE3_.w - 70 / _UPVALUE4_, _UPVALUE3_.h - 70 / _UPVALUE4_, _UPVALUE5_.background_light_speedometer2, 0, 0, 0, tocolor(200, 200, 200, 100), false)
    end
    dxDrawImage(_UPVALUE3_.x + 60 / _UPVALUE4_, _UPVALUE3_.y + 100 / _UPVALUE4_, _UPVALUE3_.w - 75 / _UPVALUE4_, _UPVALUE3_.h - 75 / _UPVALUE4_, _UPVALUE5_.background_light_speedometer2, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 90 / _UPVALUE4_, _UPVALUE3_.h - 90 / _UPVALUE4_, tocolor(65, 65, 65, 255), 100, 60, 5)
    dxDrawRoundedRectangle(_UPVALUE3_.x + 170 / _UPVALUE4_, _UPVALUE3_.y + 310 / _UPVALUE4_, 75 / _UPVALUE4_, 20 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(25, 25, 25, 200), false)
    dxDrawText("000", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 240 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(25, 25, 25, 255), 1 / _UPVALUE4_, font16, "center", "center", false, false, false, false, false)
    if getVehicleOverrideLights((getPedOccupiedVehicle(localPlayer))) == 2 then
      dxDrawImage(_UPVALUE3_.x + 60 / _UPVALUE4_, _UPVALUE3_.y + 100 / _UPVALUE4_, _UPVALUE3_.w - 75 / _UPVALUE4_, _UPVALUE3_.h - 75 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      dxDrawImage(_UPVALUE3_.x + 155 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 90 / _UPVALUE4_, _UPVALUE3_.h - 90 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 100, 60 / infoVehicles.bak * (data.fuel or 100), 5)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE3_.x + 285 / _UPVALUE4_, _UPVALUE3_.y + 305 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      else
        dxDrawImage(_UPVALUE3_.x + 285 / _UPVALUE4_, _UPVALUE3_.y + 305 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), false)
      end
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 103 / _UPVALUE4_, _UPVALUE3_.y + 438 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, normal11, "center", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y + 240 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 142 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(getVehicleHeadLightColor((getPedOccupiedVehicle(localPlayer)))), 1 / _UPVALUE4_, font16, "right", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 147 / _UPVALUE4_, _UPVALUE3_.y + 209 / _UPVALUE4_, 18 / _UPVALUE4_, 18 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, interpolateColor(data.battery, 1000, 350, _UPVALUE6_), false)
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 141 / _UPVALUE4_, _UPVALUE3_.y + 245 / _UPVALUE4_, 23 / _UPVALUE4_, 23 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, interpolateColor(data.oil, 1000, 350, _UPVALUE6_), false)
      end
    else
      dxDrawImage(_UPVALUE3_.x + 60 / _UPVALUE4_, _UPVALUE3_.y + 100 / _UPVALUE4_, _UPVALUE3_.w - 75 / _UPVALUE4_, _UPVALUE3_.h - 75 / _UPVALUE4_, _UPVALUE5_.lines, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      dxDrawImage(_UPVALUE3_.x + 155 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.lights, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 247 / _UPVALUE4_, _UPVALUE3_.w - 90 / _UPVALUE4_, _UPVALUE3_.h - 90 / _UPVALUE4_, tocolor(150, 150, 150, 150), 100, 60 / infoVehicles.bak * (data.fuel or 100), 5)
      if infoVehicles.rodzaj ~= "Elektryczny" then
        dxDrawImage(_UPVALUE3_.x + 285 / _UPVALUE4_, _UPVALUE3_.y + 305 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.fuel_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      else
        dxDrawImage(_UPVALUE3_.x + 285 / _UPVALUE4_, _UPVALUE3_.y + 305 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.battery_icon_speedometer2, 0, 0, 0, tocolor(150, 150, 150, 255), false)
      end
      dxDrawText(string.format("%08.1f", data.mileage or 95124) .. "", _UPVALUE3_.x + 103 / _UPVALUE4_, _UPVALUE3_.y + 438 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, normal11, "center", "center", false, false, false, false, false)
      dxDrawText(math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161), _UPVALUE3_.x, _UPVALUE3_.y + 240 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 142 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(150, 150, 150, 255), 1 / _UPVALUE4_, font16, "right", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE3_.x + 147 / _UPVALUE4_, _UPVALUE3_.y + 209 / _UPVALUE4_, 18 / _UPVALUE4_, 18 / _UPVALUE4_, _UPVALUE5_.battery1_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
        dxDrawImage(_UPVALUE3_.x + 141 / _UPVALUE4_, _UPVALUE3_.y + 245 / _UPVALUE4_, 23 / _UPVALUE4_, 23 / _UPVALUE4_, _UPVALUE5_.oil_icon, 0, 0, 0, tocolor(143, 143, 143, 255), false)
      end
    end
    dxDrawText("" .. string.format("%02.1f", data.battery / 10) .. "%", _UPVALUE3_.x + 4 / _UPVALUE4_, _UPVALUE3_.y + 265 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    if not _UPVALUE7_[getElementModel((getPedOccupiedVehicle(localPlayer)))] and not isElectric then
      dxDrawText("" .. string.format("%02.1f", data.oil / 10) .. "%", _UPVALUE3_.x - 2 / _UPVALUE4_, _UPVALUE3_.y + 338 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(200, 200, 200, 255), 0.9 / _UPVALUE4_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, false, false)
    end
    if not getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 183 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 183 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.engine, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isElementFrozen((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 210 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(236, 111, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 210 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.brake, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if isVehicleLocked((getPedOccupiedVehicle(localPlayer))) then
      dxDrawImage(_UPVALUE3_.x + 235 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(236, 0, 0, 255), false)
    else
      dxDrawImage(_UPVALUE3_.x + 235 / _UPVALUE4_, _UPVALUE3_.y + 285 / _UPVALUE4_, 22 / _UPVALUE4_, 22 / _UPVALUE4_, _UPVALUE5_.lock, 0, 0, 0, tocolor(143, 143, 143, 255), false)
    end
    if infoVehicles.nitro == true then
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 243 / _UPVALUE4_, _UPVALUE3_.w - 200 / _UPVALUE4_, _UPVALUE3_.h - 200 / _UPVALUE4_, tocolor(65, 65, 65, 255), 320, 80, 5)
      exports.shader_circle:dxDrawCircle(_UPVALUE3_.x + 207 / _UPVALUE4_, _UPVALUE3_.y + 243 / _UPVALUE4_, _UPVALUE3_.w - 200 / _UPVALUE4_, _UPVALUE3_.h - 200 / _UPVALUE4_, tocolor(52, 192, 235, 200), 320, 80 / infoVehicles.butlaN * (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0), 5)
      dxDrawImage(_UPVALUE3_.x + 193 / _UPVALUE4_, _UPVALUE3_.y + 165 / _UPVALUE4_, 30 / _UPVALUE4_, 30 / _UPVALUE4_, _UPVALUE5_.nitro_icon, 90, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isElectric then
      dxDrawText("ELEKTRYK", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 335 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(25, 25, 25, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    else
      if infoVehicles.turbo then
        turbo1 = "T"
      else
        turbo1 = ""
      end
      dxDrawText(infoVehicles.rodzaj, _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 350 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(25, 25, 25, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
      dxDrawText("" .. infoVehicles.pojemnosc .. "" .. turbo1 .. " " .. infoVehicles.cylindry .. "", _UPVALUE3_.x + 100 / _UPVALUE4_, _UPVALUE3_.y + 320 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(25, 25, 25, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    end
    if infoVehicles.rodzaj ~= "Elektryczny" and infoVehicles.lpg_montage then
      dxDrawRoundedRectangle(_UPVALUE3_.x + 270 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 5 / _UPVALUE4_, 50 / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(25, 25, 25, 200), false)
      if (data.gas or 100) > 5 then
        dxDrawRoundedRectangle(_UPVALUE3_.x + 270 / _UPVALUE4_, _UPVALUE3_.y + 225 / _UPVALUE4_, 5 / _UPVALUE4_, 0.7 * (data.gas or 100) / _UPVALUE4_, 2 / _UPVALUE4_, tocolor(60, 250, 60, 205), false)
      end
      dxDrawText("LPG", _UPVALUE3_.x + 230 / _UPVALUE4_, _UPVALUE3_.y + 220 / _UPVALUE4_, _UPVALUE3_.x + 362 / _UPVALUE4_ - 50 / _UPVALUE4_, _UPVALUE3_.y + 204 / _UPVALUE4_, tocolor(25, 25, 25, 255), 1 / _UPVALUE4_, font13, "center", "center", false, false, false, false, false)
    end
    dxDrawImage(_UPVALUE3_.x + 70 / _UPVALUE4_, _UPVALUE3_.y + 110 / _UPVALUE4_, _UPVALUE3_.w - 95 / _UPVALUE4_, _UPVALUE3_.h - 95 / _UPVALUE4_, _UPVALUE5_.indicator_speedometer2, (getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 107 - 63, 0, 0, tocolor(200, 200, 200, 255), false)
  end
end
function renderSpeedMeterOpty()
  if getPedOccupiedVehicle(localPlayer) then
    if infoVehicles.id then
      if getElementData(getPedOccupiedVehicle(localPlayer), "lpg:onOFF") then
        if getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and ((data.gas or 100) and (data.gas or 100) or (data.mileage or 95124) and (data.mileage or 95124)) then
          naliczajLPG((getPedOccupiedVehicle(localPlayer)))
          if (data.gas or 100) < 1 then
            setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
          end
        end
      elseif getVehicleEngineState((getPedOccupiedVehicle(localPlayer))) and (string.format("%1d", data.fuel or 100) * 0.5 and string.format("%1d", data.fuel or 100) * 0.5 or (data.mileage or 95124) and (data.mileage or 95124)) then
        naliczaj((getPedOccupiedVehicle(localPlayer)))
        if string.format("%1d", data.fuel or 100) * 0.5 < 1 then
          setVehicleEngineState(getPedOccupiedVehicle(localPlayer), false)
        end
      end
    end
    if 100 < getTickCount() - _UPVALUE2_ and pobierajLitry and getTickCount() - _UPVALUE3_ > 3000 then
      _UPVALUE3_ = getTickCount()
      setVehicleNitroLevel(getPedOccupiedVehicle(localPlayer), 1)
      if (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 <= 0.1 then
        pobierajLitry = false
        setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
        triggerServerEvent("ev", resourceRoot, "saveNitro", 0)
      else
        triggerServerEvent("ev", resourceRoot, "saveNitro", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1)
      end
    end
    if getElementData(localPlayer, "notshowhud") then
      return
    end
    if _UPVALUE4_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      return
    end
    if infoVehicles.nitro == true then
      dxDrawText("#ffb700" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. [[
 #ffffffKM/h
Paliwo: #ffb700]] .. math.floor(data.fuel or 100) .. "#ffffffL / #ffb700" .. infoVehicles.bak .. [[
#ffffffL
NITRO: #02c0eb]] .. string.format("%.1f", getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) .. "L #ffffff/ #02c0eb" .. infoVehicles.butlaN .. [[
#ffffffL
AKUMULATOR: #ffb700]] .. string.format("%02.1f", data.battery / 10) .. [[
 #ffffff%
OLEJ: #ffb700]] .. string.format("%02.1f", data.oil / 10) .. " #ffffff%", _UPVALUE0_.x, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 142 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, font26, "right", "center", false, false, false, true, false)
    else
      dxDrawText("#ffb700" .. math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) .. [[
 #ffffffKM/h
Paliwo: #ffb700]] .. math.floor(data.fuel or 100) .. "#ffffffL / #ffb700" .. infoVehicles.bak .. [[
#ffffffL
AKUMULATOR: #ffb700]] .. string.format("%02.1f", data.battery / 10) .. [[
 #ffffff%
OLEJ: #ffb700]] .. string.format("%02.1f", data.oil / 10) .. " #ffffff%", _UPVALUE0_.x, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ - 142 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, font26, "right", "center", false, false, false, true, false)
    end
  end
end
function loadTextures(_ARG_0_)
  if _ARG_0_ == 4 then
    _UPVALUE0_ = {
      lines = dxCreateTexture("images/speedmeter3/lines.png"),
      background_light_speedometer2 = dxCreateTexture("images/speedmeter2/background_light.png"),
      indicator_speedometer2 = dxCreateTexture("images/speedmeter2/indicator.png"),
      fuel_icon_speedometer2 = dxCreateTexture("images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture("images/speedmeter2/battery_icon.png"),
      nitro_icon = dxCreateTexture("images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture("images/speedmeter1/engine.png"),
      brake = dxCreateTexture("images/speedmeter1/brake.png"),
      lock = dxCreateTexture("images/speedmeter1/lock.png"),
      lights = dxCreateTexture("images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture("images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture("images/speedmeter1/battery1_icon.png")
    }
    font16 = exports.ST_gui:getGUIFont("font16")
    normal11 = exports.ST_gui:getGUIFont("normal11")
    font13 = exports.ST_gui:getGUIFont("font13")
  elseif _ARG_0_ == 3 then
    _UPVALUE0_ = {
      background_speedometer2 = dxCreateTexture("images/speedmeter2/background.png"),
      fuel_icon_speedometer2 = dxCreateTexture("images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture("images/speedmeter2/battery_icon.png"),
      nitro_icon = dxCreateTexture("images/speedmeter2/nitro_icon.png"),
      numbers = dxCreateTexture("images/speedmeter1/numbers.png"),
      lines = dxCreateTexture("images/speedmeter1/lines.png"),
      engine = dxCreateTexture("images/speedmeter1/engine.png"),
      brake = dxCreateTexture("images/speedmeter1/brake.png"),
      lock = dxCreateTexture("images/speedmeter1/lock.png"),
      lights = dxCreateTexture("images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture("images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture("images/speedmeter1/battery1_icon.png")
    }
    font13 = exports.ST_gui:getGUIFont("font13")
    font26 = exports.ST_gui:getGUIFont("font26")
    font12 = exports.ST_gui:getGUIFont("font12")
  elseif _ARG_0_ == 2 then
    _UPVALUE0_ = {
      fuel_spedometer2 = dxCreateTexture("images/speedmeter2/fuel.png"),
      fuel_indicator_spedometer2 = dxCreateTexture("images/speedmeter2/fuel_indicator.png"),
      battery_icon = dxCreateTexture("images/speedmeter1/battery_icon.png"),
      nitro_icon = dxCreateTexture("images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture("images/speedmeter1/engine.png"),
      brake = dxCreateTexture("images/speedmeter1/brake.png"),
      lock = dxCreateTexture("images/speedmeter1/lock.png"),
      lights = dxCreateTexture("images/speedmeter1/lights.png"),
      oil_icon = dxCreateTexture("images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture("images/speedmeter1/battery1_icon.png")
    }
    cyfry40 = exports.ST_gui:getGUIFont("cyfry40")
    cyfry15 = exports.ST_gui:getGUIFont("cyfry15")
    font12 = exports.ST_gui:getGUIFont("font12")
  elseif _ARG_0_ == 1 then
    _UPVALUE0_ = {
      indicator_speedometer2 = dxCreateTexture("images/speedmeter2/indicator.png"),
      background_speedometer2 = dxCreateTexture("images/speedmeter2/background.png"),
      background_light_speedometer2 = dxCreateTexture("images/speedmeter2/background_light.png"),
      fuel_icon_speedometer2 = dxCreateTexture("images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture("images/speedmeter2/battery_icon.png"),
      fuel_spedometer2 = dxCreateTexture("images/speedmeter2/fuel.png"),
      fuel_indicator_spedometer2 = dxCreateTexture("images/speedmeter2/fuel_indicator.png"),
      nitro_icon = dxCreateTexture("images/speedmeter2/nitro_icon.png"),
      oil_icon = dxCreateTexture("images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture("images/speedmeter1/battery1_icon.png"),
      numbers = dxCreateTexture("images/speedmeter1/numbers.png"),
      lines = dxCreateTexture("images/speedmeter1/lines.png"),
      engine = dxCreateTexture("images/speedmeter1/engine.png"),
      brake = dxCreateTexture("images/speedmeter1/brake.png"),
      lock = dxCreateTexture("images/speedmeter1/lock.png"),
      lights = dxCreateTexture("images/speedmeter1/lights.png")
    }
    cyfry15 = exports.ST_gui:getGUIFont("cyfry15")
    cyfry30 = exports.ST_gui:getGUIFont("cyfry30")
    cyfry12 = exports.ST_gui:getGUIFont("cyfry12")
  else
    _UPVALUE0_ = {
      background = dxCreateTexture("images/speedmeter2/background_light.png"),
      lines = dxCreateTexture("images/speedmeter0/lines.png"),
      numbers = dxCreateTexture("images/speedmeter1/numbers.png"),
      indicator = dxCreateTexture("images/speedmeter1/indicator.png"),
      broken_texture = dxCreateTexture("images/speedmeter1/broken_texture.png"),
      battery_icon = dxCreateTexture("images/speedmeter1/battery_icon.png"),
      nitro_icon = dxCreateTexture("images/speedmeter2/nitro_icon.png"),
      engine = dxCreateTexture("images/speedmeter1/engine.png"),
      brake = dxCreateTexture("images/speedmeter1/brake.png"),
      lock = dxCreateTexture("images/speedmeter1/lock.png"),
      lights = dxCreateTexture("images/speedmeter1/lights.png"),
      fuel_icon_speedometer2 = dxCreateTexture("images/speedmeter2/fuel_icon.png"),
      battery_icon_speedometer2 = dxCreateTexture("images/speedmeter2/battery_icon.png"),
      oil_icon = dxCreateTexture("images/speedmeter1/oil_icon.png"),
      battery1_icon = dxCreateTexture("images/speedmeter1/battery1_icon.png")
    }
    font30 = exports.ST_gui:getGUIFont("font26")
    font18 = exports.ST_gui:getGUIFont("font18")
    cyfry12 = exports.ST_gui:getGUIFont("cyfry12")
  end
end
function naliczaj(_ARG_0_)
  if _UPVALUE0_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
    return
  end
  if getTickCount() - _UPVALUE1_ > 5000 then
    _UPVALUE1_ = getTickCount()
    spd = (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.2 / 2
    if 0 < spd then
      if isElectric then
      elseif not _UPVALUE2_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
        data.oil = data.oil - spd * math.random(1, 5) / 10
        if data.oil < 50 then
          data.oil = 50
        end
      end
      data.mileage = (data.mileage or 0) + spd
      data.fuel = (data.fuel or 0) - spd * 0.4 / 3 - spd * 1.2 / 3
      data.battery = data.battery - spd * math.random(1, 5) / 80
    end
  end
end
function naliczajLPG(_ARG_0_)
  if getTickCount() - _UPVALUE0_ > 5000 then
    _UPVALUE0_ = getTickCount()
    if 0 < (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.3 / 2 then
      data.mileage = (data.mileage or 0) + (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.3 / 2
      data.gas = (data.gas or 0) - (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.3 / 2 * 1 / 3
      data.battery = data.battery - (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.3 / 2 * math.random(1, 5) / 80
      if _UPVALUE1_[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
        return
      end
      data.oil = data.oil - (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.3 / 2 * math.random(1, 5) / 10
      if data.oil < 50 then
        data.oil = 50
      end
    end
  end
end
function toggleNitro(_ARG_0_, _ARG_1_)
  if getPedOccupiedVehicle(localPlayer) and getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) and getPedOccupiedVehicle(localPlayer) and getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 8) ~= 0 then
    if 0 >= (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:nitro") or 0) - 0.1 then
      setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), false)
      pobierajLitry = false
      return
    end
    setVehicleNitroActivated(getPedOccupiedVehicle(localPlayer), _ARG_1_ == "down")
    pobierajLitry = _ARG_1_ == "down"
    _UPVALUE0_ = getTickCount()
  end
end
bindKey("vehicle_fire", "both", toggleNitro)
bindKey("vehicle_secondary_fire", "both", toggleNitro)
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
addEventHandler("onClientResourceStart", resourceRoot, function()
  triggerServerEvent("ev", resourceRoot, "showInfo", localPlayer)
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoClient" then
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      if _FORV_10_.settings_liczniki == 1 then
        switchSpeedMeter(_FORV_10_.settings_liczniki)
      else
        switchSpeedMeter(false)
      end
    end
  elseif _ARG_0_ == "changeOilReload" then
    data.oil = 1000
  elseif _ARG_0_ == "changeBatteryReload" then
    data.battery = 1000
  elseif _ARG_0_ == "fuelReload" then
    if _ARG_2_ == "add" then
      if tonumber(data.fuel) >= tonumber(infoVehicles.bak) then
        data.fuel = tonumber(infoVehicles.bak)
        return
      end
      data.fuel = data.fuel + _ARG_1_
    else
      data.fuel = _ARG_1_
    end
  elseif _ARG_0_ == "fuelCanister" then
    print(data.fuel, infoVehicles.bak)
    if tonumber(data.fuel) >= tonumber(infoVehicles.bak) then
      return
    end
    if tonumber(_ARG_1_) >= tonumber(infoVehicles.bak - data.fuel) + 1 then
      exports.st_gui:showPlayerNotification("Nie masz tyle miejsca w zbiorniku", "error")
      return
    end
    data.fuel = data.fuel + _ARG_1_
    triggerServerEvent("ev", resourceRoot, "nextCanister", data.fuel, _ARG_1_)
  elseif _ARG_0_ == "gasReload" then
    if _ARG_2_ == "add" then
      data.gas = data.gas + _ARG_1_
    else
      data.gas = _ARG_1_
    end
  elseif _ARG_0_ == "saveClient" then
    saveFunction(_ARG_1_)
  end
end)
function onVehEnter(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    if isEventHandlerAdded("onClientRender", root, driftRender) then
      removeEventHandler("onClientRender", root, driftRender)
    end
    if isEventHandlerAdded("onClientRender", root, absRender) then
      removeEventHandler("onClientRender", root, absRender)
    end
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeter5) then
      removeEventHandler("onClientRender", root, renderSpeedMeter5)
      _UPVALUE0_ = false
    end
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeter4) then
      removeEventHandler("onClientRender", root, renderSpeedMeter4)
      _UPVALUE0_ = false
    end
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeter2) then
      removeEventHandler("onClientRender", root, renderSpeedMeter2)
      _UPVALUE0_ = false
    end
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeter3) then
      removeEventHandler("onClientRender", root, renderSpeedMeter3)
      _UPVALUE0_ = false
    end
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeter1) then
      removeEventHandler("onClientRender", root, renderSpeedMeter1)
      _UPVALUE0_ = false
    end
    if not _UPVALUE0_ then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
        if getVehicleType((getPedOccupiedVehicle(localPlayer))) == "Automobile" then
          if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").drift == 1 then
            addEventHandler("onClientRender", getRootElement(), driftRender)
          end
          if exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:ABS", "synced") then
            addEventHandler("onClientRender", getRootElement(), absRender)
          end
        end
        if getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 8) ~= 0 then
          nitroMontage = true
        else
          nitroMontage = false
        end
        data.battery = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:battery", "synced")
        data.oil = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:oil", "synced")
        data.mileage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124
        data.fuel = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100
        data.gas = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 0
        if tonumber(data.fuel) > tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak) then
          data.fuel = tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak)
        end
        isElectric = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Elektryczny"
        infoVehicles = {
          bak = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 100,
          cylindry = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").cylindry or "V4",
          pojemnosc = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").pojemnosc or "1.4",
          rodzaj = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj or "DIESEL",
          turbo = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").turbo == 1,
          lpg_montage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak",
          licznik = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").licznik or false,
          id = true,
          nitro = nitroMontage,
          butlaN = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").butlaN or 5
        }
      else
        data.mileage = 95124
        data.fuel = 100
        data.gas = 0
        data.oil = 834
        data.battery = 789
        isElectric = false
        infoVehicles = {
          bak = 100,
          cylindry = "V4",
          pojemnosc = "1.2",
          rodzaj = "Diesel",
          turbo = false,
          lpg_montage = false,
          licznik = false,
          id = false,
          nitro = false,
          butlaN = false
        }
      end
      _UPVALUE0_ = true
      if infoVehicles.licznik == 4 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter5)
      elseif infoVehicles.licznik == 3 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter4)
      elseif infoVehicles.licznik == 2 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter2)
      elseif infoVehicles.licznik == 1 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter3)
      else
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter1)
      end
    end
  end
end
function onVehExit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    if infoVehicles.licznik == 4 then
      removeEventHandler("onClientRender", root, renderSpeedMeter5)
    elseif infoVehicles.licznik == 3 then
      removeEventHandler("onClientRender", root, renderSpeedMeter4)
    elseif infoVehicles.licznik == 2 then
      removeEventHandler("onClientRender", root, renderSpeedMeter2)
    elseif infoVehicles.licznik == 1 then
      removeEventHandler("onClientRender", root, renderSpeedMeter3)
    else
      removeEventHandler("onClientRender", root, renderSpeedMeter1)
    end
    for _FORV_5_, _FORV_6_ in pairs(_UPVALUE0_) do
      if isElement(_FORV_6_) then
        destroyElement(_FORV_6_)
      end
    end
    _UPVALUE0_ = {}
    if getElementData(source, "vehicle_tuning") then
      triggerServerEvent("ev", resourceRoot, "saveOil", data.oil, data.battery, data.mileage, data.fuel, data.gas)
      if getVehicleType(source) == "Automobile" then
        if getElementData(source, "vehicle_tuning").drift == 1 then
          removeEventHandler("onClientRender", getRootElement(), driftRender)
        end
        if exports.ST_datasystem:getCustomData(source, "vehicle:ABS", "synced") then
          removeEventHandler("onClientRender", getRootElement(), absRender)
        end
      end
    end
    _UPVALUE1_ = false
  end
end
function saveFunction()
  triggerServerEvent("ev", resourceRoot, "saveOil", data.oil, data.battery, data.mileage, data.fuel, data.gas)
end
function onVehEnterOpty(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    if isEventHandlerAdded("onClientRender", root, renderSpeedMeterOpty) then
      removeEventHandler("onClientRender", root, renderSpeedMeterOpty)
    end
    if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
      data.battery = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:battery", "synced")
      data.oil = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:oil", "synced")
      data.mileage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124
      data.fuel = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100
      data.gas = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 0
      if data.fuel > tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak) then
        data.fuel = tonumber(getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak)
      end
      if getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 8) ~= 0 then
        nitroMontage = true
      else
        nitroMontage = false
      end
      isElectric = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Elektryczny"
      infoVehicles = {
        bak = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 100,
        rodzaj = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj or "DIESEL",
        lpg_montage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak",
        id = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") or 0,
        nitro = nitroMontage,
        butlaN = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").butlaN or 5
      }
    else
      data.mileage = 95124
      data.fuel = 100
      data.gas = 0
      data.oil = 834
      data.battery = 789
      isElectric = false
      infoVehicles = {
        bak = 100,
        rodzaj = "Diesel",
        lpg_montage = false,
        id = false,
        nitro = false,
        butlaN = false
      }
    end
    addEventHandler("onClientRender", root, renderSpeedMeterOpty)
  end
end
function onVehExitOpty(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    removeEventHandler("onClientRender", root, renderSpeedMeterOpty)
    triggerServerEvent("ev", resourceRoot, "saveOil", data.oil, data.battery, data.mileage, data.fuel, data.gas)
    _UPVALUE0_ = false
  end
end
function switchSpeedMeter(_ARG_0_, _ARG_1_)
  if isEventHandlerAdded("onClientVehicleEnter", root, onVehEnter) then
    removeEventHandler("onClientVehicleEnter", root, onVehEnter)
  end
  if isEventHandlerAdded("onClientVehicleStartExit", root, onVehExit) then
    removeEventHandler("onClientVehicleStartExit", root, onVehExit)
  end
  if isEventHandlerAdded("onClientVehicleEnter", root, onVehEnterOpty) then
    removeEventHandler("onClientVehicleEnter", root, onVehEnterOpty)
  end
  if isEventHandlerAdded("onClientVehicleStartExit", root, onVehExitOpty) then
    removeEventHandler("onClientVehicleStartExit", root, onVehExitOpty)
  end
  if isEventHandlerAdded("onClientRender", root, driftRender) then
    removeEventHandler("onClientRender", root, driftRender)
  end
  if isEventHandlerAdded("onClientRender", root, absRender) then
    removeEventHandler("onClientRender", root, absRender)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter5) then
    removeEventHandler("onClientRender", root, renderSpeedMeter5)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter4) then
    removeEventHandler("onClientRender", root, renderSpeedMeter4)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter2) then
    removeEventHandler("onClientRender", root, renderSpeedMeter2)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter3) then
    removeEventHandler("onClientRender", root, renderSpeedMeter3)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeter1) then
    removeEventHandler("onClientRender", root, renderSpeedMeter1)
  end
  if isEventHandlerAdded("onClientRender", root, renderSpeedMeterOpty) then
    removeEventHandler("onClientRender", root, renderSpeedMeterOpty)
  end
  for _FORV_5_, _FORV_6_ in pairs(_UPVALUE0_) do
    if isElement(_FORV_6_) then
      destroyElement(_FORV_6_)
    end
  end
  _UPVALUE1_ = nil
  if _ARG_0_ == 1 then
    font26 = exports.ST_gui:getGUIFont("font26")
    if isPedInVehicle(localPlayer) then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
        data.battery = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:battery", "synced")
        data.oil = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:oil", "synced")
        if _ARG_1_ ~= true then
          data.mileage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124
          data.fuel = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100
          data.gas = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 0
        end
        if getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 8) ~= 0 then
          nitroMontage = true
        else
          nitroMontage = false
        end
        isElectric = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Elektryczny"
        infoVehicles = {
          bak = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 100,
          rodzaj = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj or "DIESEL",
          lpg_montage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak",
          id = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") or 0,
          nitro = nitroMontage,
          butlaN = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").butlaN or 5
        }
      else
        data.mileage = 95124
        data.fuel = 100
        data.gas = 0
        data.oil = 834
        data.battery = 789
        isElectric = false
        infoVehicles = {
          bak = 100,
          rodzaj = "Diesel",
          lpg_montage = false,
          id = false,
          nitro = false,
          butlaN = false
        }
      end
      addEventHandler("onClientRender", root, renderSpeedMeterOpty)
    end
    addEventHandler("onClientVehicleEnter", root, onVehEnterOpty)
    addEventHandler("onClientVehicleStartExit", root, onVehExitOpty)
  else
    if isPedInVehicle(localPlayer) and not _UPVALUE1_ then
      if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
        data.battery = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:battery", "synced")
        data.oil = exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:oil", "synced")
        if _ARG_1_ ~= true then
          data.mileage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:mileage") or 95124
          data.fuel = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:fuel") or 100
          data.gas = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:gas") or 0
        end
        if getVehicleType((getPedOccupiedVehicle(localPlayer))) == "Automobile" then
          if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").drift == 1 then
            addEventHandler("onClientRender", getRootElement(), driftRender)
          end
          if exports.ST_datasystem:getCustomData(getPedOccupiedVehicle(localPlayer), "vehicle:ABS", "synced") then
            addEventHandler("onClientRender", getRootElement(), absRender)
          end
        end
        if getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 8) ~= 0 then
          nitroMontage = true
        else
          nitroMontage = false
        end
        infoVehicles = {
          bak = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").bak or 100,
          cylindry = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").cylindry or "V4",
          pojemnosc = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").pojemnosc or "1.4",
          rodzaj = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj or "DIESEL",
          turbo = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").turbo == 1,
          lpg_montage = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").lpg_montage == "Tak",
          licznik = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").licznik or false,
          id = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") or 0,
          nitro = nitroMontage,
          butlaN = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").butlaN or 5
        }
        isElectric = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").rodzaj == "Elektryczny"
      else
        data.mileage = 95124
        data.fuel = 100
        data.gas = 0
        data.oil = 834
        data.battery = 789
        infoVehicles = {
          bak = 100,
          cylindry = "V4",
          pojemnosc = "1.2",
          rodzaj = "Diesel",
          turbo = false,
          lpg_montage = false,
          licznik = false,
          id = false,
          nitro = false,
          butlaN = false
        }
        isElectric = false
      end
      _UPVALUE1_ = true
      if infoVehicles.licznik == 4 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter5)
      elseif infoVehicles.licznik == 3 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter4)
      elseif infoVehicles.licznik == 2 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter2)
      elseif infoVehicles.licznik == 1 then
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter3)
      else
        loadTextures(infoVehicles.licznik)
        addEventHandler("onClientRender", root, renderSpeedMeter1)
      end
    end
    addEventHandler("onClientVehicleEnter", root, onVehEnter)
    addEventHandler("onClientVehicleStartExit", root, onVehExit)
  end
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
function interpolateColor(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ < 351 then
    _ARG_0_ = 351
  end
  return tocolor(_ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][1] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][1]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][2] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][2]), _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3] + (_ARG_0_ - _ARG_1_) % ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1)) * (_ARG_3_[math.min(math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1 + 1, #_ARG_3_)][3] - _ARG_3_[math.floor((_ARG_0_ - _ARG_1_) / ((_ARG_2_ - _ARG_1_) / (#_ARG_3_ - 1))) + 1][3]), 190)
end
getResourceName(getThisResource(), true, 585027605)
return
