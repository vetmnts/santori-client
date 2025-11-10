zoom = exports.st_gui:getInterfaceZoom()
windowPos1 = {
  x = 0 / zoom,
  y = guiGetScreenSize() / 2 - 0 / zoom / 2,
  w = 560 / zoom,
  h = 0 / zoom
}
function window()
  if _UPVALUE0_.background == true then
    dxDrawImage(_UPVALUE1_.x + 10 / zoom, _UPVALUE1_.y + 10 / zoom, 100 / zoom, 100 / zoom, textures.background_circle, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    exports.ST_Avatars:dxCreateAvatar(_UPVALUE1_.x + 12 / zoom, _UPVALUE1_.y + 12 / zoom, 97 / zoom, 97 / zoom, 255)
    dxDrawImage(_UPVALUE1_.x + 10 / zoom, _UPVALUE1_.y + 10 / zoom, 100 / zoom, 100 / zoom, textures.circle, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(getPlayerName(localPlayer) .. "\n" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " PLN", _UPVALUE1_.x + 122 / zoom, _UPVALUE1_.y - 98 / zoom, _UPVALUE1_.x + 362 / zoom, _UPVALUE1_.y + 204 / zoom, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, true, false)
    dxDrawText(getElementData(localPlayer, "player:elementDat").color_nickName .. "" .. getPlayerName(localPlayer) .. [[

#009419]] .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " #ffffffPLN", _UPVALUE1_.x + 120 / zoom, _UPVALUE1_.y - 100 / zoom, _UPVALUE1_.x + 362 / zoom, _UPVALUE1_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in pairs(category) do
      if _FORV_10_.show == true then
        offsetYWith = 60 / zoom * (0 + 1)
        offsetYWith1 = 30 / zoom * (0 + 1)
        dxDrawRoundedRectangle(windowPos1.x + 7.5 / zoom, windowPos1.y - offsetYWith1, 66 / zoom, windowPos1.h + offsetYWith, 15 / zoom, tocolor(22, 22, 22, 255), false)
      end
    end
    for _FORV_10_, _FORV_11_ in pairs(category) do
      if _FORV_11_.show == true then
        if _FORV_11_.name == self.categoryName then
          dxDrawRoundedRectangle(windowPos1.x + 13 / zoom, windowPos1.y - offsetYWith1 + 60 / zoom * (0 + 1 - 1) + 3 / zoom, 78 / zoom, 54 / zoom, 12 / zoom, tocolor(90, 90, 90, 255), false)
        end
        dxDrawRoundedRectangle(windowPos1.x + 15 / zoom, windowPos1.y - offsetYWith1 + 60 / zoom * (0 + 1 - 1) + 5 / zoom, 50 / zoom, 50 / zoom, 12 / zoom, tocolor(35, 35, 35, 255), false)
        dxDrawImage(windowPos1.x + 20 / zoom, windowPos1.y - offsetYWith1 + 60 / zoom * (0 + 1 - 1) + 10 / zoom, 40 / zoom, 40 / zoom, _FORV_11_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if isMouseIn(windowPos1.x + 15 / zoom, windowPos1.y - offsetYWith1 + 60 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom) and isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
          dxDrawText(_FORV_11_.name, cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText(_FORV_11_.name, cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      end
    end
    if _UPVALUE0_.main == true then
      dxDrawRoundedRectangle(windowPos1.x + 82 / zoom, windowPos1.y - 428 / zoom, windowPos1.w + 6 / zoom, windowPos1.h + 856 / zoom, 15 / zoom, tocolor(90, 90, 90, 255))
      dxDrawRoundedRectangle(windowPos1.x + 85 / zoom, windowPos1.y - 425 / zoom, windowPos1.w, windowPos1.h + 850 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
      dxDrawText(self.categoryName, windowPos1.x + 100 / zoom, windowPos1.y - 988 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 365 / zoom, windowPos1.w - 20 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 235), false)
      if self.freeCamera == true then
        dxDrawRoundedRectangle(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom, 12 / zoom, tocolor(90, 90, 90, 255), false)
      end
      dxDrawRoundedRectangle(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom, 12 / zoom, tocolor(35, 35, 35, 255), false)
      dxDrawImage(windowPos1.x + 585 / zoom, windowPos1.y - 415 / zoom, 40 / zoom, 40 / zoom, textures.camera_icon, 0, 0, 0, tocolor(255, 255, 255, 255))
      if isMouseIn(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
        dxDrawText("Swobodna kamera", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Swobodna kamera", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
      end
      for _FORV_15_, _FORV_16_ in ipairs(self.tuningPartTable) do
        if _FORV_15_ >= k and _FORV_15_ <= n then
          if self.selectPart == _FORV_16_ then
            dxDrawRoundedRectangle(windowPos1.x + 94 / zoom, windowPos1.y - 351 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 18 / zoom, 102 / zoom, 9 / zoom, tocolor(50, 50, 50, 255))
            dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 20 / zoom, 100 / zoom, 9 / zoom, tocolor(25, 25, 25, 255))
          else
            dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 20 / zoom, 100 / zoom, 9 / zoom, tocolor(30, 30, 30, 250))
          end
          dxDrawRoundedRectangle(windowPos1.x + 100 / zoom, windowPos1.y - 345 / zoom + 110 / zoom * (0 + 1 - 1), 85 / zoom, 85 / zoom, 9 / zoom, tocolor(20, 20, 20, 255))
          dxDrawImage(windowPos1.x + 105 / zoom, windowPos1.y - 340 / zoom + 110 / zoom * (0 + 1 - 1), 75 / zoom, 75 / zoom, self.imgSelect, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          if _FORV_16_ == 1086 then
            dxDrawText(self.categoryName .. "    ( WYMAGANE KONTO PREMIUM )", windowPos1.x + 195 / zoom, windowPos1.y - 860 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          else
            dxDrawText(self.categoryName .. "    ID: #ffbb00" .. _FORV_16_ .. "", windowPos1.x + 195 / zoom, windowPos1.y - 860 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          end
          dxDrawText("#00ad23" .. przecinek(self.cost) .. " #f0f0f0PLN", windowPos1.x + 195 / zoom, windowPos1.y - 800 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          self.vizuMontage = false
          for _FORV_23_, _FORV_24_ in ipairs((getVehicleUpgrades(vehicle))) do
            if _FORV_24_ == _FORV_16_ then
              self.vizuMontage = true
            end
          end
          if self.vizuMontage then
            dxDrawText("#00ff00Zamontowano", windowPos1.x + 195 / zoom, windowPos1.y - 750 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
            exports.ST_buttons:dxCreateButton("DEMONTUJ", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
          else
            exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
          end
        end
      end
    end
    if _UPVALUE0_.custom == true then
      dxDrawRoundedRectangle(windowPos1.x + 82 / zoom, windowPos1.y - 428 / zoom, windowPos1.w + 6 / zoom, windowPos1.h + 856 / zoom, 15 / zoom, tocolor(90, 90, 90, 255))
      dxDrawRoundedRectangle(windowPos1.x + 85 / zoom, windowPos1.y - 425 / zoom, windowPos1.w, windowPos1.h + 850 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
      dxDrawText(self.categoryName, windowPos1.x + 100 / zoom, windowPos1.y - 988 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 365 / zoom, windowPos1.w - 20 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 235), false)
      if self.freeCamera == true then
        dxDrawRoundedRectangle(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom, 12 / zoom, tocolor(90, 90, 90, 255), false)
      end
      dxDrawRoundedRectangle(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom, 12 / zoom, tocolor(35, 35, 35, 255), false)
      dxDrawImage(windowPos1.x + 585 / zoom, windowPos1.y - 415 / zoom, 40 / zoom, 40 / zoom, textures.camera_icon, 0, 0, 0, tocolor(255, 255, 255, 255))
      if isMouseIn(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
        dxDrawText("Swobodna kamera", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Swobodna kamera", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
      end
      for _FORV_15_, _FORV_16_ in ipairs(self.tuningPartTable) do
        if _FORV_15_ >= k and _FORV_15_ <= n then
          if _FORV_16_.name == "Szeroko\197\155\196\135 tylnych opon" or _FORV_16_.name == "Szeroko\197\155\196\135 przednich opon" then
            dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 20 / zoom, 100 / zoom, 9 / zoom, tocolor(30, 30, 30, 250))
          elseif self.selectPart == _FORV_16_ then
            dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 20 / zoom, 100 / zoom, 9 / zoom, tocolor(25, 25, 25, 255))
          else
            dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 20 / zoom, 100 / zoom, 9 / zoom, tocolor(30, 30, 30, 250))
          end
          dxDrawRoundedRectangle(windowPos1.x + 100 / zoom, windowPos1.y - 345 / zoom + 110 / zoom * (0 + 1 - 1), 85 / zoom, 85 / zoom, 9 / zoom, tocolor(20, 20, 20, 255))
          if self.categoryName == "Warianty" then
            dxDrawImage(windowPos1.x + 105 / zoom, windowPos1.y - 340 / zoom + 110 / zoom * (0 + 1 - 1), 75 / zoom, 75 / zoom, _FORV_16_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          else
            dxDrawImage(windowPos1.x + 105 / zoom, windowPos1.y - 340 / zoom + 110 / zoom * (0 + 1 - 1), 75 / zoom, 75 / zoom, self.imgSelect, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
          dxDrawText(_FORV_16_.name, windowPos1.x + 195 / zoom, windowPos1.y - 860 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          if _FORV_16_.name == "Szeroko\197\155\196\135 tylnych opon" or _FORV_16_.name == "Szeroko\197\155\196\135 przednich opon" then
            dxDrawRoundedRectangle(windowPos1.x + 280 / zoom, windowPos1.y - 286 / zoom + 110 / zoom * (0 + 1 - 1), 177 / zoom, 30 / zoom, 9 / zoom, tocolor(40, 40, 40, 255))
            dxDrawImage(windowPos1.x + 285 / zoom, windowPos1.y - 281 / zoom + 110 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom, textures.arrow, 180, 0, 0, tocolor(255, 255, 255, 255), false)
            dxDrawImage(windowPos1.x + 435 / zoom, windowPos1.y - 281 / zoom + 110 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom, textures.arrow, 0, 0, 0, tocolor(255, 255, 255, 255), false)
            dxDrawText("#00ad23" .. przecinek(_FORV_16_.cost) .. " #f0f0f0PLN", windowPos1.x + 195 / zoom, windowPos1.y - 807 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
            exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
            for _FORV_22_, _FORV_23_ in pairs(_UPVALUE4_) do
              if _FORV_23_[1] == _FORV_16_.montage then
                dxDrawText(_UPVALUE4_[_FORV_22_][2] .. "", windowPos1.x + 380 / zoom, windowPos1.y - 746 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
              end
            end
          elseif self.categoryName == "Paintjoby" then
            if self.isPaintjobVehicle == _FORV_16_.id then
              exports.ST_buttons:dxCreateButton("DEMONTUJ", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
              dxDrawText("#00ff00Zamontowano", windowPos1.x + 195 / zoom, windowPos1.y - 750 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
            else
              exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
            end
            dxDrawText("#00ad23" .. przecinek(_FORV_16_.cost) .. " #f0f0f0PLN | DEMONT: #00ad23" .. przecinek(_FORV_16_.disassembly) .. " #f0f0f0PLN", windowPos1.x + 195 / zoom, windowPos1.y - 807 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
          elseif self.categoryName == "Warianty" then
            if getVehicleVariant(vehicle) == _FORV_16_.id[1] and getVehicleVariant(vehicle) == _FORV_16_.id[2] then
              dxDrawText("#00ff00Zamontowano", windowPos1.x + 195 / zoom, windowPos1.y - 750 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
            else
              exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
            end
            dxDrawText("#00ad23" .. przecinek(_FORV_16_.cost) .. " #f0f0f0PLN", windowPos1.x + 195 / zoom, windowPos1.y - 807 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          elseif self.categoryName == "Liczniki" then
            if getElementData(vehicle, "vehicle_tuning").licznik == _FORV_16_.id then
              dxDrawText("#00ff00Zamontowano", windowPos1.x + 195 / zoom, windowPos1.y - 750 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
            else
              exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom, 255, 1)
            end
            dxDrawText("#00ad23" .. przecinek(_FORV_16_.cost) .. " #f0f0f0PLN", windowPos1.x + 195 / zoom, windowPos1.y - 807 / zoom + 220 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          end
        end
      end
    end
    if _UPVALUE0_.colorLight == true then
      dxDrawRoundedRectangle(windowPos1.x + 82 / zoom, windowPos1.y - 428 / zoom, windowPos1.w + 6 / zoom, windowPos1.h + 856 / zoom, 15 / zoom, tocolor(90, 90, 90, 255))
      dxDrawRoundedRectangle(windowPos1.x + 85 / zoom, windowPos1.y - 425 / zoom, windowPos1.w, windowPos1.h + 850 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
      dxDrawText(self.categoryName, windowPos1.x + 100 / zoom, windowPos1.y - 988 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 365 / zoom, windowPos1.w - 20 / zoom, 2 / zoom, 1 / zoom, tocolor(255, 187, 0, 235), false)
      if self.freeCamera == true then
        dxDrawRoundedRectangle(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom, 12 / zoom, tocolor(90, 90, 90, 255), false)
      end
      dxDrawRoundedRectangle(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom, 12 / zoom, tocolor(35, 35, 35, 255), false)
      dxDrawImage(windowPos1.x + 585 / zoom, windowPos1.y - 415 / zoom, 40 / zoom, 40 / zoom, textures.camera_icon, 0, 0, 0, tocolor(255, 255, 255, 255))
      if isMouseIn(windowPos1.x + 580 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
        dxDrawText("Swobodna kamera", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Swobodna kamera", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
      end
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 355 / zoom, windowPos1.w - 20 / zoom, 310 / zoom, 15 / zoom, tocolor(40, 40, 40, 255), false)
      calculateMouse()
      dxDrawRectangle(windowPos1.x + 110 / zoom, windowPos1.y - 340 / zoom, 510 / zoom, 250 / zoom, tocolor(selfColorLamp.colorCurrent[1], selfColorLamp.colorCurrent[2], selfColorLamp.colorCurrent[3], 255))
      dxDrawImage(windowPos1.x + 110 / zoom, windowPos1.y - 340 / zoom, 510 / zoom, 250 / zoom, textures.sv, 0, 0, 0, tocolor(255, 255, 255, 255))
      dxDrawImage(windowPos1.x + 110 / zoom, windowPos1.y - 70 / zoom, 510 / zoom, 10 / zoom, textures.h, 180, 0, 0, tocolor(255, 255, 255, 255))
      dxDrawCircle(windowPos1.x + 110 / zoom + selfColorLamp.colorSlide / zoom, windowPos1.y - 65 / zoom, 9 / zoom, 0, 360, tocolor(255, 255, 255, 255))
      dxDrawCircle(windowPos1.x + 110 / zoom + selfColorLamp.colorSlide / zoom, windowPos1.y - 65 / zoom, 8 / zoom, 0, 360, tocolor(selfColorLamp.colorCurrent[1], selfColorLamp.colorCurrent[2], selfColorLamp.colorCurrent[3], 255))
      rLamp, gLamp, bLamp = hsv2rgb((510 / zoom - selfColorLamp.colorSlide) / (510 / zoom), selfColorLamp.colorPicker.x / (510 / zoom), (250 / zoom - selfColorLamp.colorPicker.y) / (250 / zoom))
      setVehicleHeadLightColor(vehicle_player, rLamp, gLamp, bLamp)
      dxDrawRoundedRectangle(windowPos1.x + 520 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom, 12 / zoom, tocolor(35, 35, 35, 255), false)
      if getVehicleOverrideLights(vehicle_player) ~= 2 then
        dxDrawImage(windowPos1.x + 525 / zoom, windowPos1.y - 415 / zoom, 40 / zoom, 40 / zoom, textures.light_icon, 0, 0, 0, tocolor(180, 180, 180, 255))
      else
        dxDrawImage(windowPos1.x + 525 / zoom, windowPos1.y - 415 / zoom, 40 / zoom, 40 / zoom, textures.light_icon, 0, 0, 0, tocolor(rLamp, gLamp, bLamp, 255))
      end
      if isMouseIn(windowPos1.x + 520 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom) and isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE2_ * cxs, _UPVALUE3_ * cys
        if getVehicleOverrideLights(vehicle_player) ~= 2 then
          dxDrawText("W\197\130\196\133cz \197\155wiat\197\130a", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("W\197\130\196\133cz \197\155wiat\197\130a", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        else
          dxDrawText("Wy\197\130\196\133cz \197\155wiat\197\130a", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Wy\197\130\196\133cz \197\155wiat\197\130a", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("rgb1"))) and tonumber((exports.ST_gui:getCustomEditboxText("rgb2"))) and tonumber((exports.ST_gui:getCustomEditboxText("rgb3"))) and 255 >= tonumber((exports.ST_gui:getCustomEditboxText("rgb1"))) and 255 >= tonumber((exports.ST_gui:getCustomEditboxText("rgb2"))) and 255 >= tonumber((exports.ST_gui:getCustomEditboxText("rgb3"))) and exports.ST_gui:getCustomEditboxText("rgb1") and exports.ST_gui:getCustomEditboxText("rgb2") and exports.ST_gui:getCustomEditboxText("rgb3") then
        r, g, b = exports.ST_gui:getCustomEditboxText("rgb1"), exports.ST_gui:getCustomEditboxText("rgb2"), exports.ST_gui:getCustomEditboxText("rgb3")
        selfColorLamp.colorSlide = (1 - rgbToHsv(r, g, b)) * 510 / zoom
        selfColorLamp.colorPicker = Vector2(rgbToHsv(r, g, b) * (510 / zoom), 250 / zoom - rgbToHsv(r, g, b) * (250 / zoom))
        selfColorLamp.colorCurrent = {
          hsv2rgb(rgbToHsv(r, g, b))
        }
      end
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y - 35 / zoom, 176 / zoom, 90 / zoom, 15 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawText("#d10000R #00d200G #0000d2B", windowPos1.x + 105 / zoom, windowPos1.y - 230 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. rLamp .. ", " .. gLamp .. ", " .. bLamp .. "", windowPos1.x + 2 / zoom, windowPos1.y - 155 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos1.x + 277 / zoom, windowPos1.y - 35 / zoom, 176 / zoom, 90 / zoom, 15 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawText("HEX", windowPos1.x + 287 / zoom, windowPos1.y - 230 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText(RGBToHex(rLamp, gLamp, bLamp), windowPos1.x + 360 / zoom, windowPos1.y - 155 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos1.x + 459 / zoom, windowPos1.y - 35 / zoom, 176 / zoom, 90 / zoom, 15 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawText("WPISZ RGB", windowPos1.x + 469 / zoom, windowPos1.y - 230 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos1.x + 167 / zoom, windowPos1.y + 100 / zoom, 396 / zoom, 260 / zoom, 15 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawText("WYBRANY KOLOR", windowPos1.x + 360 / zoom, windowPos1.y + 50 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos1.x + 227 / zoom, windowPos1.y + 160 / zoom, 276 / zoom, 40 / zoom, 15 / zoom, tocolor(rLamp, gLamp, bLamp, 255), false)
      dxDrawText("KOSZT: #00ad232,000,000 #f0f0f0PLN", windowPos1.x + 360 / zoom, windowPos1.y + 270 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 217 / zoom, windowPos1.y + 270 / zoom, 296 / zoom, 60 / zoom, 255, 1)
      dxDrawCircle(windowPos1.x + 110 / zoom + selfColorLamp.colorPicker.x, windowPos1.y - 335 / zoom + selfColorLamp.colorPicker.y, 8 / zoom, 0, 360, tocolor(255, 255, 255, 255))
      dxDrawCircle(windowPos1.x + 110 / zoom + selfColorLamp.colorPicker.x, windowPos1.y - 335 / zoom + selfColorLamp.colorPicker.y, 7 / zoom, 0, 360, tocolor(rLamp, gLamp, bLamp, 255))
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if _FORV_7_.show == true and isMouseIn(windowPos1.x + 15 / zoom, windowPos1.y - offsetYWith / 2 / zoom + 60 / zoom * (0 + 1 - 1), 50 / zoom, 50 / zoom) then
          self.unlockMontage = true
          removeTexturesSpeedometer()
          if self.categoryName == _FORV_7_.name then
            self.categoryName = false
            _UPVALUE0_.custom = false
            _UPVALUE0_.main = false
            _UPVALUE0_.colorLight = false
            exports.ST_gui:destroyCustomEditbox("rgb1")
            exports.ST_gui:destroyCustomEditbox("rgb2")
            exports.ST_gui:destroyCustomEditbox("rgb3")
            return
          end
          k = 1
          n = 7
          m = 7
          _UPVALUE0_.custom = false
          _UPVALUE0_.main = false
          _UPVALUE0_.colorLight = false
          exports.ST_gui:destroyCustomEditbox("rgb1")
          exports.ST_gui:destroyCustomEditbox("rgb2")
          exports.ST_gui:destroyCustomEditbox("rgb3")
          if _FORV_7_.name == "Kolor \197\155wiate\197\130" then
            selfColorLamp = {}
            _UPVALUE0_.colorLight = true
            selfColorLamp.colorCurrent = {
              255,
              0,
              0
            }
            selfColorLamp.colorSlide = 0
            selfColorLamp.colorPicker = Vector2(0, 0)
            exports.ST_gui:createCustomEditbox("rgb1", "R", windowPos1.x + 473 / zoom, windowPos1.y + 8 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
            exports.ST_gui:createCustomEditbox("rgb2", "G", windowPos1.x + 523 / zoom, windowPos1.y + 8 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
            exports.ST_gui:createCustomEditbox("rgb3", "B", windowPos1.x + 573 / zoom, windowPos1.y + 8 / zoom, 45 / zoom, 35 / zoom, false, "", "", 1)
          elseif _FORV_7_.name == "Szeroko\197\155\196\135 opon" or _FORV_7_.name == "Paintjoby" or _FORV_7_.name == "Warianty" or _FORV_7_.name == "Liczniki" then
            self.selectCategoriesTuning1 = _FORV_7_.idCustomSelect
            if _FORV_7_.name == "Paintjoby" or _FORV_7_.name == "Warianty" then
              if _FORV_7_.name == "Paintjoby" and (getElementData(localPlayer, "player:sid") == 4 or getElementData(localPlayer, "player:sid") == 2 or getElementData(localPlayer, "player:sid") == 6 or getElementData(localPlayer, "player:sid") == 16 or getElementData(localPlayer, "player:sid") == 5 or getElementData(localPlayer, "player:sid") == 10 or getElementData(localPlayer, "player:sid") == 55) then
                exports.st_gui:showPlayerNotification("Nie masz dost\196\153pu do tej kategorii", "error")
                return
              end
              self.tuningPartTable = tuning[self.selectCategoriesTuning1][modelID]
            else
              self.tuningPartTable = tuning[self.selectCategoriesTuning1]
            end
            _UPVALUE0_.custom = true
          else
            self.tuningPartTable = getVehicleCompatibleUpgrades(vehicle_player, _FORV_7_.id)
            self.slotVehicles = _FORV_7_.id
            _UPVALUE0_.main = true
          end
          self.imgSelect = _FORV_7_.img
          self.categoryName = _FORV_7_.name
          self.cost = _FORV_7_.cost
        end
      end
    end
    if _UPVALUE0_.colorLight == true then
      if isMouseIn(windowPos1.x + 520 / zoom, windowPos1.y - 420 / zoom, 50 / zoom, 50 / zoom) then
        if getVehicleOverrideLights(vehicle_player) ~= 2 then
          setVehicleOverrideLights(vehicle_player, 2)
        else
          setVehicleOverrideLights(vehicle_player, 1)
        end
      elseif isMouseIn(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom) then
        if self.freeCamera == true then
          showCursor(true)
          stopMouseLook()
          self.freeCamera = false
        else
          self.freeCamera = true
          startMouseLook()
          showCursor(false)
        end
      end
    end
    if _UPVALUE0_.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(self.tuningPartTable) do
        if _FORV_6_ >= k and _FORV_6_ <= n then
          if isMouseIn(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 150 / zoom, 100 / zoom) then
            for _FORV_13_, _FORV_14_ in ipairs((getVehicleUpgrades(vehicle_player))) do
              addVehicleUpgrade(vehicle_player, _FORV_14_)
            end
            addVehicleUpgrade(vehicle_player, _FORV_7_)
            self.selectPart = _FORV_7_
          elseif isMouseIn(windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom) then
            for _FORV_13_, _FORV_14_ in ipairs((getVehicleUpgrades(vehicle))) do
              if _FORV_14_ == _FORV_7_ then
                self.vizuMontage = true
              else
              end
            end
            if self.vizuMontage == true then
              triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "tuningVizu", localPlayer, false, vehicle, _FORV_7_, self.cost)
            else
              triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "tuningVizu", localPlayer, true, vehicle, _FORV_7_, self.cost)
            end
          end
        end
      end
      if isMouseIn(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom) then
        if self.freeCamera == true then
          showCursor(true)
          stopMouseLook()
          self.freeCamera = false
          unbindKey("enter", "down", stopFreeCamera)
        else
          self.freeCamera = true
          startMouseLook()
          showCursor(false)
          bindKey("enter", "down", stopFreeCamera)
        end
      end
    end
    if _UPVALUE0_.custom == true then
      for _FORV_6_, _FORV_7_ in ipairs(self.tuningPartTable) do
        if _FORV_6_ >= k and _FORV_6_ <= n then
          if self.categoryName == "Liczniki" then
            if isMouseIn(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 150 / zoom, 100 / zoom) then
              if getVehicleUpgradeOnSlot(vehicle, 8) ~= 0 then
                nitroMontage = true
              else
                nitroMontage = false
              end
              infoVehicles = {
                bak = getElementData(vehicle, "vehicle_tuning").bak or 100,
                cylindry = getElementData(vehicle, "vehicle_tuning").cylindry or "V4",
                pojemnosc = getElementData(vehicle, "vehicle_tuning").pojemnosc or "1.4",
                rodzaj = getElementData(vehicle, "vehicle_tuning").rodzaj or "DIESEL",
                turbo = getElementData(vehicle, "vehicle_tuning").turbo == 1,
                lpg_montage = getElementData(vehicle, "vehicle_tuning").lpg_montage == "Tak",
                licznik = getElementData(vehicle, "vehicle_tuning").licznik or false,
                id = true,
                nitro = nitroMontage,
                butlaN = getElementData(vehicle, "vehicle_tuning").butlaN or 5
              }
              self.selectPart = _FORV_7_
              removeTexturesSpeedometer()
              loadTexturesSpeedometer(self.selectPart.id)
              if self.selectPart.id == 4 then
                addEventHandler("onClientRender", root, renderSpeedMeter5)
              elseif self.selectPart.id == 3 then
                addEventHandler("onClientRender", root, renderSpeedMeter4)
              elseif self.selectPart.id == 2 then
                addEventHandler("onClientRender", root, renderSpeedMeter2)
              elseif self.selectPart.id == 1 then
                addEventHandler("onClientRender", root, renderSpeedMeter3)
              else
                addEventHandler("onClientRender", root, renderSpeedMeter1)
              end
            elseif isMouseIn(windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom) then
              if getElementData(vehicle, "vehicle_tuning").licznik == _FORV_7_.id then
                exports.st_gui:showPlayerNotification("Posiadasz ju\197\188 ten licznik", "error")
              elseif self.unlockMontage == true then
                if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                  exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                  return
                end
                self.unlockMontage = false
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "buySpeedometer", localPlayer, vehicle, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.id)
              end
            end
          elseif self.categoryName == "Warianty" then
            if isMouseIn(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 150 / zoom, 100 / zoom) then
              createVehicleClient(self.isPaintjobVehicle, false, false, _FORV_7_.id)
              self.selectPart = _FORV_7_
            elseif not isMouseIn(windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom) or self.unlockMontage ~= true or getVehicleVariant(vehicle) == _FORV_7_.id[1] and getVehicleVariant(vehicle) == _FORV_7_.id[2] then
            else
              if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                return
              end
              self.unlockMontage = false
              triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "buyWariant", localPlayer, vehicle, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.id)
            end
          elseif self.categoryName == "Paintjoby" then
            if isMouseIn(windowPos1.x + 95 / zoom, windowPos1.y - 350 / zoom + 110 / zoom * (0 + 1 - 1), windowPos1.w - 150 / zoom, 100 / zoom) then
              createVehicleClient(_FORV_7_.id)
              self.selectPart = _FORV_7_
            elseif isMouseIn(windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom) and self.unlockMontage == true then
              if self.isPaintjobVehicle == _FORV_7_.id then
                createVehicleClient(0)
                self.unlockMontage = false
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "disassemblyPaintjob", localPlayer, vehicle, _FORV_7_.disassembly, _FORV_7_.name)
              else
                if _FORV_7_.name == "Paintjob \197\155wi\196\133teczny" then
                  exports.st_gui:showPlayerNotification("Ten paintjob nie jest dost\196\153pny", "error")
                  return
                end
                if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                  exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                  return
                end
                if self.isPaintjobVehicle ~= 0 then
                  exports.st_gui:showPlayerNotification("Najpierw zdemontuj paintjob", "error")
                else
                  self.unlockMontage = false
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "buyPaintjob", localPlayer, vehicle, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.id)
                end
              end
            end
          elseif self.categoryName == "Szeroko\197\155\196\135 opon" then
            if isMouseIn(windowPos1.x + 285 / zoom, windowPos1.y - 281 / zoom + 110 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) then
              if _FORV_7_.montage == 8 then
                idTires = 4
              elseif _FORV_7_.montage == 4 then
                idTires = 2
              elseif _FORV_7_.montage == 2 then
                idTires = 1
              elseif _FORV_7_.montage == 1 then
                idTires = 0
              elseif _FORV_7_.montage == 0 then
                idTires = 8
              end
              if _FORV_7_.name == "Szeroko\197\155\196\135 tylnych opon" then
                table_tuning({idTires, "R"})
                setVehicleHandlingFlags(vehicle_player, {4}, idTires)
              else
                table_tuning({idTires, "F"})
                setVehicleHandlingFlags(vehicle_player, {3}, idTires)
              end
              self.tuningPartTable = tuning[self.selectCategoriesTuning1]
            elseif isMouseIn(windowPos1.x + 435 / zoom, windowPos1.y - 281 / zoom + 110 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) then
              if _FORV_7_.montage == 0 then
                idTires = 1
              elseif _FORV_7_.montage == 1 then
                idTires = 2
              elseif _FORV_7_.montage == 2 then
                idTires = 4
              elseif _FORV_7_.montage == 4 then
                idTires = 8
              elseif _FORV_7_.montage == 8 then
                idTires = 0
              end
              if _FORV_7_.name == "Szeroko\197\155\196\135 tylnych opon" then
                table_tuning({idTires, "R"})
                setVehicleHandlingFlags(vehicle_player, {4}, idTires)
              else
                table_tuning({idTires, "F"})
                setVehicleHandlingFlags(vehicle_player, {3}, idTires)
              end
              self.tuningPartTable = tuning[self.selectCategoriesTuning1]
            elseif isMouseIn(windowPos1.x + 515 / zoom, windowPos1.y - 322 / zoom + 110 / zoom * (0 + 1 - 1), 110 / zoom, 45 / zoom) and self.unlockMontage == true then
              if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                return
              end
              self.unlockMontage = false
              for _FORV_12_, _FORV_13_ in ipairs(table_vehicles) do
                if _FORV_7_.name == "Szeroko\197\155\196\135 tylnych opon" then
                  if _FORV_13_.wheelsRear == _FORV_7_.montage then
                    exports.st_gui:showPlayerNotification("Posiadasz ju\197\188 te opony", "error")
                    return
                  end
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "tuningTires", localPlayer, vehicle, _FORV_7_.cost, "wheelsRear", _FORV_7_.montage, "tylne opony")
                else
                  if _FORV_13_.wheelsFront == _FORV_7_.montage then
                    exports.st_gui:showPlayerNotification("Posiadasz ju\197\188 te opony", "error")
                    return
                  end
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "tuningTires", localPlayer, vehicle, _FORV_7_.cost, "wheelsFront", _FORV_7_.montage, "przednie opony")
                end
              end
            end
          end
        end
      end
      if isMouseIn(windowPos1.x + 579 / zoom, windowPos1.y - 421 / zoom, 52 / zoom, 52 / zoom) then
        if self.freeCamera == true then
          showCursor(true)
          stopMouseLook()
          self.freeCamera = false
          unbindKey("enter", "down", stopFreeCamera)
        else
          self.freeCamera = true
          startMouseLook()
          showCursor(false)
          bindKey("enter", "down", stopFreeCamera)
        end
      end
    end
    if _UPVALUE0_.colorLight == true and isMouseIn(windowPos1.x + 217 / zoom, windowPos1.y + 270 / zoom, 296 / zoom, 60 / zoom) and self.unlockMontage == true then
      self.unlockMontage = false
      if getElementData(localPlayer, "player:moneyMNn") < 2000000 then
        exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
        return
      end
      triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "buyLamp", localPlayer, vehicle, 2000000, {
        rLamp,
        gLamp,
        bLamp
      })
    end
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" and _UPVALUE0_.colorLight == true then
    if isMouseIn(windowPos1.x + 110 / zoom, windowPos1.y - 340 / zoom, 510 / zoom, 250 / zoom) then
      selfColorLamp.mouseSelected = "color"
    elseif isMouseIn(windowPos1.x + 110 / zoom, windowPos1.y - 70 / zoom, 510 / zoom, 10 / zoom) then
      selfColorLamp.mouseSelected = "hue"
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" and _UPVALUE0_.colorLight == true then
    selfColorLamp.mouseSelected = nil
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.main == true or _UPVALUE0_.custom == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and (_UPVALUE0_.main == true or _UPVALUE0_.custom == true) then
    if n >= #self.tuningPartTable then
      return
    end
    k = k + 1
    n = n + 1
  end
end
function stopFreeCamera()
  if self.freeCamera == true then
    showCursor(true)
    stopMouseLook()
    self.freeCamera = false
  else
    self.freeCamera = true
    startMouseLook()
    showCursor(false)
  end
end
function exitTuning()
  if _UPVALUE0_.background == true then
    removeTexturesSpeedometer()
    setElementDimension(localPlayer, 0)
    if vehicle_player and isElement(vehicle_player) then
      destroyElement(vehicle_player)
    end
    setElementData(localPlayer, "notshowhud", false)
    exports.ST_hud:enableHud(true)
    setPlayerHudComponentVisible("radar", true)
    showCursor(false)
    showChat(true)
    unbindKey("backspace")
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    if self.freeCamera == true then
      stopMouseLook()
    end
    CameraManager.stop()
    _UPVALUE0_.background = false
    _UPVALUE0_.main = false
    _UPVALUE0_.custom = false
    _UPVALUE0_.colorLight = false
    unbindKey("space", "down", stopFreeCamera)
    exports.ST_gui:destroyCustomEditbox("rgb1")
    exports.ST_gui:destroyCustomEditbox("rgb2")
    exports.ST_gui:destroyCustomEditbox("rgb3")
    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "frozenVehicle", localPlayer, vehicle, false)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGui" then
    self = {}
    vehicle = _ARG_1_
    table_vehicles = _ARG_2_
    if getElementData(localPlayer, "player:sid") ~= 1 and getElementData(localPlayer, "player:sid") ~= getElementData(vehicle, "vehicle:ownedPlayer") then
      exports.st_gui:showPlayerNotification("To nie jest tw\195\179j pojazd!", "error")
      return
    end
    if getElementData(vehicle, "vehicle:paintjob") then
      self.isPaintjobVehicle = getElementData(vehicle, "vehicle:paintjob")
    else
      self.isPaintjobVehicle = 0
    end
    for _FORV_8_, _FORV_9_ in ipairs(table_vehicles) do
      createVehicleClient(self.isPaintjobVehicle, _FORV_9_.wheelsRear, _FORV_9_.wheelsFront)
    end
    setElementData(localPlayer, "notshowhud", true)
    exports.ST_hud:enableHud(false)
    setPlayerHudComponentVisible("radar", false)
    showChat(false)
    textures = {
      background_circle = dxCreateTexture(":ST_avatars/kolo.png"),
      circle = dxCreateTexture(":ST_dashboard/img/circle.png"),
      wheels_icon = dxCreateTexture("img/wheels_icon.png"),
      stereo_icon = dxCreateTexture("img/stereo_icon.png"),
      spoiler_icon = dxCreateTexture("img/spoiler_icon.png"),
      hydraulics_icon = dxCreateTexture("img/hydraulics_icon.png"),
      exhaust_icon = dxCreateTexture("img/exhaust_icon.png"),
      sideskirt_icon = dxCreateTexture("img/sideskirt_icon.png"),
      headlight_icon = dxCreateTexture("img/headlight_icon.png"),
      bumber_icon = dxCreateTexture(":ST_mechanic_business/img/bumber_icon.png"),
      roof_icon = dxCreateTexture("img/roof_icon.png"),
      bumber_icon = dxCreateTexture(":ST_mechanic_business/img/bumber_icon.png"),
      hood_icon = dxCreateTexture(":ST_mechanic_business/img/hood_icon.png"),
      question_icon = dxCreateTexture("img/question_icon.png"),
      tires_icon = dxCreateTexture("img/tires_icon.png"),
      arrow = dxCreateTexture(":ST_selling_drugs/img/strzalka.png"),
      spray_icon = dxCreateTexture("img/spray_icon.png"),
      sport_icon = dxCreateTexture("img/sport_icon.png"),
      sedan_icon = dxCreateTexture("img/sedan_icon.png"),
      combi_icon = dxCreateTexture("img/combi_icon.png"),
      truck_icon = dxCreateTexture("img/truck_icon.png"),
      speedometer_icon = dxCreateTexture("img/speedometer_icon.png"),
      camera_icon = dxCreateTexture("img/camera_icon.png"),
      h = dxCreateTexture(":ST_mechanic_business/img/h.png"),
      sv = dxCreateTexture(":ST_mechanic_business/img/sv.png"),
      light_icon = dxCreateTexture(":ST_speedmeter/ST_interaction/img/light_icon.png")
    }
    table_tuning()
    if getElementData(vehicle, "vehicle:customID") then
      modelID = getElementData(vehicle, "vehicle:customID")
    else
      modelID = getElementModel(vehicle)
    end
    if tuning[2][modelID] then
      showPaintjobCategory = true
    end
    if tuning[3][modelID] then
      showVariantCategory = true
    end
    category = {
      {
        name = "Maska",
        id = 0,
        show = false,
        img = textures.hood_icon,
        cost = 15000
      },
      {
        name = "Wlot na masce",
        id = 1,
        show = false,
        img = textures.roof_icon,
        cost = 17500
      },
      {
        name = "Spoiler",
        id = 2,
        show = false,
        img = textures.spoiler_icon,
        cost = 30000
      },
      {
        name = "Progi",
        id = 3,
        show = false,
        img = textures.sideskirt_icon,
        cost = 22500
      },
      {
        name = "Przednia os\197\130ona",
        id = 4,
        show = false,
        img = textures.bumber_icon,
        cost = 50000
      },
      {
        name = "Tylna os\197\130ona",
        id = 5,
        show = false,
        img = textures.bumber_icon,
        cost = 50000
      },
      {
        name = "Lampy",
        id = 6,
        show = false,
        img = textures.headlight_icon,
        cost = 11500
      },
      {
        name = "Wlot na dachu",
        id = 7,
        show = false,
        img = textures.roof_icon,
        cost = 15500
      },
      {
        name = "Hydraulika",
        id = 9,
        show = false,
        img = textures.hydraulics_icon,
        cost = 35000
      },
      {
        name = "Stereo",
        id = 10,
        show = false,
        img = textures.stereo_icon,
        cost = 500000
      },
      {
        name = "Unknown",
        id = 11,
        show = false,
        img = textures.question_icon,
        cost = 50000
      },
      {
        name = "Felgi",
        id = 12,
        show = false,
        img = textures.wheels_icon,
        cost = 30000
      },
      {
        name = "Wydech",
        id = 13,
        show = false,
        img = textures.exhaust_icon,
        cost = 19500
      },
      {
        name = "Przedni zderzak",
        id = 14,
        show = false,
        img = textures.bumber_icon,
        cost = 25000
      },
      {
        name = "Tylny zderzak",
        id = 15,
        show = false,
        img = textures.bumber_icon,
        cost = 25000
      },
      {
        name = "Misc.",
        id = 16,
        show = false,
        img = textures.question_icon,
        cost = 25000
      },
      {
        name = "Szeroko\197\155\196\135 opon",
        show = true,
        img = textures.tires_icon,
        customTuning = true,
        idCustomSelect = 1
      },
      {
        name = "Paintjoby",
        show = showPaintjobCategory,
        img = textures.spray_icon,
        customTuning = true,
        idCustomSelect = 2
      },
      {
        name = "Warianty",
        show = showVariantCategory,
        img = textures.sport_icon,
        customTuning = true,
        idCustomSelect = 3
      },
      {
        name = "Liczniki",
        show = true,
        img = textures.speedometer_icon,
        customTuning = true,
        idCustomSelect = 4
      },
      {
        name = "Kolor \197\155wiate\197\130",
        show = true,
        img = textures.headlight_icon,
        customTuning = true
      }
    }
    for _FORV_8_, _FORV_9_ in ipairs(category) do
      if not _FORV_9_.customTuning and 1 <= #getVehicleCompatibleUpgrades(vehicle_player, _FORV_9_.id) then
        _FORV_9_.show = true
      end
    end
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    _UPVALUE0_.background = true
    _UPVALUE0_.main = false
    _UPVALUE0_.custom = false
    _UPVALUE0_.colorLight = false
    showCursor(true)
    bindKey("backspace", "down", exitTuning)
    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "frozenVehicle", localPlayer, vehicle, true)
    CameraManager.start(vehicle_player)
    self.unlockMontage = true
    bindKey("space", "down", stopFreeCamera)
  elseif _ARG_0_ == "reloadTableTuning" then
    if _ARG_2_ == 2 then
      for _FORV_8_, _FORV_9_ in ipairs(table_vehicles) do
        createVehicleClient(self.isPaintjobVehicle, _FORV_9_.wheelsRear, _FORV_9_.wheelsFront)
      end
    elseif _ARG_2_ == 1 then
      if _ARG_1_ then
        self.isPaintjobVehicle = _ARG_1_
      else
        self.isPaintjobVehicle = 0
      end
    else
      table_vehicles = _ARG_1_
      table_tuning()
      self.tuningPartTable = tuning[self.selectCategoriesTuning1]
    end
    self.unlockMontage = true
  end
end)
function createVehicleClient(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if vehicle_player and isElement(vehicle_player) then
    destroyElement(vehicle_player)
  end
  vehicle_player = createVehicle(getElementModel((getPedOccupiedVehicle(localPlayer))), 3931.31, -1229.61, 21.76, 360, 360, 90, getVehiclePlateText((getPedOccupiedVehicle(localPlayer))))
  if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID") then
    setElementData(vehicle_player, "vehicle:customID", (getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID")))
  end
  if _ARG_0_ then
    setElementData(vehicle_player, "vehicle:paintjob", _ARG_0_)
  end
  setVehicleColor(vehicle_player, 255, 255, 255, 255, 255, 255)
  setVehicleVariant(vehicle_player, getVehicleVariant((getPedOccupiedVehicle(localPlayer))))
  for _FORV_12_, _FORV_13_ in ipairs((getVehicleUpgrades((getPedOccupiedVehicle(localPlayer))))) do
    addVehicleUpgrade(vehicle_player, _FORV_13_)
  end
  if not _ARG_0_ or _ARG_0_ ~= 0 then
  else
  end
  if _ARG_2_ and _ARG_1_ then
    setVehicleHandlingFlags(vehicle_player, {3}, _ARG_2_)
    setVehicleHandlingFlags(vehicle_player, {4}, _ARG_1_)
  end
  if _ARG_3_ then
    setVehicleVariant(vehicle_player, _ARG_3_[1], _ARG_3_[2])
  end
  setElementDimension(vehicle_player, 12)
  setElementDimension(localPlayer, 12)
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
function setVehicleHandlingFlags(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_0_ then
    for _FORV_10_ in string.gmatch(string.reverse((string.format("%X", getVehicleHandling(_ARG_0_).handlingFlags))) .. string.rep("0", 8 - string.len((string.format("%X", getVehicleHandling(_ARG_0_).handlingFlags)))), ".") do
      if type(_ARG_1_) == "table" then
        for _FORV_14_, _FORV_15_ in ipairs(_ARG_1_) do
          if 1 == _FORV_15_ then
            _FORV_10_ = string.format("%X", tonumber(_ARG_2_))
          end
        end
      elseif 1 == _ARG_1_ then
        _FORV_10_ = string.format("%X", tonumber(_ARG_2_))
      end
    end
    setVehicleHandling(_ARG_0_, "handlingFlags", tonumber("0x" .. string.reverse("" .. _FORV_10_)))
  end
end
getResourceName(getThisResource(), true, 339150920)
return
