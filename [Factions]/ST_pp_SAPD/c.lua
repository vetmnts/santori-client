createBlip(1572.5, -1634.9, 13.55, 61, 2, 0, 0, 0, 0, 0, 275)
createBlip(-1881.8, -194.37, 18.4, 61, 2, 0, 0, 0, 0, 0, 275)
function window()
  if _UPVALUE2_.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("Parking policyjny", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    if typeSelect == "Prywatne" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 374 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 42 / _UPVALUE1_, 42 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    end
    if isMouseIn(_UPVALUE0_.x + 375 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) and isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
      dxDrawText("Prywatne", cxs + 14 / _UPVALUE1_, cys + 34 / _UPVALUE1_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      dxDrawText("Prywatne", cxs + 13 / _UPVALUE1_, cys + 33 / _UPVALUE1_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 375 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
    dxDrawImage(_UPVALUE0_.x + 377.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    if typeSelect == "Organizacyjne" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 419 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 42 / _UPVALUE1_, 42 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    end
    if isMouseIn(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) and isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
      dxDrawText("Organizacyjne", cxs + 14 / _UPVALUE1_, cys + 34 / _UPVALUE1_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      dxDrawText("Organizacyjne", cxs + 13 / _UPVALUE1_, cys + 33 / _UPVALUE1_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
    dxDrawImage(_UPVALUE0_.x + 422.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.org_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    if typeSelect == "Z dost\196\153pem do kluczy" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 464 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 42 / _UPVALUE1_, 42 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    end
    if isMouseIn(_UPVALUE0_.x + 465 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_) and isCursorShowing() then
      cxs, cys = getCursorPosition()
      cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
      dxDrawText("Z dost\196\153pem do kluczy", cxs + 14 / _UPVALUE1_, cys + 34 / _UPVALUE1_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
      dxDrawText("Z dost\196\153pem do kluczy", cxs + 13 / _UPVALUE1_, cys + 33 / _UPVALUE1_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 465 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_, 40 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
    dxDrawImage(_UPVALUE0_.x + 467.5 / _UPVALUE1_, _UPVALUE0_.y + 17.5 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.key_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    dxDrawScrollBar(#_UPVALUE5_, _UPVALUE0_.x + 855 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, 6 / _UPVALUE1_, 460 / _UPVALUE1_, _UPVALUE6_, _UPVALUE7_)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE5_) do
      if _FORV_7_ >= _UPVALUE7_ and _FORV_7_ <= _UPVALUE8_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / _UPVALUE1_, _UPVALUE0_.y + 74 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 827 / _UPVALUE1_, 77 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(40, 40, 40, 200), false)
        if isMouseIn(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 85 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 75 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(23, 23, 23, 220), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 75 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 200), false)
        end
        if getVehicleNameFromModel(_FORV_8_[2]) == "Sabre" then
          if _FORV_8_.wariant == "1, 2" then
          end
        elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
          if _FORV_8_.wariant == "3, 3" or _FORV_8_.wariant == "1, 1" then
          end
        elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
          if _FORV_8_.wariant == "0, 1" then
          end
        elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and _FORV_8_.wariant == "0, 2" then
        end
        dxDrawRectangle(_UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 1 / _UPVALUE1_, 37 / _UPVALUE1_, tocolor(70, 70, 70, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y + 131 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(70, 70, 70, 255), false)
        dxDrawText(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", _FORV_8_[3]) .. "  [ #ffbb00" .. _FORV_8_[1] .. " #ffffff]", _UPVALUE0_.x + 45 / _UPVALUE1_, _UPVALUE0_.y - 10 / _UPVALUE1_ + 160 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText("Pow\195\179d:  #d6d6d6" .. _FORV_8_[6] .. "", _UPVALUE0_.x + 55 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 160 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if _UPVALUE2_.selectVeh == true then
    if getVehicleNameFromModel(selfVeh.model) == "Sabre" then
      if selfVeh.wariant == "1, 2" then
      end
    elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" then
      if selfVeh.wariant == "3, 3" or v.wariant == "1, 1" then
      end
    elseif exports.ST_core:changeNameClient("BMW M2 Cabrio") == "Mercedes G63" then
      if selfVeh.wariant == "0, 1" then
      end
    elseif exports.ST_core:changeNameClient("Brabus G63") == "Mercedes GT63s" and selfVeh.wariant == "0, 2" then
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText(exports.ST_core:changeNameClient("Mercedes GT63s Brabus", selfVeh.customModel) .. "  [ #ffbb00" .. selfVeh.id .. " #ffffff]", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 439 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 412 / _UPVALUE1_, 265 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 151 / _UPVALUE1_, 410 / _UPVALUE1_, 263 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(25, 25, 25, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 19 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 412 / _UPVALUE1_, 265 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 151 / _UPVALUE1_, 410 / _UPVALUE1_, 263 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(25, 25, 25, 255))
    dxDrawText("ID", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Tablice rejestracyjne", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("W\197\130a\197\155ciciel", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Ostatni kierowca", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 330 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Osoba chowaj\196\133ca", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Powod", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Data", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 510 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("Koszt", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 570 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    dxDrawText("#ffbb00" .. selfVeh.id .. "", _UPVALUE0_.x, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    if selfVeh.plateText == "" or not selfVeh.plateText then
      dxDrawText("#ffbb00SA " .. selfVeh.id .. "", _UPVALUE0_.x, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("#ffbb00" .. selfVeh.plateText .. "", _UPVALUE0_.x, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    end
    dxDrawText("#ffbb00" .. selfVeh.owner .. "", _UPVALUE0_.x, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("#ffbb00" .. selfVeh.driver .. "", _UPVALUE0_.x, _UPVALUE0_.y + 330 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("#ffbb00" .. selfVeh.osoba .. "", _UPVALUE0_.x, _UPVALUE0_.y + 390 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("" .. selfVeh.powod .. "", _UPVALUE0_.x, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("#ffbb00" .. selfVeh.date .. "", _UPVALUE0_.x, _UPVALUE0_.y + 510 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("#00960a" .. przecinek(selfVeh.price) .. " #ffffffPLN", _UPVALUE0_.x, _UPVALUE0_.y + 570 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 55 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("WYJMIJ", _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 460 / _UPVALUE1_, 200 / _UPVALUE1_, 59 / _UPVALUE1_, 255, 1)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if _UPVALUE2_.oddanie == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(33, 33, 33, 255), false)
    dxDrawText("Parking policyjny", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_, 500 / _UPVALUE1_, 430 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(40, 40, 40, 230))
    dxDrawText("Pojazd: #ffbb00" .. exports.ST_core:changeNameClient(getVehicleName(vehicle), getElementData(vehicle, "vehicle:customID")), _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    exports.ST_buttons:dxCreateButton("Wstaw", _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, 200 / _UPVALUE1_, 59 / _UPVALUE1_, 255, 1)
  end
end
function mouseClick(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE1_) do
        if _FORV_5_ >= _UPVALUE2_ and _FORV_5_ <= _UPVALUE3_ then
          xY = xY + 1
          if isMouseIn(_UPVALUE5_.x + 25 / _UPVALUE4_, _UPVALUE5_.y + 75 / _UPVALUE4_ + 80 / _UPVALUE4_ * (xY - 1), 820 / _UPVALUE4_, 85 / _UPVALUE4_) and _UPVALUE0_.main == true then
            blockClick = true
            _UPVALUE0_.main = false
            _UPVALUE0_.selectVeh = true
            selfVeh = {}
            selfVeh.id = _FORV_6_[1]
            selfVeh.model = _FORV_6_[2]
            selfVeh.customModel = _FORV_6_[3]
            selfVeh.driver = _FORV_6_[4]
            selfVeh.owner = _FORV_6_[5]
            selfVeh.powod = _FORV_6_[6]
            selfVeh.osoba = _FORV_6_[7]
            selfVeh.plateText = _FORV_6_[11]
            selfVeh.date = _FORV_6_[12]
            selfVeh.price = _FORV_6_[13]
            selfVeh.wariant = _FORV_6_[8]
            vehicles3D(selfVeh.model, _FORV_6_[8], _FORV_6_[9], _FORV_6_[10], selfVeh.customModel)
            setTimer(function()
              blockClick = false
            end, 500, 1)
          end
        end
      end
    end
    if isMouseIn(_UPVALUE5_.x + 375 / _UPVALUE4_, _UPVALUE5_.y + 15 / _UPVALUE4_, 40 / _UPVALUE4_, 40 / _UPVALUE4_) and _UPVALUE0_.main == true then
      if blockClick then
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        return
      end
      blockClick = true
      _UPVALUE1_ = {}
      triggerServerEvent("ev", resourceRoot, "typeTable", localPlayer, "Prywatne")
      typeSelect = "Prywatne"
      setTimer(function()
        blockClick = false
      end, 10000, 1)
    elseif isMouseIn(_UPVALUE5_.x + 420 / _UPVALUE4_, _UPVALUE5_.y + 15 / _UPVALUE4_, 40 / _UPVALUE4_, 40 / _UPVALUE4_) and _UPVALUE0_.main == true then
      if not getElementData(localPlayer, "player:organization") then
        return
      end
      if blockClick then
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        return
      end
      blockClick = true
      _UPVALUE1_ = {}
      triggerServerEvent("ev", resourceRoot, "typeTable", localPlayer, "Organizacyjne")
      typeSelect = "Organizacyjne"
      setTimer(function()
        blockClick = false
      end, 10000, 1)
    elseif isMouseIn(_UPVALUE5_.x + 465 / _UPVALUE4_, _UPVALUE5_.y + 15 / _UPVALUE4_, 40 / _UPVALUE4_, 40 / _UPVALUE4_) and _UPVALUE0_.main == true then
      if blockClick then
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
        return
      end
      _UPVALUE1_ = {}
      blockClick = true
      triggerServerEvent("ev", resourceRoot, "typeTable", localPlayer, "Z dost\196\153pem do kluczy")
      typeSelect = "Z dost\196\153pem do kluczy"
      setTimer(function()
        blockClick = false
      end, 10000, 1)
    elseif isMouseIn(_UPVALUE5_.x + 335 / _UPVALUE4_, _UPVALUE5_.y + 430 / _UPVALUE4_, 200 / _UPVALUE4_, 59 / _UPVALUE4_) and _UPVALUE0_.oddanie == true then
      showCursor(false)
      _UPVALUE0_.oddanie = false
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      triggerServerEvent("ev", resourceRoot, "oddanie", localPlayer, exports.ST_gui:getCustomEditboxText("powod"), exports.ST_gui:getCustomEditboxText("cost"), vehicle)
      exports.ST_gui:destroyCustomEditbox("cost")
      exports.ST_gui:destroyCustomEditbox("powod")
    elseif isMouseIn(_UPVALUE5_.x + 335 / _UPVALUE4_, _UPVALUE5_.y + 460 / _UPVALUE4_, 200 / _UPVALUE4_, 59 / _UPVALUE4_) and _UPVALUE0_.selectVeh == true then
      if blockClick then
        return
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      removeEventHandler("onClientKey", root, key)
      _UPVALUE0_.main = false
      _UPVALUE0_.selectVeh = false
      showCursor(false)
      if isElement(myObject) then
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      exports.ST_gui:destroyCustomEditbox("cost")
      exports.ST_gui:destroyCustomEditbox("powod")
      triggerServerEvent("ev", resourceRoot, "spawnVeh", localPlayer, selfVeh.id, selfVeh.price, respPosVehicle)
    elseif isMouseIn(_UPVALUE5_.x + _UPVALUE5_.w - 61 / _UPVALUE4_, _UPVALUE5_.y + 24 / _UPVALUE4_, 27 / _UPVALUE4_, 27 / _UPVALUE4_) and (_UPVALUE0_.main == true or _UPVALUE0_.selectVeh == true or _UPVALUE0_.oddanie == true) then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, mouseClick)
      removeEventHandler("onClientKey", root, key)
      _UPVALUE0_.main = false
      _UPVALUE0_.selectVeh = false
      _UPVALUE0_.oddanie = false
      showCursor(false)
      if isElement(myObject) then
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      exports.ST_gui:destroyCustomEditbox("cost")
      exports.ST_gui:destroyCustomEditbox("powod")
      textures = {}
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_, _ARG_12_, _ARG_13_, _ARG_14_)
  if _ARG_0_ == "showGuiMarker" then
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      user_icon = dxCreateTexture(":ST_storevehicle/img/user_icon.png"),
      org_icon = dxCreateTexture(":ST_storevehicle/img/org_icon.png"),
      key_icon = dxCreateTexture(":ST_storevehicle/img/key_icon.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, mouseClick)
    addEventHandler("onClientKey", root, key)
    _UPVALUE0_.main = true
    showCursor(true)
    _UPVALUE1_ = {}
    respPosVehicle = _ARG_1_
    typeSelect = "Prywatne"
  elseif _ARG_0_ == "tableinsert" then
    for _FORV_18_, _FORV_19_ in ipairs(_UPVALUE1_) do
      if _ARG_1_ == _FORV_19_[1] then
        return
      end
    end
    table.insert(_UPVALUE1_, {
      _ARG_1_,
      _ARG_2_,
      _ARG_3_,
      _ARG_4_,
      _ARG_5_,
      _ARG_6_,
      _ARG_7_,
      _ARG_8_,
      _ARG_9_,
      _ARG_10_,
      _ARG_11_,
      _ARG_12_,
      _ARG_13_
    })
    if _ARG_14_ then
      setTimer(function()
        blockClick = false
      end, 2000, 1)
      typeSelect = _ARG_14_
      _UPVALUE2_ = 1
      _UPVALUE3_ = 6
      _UPVALUE4_ = 6
    end
  elseif _ARG_0_ == "showGuiOddanie" then
    exports.ST_gui:destroyCustomEditbox("cost")
    exports.ST_gui:destroyCustomEditbox("powod")
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      background = dxCreateTexture(":ST_gui/img/background2.png")
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, mouseClick)
    _UPVALUE0_.oddanie = true
    showCursor(true)
    exports.ST_gui:createCustomEditbox("cost", "Koszt", _UPVALUE5_.x + 295 / _UPVALUE6_, _UPVALUE5_.y + 190 / _UPVALUE6_, 282 / _UPVALUE6_, 50 / _UPVALUE6_, false, "", "", 1)
    exports.ST_gui:createCustomEditbox("powod", "Pow\195\179d", _UPVALUE5_.x + 295 / _UPVALUE6_, _UPVALUE5_.y + 320 / _UPVALUE6_, 282 / _UPVALUE6_, 50 / _UPVALUE6_, false, "", "", 1)
    vehicle = _ARG_1_
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.main == true then
      if _UPVALUE1_ == _UPVALUE2_ then
        return
      end
      _UPVALUE3_ = _UPVALUE3_ - 1
      _UPVALUE1_ = _UPVALUE1_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and _UPVALUE0_.main == true then
    if _UPVALUE1_ >= #_UPVALUE4_ then
      return
    end
    _UPVALUE3_ = _UPVALUE3_ + 1
    _UPVALUE1_ = _UPVALUE1_ + 1
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(20, 20, 20, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
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
  if _ARG_4_ ~= 0 and exports.ST_custom_cars:isCustomModID(_ARG_4_) then
    setElementData(vehicle3D, "vehicle:customID", _ARG_4_)
  end
  setElementCollisionsEnabled(vehicle3D, false)
  myObject = exports.ST_object_preview:createObjectPreview(vehicle3D, -5, 0, 140, _UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y + 151 / _UPVALUE1_, 410 / _UPVALUE1_, 263 / _UPVALUE1_, false, true)
  setVehicleColor(vehicle3D, split(_ARG_2_, ",")[1], split(_ARG_2_, ",")[2], split(_ARG_2_, ",")[3], split(_ARG_2_, ",")[4], split(_ARG_2_, ",")[5], split(_ARG_2_, ",")[6], split(_ARG_2_, ",")[7], split(_ARG_2_, ",")[8], split(_ARG_2_, ",")[9], split(_ARG_2_, ",")[10], split(_ARG_2_, ",")[11], split(_ARG_2_, ",")[12])
  for _FORV_9_, _FORV_10_ in ipairs(split(_ARG_3_, ",")) do
    addVehicleUpgrade(vehicle3D, _FORV_10_)
  end
  setVehicleVariant(vehicle3D, split(_ARG_1_, ",")[1], split(_ARG_1_, ",")[2])
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
getResourceName(getThisResource(), true, 799352293)
return
