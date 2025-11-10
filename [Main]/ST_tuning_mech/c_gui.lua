windows = {background = false}
function window()
  if not selfInfo then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    showCursor(false)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    windows.background = false
    windows.main = false
    return
  end
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 70 / _UPVALUE1_, 450 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, 820 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 190))
    xY = 0
    for _FORV_3_, _FORV_4_ in pairs(tuning) do
      xY = xY + 1
      if xY == 1 then
        textureImageTuning = textures.engine_icon
      elseif xY == 2 then
        textureImageTuning = textures.traction_icon
      elseif xY == 3 then
        textureImageTuning = textures.enginetype_icon
      elseif xY == 4 then
        textureImageTuning = textures.options_icon
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 26.5 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 100))
      dxDrawImage(_UPVALUE0_.x + 31.5 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 45 / _UPVALUE1_, 45 / _UPVALUE1_, textureImageTuning, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.main == true then
    dxDrawScrollBar(#selectCategoriesTuning, _UPVALUE0_.x + 858 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 5 / _UPVALUE1_, 480 / _UPVALUE1_, m, k)
    for _FORV_8_, _FORV_9_ in ipairs(selectCategoriesTuning) do
      if _FORV_8_ >= k and _FORV_8_ <= n then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 750 / _UPVALUE1_, 95 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 85 / _UPVALUE1_, 85 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 230))
        dxDrawImage(_UPVALUE0_.x + 115 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 65 / _UPVALUE1_, 65 / _UPVALUE1_, _FORV_9_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_9_.name == "Zbiornik paliwa" then
          if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
            dxDrawText("Pojemno\197\155\196\135 baterii", _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y - 42 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          else
            dxDrawText(_FORV_9_.name, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y - 42 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          end
        else
          dxDrawText(_FORV_9_.name, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y - 42 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        end
        if _FORV_9_.name == "Pojemno\197\155\196\135 silnika" or _FORV_9_.name == "Cylindry" or _FORV_9_.name == "Zbiornik paliwa" or _FORV_9_.name == "Butla nitro" then
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 67 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 35 / _UPVALUE1_, 255, 1)
          exports.ST_buttons:dxCreateButton("DEMONTUJ", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 112 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 35 / _UPVALUE1_, 255, 1)
          dxDrawText("Aktualnie: #00ff00" .. _FORV_9_.montage, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 72 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          dxDrawText("#00ad23" .. przecinek(_FORV_9_.cost) .. " #f0f0f0PLN | DEMONT: #ad0000" .. przecinek(_FORV_9_.disassembly .. " #f0f0f0PLN"), _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        elseif _FORV_9_.name == "Silnik benzynowy" or _FORV_9_.name == "Silnik wysokopr\196\153\197\188ny (DIESEL)" or _FORV_9_.name == "Silnik elektryczny" then
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 45 / _UPVALUE1_, 255, 1)
          dxDrawText(_FORV_9_.montage, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 72 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          dxDrawText("#00ad23" .. przecinek(_FORV_9_.cost) .. " #f0f0f0PLN", _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        elseif _FORV_9_.name == "Zerowanie przebiegu" then
          exports.ST_buttons:dxCreateButton("ZERUJ", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 91.5 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 45 / _UPVALUE1_, 255, 1)
          dxDrawText("#00ad23" .. przecinek(_FORV_9_.cost) .. " #f0f0f0PLN", _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawText(_FORV_9_.montage, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 72 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        else
          dxDrawText(_FORV_9_.montage, _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 72 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          if _FORV_9_.montage == "#00ff00Zamontowano" then
            exports.ST_buttons:dxCreateButton("DEMONTUJ", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 45 / _UPVALUE1_, 255, 1)
          else
            exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 100 / _UPVALUE1_ * (0 + 1 - 1), 110 / _UPVALUE1_, 45 / _UPVALUE1_, 255, 1)
          end
          dxDrawText("#00ad23" .. przecinek(_FORV_9_.cost) .. " #f0f0f0PLN | DEMONT: #ad0000" .. przecinek(_FORV_9_.disassembly .. " #f0f0f0PLN"), _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 15 / _UPVALUE1_ + 200 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(tuning) do
        if isMouseIn(_UPVALUE1_.x + 26.5 / _UPVALUE0_, _UPVALUE1_.y + 65 / _UPVALUE0_ + 60 / _UPVALUE0_ * (0 + 1 - 1), 55 / _UPVALUE0_, 55 / _UPVALUE0_) and windows.background == true then
          k = 1
          n = 5
          m = 5
          selectCategoriesTuning = tuning[_FORV_6_]
          selectCategoriesTuning1 = _FORV_6_
        end
      end
    end
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(selectCategoriesTuning) do
        if _FORV_6_ >= k and _FORV_6_ <= n then
          if _FORV_7_.name == "Pojemno\197\155\196\135 silnika" or _FORV_7_.name == "Cylindry" or _FORV_7_.name == "Zbiornik paliwa" or _FORV_7_.name == "Butla nitro" then
            if isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE0_, _UPVALUE1_.y + 67 / _UPVALUE0_ + 100 / _UPVALUE0_ * (0 + 1 - 1), 110 / _UPVALUE0_, 35 / _UPVALUE0_) then
              if getTickCount() - _UPVALUE2_ > 1000 then
                if _FORV_7_.name == "Butla nitro" and getVehicleUpgradeOnSlot(selfInfoGui.vehicle, 8) == 0 then
                  exports.st_gui:showPlayerNotification("Nie posiadasz nitro", "error")
                  return
                end
                if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                  exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                  return
                end
                if mozeZamontowac then
                  mozeZamontowac = false
                  triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningMontage", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.cost, idTable)
                  _UPVALUE2_ = getTickCount()
                end
              else
                return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153!", "error")
              end
            elseif isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE0_, _UPVALUE1_.y + 112 / _UPVALUE0_ + 100 / _UPVALUE0_ * (0 + 1 - 1), 110 / _UPVALUE0_, 35 / _UPVALUE0_) then
              if getTickCount() - _UPVALUE2_ > 1000 then
                if _FORV_7_.name == "Butla nitro" and getVehicleUpgradeOnSlot(selfInfoGui.vehicle, 8) == 0 then
                  exports.st_gui:showPlayerNotification("Nie posiadasz nitro", "error")
                  return
                end
                if mozeZamontowac then
                  mozeZamontowac = false
                  triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningDisassembly", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.disassembly, idTable)
                  _UPVALUE2_ = getTickCount()
                end
              else
                return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153!", "error")
              end
            end
          elseif _FORV_7_.name == "Silnik benzynowy" or _FORV_7_.name == "Silnik wysokopr\196\153\197\188ny (DIESEL)" or _FORV_7_.name == "Silnik elektryczny" then
            if isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE0_, _UPVALUE1_.y + 85 / _UPVALUE0_ + 100 / _UPVALUE0_ * (0 + 1 - 1), 110 / _UPVALUE0_, 45 / _UPVALUE0_) and windows.main == true then
              if getTickCount() - _UPVALUE2_ > 1000 then
                if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                  exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                  return
                end
                if mozeZamontowac then
                  mozeZamontowac = false
                  triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningMontage2", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.id, idTable)
                  _UPVALUE2_ = getTickCount()
                end
              else
                return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153!", "error")
              end
            end
          elseif isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE0_, _UPVALUE1_.y + 85 / _UPVALUE0_ + 100 / _UPVALUE0_ * (0 + 1 - 1), 110 / _UPVALUE0_, 45 / _UPVALUE0_) then
            if getTickCount() - _UPVALUE2_ > 1000 then
              if _FORV_7_.montage == "#00ff00Zamontowano" then
                if mozeZamontowac then
                  mozeZamontowac = false
                  if _FORV_7_.elementData then
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningDisassemblyElementData", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.disassembly, _FORV_7_.name, _FORV_7_.elementData, idTable, _FORV_7_.customEldata)
                  elseif _FORV_7_.id then
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningDisassembly1", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.disassembly, _FORV_7_.name, _FORV_7_.id, idTable)
                  else
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningDisassembly1", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.disassembly, _FORV_7_.name, false, idTable)
                  end
                end
              else
                if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
                  exports.st_gui:showPlayerNotification("Nie sta\196\135 ci\196\153 na to ulepszenie!", "error")
                  return
                end
                if mozeZamontowac then
                  mozeZamontowac = false
                  if _FORV_7_.name == "Zerowanie przebiegu" then
                    exports.st_gui:showPlayerNotification("Pomy\197\155lnie wyzerowano przebieg pojazdu!", "success")
                    table_tuning()
                    selectCategoriesTuning = tuning[selectCategoriesTuning1]
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "resetMileage", localPlayer, _FORV_7_.cost, selfInfoGui.vehicle)
                  elseif _FORV_7_.elementData then
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningMontageElementData", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.elementData, idTable, _FORV_7_.customEldata)
                  elseif _FORV_7_.id then
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningMontage1", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.cost, _FORV_7_.name, _FORV_7_.id, idTable)
                  else
                    triggerServerEvent("evEwenciks_j645ejhgg", resourceRoot, "tuningMontage1", localPlayer, selfInfoGui.vehicle, _FORV_7_.nameDatabase, _FORV_7_.cost, _FORV_7_.name, false, idTable)
                  end
                end
              end
              _UPVALUE2_ = getTickCount()
            else
              return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153!", "error")
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 450 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      windows.background = false
      windows.main = false
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.main == true or windows.background == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and (windows.main == true or windows.background == true) then
    if n >= #selectCategoriesTuning then
      return
    end
    k = k + 1
    n = n + 1
  end
end
function table_tuning()
  if selfInfoGui.usy[1] == 1 then
    us1montage = "#00ff00Zamontowano"
  else
    us1montage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[2] == 1 then
    us2montage = "#00ff00Zamontowano"
  else
    us2montage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[3] == 1 then
    us3montage = "#00ff00Zamontowano"
  else
    us3montage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[4] == 1 then
    us4montage = "#00ff00Zamontowano"
  else
    us4montage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").turbo == 1 then
    turbomontage = "#00ff00Zamontowano"
  else
    turbomontage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[6] == 1 then
    chipmontage = "#00ff00Zamontowano"
  else
    chipmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").drift == 1 then
    driftmontage = "#00ff00Zamontowano"
  else
    driftmontage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[8] == 1 then
    windowsmontage = "#00ff00Zamontowano"
  else
    windowsmontage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[12] == 1 then
    lampsmontage = "#00ff00Zamontowano"
  else
    lampsmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").regulationAcceleration == 1 then
    regulationAccelerationmontage = "#00ff00Zamontowano"
  else
    regulationAccelerationmontage = "#ff0000Nie zamontowano"
  end
  capacity = getElementData(selfInfoGui.vehicle, "vehicle_tuning").pojemnosc or "1.2"
  cylinders = getElementData(selfInfoGui.vehicle, "vehicle_tuning").cylindry or "V4"
  if selfInfoGui.usy[17] == 1 then
    tractions1montage = "#00ff00Zamontowano"
  else
    tractions1montage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[9] == 1 then
    brake1montage = "#00ff00Zamontowano"
  else
    brake1montage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").lpg_montage == "Tak" then
    lpgmontage = "#00ff00Zamontowano"
  else
    lpgmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rh == 1 then
    rhmontage = "#00ff00Zamontowano"
  else
    rhmontage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[14] == 1 then
    skretmontage = "#00ff00Zamontowano"
  else
    skretmontage = "#ff0000Nie zamontowano"
  end
  if selfInfoGui.usy[16] == 1 then
    massmontage = "#00ff00Zamontowano"
  else
    massmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
    tank = "" .. (getElementData(selfInfoGui.vehicle, "vehicle_tuning").bak or "25") .. " kWh"
  else
    tank = "" .. (getElementData(selfInfoGui.vehicle, "vehicle_tuning").bak or "25") .. "L"
  end
  butlaN = "" .. (getElementData(selfInfoGui.vehicle, "vehicle_tuning").butlaN or 5) .. "L"
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").naped == 1 then
    napedmontage = "#00ff00Zamontowano"
  else
    napedmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").taxometr == 1 then
    taximetermontage = "#00ff00Zamontowano"
  else
    taximetermontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").neon == 1 then
    neonmontage = "#00ff00Zamontowano"
  else
    neonmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rodzaj == "Benzyna" then
    petrolmontage = "#00ff00Zamontowano"
  else
    petrolmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rodzaj == "Diesel" then
    dieselmontage = "#00ff00Zamontowano"
  else
    dieselmontage = "#ff0000Nie zamontowano"
  end
  if getElementData(selfInfoGui.vehicle, "vehicle_tuning").rodzaj == "Elektryczny" then
    electricmontage = "#00ff00Zamontowano"
  else
    electricmontage = "#ff0000Nie zamontowano"
  end
  if exports.ST_datasystem:getCustomData(selfInfoGui.vehicle, "vehicle:ABS", "synced") then
    ABSmontage = "#00ff00Zamontowano"
  else
    ABSmontage = "#ff0000Nie zamontowano"
  end
  tuning = {
    [1] = {
      {
        name = "Ulepszenie silnika 1  ( US1 )",
        img = textures.engine_icon,
        cost = 300000,
        disassembly = 65000,
        montage = us1montage,
        nameDatabase = "us1"
      },
      {
        name = "Ulepszenie silnika 2  ( US2 )",
        img = textures.engine_icon,
        cost = 400000,
        disassembly = 100000,
        montage = us2montage,
        nameDatabase = "us2"
      },
      {
        name = "Ulepszenie silnika 3  ( US3 )",
        img = textures.engine_icon,
        cost = 500000,
        disassembly = 185000,
        montage = us3montage,
        nameDatabase = "us3"
      },
      {
        name = "Ulepszenie silnika 4  ( US4 )",
        img = textures.engine_icon,
        cost = 1300000,
        disassembly = 350000,
        montage = us4montage,
        nameDatabase = "us4"
      },
      {
        name = "Turbospr\196\153\197\188arka",
        img = textures.turbocharger_icon,
        cost = 700000,
        disassembly = 150000,
        montage = turbomontage,
        nameDatabase = "turbo"
      },
      {
        name = "Pojemno\197\155\196\135 silnika",
        img = textures.capacity_icon,
        cost = 220000,
        disassembly = 50000,
        montage = capacity,
        nameDatabase = "pojemnosc"
      },
      {
        name = "Cylindry",
        img = textures.cylinders_icon,
        cost = 250000,
        disassembly = 75000,
        montage = cylinders,
        nameDatabase = "cylindry"
      },
      {
        name = "Chip tuning",
        img = textures.chip_icon,
        cost = 800000,
        disassembly = 200000,
        montage = chipmontage,
        nameDatabase = "chip"
      }
    },
    [2] = {
      {
        name = "Regulacja mocy",
        img = textures.acceleration_icon,
        cost = 2000000,
        disassembly = 1000000,
        montage = regulationAccelerationmontage,
        nameDatabase = "regulationAcceleration"
      },
      {
        name = "REGULACJA TRAKCJI",
        img = textures.traction_icon,
        cost = 2000000,
        disassembly = 50000,
        montage = tractions1montage,
        nameDatabase = "trakcja"
      },
      {
        name = "Regulacja hamulc\195\179w",
        img = textures.brake_icon,
        cost = 500000,
        disassembly = 100000,
        montage = brake1montage,
        nameDatabase = "hamulce"
      },
      {
        name = "Regulacja masy",
        img = textures.mass_icon,
        cost = 500000,
        disassembly = 100000,
        montage = massmontage,
        nameDatabase = "regulacjaMasy"
      },
      {
        name = "Gwintowane zawieszenie",
        img = textures.suspension_icon,
        cost = 150000,
        disassembly = 75000,
        montage = rhmontage,
        nameDatabase = "rh"
      },
      {
        name = "Regulacja k\196\133tu skr\196\153tu",
        img = textures.angle_icon,
        cost = 1000000,
        disassembly = 200000,
        montage = skretmontage,
        nameDatabase = "skret"
      },
      {
        name = "ABS",
        img = textures.abs_icon,
        cost = 1000000,
        disassembly = 500000,
        montage = ABSmontage,
        nameDatabase = "abs",
        elementData = "vehicle:ABS",
        customEldata = true
      }
    },
    [3] = {
      {
        name = "Silnik benzynowy",
        img = textures.enginetype_icon,
        cost = 150000,
        disassembly = 0,
        montage = petrolmontage,
        id = "Benzyna"
      },
      {
        name = "Silnik wysokopr\196\153\197\188ny (DIESEL)",
        img = textures.enginetype_icon,
        cost = 300000,
        disassembly = 0,
        montage = dieselmontage,
        id = "Diesel"
      },
      {
        name = "Silnik elektryczny",
        img = textures.engineElectric_icon,
        cost = 400000,
        disassembly = 0,
        montage = electricmontage,
        id = "Elektryczny"
      }
    },
    [4] = {
      {
        name = "LPG",
        img = textures.lpg_icon,
        cost = 150000,
        disassembly = 75000,
        montage = lpgmontage,
        nameDatabase = "instalacja_lpg"
      },
      {
        name = "Zbiornik paliwa",
        img = textures.lpg_icon,
        cost = 250000,
        disassembly = 100000,
        montage = tank,
        nameDatabase = "bak"
      },
      {
        name = "Butla nitro",
        img = textures.nitro_icon,
        cost = 10000000,
        disassembly = 5000000,
        montage = butlaN,
        nameDatabase = "butlaN"
      },
      {
        name = "Nap\196\153d",
        img = textures.body_icon,
        cost = 200000,
        disassembly = 100000,
        montage = napedmontage,
        nameDatabase = "naped"
      },
      {
        name = "Taxometr",
        img = textures.taxo_icon,
        cost = 2500000,
        disassembly = 1250000,
        montage = taximetermontage,
        nameDatabase = "taxometr"
      },
      {
        name = "Neony",
        img = textures.neon_icon,
        cost = 550000,
        disassembly = 250000,
        montage = neonmontage,
        nameDatabase = "neon"
      },
      {
        name = "Licznik driftu",
        img = textures.drift_icon,
        cost = 650000,
        disassembly = 300000,
        montage = driftmontage,
        nameDatabase = "drift"
      },
      {
        name = "Przyciemniane szyby",
        img = textures.windows_icon,
        cost = 1500000,
        disassembly = 1400000,
        montage = windowsmontage,
        nameDatabase = "windows"
      },
      {
        name = "Zerowanie przebiegu",
        img = textures.capacity_icon,
        cost = math.floor(getElementData(selfInfoGui.vehicle, "vehicle:mileage") * 75),
        disassembly = 0,
        montage = "" .. przecinek(math.floor(getElementData(selfInfoGui.vehicle, "vehicle:mileage"))) .. " km"
      },
      {
        name = "Przyciemniane lampy",
        img = textures.light_icon,
        cost = 1500000,
        disassembly = 1400000,
        montage = lampsmontage,
        nameDatabase = "lamps"
      }
    }
  }
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(15, 15, 15, 255))
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
getResourceName(getThisResource(), true, 773237034)
return
