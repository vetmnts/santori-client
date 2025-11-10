function window()
  if _UPVALUE2_.vehicles == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("PRZECHOWALNIA", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 300 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 280 / _UPVALUE1_, 40 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 540 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
    if typeSearch == "Prywatne" then
      dxDrawImage(_UPVALUE0_.x + 542.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_prywatne
    elseif typeSearch == "Organizacyjne" then
      dxDrawImage(_UPVALUE0_.x + 542.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.org_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_organizacyjne
    elseif typeSearch == "Z dost\196\153pem do kluczy" then
      dxDrawImage(_UPVALUE0_.x + 542.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.key_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      table_vehicles = table_vehicles_klucze
    end
    if isMouseIn(_UPVALUE0_.x + 540 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) and isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
      dxDrawText(typeSearch, cxs + 14 / _UPVALUE1_, cys + 34 / _UPVALUE1_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      dxDrawText(typeSearch, cxs + 13 / _UPVALUE1_, cys + 33 / _UPVALUE1_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
    end
    if 0 < exports.ST_gui:getCustomEditboxText("search1"):len() then
      table_vehicles1 = getPlayersFromText((string.lower(exports.ST_gui:getCustomEditboxText("search1"))))
    else
      table_vehicles1 = table_vehicles
    end
    dxDrawText("NAZWA", _UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y - 35 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 800 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
      colorID = {
        250,
        250,
        250
      }
    else
      colorID = {
        170,
        170,
        170
      }
    end
    dxDrawText("ID", _UPVALUE0_.x, _UPVALUE0_.y - 35 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 475 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(colorID[1], colorID[2], colorID[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
    dxDrawText("ZNALEZIONO #ffbb00" .. #table_vehicles1 .. " #a3a3a2POJAZD\195\147W", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y - 32 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(170, 170, 170, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawText(textSort, _UPVALUE0_.x, _UPVALUE0_.y - 39 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 455 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(colorID[1], colorID[2], colorID[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, false, false)
    xY = 0
    for _FORV_8_ = 1, 9 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 100), false)
    end
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(table_vehicles1) do
      if _FORV_8_ >= _UPVALUE5_ and _FORV_8_ <= _UPVALUE6_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 825 / _UPVALUE1_, 45 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 825 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(23, 23, 23, 220), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 50 / _UPVALUE1_ * (xY - 1), 825 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
        end
        dxDrawText(_FORV_9_.id, _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 475 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
        if getVehicleNameFromModel(_FORV_9_.model) == "Sabre" then
          if _FORV_9_.wariant == "1, 2" then
          end
        elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
          if _FORV_9_.wariant == "3, 3" or _FORV_9_.wariant == "1, 1" then
          end
        elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
          if _FORV_9_.wariant == "0, 1" then
          end
        elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_9_.wariant == "0, 2" then
        end
        dxDrawText(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_9_.custom_model), _UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y + 45 / _UPVALUE1_ + 100 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if _UPVALUE2_.selectcar == true then
    if getVehicleNameFromModel(infoSelectVehicles.model) == "Sabre" then
      if infoSelectVehicles.wariant == "1, 2" then
      end
    elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
      if infoSelectVehicles.wariant == "2, 2" then
      end
    elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
      if infoSelectVehicles.wariant == "0, 1" then
      end
    elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and infoSelectVehicles.wariant == "0, 2" then
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", infoSelectVehicles.customModel), _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 499 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, 352 / _UPVALUE1_, 255 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_, 350 / _UPVALUE1_, 253 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 19 / _UPVALUE1_, _UPVALUE0_.y + 74 / _UPVALUE1_, 475 / _UPVALUE1_, 255 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, 473 / _UPVALUE1_, 253 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(25, 25, 25, 255))
    dxDrawRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 105 / _UPVALUE1_, 465 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawText("INFORMACJE PODSTAWOWE", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 20 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 187, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehicles) do
      xY = xY + 1
      dxDrawText(_FORV_9_[1], _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 45 / _UPVALUE1_ + 54 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      if _FORV_9_[2] then
        dxDrawText(_FORV_9_[2], _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_ + 54 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("Ukryte", _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_ + 54 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 120 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 335 / _UPVALUE1_, 830 / _UPVALUE1_, 220 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 21 / _UPVALUE1_, _UPVALUE0_.y + 336 / _UPVALUE1_, 828 / _UPVALUE1_, 218 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(25, 25, 25, 255))
    dxDrawText("TUNING POJAZDU", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 510 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 187, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
    dxDrawRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, 815 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehicles2) do
      xY = xY + 1
      if _FORV_9_[3] then
        if _FORV_9_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_9_[2] == 0 then
          v2Name = "#8c0000nie"
        else
          v2Name = "#838383Ukryte"
        end
      else
        v2Name = _FORV_9_[2]
      end
      dxDrawRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 402 / _UPVALUE1_ + 28 / _UPVALUE1_ * (xY - 1), 153 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(60, 60, 60, 100))
      dxDrawText(_FORV_9_[1], _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 578 / _UPVALUE1_ + 56 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText(v2Name, _UPVALUE0_.x, _UPVALUE0_.y + 578 / _UPVALUE1_ + 56 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ - 180 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      if _FORV_9_[1] == "US1" and not _FORV_9_[2] then
        exports.ST_buttons:dxCreateButton("POKA\197\187 INFO", _UPVALUE7_.x + 430 / _UPVALUE1_, _UPVALUE7_.y + 360 / _UPVALUE1_, 130 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
      end
    end
    xY = 0
    xX = 1
    for _FORV_8_, _FORV_9_ in ipairs(tableInfoVehicles1) do
      xY = xY + 1
      if xY > 6 then
        xY = 1
        xX = xX + 1
      end
      dxDrawRectangle(_UPVALUE0_.x + 250 / _UPVALUE1_ + 320 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 403 / _UPVALUE1_ + 28 / _UPVALUE1_ * (xY - 1), 260 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(60, 60, 60, 100))
      if _FORV_9_[3] then
        if _FORV_9_[1] == "LPG" then
          if _FORV_9_[2] == "Ukryte" then
            v2Name = "#838383Ukryte"
          elseif _FORV_9_[2] == "Tak" then
            v2Name = "#039118tak"
          else
            v2Name = "#8c0000nie"
          end
        elseif _FORV_9_[2] == 1 then
          v2Name = "#039118tak"
        elseif _FORV_9_[2] == 0 then
          v2Name = "#8c0000nie"
        else
          v2Name = "#838383Ukryte"
        end
      else
        v2Name = _FORV_9_[2] or "#838383Ukryte"
      end
      dxDrawText(_FORV_9_[1], _UPVALUE0_.x + 250 / _UPVALUE1_ + 320 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 578 / _UPVALUE1_ + 56 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText(v2Name, _UPVALUE0_.x, _UPVALUE0_.y + 578 / _UPVALUE1_ + 56 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 150 / _UPVALUE1_ + 320 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 22 / _UPVALUE1_, 32 / _UPVALUE1_, 32 / _UPVALUE1_, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 23 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
    end
    exports.ST_buttons:dxCreateButton("WYJMIJ", _UPVALUE7_.x + 570 / _UPVALUE1_, _UPVALUE7_.y + 360 / _UPVALUE1_, 130 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
  end
  if _UPVALUE2_.vehHide == true then
    dxDrawRoundedRectangle(_UPVALUE7_.x, _UPVALUE7_.y, _UPVALUE7_.w, _UPVALUE7_.h, 25 / _UPVALUE1_, tocolor(33, 33, 33, 245))
    dxDrawRoundedRectangle(_UPVALUE7_.x + 15 / _UPVALUE1_, _UPVALUE7_.y + 42 / _UPVALUE1_, _UPVALUE7_.w - 30 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("CHOWANIE POJAZDU DO PRZECHOWALNI", _UPVALUE7_.x + 20 / _UPVALUE1_, _UPVALUE7_.y - 153 / _UPVALUE1_, _UPVALUE7_.x + 362 / _UPVALUE1_, _UPVALUE7_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE7_.x + _UPVALUE7_.w - 45 / _UPVALUE1_, _UPVALUE7_.y + 10 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if 500 > getElementHealth((getPedOccupiedVehicle(localPlayer))) then
      dxDrawText("Tw\195\179j stan pojazdu jest zbyt niski.\nCzy chcesz zap\197\130aci\196\135 #00960a1,000 #ffffffPLN, aby schowa\196\135 pojazd?", _UPVALUE7_.x + 240 / _UPVALUE1_, _UPVALUE7_.y + 55 / _UPVALUE1_, _UPVALUE7_.x + 362 / _UPVALUE1_, _UPVALUE7_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("Czy na pewno chcesz schowa\196\135 pojazd?", _UPVALUE7_.x + 240 / _UPVALUE1_, _UPVALUE7_.y + 55 / _UPVALUE1_, _UPVALUE7_.x + 362 / _UPVALUE1_, _UPVALUE7_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("SCHOWAJ", _UPVALUE7_.x + 220 / _UPVALUE1_, _UPVALUE7_.y + 230 / _UPVALUE1_, 160 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
  end
end
function mouseClick(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.vehicles == true then
      for _FORV_6_, _FORV_7_ in ipairs(table_vehicles1) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 25 / _UPVALUE3_, _UPVALUE4_.y + 100 / _UPVALUE3_ + 50 / _UPVALUE3_ * (0 + 1 - 1), 825 / _UPVALUE3_, 45 / _UPVALUE3_) and _UPVALUE0_.vehicles == true then
          if typeModel[getVehicleType(_FORV_7_.model)] then
            infoSelectVehicles = {
              id = _FORV_7_.id,
              model = _FORV_7_.model,
              wariant = {0, 0},
              customModel = false
            }
            tableInfoVehicles = {}
            tableInfoVehicles1 = {}
            tableInfoVehicles2 = {}
            _UPVALUE0_.vehicles = false
            _UPVALUE0_.selectcar = true
            exports.ST_gui:destroyCustomEditbox("search1")
            triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "selectVeh", localPlayer, _FORV_7_.id, _FORV_7_.model)
          else
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz tutaj wyj\196\133\196\135 tego pojazdu", "error")
          end
        end
      end
    end
    if isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 61 / _UPVALUE3_, _UPVALUE4_.y + 24 / _UPVALUE3_, 27 / _UPVALUE3_, 27 / _UPVALUE3_) and _UPVALUE0_.vehicles == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      _UPVALUE0_.vehicles = false
      _UPVALUE0_.selectcar = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      exports.ST_gui:destroyCustomEditbox("search1")
    elseif isMouseIn(_UPVALUE4_.x + _UPVALUE4_.w - 61 / _UPVALUE3_, _UPVALUE4_.y + 22 / _UPVALUE3_, 32 / _UPVALUE3_, 32 / _UPVALUE3_) and _UPVALUE0_.selectcar == true then
      _UPVALUE0_.vehicles = true
      _UPVALUE0_.selectcar = false
      if isElement(myObject) then
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
    elseif isMouseIn(_UPVALUE5_.x + 570 / _UPVALUE3_, _UPVALUE5_.y + 360 / _UPVALUE3_, 130 / _UPVALUE3_, 50 / _UPVALUE3_) and _UPVALUE0_.selectcar == true then
      if blockClick then
        return
      end
      if infoSelectVehicles.id then
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, mouseClick)
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        _UPVALUE0_.vehicles = false
        _UPVALUE0_.selectcar = false
        if isElement(myObject) then
          exports.ST_object_preview:destroyObjectPreview(myObject)
        end
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "respVeh", localPlayer, infoSelectVehicles.id, respPos, typeSearch)
      end
      blockClick = true
    elseif isMouseIn(_UPVALUE5_.x + 430 / _UPVALUE3_, _UPVALUE5_.y + 360 / _UPVALUE3_, 130 / _UPVALUE3_, 50 / _UPVALUE3_) and _UPVALUE0_.selectcar == true then
      if blockClick then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(tableInfoVehicles2) do
        if _FORV_6_[1] == "US1" and _FORV_6_[2] then
          return
        end
      end
      blockClick = true
      triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "showInfoVeh", localPlayer, infoSelectVehicles.id)
    elseif isMouseIn(_UPVALUE4_.x + 540 / _UPVALUE3_, _UPVALUE4_.y + 15 / _UPVALUE3_, 40 / _UPVALUE3_, 40 / _UPVALUE3_) and _UPVALUE0_.vehicles == true then
      if getTickCount() - _UPVALUE6_ > 2000 then
        if typeSearch == "Prywatne" then
          if getElementData(localPlayer, "player:organization") then
            typeSearch = "Organizacyjne"
            if 1 >= #table_vehicles_organizacyjne then
              triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "changeType", localPlayer, typeSearch)
            end
          else
            typeSearch = "Z dost\196\153pem do kluczy"
            if 1 >= #table_vehicles_klucze then
              triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "changeType", localPlayer, typeSearch)
            end
          end
        elseif typeSearch == "Organizacyjne" then
          typeSearch = "Z dost\196\153pem do kluczy"
          if 1 >= #table_vehicles_klucze then
            triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "changeType", localPlayer, typeSearch)
          end
        elseif typeSearch == "Z dost\196\153pem do kluczy" then
          typeSearch = "Prywatne"
          if 1 >= #table_vehicles_prywatne then
            triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "changeType", localPlayer, typeSearch)
          end
        end
        _UPVALUE1_ = 1
        _UPVALUE2_ = 9
        _UPVALUE7_ = 9
        _UPVALUE6_ = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj 2 sekundy przed kolejnym wybraniem kategorii", "info")
      end
    elseif isMouseIn(_UPVALUE4_.x + 800 / _UPVALUE3_, _UPVALUE4_.y + 65 / _UPVALUE3_, 35 / _UPVALUE3_, 35 / _UPVALUE3_) and _UPVALUE0_.vehicles == true then
      if textSort == "\226\134\145" then
        textSort = "\226\134\147"
        table.sort(table_vehicles, function(_ARG_0_, _ARG_1_)
          return _ARG_0_.id < _ARG_1_.id
        end)
      else
        textSort = "\226\134\145"
        table.sort(table_vehicles, function(_ARG_0_, _ARG_1_)
          return _ARG_0_.id > _ARG_1_.id
        end)
      end
    elseif isMouseIn(_UPVALUE5_.x + 220 / _UPVALUE3_, _UPVALUE5_.y + 230 / _UPVALUE3_, 160 / _UPVALUE3_, 50 / _UPVALUE3_) and _UPVALUE0_.vehHide == true then
      if getElementHealth((getPedOccupiedVehicle(localPlayer))) < 500 then
        if getElementData(localPlayer, "player:moneyMNn") < 1000 then
          exports.st_gui:showPlayerNotification("Nie posiadasz 1,000 PLN", "error")
          return
        end
        triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "hideVeh", localPlayer, getPedOccupiedVehicle(localPlayer), true)
      else
        triggerServerEvent("evEwenciks_gfadujjgfd", resourceRoot, "hideVeh", localPlayer, (getPedOccupiedVehicle(localPlayer)))
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      _UPVALUE0_.vehHide = false
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE5_.x + _UPVALUE5_.w - 45 / _UPVALUE3_, _UPVALUE5_.y + 10 / _UPVALUE3_, 25 / _UPVALUE3_, 25 / _UPVALUE3_) and _UPVALUE0_.vehHide == true then
      setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      _UPVALUE0_.vehHide = false
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGuiMarker" then
    setElementFrozen(getPedOccupiedVehicle(localPlayer), true)
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, mouseClick)
    _UPVALUE0_.vehHide = true
    showCursor(true)
  elseif _ARG_0_ == "showGuiMarker2" then
    table_vehicles = {}
    table_vehicles_prywatne = _ARG_1_
    table_vehicles_organizacyjne = {}
    table_vehicles_klucze = {}
    respPos = _ARG_2_
    typeModel = _ARG_3_
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      user_icon = dxCreateTexture("img/user_icon.png"),
      org_icon = dxCreateTexture("img/org_icon.png"),
      key_icon = dxCreateTexture("img/key_icon.png"),
      back = dxCreateTexture(":ST_dashboard/img/back_arrow.png")
    }
    typeSearch = "Prywatne"
    textSort = "\226\134\147"
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, mouseClick)
    _UPVALUE0_.vehicles = true
    _UPVALUE0_.selectcar = false
    showCursor(true)
    exports.ST_gui:createCustomEditbox("search1", "Wyszukaj pojazd", _UPVALUE1_.x + 300 / _UPVALUE2_, _UPVALUE1_.y + 15 / _UPVALUE2_, 230 / _UPVALUE2_, 40 / _UPVALUE2_, false, false, "", 1, {
      25,
      25,
      25,
      0,
      22,
      22,
      22,
      0
    })
    blockClick = false
  elseif _ARG_0_ == "table_veh" then
    if _ARG_2_ == "Prywatne" then
      table_vehicles_prywatne = _ARG_1_
    elseif _ARG_2_ == "Z dost\196\153pem do kluczy" then
      table_vehicles_klucze = _ARG_1_
    elseif _ARG_2_ == "Organizacyjne" then
      table_vehicles_organizacyjne = _ARG_1_
    end
  elseif _ARG_0_ == "selectVehClient" then
    table_vehiclesSelect = {}
    table_vehiclesSelect = _ARG_1_
    for _FORV_8_, _FORV_9_ in pairs(table_vehiclesSelect) do
      infoSelectVehicles = {
        id = _FORV_9_.id,
        model = _FORV_9_.model,
        wariant = _FORV_9_.wariant,
        customModel = _FORV_9_.custom_model
      }
      vehicles3D(_FORV_9_.model, _FORV_9_.wariant, _FORV_9_.color, _FORV_9_.tuning, _FORV_9_.custom_model)
      tableInfoVehicles = {
        {
          "ID",
          "#ffbb00" .. _FORV_9_.id .. ""
        },
        {
          "PRZEBIEG",
          "#838383Ukryte"
        },
        {
          "OSTATNI KIEROWCA",
          "#838383Ukryte"
        },
        {
          "Rodzaj paliwa",
          "#838383Ukryte"
        },
        {
          "UID W\197\129A\197\154CICIELA",
          "#838383Ukryte"
        },
        {
          "STAN SILNIKA",
          "#838383Ukryte"
        },
        {
          "SILNIK",
          "#838383Ukryte"
        },
        {
          "REJESTRACJA",
          "#838383Ukryte"
        }
      }
      tableInfoVehicles2 = {
        {
          "US1",
          false,
          true
        },
        {
          "US2",
          false,
          true
        },
        {
          "US3",
          false,
          true
        },
        {
          "US4",
          false,
          true
        },
        {
          "CHIP",
          false,
          true
        },
        {
          "TURBO",
          false,
          true
        }
      }
      tableInfoVehicles1 = {
        {
          "ZMIENNY NAP\196\152D",
          false,
          true
        },
        {
          "SZYBY",
          false,
          true
        },
        {
          "LPG",
          "Ukryte",
          true
        },
        {
          "TAXOMETR",
          false,
          true
        },
        {
          "ZMIENNE ZAWIESZENIE",
          false,
          true
        },
        {"HAMULCE", false},
        {
          "TRAKCJA",
          false,
          true
        },
        {"NITRO", false},
        {
          "TYLNE OPONY",
          false
        },
        {
          "PRZEDNIE OPONY",
          false
        }
      }
    end
  elseif _ARG_0_ == "showInfoVehClient" then
    table_vehiclesSelect = {}
    table_vehiclesSelect = _ARG_1_
    blockClick = false
    for _FORV_8_, _FORV_9_ in pairs(table_vehiclesSelect) do
      infoSelectVehicles = {
        id = _FORV_9_.id,
        model = _FORV_9_.model,
        wariant = _FORV_9_.wariant,
        customModel = _FORV_9_.custom_model
      }
      vehicles3D(_FORV_9_.model, _FORV_9_.wariant, _FORV_9_.color, _FORV_9_.tuning, _FORV_9_.custom_model)
      if _FORV_9_.engineType == "Elektryczny" then
        nameFuel = {"Bateria", "KwH"}
      else
        nameFuel = {"Paliwo", "L"}
      end
      if _FORV_9_.plateText == "" then
      else
      end
      tableInfoVehicles = {
        {
          "ID",
          "#ffbb00" .. _FORV_9_.id .. ""
        },
        {
          "PRZEBIEG",
          "#ffbb00" .. _FORV_9_.mileage .. " KM"
        },
        {
          "OSTATNI KIEROWCA",
          "#ffbb00" .. (string.gsub(_FORV_9_.driver, "#%x%x%x%x%x%x", "") or "Brak") .. ""
        },
        {
          nameFuel[1],
          "#ffbb00" .. _FORV_9_.fuel .. " #e6e6e6/ #ffbb00" .. _FORV_9_.bak .. " #e6e6e6" .. nameFuel[2]
        },
        {
          "UID W\197\129A\197\154CICIELA",
          "#ffbb00" .. _FORV_9_.ownedPlayer .. ""
        },
        {
          "STAN SILNIKA",
          "#ffbb00" .. string.format("%.1f", "" .. _FORV_9_.health / 10) .. "#e6e6e6%"
        },
        {
          "SILNIK",
          "" .. _FORV_9_.pojemnosc .. " " .. _FORV_9_.cylindry .. " " .. _FORV_9_.engineType .. ""
        },
        {
          "REJESTRACJA",
          "" .. ("#ffbb00" .. _FORV_9_.plateText .. "") .. ""
        }
      }
      nitroText = "#8c0000NIE"
      for _FORV_15_, _FORV_16_ in ipairs(split(_FORV_9_.tuning, ",")) do
        if _FORV_16_ == "1010" then
          nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. _FORV_9_.nitro .. "#e6e6e6/#ffbb00" .. _FORV_9_.butlaN .. "#e6e6e6L )"
        end
      end
      brakeText = "#ffbb00" .. _FORV_9_.hamulce
      if _FORV_9_.hamulce == "Brak" then
        brakeText = "#c8c8c8Brak"
      end
      for _FORV_15_, _FORV_16_ in pairs(wheelsName) do
        if _FORV_16_[1] == _FORV_9_.wheelsRear then
          wheelsR = wheelsName[_FORV_15_][2]
        end
        if _FORV_16_[1] == _FORV_9_.wheelsFront then
          wheelsF = wheelsName[_FORV_15_][2]
        end
      end
      tableInfoVehicles2 = {
        {
          "US1",
          _FORV_9_.us1,
          true
        },
        {
          "US2",
          _FORV_9_.us2,
          true
        },
        {
          "US3",
          _FORV_9_.us3,
          true
        },
        {
          "US4",
          _FORV_9_.us4,
          true
        },
        {
          "CHIP",
          _FORV_9_.chip,
          true
        },
        {
          "TURBO",
          _FORV_9_.turbo,
          true
        }
      }
      tableInfoVehicles1 = {
        {
          "ZMIENNY NAP\196\152D",
          _FORV_9_.naped,
          true
        },
        {
          "SZYBY",
          _FORV_9_.windows,
          true
        },
        {
          "LPG",
          _FORV_9_.instalacja_lpg,
          true
        },
        {
          "TAXOMETR",
          _FORV_9_.taxometr,
          true
        },
        {
          "ZMIENNE ZAWIESZENIE",
          _FORV_9_.rh,
          true
        },
        {"HAMULCE", brakeText},
        {
          "TRAKCJA",
          _FORV_9_.trakcja,
          true
        },
        {"NITRO", nitroText},
        {
          "TYLNE OPONY",
          wheelsR
        },
        {
          "PRZEDNIE OPONY",
          wheelsF
        }
      }
    end
  end
end)
bindKey("mouse_wheel_down", "both", function()
  scrollUp()
end)
bindKey("mouse_wheel_up", "both", function()
  scrollDown()
end)
function scrollDown()
  if _UPVALUE0_.vehicles == true then
    if _UPVALUE1_ == _UPVALUE2_ then
      return
    end
    _UPVALUE3_ = _UPVALUE3_ - 1
    _UPVALUE1_ = _UPVALUE1_ - 1
  end
end
function scrollUp()
  if _UPVALUE0_.vehicles == true then
    if _UPVALUE1_ >= #table_vehicles1 then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE1_ = _UPVALUE1_ + 1
  end
end
function vehicles3D(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if isElement(myObject) then
    exports.ST_object_preview:destroyObjectPreview(myObject)
  end
  if isElement(vehicle3D) then
    destroyElement(vehicle3D)
  end
  vehicle3D = createVehicle(_ARG_0_, 0, 0, 50)
  if _ARG_4_ ~= 0 then
    setElementData(vehicle3D, "vehicle:customID", _ARG_4_)
  end
  setElementCollisionsEnabled(vehicle3D, false)
  myObject = exports.ST_object_preview:createObjectPreview(vehicle3D, -5, 0, 140, _UPVALUE0_.x + 500 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, 350 / _UPVALUE1_, 255 / _UPVALUE1_, false, true)
  setVehicleColor(vehicle3D, split(_ARG_2_, ",")[1], split(_ARG_2_, ",")[2], split(_ARG_2_, ",")[3], split(_ARG_2_, ",")[4], split(_ARG_2_, ",")[5], split(_ARG_2_, ",")[6], split(_ARG_2_, ",")[7], split(_ARG_2_, ",")[8], split(_ARG_2_, ",")[9], split(_ARG_2_, ",")[10], split(_ARG_2_, ",")[11], split(_ARG_2_, ",")[12])
  for _FORV_9_, _FORV_10_ in ipairs(split(_ARG_3_, ",")) do
    addVehicleUpgrade(vehicle3D, _FORV_10_)
  end
  setVehicleVariant(vehicle3D, split(_ARG_1_, ",")[1], split(_ARG_1_, ",")[2])
end
function getPlayersFromText(_ARG_0_)
  for _FORV_5_, _FORV_6_ in pairs(table_vehicles) do
    if getVehicleNameFromModel(_FORV_6_.model) == "Sabre" then
      if _FORV_6_.wariant == "1, 2" then
      end
    elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
      if _FORV_6_.wariant == "2, 2" then
      end
    elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
      if _FORV_6_.wariant == "0, 1" then
      end
    elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_6_.wariant == "0, 2" then
    end
    if tonumber(_ARG_0_) then
      if string.find(_FORV_6_.id, _ARG_0_) then
        table.insert({}, _FORV_6_)
      end
    elseif string.find(string.lower(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_6_.custom_model)), _ARG_0_) then
      table.insert({}, _FORV_6_)
    end
  end
  return {}
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
getResourceName(getThisResource(), true, 822943962)
return
