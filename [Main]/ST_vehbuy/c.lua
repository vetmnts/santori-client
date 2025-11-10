windows = {main = false, specification = false}
table_vehicles = {}
function gui()
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 820 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 190))
  if windows.main == true then
    dxDrawText("INFORMACJE O POJE\197\185DZIE", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawText([[
Model:
Koszt:
Przebieg:
Rodzaj silnika:]], _UPVALUE0_.x + 290 / _UPVALUE1_, _UPVALUE0_.y + 98 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "top", false, false, false, false, false)
    dxDrawText("#ffbb00" .. vehicle_name .. [[

#009419]] .. przecinek(vehicle_cost) .. [[
 #ffffffPLN
#ffbb00]] .. vehicle_mileage .. [[
 #ffffffkm
#ffbb00]] .. vehicle_type .. "", _UPVALUE0_.x + 480 / _UPVALUE1_, _UPVALUE0_.y + 98 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "top", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 240 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 255))
    dxDrawText("Pojemno\197\155\196\135", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, false, false)
    dxDrawText("#ffbb00" .. vehicle_capacity, _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 240 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 255))
    dxDrawText("Cylindry", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, false, false)
    dxDrawText("#ffbb00" .. vehicle_cylinders, _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 240 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 255))
    dxDrawText("Bak", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 400 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, false, false)
    dxDrawText("#ffbb00" .. vehicle_tank .. " L", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 325 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(28, 28, 28, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    exports.ST_buttons:dxCreateButton("JAZDA PR\195\147BNA", _UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 493 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 255, 1)
    exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 670 / _UPVALUE1_, _UPVALUE0_.y + 493 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 255, 1)
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    timeTest = timeTest - 1
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h - 31 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 35 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("JAZDA PR\195\147BNA", _UPVALUE0_.x, _UPVALUE0_.y - 112 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  dxDrawText("POZSTA\197\129Y CZAS", _UPVALUE0_.x, _UPVALUE0_.y - 35 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
  dxDrawText(resulted(timeTest), _UPVALUE0_.x, _UPVALUE0_.y + 20 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  dxDrawText("( pojazd nie posiada ulepsze\197\132 opr\195\179cz wybranego silnika )", _UPVALUE0_.x, _UPVALUE0_.y + 75 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(150, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, true, false)
  if timeTest < 1 then
    triggerServerEvent("evEwenciks_ksrs41kdfgh", resourceRoot, "stopTestRide", localPlayer, rideTest_pos)
    removeEventHandler("onClientVehicleExit", rideTest_veh, onVehExit)
    removeEventHandler("onClientRender", root, windowRender)
    rideTest_veh = nil
    rideTest_pos = nil
    exports.st_gui:showPlayerNotification("Jazda pr\195\179bna dobieg\197\130a ko\197\132ca", "info")
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) and windows.main == true then
      removeEventHandler("onClientRender", root, gui)
      windows.main = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 493 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) and windows.main == true then
      triggerServerEvent("evEwenciks_ksrs41kdfgh", resourceRoot, "testRide", localPlayer, vehicle_mileage, vehicle_model, vehicle_type, vehicle_wariant, vehicle_cylinders, vehicle_capacity, vehicle_tank, vehicle_color, vehicle_posCreate, vehicle_customModel)
      removeEventHandler("onClientRender", root, gui)
      windows.main = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 670 / _UPVALUE1_, _UPVALUE0_.y + 493 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) and windows.main == true then
      if getElementData(localPlayer, "player:moneyMNn") < vehicle_cost then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      triggerServerEvent("evEwenciks_ksrs41kdfgh", resourceRoot, "buyVeh", localPlayer, vehicle_name, vehicle_cost, vehicle_mileage, vehicle_model, vehicle_type, vehicle_wariant, vehicle_cylinders, vehicle_capacity, vehicle_tank, vehicle_color, vehicle_posCreate, vehicle_customModel)
      removeEventHandler("onClientRender", root, gui)
      windows.main = false
      showCursor(false)
      _UPVALUE2_ = getTickCount()
    elseif isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_capacity == "3.0" then
        vehicle_capacity = "2.8"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "2.8" then
        vehicle_capacity = "2.6"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "2.6" then
        vehicle_capacity = "2.4"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "2.4" then
        vehicle_capacity = "2.2"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "2.2" then
        vehicle_capacity = "2.0"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "2.0" then
        vehicle_capacity = "1.8"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "1.8" then
        vehicle_capacity = "1.6"
        vehicle_cost = vehicle_cost - 100000
      elseif vehicle_capacity == "1.6" then
        vehicle_capacity = "1.4"
        vehicle_cost = vehicle_cost - 170000
      elseif vehicle_capacity == "1.4" then
        vehicle_capacity = "1.2"
        vehicle_cost = vehicle_cost - 170000
      end
    elseif isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 275 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_capacity == "1.2" then
        vehicle_capacity = "1.4"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "1.4" then
        vehicle_capacity = "1.6"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "1.6" then
        vehicle_capacity = "1.8"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "1.8" then
        vehicle_capacity = "2.0"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "2.0" then
        vehicle_capacity = "2.2"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "2.2" then
        vehicle_capacity = "2.4"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "2.4" then
        vehicle_capacity = "2.6"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "2.6" then
        vehicle_capacity = "2.8"
        vehicle_cost = vehicle_cost + 170000
      elseif vehicle_capacity == "2.8" then
        vehicle_capacity = "3.0"
        vehicle_cost = vehicle_cost + 170000
      end
    elseif isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_cylinders == "V8" then
        vehicle_cylinders = "V6"
        vehicle_cost = vehicle_cost - 200000
      elseif vehicle_cylinders == "V6" then
        vehicle_cylinders = "V4"
        vehicle_cost = vehicle_cost - 200000
      end
    elseif isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_cylinders == "V4" then
        vehicle_cylinders = "V6"
        vehicle_cost = vehicle_cost + 200000
      elseif vehicle_cylinders == "V6" then
        vehicle_cylinders = "V8"
        vehicle_cost = vehicle_cost + 200000
      end
    elseif isMouseIn(_UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_tank == "100" then
        vehicle_tank = "75"
        vehicle_cost = vehicle_cost - 250000
      elseif vehicle_tank == "75" then
        vehicle_tank = "50"
        vehicle_cost = vehicle_cost - 250000
      elseif vehicle_tank == "50" then
        vehicle_tank = "25"
        vehicle_cost = vehicle_cost - 250000
      end
    elseif isMouseIn(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and windows.main == true then
      if vehicle_tank == "25" then
        vehicle_tank = "50"
        vehicle_cost = vehicle_cost + 250000
      elseif vehicle_tank == "50" then
        vehicle_tank = "75"
        vehicle_cost = vehicle_cost + 250000
      elseif vehicle_tank == "75" then
        vehicle_tank = "100"
        vehicle_cost = vehicle_cost + 250000
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      if windows.main == true then
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        strzalka = dxCreateTexture(":ST_bitcoin/img/strzalka.png")
      }
      addEventHandler("onClientRender", root, gui)
      showCursor(true)
      vehicle_name = _ARG_2_
      vehicle_cost = _ARG_3_
      vehicle_cylinders = "V4"
      vehicle_capacity = "1.2"
      vehicle_tank = "25"
      vehicle_mileage = _ARG_4_
      vehicle_model = _ARG_5_
      vehicle_type = _ARG_6_
      vehicle_wariant = _ARG_7_
      vehicle_color = _ARG_8_
      vehicle_posCreate = _ARG_9_
      vehicle_customModel = _ARG_10_
      windows.main = true
      windows.specification = false
    else
      removeEventHandler("onClientRender", root, gui)
      showCursor(false)
      windows.main = false
      windows.specification = false
    end
  elseif _ARG_0_ == "showRenderInfoVeh" then
    if _ARG_1_ then
      table_vehicles = _ARG_2_
      for _FORV_14_, _FORV_15_ in ipairs(table_vehicles) do
        rt_table[_FORV_15_] = dxCreateRenderTarget(350, 190, true)
        renderTarget(_FORV_15_)
      end
      addEventHandler("onClientPreRender", root, renderXD)
    else
      removeEventHandler("onClientPreRender", root, renderXD)
      for _FORV_14_, _FORV_15_ in ipairs(table_vehicles) do
        destroyElement(rt_table[_FORV_15_])
        rt_table[_FORV_15_] = nil
      end
      table_veh = {}
    end
  elseif _ARG_0_ == "testRideClient" then
    tick = getTickCount()
    timeTest = 90
    rideTest_veh = _ARG_1_
    rideTest_pos = _ARG_2_
    addEventHandler("onClientVehicleExit", rideTest_veh, onVehExit)
    addEventHandler("onClientRender", root, windowRender)
  end
end)
rt_table = {}
function renderTarget(_ARG_0_)
  dxSetRenderTarget(rt_table[_ARG_0_], false)
  dxDrawRoundedRectangle(0, 0, 350, 190, 20, tocolor(255, 187, 0, 255))
  dxDrawRoundedRectangle(2, 2, 346, 186, 20, tocolor(25, 25, 25, 255))
  dxDrawText("MODEL: #ffbb00" .. getElementData(_ARG_0_, "salonXDXD")[1], 0, 20, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font22"), "center", "top", false, false, false, true, false)
  dxDrawText("KOSZT: #009419" .. przecinek(getElementData(_ARG_0_, "salonXDXD")[2]) .. " #ffffffPLN", 0, 62, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxDrawText("PRZEBIEG: #ffbb00" .. przecinek(getElementData(_ARG_0_, "salonXDXD")[3]) .. " #ffffffKM", 0, 95, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxDrawText("PODEJD\197\185 BLI\197\187EJ, ABY ZAKUPI\196\134 POJAZD", 0, 150, 350, 350, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
  dxSetRenderTarget()
end
function renderXD()
  for _FORV_3_, _FORV_4_ in ipairs(table_vehicles) do
    if getElementBoundingBox(_FORV_4_) then
      if getElementData(_FORV_4_, "vehicle:customID") then
        model = getElementData(_FORV_4_, "vehicle:customID")
      else
        model = getElementModel(_FORV_4_)
      end
      if _UPVALUE0_[model] then
        x1, y1, z1 = getPositionFromElementOffset(_FORV_4_, 0, getElementBoundingBox(_FORV_4_) - _UPVALUE0_[model][1], _UPVALUE0_[model][2])
        lx, ly, lz = getPositionFromElementOffset(_FORV_4_, 0, _UPVALUE0_[model][3], 0)
      else
        x1, y1, z1 = getPositionFromElementOffset(_FORV_4_, 0, getElementBoundingBox(_FORV_4_) - 3, 1.6)
        lx, ly, lz = getPositionFromElementOffset(_FORV_4_, 0, 5, 0)
      end
      dxDrawMaterialLine3D(x1, y1, z1 + 0.35, x1, y1, z1 - 0.65, rt_table[_FORV_4_], 2, tocolor(255, 255, 255, 255), false, lx, ly, lz)
    end
  end
end
function onVehExit(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    triggerServerEvent("evEwenciks_ksrs41kdfgh", resourceRoot, "stopTestRide", localPlayer, rideTest_pos)
    removeEventHandler("onClientVehicleExit", rideTest_veh, onVehExit)
    removeEventHandler("onClientRender", root, windowRender)
    rideTest_veh = nil
    rideTest_pos = nil
    exports.st_gui:showPlayerNotification("Jazda pr\195\179bna dobieg\197\130a ko\197\132ca", "info")
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
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
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
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function resulted(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if 0 <= _ARG_0_ then
    hours = math.floor(_ARG_0_ / 3600)
    mins = math.floor(_ARG_0_ / 60 - hours * 60)
    secs = math.floor(_ARG_0_ - hours * 3600 - mins * 60)
    if hours == 0 and mins == 0 then
      return "#ffbf00" .. secs .. " #dcdcdcsekund"
    elseif hours == 0 and mins >= 1 then
      return "#ffbf00" .. mins .. " #dcdcdcminuta #ffbf00" .. secs .. " #dcdcdcsekund"
    else
      return "#ffbf00" .. hours .. " #dcdcdcgodzin #ffbf00" .. mins .. " #dcdcdcminut #ffbf00" .. secs .. " #dcdcdcsekund"
    end
  end
end
getResourceName(getThisResource(), true, 627055312)
return
