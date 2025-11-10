screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {
  main = false,
  fish = false,
  bizuteria = false,
  botmedyczny = false
}
items_table = {}
table_statistics = {}
lastTickCount = getTickCount()
function window()
  if getElementData(localPlayer, "player_Trade") then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_Search") then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getPlayerPing(localPlayer) > 300 then
    exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("SPRZEDA\197\187 NARKOTYK\195\147W", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    dxDrawScrollBar(#drugs, _UPVALUE0_.x + 858 / zoom, _UPVALUE0_.y + 90 / zoom, 5 / zoom, 450 / zoom, _UPVALUE1_, _UPVALUE2_)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(drugs) do
      if _FORV_7_ >= _UPVALUE2_ and _FORV_7_ <= _UPVALUE3_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 75 / zoom + 70 / zoom * (xY - 1), 820 / zoom, 64 / zoom, 15 / zoom, tocolor(20, 20, 20, 200), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y - 20 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 120 / zoom, 45 / zoom, 255, 1)
        if isMouseIn(_UPVALUE4_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
          dxDrawImage(_UPVALUE4_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(200, 200, 200, 255), false)
        else
          dxDrawImage(_UPVALUE4_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        if isMouseIn(_UPVALUE4_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
          dxDrawImage(_UPVALUE4_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        else
          dxDrawImage(_UPVALUE4_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        costDrugs = 0
        numberDrugs = 0
        cost1Drugs = 0
        if _FORV_8_.name == "Kokaina" then
          costDrugs = costCocaine
          numberDrugs = numberCocaine
          cost1Drugs = cost1Cocaine
        elseif _FORV_8_.name == "Amfetamina" then
          costDrugs = costAmphetamine
          numberDrugs = numberAmphetamine
          cost1Drugs = cost1Amphetamine
        elseif _FORV_8_.name == "Marihuana sativa" then
          costDrugs = costMarihuanaSativa
          numberDrugs = numberMarihuanaSativa
          cost1Drugs = cost1MarihuanaSativa
        elseif _FORV_8_.name == "Marihuana indica" then
          costDrugs = costMarihuanaIndica
          numberDrugs = numberMarihuanaIndica
          cost1Drugs = cost1MarihuanaIndica
        elseif _FORV_8_.name == "MDMA" then
          costDrugs = costMDMA
          numberDrugs = numberMDMA
          cost1Drugs = cost1MDMA
        elseif _FORV_8_.name == "Przerobiona marihuana sativa" then
          costDrugs = costPrzerobionaMarihuanaSativa
          numberDrugs = numberPrzerobionaMarihuanaSativa
          cost1Drugs = cost1PrzerobionaMarihuanaSativa
        elseif _FORV_8_.name == "Przerobiona marihuana indica" then
          costDrugs = costPrzerobionaMarihuanaIndica
          numberDrugs = numberPrzerobionaMarihuanaIndica
          cost1Drugs = cost1PrzerobionaMarihuanaIndica
        elseif _FORV_8_.name == "Mefedron" then
          costDrugs = costMefedron
          numberDrugs = numberMefedron
          cost1Drugs = cost1Mefedron
        elseif _FORV_8_.name == "LSD" then
          costDrugs = costLSD
          numberDrugs = numberLSD
          cost1Drugs = cost1LSD
        end
        dxDrawText("#00ad23" .. przecinek(costDrugs) .. " #dededePLN / #ffbb001#dededeg", _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 40 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        dxDrawText(numberDrugs, _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y - 12 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
        dxDrawText("#00ad23" .. przecinek(cost1Drugs) .. " #ffffffPLN", _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y + 45 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.fish == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("RYBAK", _UPVALUE0_.x + 90 / zoom, _UPVALUE0_.y - 45 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("light20"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE4_.x - 40 / zoom, _UPVALUE4_.y + 40 / zoom, _UPVALUE4_.w, _UPVALUE4_.h) then
      dxDrawImage(_UPVALUE4_.x - 41 / zoom, _UPVALUE4_.y + 39 / zoom, _UPVALUE4_.w + 2 / zoom, _UPVALUE4_.h + 2 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE4_.x - 40 / zoom, _UPVALUE4_.y + 40 / zoom, _UPVALUE4_.w, _UPVALUE4_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    if fish and cost1Makrela and cost1Carp and cost1Dorsz then
      for _FORV_7_, _FORV_8_ in ipairs(fish) do
        if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 110 / zoom + 70 / zoom * (xY - 1), 720 / zoom, 64 / zoom, 4 / zoom, tocolor(20, 20, 20, 200), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 83 / zoom, _UPVALUE0_.y + 112 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, 10 / zoom, tocolor(27, 27, 27, 230))
          dxDrawImage(_UPVALUE0_.x + 83 / zoom, _UPVALUE0_.y + 112 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 50 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
          exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE7_.x - 20 / zoom, _UPVALUE7_.y + 30 / zoom + 70 / zoom * (xY - 1), 120 / zoom, 45 / zoom, 255)
          if isMouseIn(_UPVALUE4_.x - 320 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
            dxDrawImage(_UPVALUE4_.x - 320 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(200, 200, 200, 255), false)
          else
            dxDrawImage(_UPVALUE4_.x - 320 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
          end
          if isMouseIn(_UPVALUE4_.x - 250 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
            dxDrawImage(_UPVALUE4_.x - 250 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          else
            dxDrawImage(_UPVALUE4_.x - 250 / zoom, _UPVALUE4_.y + 95 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
          dxDrawText(przecinek(_FORV_8_.cost) .. " PLN / 1kg", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 110 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "left", "center", false, false, false, false, false)
          dxDrawText(przecinek(_FORV_8_.cost1) .. " PLN", _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y + 110 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light16"), "center", "center", false, false, false, false, false)
          dxDrawText(_FORV_8_.number, _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y + 45 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, false, false)
        end
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 330 / zoom, 720 / zoom, 120 / zoom, 4 / zoom, tocolor(20, 20, 20, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 83 / zoom, _UPVALUE0_.y + 333 / zoom, 114 / zoom, 114 / zoom, 10 / zoom, tocolor(27, 27, 27, 230), false)
    dxDrawText("W\196\153dka", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 500 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal19"), "left", "center", false, false, false, false, false)
    dxDrawImage(_UPVALUE0_.x + 83 / zoom, _UPVALUE0_.y + 333 / zoom, 114 / zoom, 114 / zoom, textures.fishing_rod_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("OG\195\147\197\129 Z\197\129OWIONYCH RYB: " .. przecinek(_FORV_8_.kg_rybak) .. "", _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 735 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      dxDrawText("OG\195\147\197\129 ZAROBKU: " .. przecinek(_FORV_8_.zarobki_rybak) .. " PLN", _UPVALUE0_.x + 80 / zoom, _UPVALUE0_.y + 800 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      exports.ST_buttons:dxCreateButton("KUP", _UPVALUE7_.x - 70 / zoom, _UPVALUE7_.y + 273 / zoom, _UPVALUE7_.w, _UPVALUE7_.h, 255)
      dxDrawText("Koszt w\196\153dki: 700,000 PLN", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 570 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if _FORV_8_.level_fishingRod == 1 then
        dxDrawText("Level: " .. _FORV_8_.level_fishingRod .. "", _UPVALUE0_.x + 715 / zoom, _UPVALUE0_.y + 565 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "center", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("ULEPSZ", _UPVALUE7_.x - 195 / zoom, _UPVALUE7_.y + 310 / zoom, 110 / zoom, 40 / zoom, 255)
        dxDrawText("Koszt ulepszenia: 1,000,000 PLN", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      elseif _FORV_8_.level_fishingRod == 2 then
        dxDrawText("Level: " .. _FORV_8_.level_fishingRod .. "", _UPVALUE0_.x + 715 / zoom, _UPVALUE0_.y + 565 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "center", "center", false, false, false, false, false)
        dxDrawText("Koszt ulepszenia: 1,500,000 PLN", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("ULEPSZ", _UPVALUE7_.x - 195 / zoom, _UPVALUE7_.y + 310 / zoom, 110 / zoom, 40 / zoom, 255)
      elseif _FORV_8_.level_fishingRod == 3 then
        dxDrawText("Level: " .. _FORV_8_.level_fishingRod .. "", _UPVALUE0_.x + 715 / zoom, _UPVALUE0_.y + 565 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "center", "center", false, false, false, false, false)
        dxDrawText("Koszt ulepszenia: 4,500,000 PLN", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
        exports.ST_buttons:dxCreateButton("ULEPSZ", _UPVALUE7_.x - 195 / zoom, _UPVALUE7_.y + 310 / zoom, 110 / zoom, 40 / zoom, 255)
      else
        dxDrawText("Level: #0ffc03" .. _FORV_8_.level_fishingRod .. "", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
      end
    end
  end
end
function windowBizuteria()
  if getElementData(localPlayer, "player_Trade") then
    removeEventHandler("onClientRender", root, windowBizuteria)
    removeEventHandler("onClientClick", root, clickBizuteria)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    removeEventHandler("onClientRender", root, windowBizuteria)
    removeEventHandler("onClientClick", root, clickBizuteria)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_Search") then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getPlayerPing(localPlayer) > 300 then
    exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
    removeEventHandler("onClientRender", root, windowBizuteria)
    removeEventHandler("onClientClick", root, clickBizuteria)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
  dxDrawText("SPRZEDA\197\187 BI\197\187UTERII", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
  if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom) then
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.bizuteria == true then
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(bizuteria_table) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 75 / zoom + 70 / zoom * (xY - 1), 820 / zoom, 64 / zoom, 15 / zoom, tocolor(20, 20, 20, 200), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y - 20 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
      exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 120 / zoom, 45 / zoom, 255, 1)
      if isMouseIn(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
        dxDrawImage(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(200, 200, 200, 255), false)
      else
        dxDrawImage(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
        dxDrawImage(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      else
        dxDrawImage(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      costBizuteria = 0
      numberBizuteria = 0
      cost1Bizuteria = 0
      if _FORV_8_.name == "Z\197\130oto" then
        costBizuteria = costZloto
        numberBizuteria = numberZloto
        cost1Bizuteria = cost1Zloto
      elseif _FORV_8_.name == "Z\197\130oty \197\130a\197\132cuszek" then
        costBizuteria = costZlotyLancuszek
        numberBizuteria = numberZlotyLancuszek
        cost1Bizuteria = cost1ZlotyLancuszek
      elseif _FORV_8_.name == "\197\129a\197\132cuszek z diamentem" then
        costBizuteria = costDiamentowyLancuszek
        numberBizuteria = numberDiamentowyLancuszek
        cost1Bizuteria = cost1DiamentowyLancuszek
      elseif _FORV_8_.name == "Pier\197\155cionek z diamentem" then
        costBizuteria = costPierscionek
        numberBizuteria = numberPierscionek
        cost1Bizuteria = cost1Pierscionek
      end
      dxDrawText("#00ad23" .. przecinek(costBizuteria) .. " #dededePLN / #ffbb001 #dededeszt", _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 40 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText(numberBizuteria, _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y - 12 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#00ad23" .. przecinek(cost1Bizuteria) .. " #ffffffPLN", _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y + 45 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
  end
end
function windowbotmedyczny()
  if getElementData(localPlayer, "player_Trade") then
    removeEventHandler("onClientRender", root, windowbotmedyczny)
    removeEventHandler("onClientClick", root, clickbotmedyczny)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    windows.botmedyczny = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_offerTrade") then
    removeEventHandler("onClientRender", root, windowbotmedyczny)
    removeEventHandler("onClientClick", root, clickbotmedyczny)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    windows.botmedyczny = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getElementData(localPlayer, "player_Search") then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.botmedyczny = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  if getPlayerPing(localPlayer) > 300 then
    exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
    removeEventHandler("onClientRender", root, windowbotmedyczny)
    removeEventHandler("onClientClick", root, clickbotmedyczny)
    windows.fish = false
    showCursor(false)
    windows.main = false
    windows.bizuteria = false
    windows.botmedyczny = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    return
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
  dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
  dxDrawText("SPRZEDA\197\187 \197\154RODK\195\147W MEDYCZNYCH", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
  if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom) then
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / zoom, _UPVALUE0_.y + 24 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.botmedyczny == true then
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(botmedyczny_table) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 75 / zoom + 70 / zoom * (xY - 1), 820 / zoom, 64 / zoom, 15 / zoom, tocolor(20, 20, 20, 200), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 32 / zoom, _UPVALUE0_.y + 77 / zoom + 70 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y - 20 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
      exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 120 / zoom, 45 / zoom, 255, 1)
      if isMouseIn(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
        dxDrawImage(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(200, 200, 200, 255), false)
      else
        dxDrawImage(_UPVALUE1_.x - 320 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      if isMouseIn(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom) then
        dxDrawImage(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      else
        dxDrawImage(_UPVALUE1_.x - 250 / zoom, _UPVALUE0_.y + 85 / zoom + 70 / zoom * (xY - 1), 20 / zoom, 20 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      costMedyczne = 0
      numberMedyczne = 0
      cost1Medyczne = 0
      if _FORV_8_.name == "Morfina" then
        costMedyczne = costMorfina
        numberMedyczne = numberMorfina
        cost1Medyczne = cost1Morfina
      elseif _FORV_8_.name == "Adrenalina" then
        costMedyczne = costAdrenalina
        numberMedyczne = numberAdrenalina
        cost1Medyczne = cost1Adrenalina
      end
      dxDrawText("#00ad23" .. przecinek(costMedyczne) .. " #dededePLN / #ffbb001 #dededeszt", _UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 40 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText(numberMedyczne, _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y - 12 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      dxDrawText("#00ad23" .. przecinek(cost1Medyczne) .. " #ffffffPLN", _UPVALUE0_.x + 708 / zoom, _UPVALUE0_.y + 45 / zoom + 140 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_6_, _FORV_7_ in ipairs(drugs) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ then
          if isMouseIn(_UPVALUE2_.x - 250 / zoom, _UPVALUE3_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.main == true then
            if _FORV_7_.name == "Kokaina" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Kokaina" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberCocaine + 1) then
                    return
                  end
                  numberCocaine = numberCocaine + 1
                  cost1Cocaine = cost1Cocaine + costCocaine
                end
              end
            elseif _FORV_7_.name == "Amfetamina" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Amfetamina" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberAmphetamine + 1) then
                    return
                  end
                  numberAmphetamine = numberAmphetamine + 1
                  cost1Amphetamine = cost1Amphetamine + costAmphetamine
                end
              end
            elseif _FORV_7_.name == "Marihuana sativa" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Marihuana sativa" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberMarihuanaSativa + 1) then
                    return
                  end
                  numberMarihuanaSativa = numberMarihuanaSativa + 1
                  cost1MarihuanaSativa = cost1MarihuanaSativa + costMarihuanaSativa
                end
              end
            elseif _FORV_7_.name == "Marihuana indica" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Marihuana indica" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberMarihuanaIndica + 1) then
                    return
                  end
                  numberMarihuanaIndica = numberMarihuanaIndica + 1
                  cost1MarihuanaIndica = cost1MarihuanaIndica + costMarihuanaIndica
                end
              end
            elseif _FORV_7_.name == "MDMA" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "MDMA" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberMDMA + 1) then
                    return
                  end
                  numberMDMA = numberMDMA + 1
                  cost1MDMA = cost1MDMA + costMDMA
                end
              end
            elseif _FORV_7_.name == "Przerobiona marihuana indica" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Przerobiona marihuana indica" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberPrzerobionaMarihuanaIndica + 1) then
                    return
                  end
                  numberPrzerobionaMarihuanaIndica = numberPrzerobionaMarihuanaIndica + 1
                  cost1PrzerobionaMarihuanaIndica = cost1PrzerobionaMarihuanaIndica + costPrzerobionaMarihuanaIndica
                end
              end
            elseif _FORV_7_.name == "Przerobiona marihuana sativa" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Przerobiona marihuana sativa" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberPrzerobionaMarihuanaSativa + 1) then
                    return
                  end
                  numberPrzerobionaMarihuanaSativa = numberPrzerobionaMarihuanaSativa + 1
                  cost1PrzerobionaMarihuanaSativa = cost1PrzerobionaMarihuanaSativa + costPrzerobionaMarihuanaSativa
                end
              end
            elseif _FORV_7_.name == "Mefedron" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Mefedron" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberMefedron + 1) then
                    return
                  end
                  numberMefedron = numberMefedron + 1
                  cost1Mefedron = cost1Mefedron + costMefedron
                end
              end
            elseif _FORV_7_.name == "LSD" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "LSD" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberLSD + 1) then
                    return
                  end
                  numberLSD = numberLSD + 1
                  cost1LSD = cost1LSD + costLSD
                end
              end
            end
          elseif isMouseIn(_UPVALUE2_.x - 320 / zoom, _UPVALUE3_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.main == true then
            if _FORV_7_.name == "Kokaina" then
              if 0 >= numberCocaine then
                return
              end
              numberCocaine = numberCocaine - 1
              cost1Cocaine = cost1Cocaine - costCocaine
            elseif _FORV_7_.name == "Amfetamina" then
              if 0 >= numberAmphetamine then
                return
              end
              numberAmphetamine = numberAmphetamine - 1
              cost1Amphetamine = cost1Amphetamine - costAmphetamine
            elseif _FORV_7_.name == "Marihuana sativa" then
              if 0 >= numberMarihuanaSativa then
                return
              end
              numberMarihuanaSativa = numberMarihuanaSativa - 1
              cost1MarihuanaSativa = cost1MarihuanaSativa - costMarihuanaSativa
            elseif _FORV_7_.name == "Marihuana indica" then
              if 0 >= numberMarihuanaIndica then
                return
              end
              numberMarihuanaIndica = numberMarihuanaIndica - 1
              cost1MarihuanaIndica = cost1MarihuanaIndica - costMarihuanaIndica
            elseif _FORV_7_.name == "MDMA" then
              if 0 >= numberMDMA then
                return
              end
              numberMDMA = numberMDMA - 1
              cost1MDMA = cost1MDMA - costMDMA
            elseif _FORV_7_.name == "Mefedron" then
              if 0 >= numberMefedron then
                return
              end
              numberMefedron = numberMefedron - 1
              cost1Mefedron = cost1Mefedron - costMefedron
            elseif _FORV_7_.name == "LSD" then
              if 0 >= numberLSD then
                return
              end
              numberLSD = numberLSD - 1
              cost1LSD = cost1LSD - costLSD
            end
          elseif isMouseIn(_UPVALUE3_.x + 720 / zoom, _UPVALUE3_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 120 / zoom, 45 / zoom) and windows.main == true then
            if getPlayerPing(localPlayer) > 300 then
              exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
              return
            end
            if _FORV_7_.name == "Kokaina" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Kokaina" then
                  if 0 >= numberCocaine then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Kokaina", numberCocaine, _FORV_14_.id, cost1Cocaine)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Amfetamina" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Amfetamina" then
                  if 0 >= numberAmphetamine then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Amfetamina", numberAmphetamine, _FORV_14_.id, cost1Amphetamine)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Marihuana sativa" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Marihuana sativa" then
                  if 0 >= numberMarihuanaSativa then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Marihuana sativa", numberMarihuanaSativa, _FORV_14_.id, cost1MarihuanaSativa)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Marihuana indica" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Marihuana indica" then
                  if 0 >= numberMarihuanaIndica then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Marihuana indica", numberMarihuanaIndica, _FORV_14_.id, cost1MarihuanaIndica)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "MDMA" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "MDMA" then
                  if 0 >= numberMDMA then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "MDMA", numberMDMA, _FORV_14_.id, cost1MDMA)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Przerobiona marihuana indica" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Przerobiona marihuana indica" then
                  if 0 >= numberPrzerobionaMarihuanaIndica then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Przerobiona marihuana indica", numberPrzerobionaMarihuanaIndica, _FORV_14_.id, cost1PrzerobionaMarihuanaIndica)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Przerobiona marihuana sativa" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Przerobiona marihuana sativa" then
                  if 0 >= numberPrzerobionaMarihuanaSativa then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Przerobiona marihuana sativa", numberPrzerobionaMarihuanaSativa, _FORV_14_.id, cost1PrzerobionaMarihuanaSativa)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "Mefedron" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "Mefedron" then
                  if 0 >= numberMefedron then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Mefedron", numberMefedron, _FORV_14_.id, cost1Mefedron)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            elseif _FORV_7_.name == "LSD" then
              for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                if _FORV_14_.name == "LSD" then
                  if 0 >= numberLSD then
                    return
                  end
                  removeEventHandler("onClientRender", root, window)
                  removeEventHandler("onClientKey", root, key)
                  windows.main = false
                  showCursor(false)
                  triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "LSD", numberLSD, _FORV_14_.id, cost1LSD)
                  for _FORV_18_, _FORV_19_ in pairs(textures) do
                    if isElement(_FORV_19_) then
                      destroyElement(_FORV_19_)
                    end
                  end
                  textures = {}
                end
              end
            end
          end
        end
      end
    end
    if windows.fish == true then
      for _FORV_6_, _FORV_7_ in ipairs(fish) do
        if _FORV_6_ >= _UPVALUE4_ and _FORV_6_ <= _UPVALUE5_ then
          if isMouseIn(_UPVALUE2_.x - 250 / zoom, _UPVALUE2_.y + 95 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.fish == true then
            if _FORV_7_.name == "Makrela" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Makrela" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberMakrela + 1) then
                    return
                  end
                  numberMakrela = numberMakrela + 1
                  cost1Makrela = cost1Makrela + costMakrela
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Karp" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Karp" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberCarp + 1) then
                    return
                  end
                  numberCarp = numberCarp + 1
                  cost1Carp = cost1Carp + costCarp
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Dorsz" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Dorsz" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberDorsz + 1) then
                    return
                  end
                  numberDorsz = numberDorsz + 1
                  cost1Dorsz = cost1Dorsz + costDorsz
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Szczupak" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Szczupak" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberSzczupak + 1) then
                    return
                  end
                  numberSzczupak = numberSzczupak + 1
                  cost1Szczupak = cost1Szczupak + costSzczupak
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Rekin" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Rekin" then
                  if tonumber(_FORV_13_.ilosc) < tonumber(numberRekin + 1) then
                    return
                  end
                  numberRekin = numberRekin + 1
                  cost1Rekin = cost1Rekin + costRekin
                  refreshTableFish()
                end
              end
            end
          elseif isMouseIn(_UPVALUE2_.x - 320 / zoom, _UPVALUE2_.y + 95 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.fish == true then
            if _FORV_7_.name == "Makrela" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Makrela" then
                  if 0 >= numberMakrela then
                    return
                  end
                  numberMakrela = numberMakrela - 1
                  cost1Makrela = cost1Makrela - costMakrela
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Karp" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Karp" then
                  if 0 >= numberCarp then
                    return
                  end
                  numberCarp = numberCarp - 1
                  cost1Carp = cost1Carp - costCarp
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Dorsz" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Dorsz" then
                  if 0 >= numberDorsz then
                    return
                  end
                  numberDorsz = numberDorsz - 1
                  cost1Dorsz = cost1Dorsz - costDorsz
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Szczupak" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Szczupak" then
                  if 0 >= numberSzczupak then
                    return
                  end
                  numberSzczupak = numberSzczupak - 1
                  cost1Szczupak = cost1Szczupak - costSzczupak
                  refreshTableFish()
                end
              end
            elseif _FORV_7_.name == "Rekin" then
              for _FORV_12_, _FORV_13_ in ipairs(items_table) do
                if _FORV_13_.name == "Rekin" then
                  if 0 >= numberRekin then
                    return
                  end
                  numberRekin = numberRekin - 1
                  cost1Rekin = cost1Rekin - costRekin
                  refreshTableFish()
                end
              end
            end
          elseif isMouseIn(_UPVALUE6_.x - 20 / zoom, _UPVALUE6_.y + 30 / zoom + 70 / zoom * (0 + 1 - 1), 120 / zoom, 45 / zoom) and windows.fish == true then
            if getPlayerPing(localPlayer) > 300 then
              exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
              return
            end
            if getTickCount() - lastTickCount > 5000 then
              if not cost1Makrela then
                return
              end
              if not cost1Carp then
                return
              end
              if not cost1Dorsz then
                return
              end
              if _FORV_7_.name == "Makrela" then
                for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                  if _FORV_14_.name == "Makrela" then
                    if 0 >= numberMakrela then
                      return
                    end
                    removeEventHandler("onClientRender", root, window)
                    removeEventHandler("onClientKey", root, key)
                    windows.main = false
                    windows.fish = false
                    showCursor(false)
                    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Makrela", numberMakrela, _FORV_14_.id, cost1Makrela)
                    for _FORV_18_, _FORV_19_ in pairs(textures) do
                      if isElement(_FORV_19_) then
                        destroyElement(_FORV_19_)
                      end
                    end
                    textures = {}
                  end
                end
              elseif _FORV_7_.name == "Karp" then
                for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                  if _FORV_14_.name == "Karp" then
                    if 0 >= numberCarp then
                      return
                    end
                    removeEventHandler("onClientRender", root, window)
                    removeEventHandler("onClientKey", root, key)
                    windows.main = false
                    windows.fish = false
                    showCursor(false)
                    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Karp", numberCarp, _FORV_14_.id, cost1Carp)
                    for _FORV_18_, _FORV_19_ in pairs(textures) do
                      if isElement(_FORV_19_) then
                        destroyElement(_FORV_19_)
                      end
                    end
                    textures = {}
                  end
                end
              elseif _FORV_7_.name == "Dorsz" then
                for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                  if _FORV_14_.name == "Dorsz" then
                    if 0 >= numberDorsz then
                      return
                    end
                    removeEventHandler("onClientRender", root, window)
                    removeEventHandler("onClientKey", root, key)
                    windows.main = false
                    windows.fish = false
                    showCursor(false)
                    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Dorsz", numberDorsz, _FORV_14_.id, cost1Dorsz)
                    for _FORV_18_, _FORV_19_ in pairs(textures) do
                      if isElement(_FORV_19_) then
                        destroyElement(_FORV_19_)
                      end
                    end
                    textures = {}
                  end
                end
              elseif _FORV_7_.name == "Szczupak" then
                for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                  if _FORV_14_.name == "Szczupak" then
                    if 0 >= numberSzczupak then
                      return
                    end
                    removeEventHandler("onClientRender", root, window)
                    removeEventHandler("onClientKey", root, key)
                    windows.main = false
                    windows.fish = false
                    showCursor(false)
                    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Szczupak", numberSzczupak, _FORV_14_.id, cost1Szczupak)
                    for _FORV_18_, _FORV_19_ in pairs(textures) do
                      if isElement(_FORV_19_) then
                        destroyElement(_FORV_19_)
                      end
                    end
                    textures = {}
                  end
                end
              elseif _FORV_7_.name == "Rekin" then
                for _FORV_13_, _FORV_14_ in ipairs(items_table) do
                  if _FORV_14_.name == "Rekin" then
                    if 0 >= numberRekin then
                      return
                    end
                    removeEventHandler("onClientRender", root, window)
                    removeEventHandler("onClientKey", root, key)
                    windows.main = false
                    windows.fish = false
                    showCursor(false)
                    triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Rekin", numberRekin, _FORV_14_.id, cost1Rekin)
                    for _FORV_18_, _FORV_19_ in pairs(textures) do
                      if isElement(_FORV_19_) then
                        destroyElement(_FORV_19_)
                      end
                    end
                    textures = {}
                  end
                end
              end
            else
              return exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE6_.x - math.floor(70 / zoom), _UPVALUE6_.y + math.floor(310 / zoom), _UPVALUE6_.w, _UPVALUE6_.h) and windows.fish == true then
      triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "buyFishing_rod", localPlayer)
    elseif isMouseIn(_UPVALUE6_.x - 195 / zoom, _UPVALUE6_.y + 310 / zoom, 110 / zoom, 40 / zoom) and windows.fish == true then
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.level_fishingRod == 1 then
          if _FORV_6_.kg_rybak < 6500 then
            exports.st_gui:showPlayerNotification("Do tego levelu potrzebujesz 6,500 z\197\130owionych ryb", "error")
            return
          end
          triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "upgrade_fishing_rod", localPlayer, 1, 1000000)
        elseif _FORV_6_.level_fishingRod == 2 then
          if _FORV_6_.kg_rybak < 13000 then
            exports.st_gui:showPlayerNotification("Do tego levelu potrzebujesz 13,000 z\197\130owionych ryb", "error")
            return
          end
          triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "upgrade_fishing_rod", localPlayer, 2, 1500000)
        elseif _FORV_6_.level_fishingRod == 3 then
          if _FORV_6_.kg_rybak < 75000 then
            exports.st_gui:showPlayerNotification("Do tego levelu potrzebujesz 75,000 z\197\130owionych ryb", "error")
            return
          end
          triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "upgrade_fishing_rod", localPlayer, 2, 4500000)
        end
      end
    elseif isMouseIn(_UPVALUE2_.x - 40 / zoom, _UPVALUE2_.y + 40 / zoom, _UPVALUE2_.w, _UPVALUE2_.h) and windows.fish == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.fish = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE3_.x + _UPVALUE3_.w - 61 / zoom, _UPVALUE3_.y + 24 / zoom, 27 / zoom, 27 / zoom) and windows.main == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.main = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end)
function clickBizuteria(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.bizuteria == true then
      for _FORV_6_, _FORV_7_ in ipairs(bizuteria_table) do
        if isMouseIn(_UPVALUE0_.x - 250 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.bizuteria == true then
          if _FORV_7_.name == "Z\197\130oto" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "Z\197\130oto" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberZloto + 1) then
                  return
                end
                numberZloto = numberZloto + 1
                cost1Zloto = cost1Zloto + costZloto
              end
            end
          elseif _FORV_7_.name == "Z\197\130oty \197\130a\197\132cuszek" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "Z\197\130oty \197\130a\197\132cuszek" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberZlotyLancuszek + 1) then
                  return
                end
                numberZlotyLancuszek = numberZlotyLancuszek + 1
                cost1ZlotyLancuszek = cost1ZlotyLancuszek + costZlotyLancuszek
              end
            end
          elseif _FORV_7_.name == "\197\129a\197\132cuszek z diamentem" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "\197\129a\197\132cuszek z diamentem" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberDiamentowyLancuszek + 1) then
                  return
                end
                numberDiamentowyLancuszek = numberDiamentowyLancuszek + 1
                cost1DiamentowyLancuszek = cost1DiamentowyLancuszek + costDiamentowyLancuszek
              end
            end
          elseif _FORV_7_.name == "Pier\197\155cionek z diamentem" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "Pier\197\155cionek z diamentem" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberPierscionek + 1) then
                  return
                end
                numberPierscionek = numberPierscionek + 1
                cost1Pierscionek = cost1Pierscionek + costPierscionek
              end
            end
          end
        elseif isMouseIn(_UPVALUE0_.x - 320 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.bizuteria == true then
          if _FORV_7_.name == "Z\197\130oto" then
            if 0 >= numberZloto then
              return
            end
            numberZloto = numberZloto - 1
            cost1Zloto = cost1Zloto - costZloto
          elseif _FORV_7_.name == "Z\197\130oty \197\130a\197\132cuszek" then
            if 0 >= numberZlotyLancuszek then
              return
            end
            numberZlotyLancuszek = numberZlotyLancuszek - 1
            cost1ZlotyLancuszek = cost1ZlotyLancuszek - costZlotyLancuszek
          elseif _FORV_7_.name == "\197\129a\197\132cuszek z diamentem" then
            if 0 >= numberDiamentowyLancuszek then
              return
            end
            numberDiamentowyLancuszek = numberDiamentowyLancuszek - 1
            cost1DiamentowyLancuszek = cost1DiamentowyLancuszek - costDiamentowyLancuszek
          elseif _FORV_7_.name == "Pier\197\155cionek z diamentem" then
            if 0 >= numberPierscionek then
              return
            end
            numberPierscionek = numberPierscionek - 1
            cost1Pierscionek = cost1Pierscionek - costPierscionek
          end
        elseif isMouseIn(_UPVALUE1_.x + 720 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 120 / zoom, 45 / zoom) and windows.bizuteria == true then
          if getPlayerPing(localPlayer) > 300 then
            exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
            return
          end
          if _FORV_7_.name == "Z\197\130oto" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "Z\197\130oto" then
                if 0 >= numberZloto then
                  return
                end
                removeEventHandler("onClientRender", root, windowBizuteria)
                removeEventHandler("onClientClick", root, clickBizuteria)
                windows.bizuteria = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Z\197\130oto", numberZloto, _FORV_14_.id, cost1Zloto)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          elseif _FORV_7_.name == "Z\197\130oty \197\130a\197\132cuszek" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "Z\197\130oty \197\130a\197\132cuszek" then
                if 0 >= numberZlotyLancuszek then
                  return
                end
                removeEventHandler("onClientRender", root, windowBizuteria)
                removeEventHandler("onClientClick", root, clickBizuteria)
                windows.bizuteria = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Z\197\130oty \197\130a\197\132cuszek", numberZlotyLancuszek, _FORV_14_.id, cost1ZlotyLancuszek)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          elseif _FORV_7_.name == "\197\129a\197\132cuszek z diamentem" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "\197\129a\197\132cuszek z diamentem" then
                if 0 >= numberDiamentowyLancuszek then
                  return
                end
                removeEventHandler("onClientRender", root, windowBizuteria)
                removeEventHandler("onClientClick", root, clickBizuteria)
                windows.bizuteria = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "\197\129a\197\132cuszek z diamentem", numberDiamentowyLancuszek, _FORV_14_.id, cost1DiamentowyLancuszek)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          elseif _FORV_7_.name == "Pier\197\155cionek z diamentem" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "Pier\197\155cionek z diamentem" then
                if 0 >= numberPierscionek then
                  return
                end
                removeEventHandler("onClientRender", root, windowBizuteria)
                removeEventHandler("onClientClick", root, clickBizuteria)
                windows.bizuteria = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Pier\197\155cionek z diamentem", numberPierscionek, _FORV_14_.id, cost1Pierscionek)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / zoom, _UPVALUE1_.y + 24 / zoom, 27 / zoom, 27 / zoom) and windows.bizuteria == true then
      removeEventHandler("onClientRender", root, windowBizuteria)
      removeEventHandler("onClientClick", root, clickBizuteria)
      windows.bizuteria = false
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
function clickbotmedyczny(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.botmedyczny == true then
      for _FORV_6_, _FORV_7_ in ipairs(botmedyczny_table) do
        if isMouseIn(_UPVALUE0_.x - 250 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.botmedyczny == true then
          if _FORV_7_.name == "Morfina" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "Morfina" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberMorfina + 1) then
                  return
                end
                numberMorfina = numberMorfina + 1
                cost1Morfina = cost1Morfina + costMorfina
              end
            end
          elseif _FORV_7_.name == "Adrenalina" then
            for _FORV_12_, _FORV_13_ in ipairs(items_table) do
              if _FORV_13_.name == "Adrenalina" then
                if tonumber(_FORV_13_.ilosc) < tonumber(numberAdrenalina + 1) then
                  return
                end
                numberAdrenalina = numberAdrenalina + 1
                cost1Adrenalina = cost1Adrenalina + costAdrenalina
              end
            end
          end
        elseif isMouseIn(_UPVALUE0_.x - 320 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) and windows.botmedyczny == true then
          if _FORV_7_.name == "Morfina" then
            if 0 >= numberMorfina then
              return
            end
            numberMorfina = numberMorfina - 1
            cost1Morfina = cost1Morfina - costMorfina
          elseif _FORV_7_.name == "Adrenalina" then
            if 0 >= numberAdrenalina then
              return
            end
            numberAdrenalina = numberAdrenalina - 1
            cost1Adrenalina = cost1Adrenalina - costAdrenalina
          end
        elseif isMouseIn(_UPVALUE1_.x + 720 / zoom, _UPVALUE1_.y + 85 / zoom + 70 / zoom * (0 + 1 - 1), 120 / zoom, 45 / zoom) and windows.botmedyczny == true then
          if getPlayerPing(localPlayer) > 300 then
            exports.st_gui:showPlayerNotification("Posiadasz za du\197\188y ping!", "error")
            return
          end
          if _FORV_7_.name == "Morfina" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "Morfina" then
                if 0 >= numberMorfina then
                  return
                end
                removeEventHandler("onClientRender", root, windowbotmedyczny)
                removeEventHandler("onClientClick", root, clickbotmedyczny)
                windows.botmedyczny = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Morfina", numberMorfina, _FORV_14_.id, cost1Morfina)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          elseif _FORV_7_.name == "Adrenalina" then
            for _FORV_13_, _FORV_14_ in ipairs(items_table) do
              if _FORV_14_.name == "Adrenalina" then
                if 0 >= numberAdrenalina then
                  return
                end
                removeEventHandler("onClientRender", root, windowbotmedyczny)
                removeEventHandler("onClientClick", root, clickbotmedyczny)
                windows.botmedyczny = false
                showCursor(false)
                triggerServerEvent("evEwenciks_k3hdgrh", resourceRoot, "sellDrugs", localPlayer, "Adrenalina", numberAdrenalina, _FORV_14_.id, cost1Adrenalina)
                for _FORV_18_, _FORV_19_ in pairs(textures) do
                  if isElement(_FORV_19_) then
                    destroyElement(_FORV_19_)
                  end
                end
                textures = {}
              end
            end
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / zoom, _UPVALUE1_.y + 24 / zoom, 27 / zoom, 27 / zoom) and windows.botmedyczny == true then
      removeEventHandler("onClientRender", root, windowbotmedyczny)
      removeEventHandler("onClientClick", root, clickbotmedyczny)
      windows.botmedyczny = false
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
function refreshTableFish()
  fish = {
    {
      name = "Makrela",
      icon = textures.mackerel_icon,
      cost = costMakrela,
      cost1 = cost1Makrela,
      number = numberMakrela
    },
    {
      name = "Karp",
      icon = textures.carp_icon,
      cost = costCarp,
      cost1 = cost1Carp,
      number = numberCarp
    },
    {
      name = "Dorsz",
      icon = textures.cod_icon,
      cost = costDorsz,
      cost1 = cost1Dorsz,
      number = numberDorsz
    },
    {
      name = "Szczupak",
      icon = textures.pike_icon,
      cost = costSzczupak,
      cost1 = cost1Szczupak,
      number = numberSzczupak
    },
    {
      name = "Rekin",
      icon = textures.shark_icon,
      cost = costRekin,
      cost1 = cost1Rekin,
      number = numberRekin
    }
  }
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_)
  if _ARG_0_ == "showGui" then
    if _ARG_1_ then
      if getElementData(localPlayer, "org:przestepcza") then
        exports.st_gui:showPlayerNotification("Organizacje przest\196\153pcze nie maj\196\133\ndost\196\153pu do tego bota", "error")
        return
      end
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        amphetamine = dxCreateTexture(":ST_invetory/img/amphetamines_icon.png"),
        marihuana = dxCreateTexture(":ST_invetory/img/weed_icon.png"),
        marihuana1 = dxCreateTexture(":ST_invetory/img/weed1_icon.png"),
        mdma = dxCreateTexture(":ST_invetory/img/mdma_icon.png"),
        cocaine = dxCreateTexture(":ST_invetory/img/coco_icon.png"),
        mephedrone_icon = dxCreateTexture(":ST_invetory/img/mephedrone_icon.png"),
        lsd_icon = dxCreateTexture(":ST_invetory/img/lsd_icon.png"),
        strzalka = dxCreateTexture("img/strzalka.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      drugs = {
        {
          name = "Kokaina",
          icon = textures.cocaine
        },
        {
          name = "Amfetamina",
          icon = textures.amphetamine
        },
        {
          name = "Marihuana sativa",
          icon = textures.marihuana
        },
        {
          name = "Marihuana indica",
          icon = textures.marihuana
        },
        {
          name = "MDMA",
          icon = textures.mdma
        },
        {
          name = "Przerobiona marihuana sativa",
          icon = textures.marihuana1
        },
        {
          name = "Przerobiona marihuana indica",
          icon = textures.marihuana1
        },
        {
          name = "LSD",
          icon = textures.lsd_icon
        },
        {
          name = "Mefedron",
          icon = textures.mephedrone_icon
        }
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      windows.main = true
      showCursor(true)
      numberCocaine = 0
      numberMDMA = 0
      numberAmphetamine = 0
      numberMarihuanaSativa = 0
      cost1Cocaine = 0
      cost1MDMA = 0
      cost1Amphetamine = 0
      cost1MarihuanaSativa = 0
      costMarihuanaSativa = _ARG_2_
      costAmphetamine = _ARG_3_
      costCocaine = _ARG_4_
      costMDMA = _ARG_6_
      costMarihuanaIndica = _ARG_5_
      cost1MarihuanaIndica = 0
      numberMarihuanaIndica = 0
      costPrzerobionaMarihuanaSativa = _ARG_8_
      cost1PrzerobionaMarihuanaSativa = 0
      numberPrzerobionaMarihuanaSativa = 0
      costPrzerobionaMarihuanaIndica = _ARG_7_
      cost1PrzerobionaMarihuanaIndica = 0
      numberPrzerobionaMarihuanaIndica = 0
      costLSD = _ARG_10_
      cost1LSD = 0
      numberLSD = 0
      costMefedron = _ARG_11_
      cost1Mefedron = 0
      numberMefedron = 0
      items_table = _ARG_9_
      for _FORV_15_, _FORV_16_ in ipairs(items_table) do
        if _FORV_16_.name == "Kokaina" then
          numberCocaine = _FORV_16_.ilosc
          cost1Cocaine = costCocaine * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Amfetamina" then
          numberAmphetamine = _FORV_16_.ilosc
          cost1Amphetamine = costAmphetamine * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Marihuana sativa" then
          numberMarihuanaSativa = _FORV_16_.ilosc
          cost1MarihuanaSativa = costMarihuanaSativa * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Marihuana indica" then
          numberMarihuanaIndica = _FORV_16_.ilosc
          cost1MarihuanaIndica = costMarihuanaIndica * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "MDMA" then
          numberMDMA = _FORV_16_.ilosc
          cost1MDMA = costMDMA * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Przerobiona marihuana indica" then
          numberPrzerobionaMarihuanaIndica = _FORV_16_.ilosc
          cost1PrzerobionaMarihuanaIndica = costPrzerobionaMarihuanaIndica * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Przerobiona marihuana sativa" then
          numberPrzerobionaMarihuanaSativa = _FORV_16_.ilosc
          cost1PrzerobionaMarihuanaSativa = costPrzerobionaMarihuanaSativa * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "LSD" then
          numberLSD = _FORV_16_.ilosc
          cost1LSD = costLSD * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Mefedron" then
          numberMefedron = _FORV_16_.ilosc
          cost1Mefedron = costMefedron * _FORV_16_.ilosc
        end
      end
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.main = false
      showCursor(false)
      for _FORV_15_, _FORV_16_ in pairs(textures) do
        if isElement(_FORV_16_) then
          destroyElement(_FORV_16_)
        end
      end
      textures = {}
    end
  elseif _ARG_0_ == "showGui1" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background1.png"),
        strzalka = dxCreateTexture("img/strzalka.png"),
        carp_icon = dxCreateTexture(":ST_invetory/img/carp_icon.png"),
        mackerel_icon = dxCreateTexture(":ST_invetory/img/mackerel_icon.png"),
        cod_icon = dxCreateTexture(":ST_invetory/img/cod_icon.png"),
        fishing_rod_icon = dxCreateTexture(":ST_invetory/img/fishing_rod_icon.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        pike_icon = dxCreateTexture(":ST_invetory/img/pike_icon.png"),
        shark_icon = dxCreateTexture(":ST_invetory/img/shark_icon.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      windows.fish = true
      showCursor(true)
      costMakrela = _ARG_2_
      costCarp = _ARG_3_
      costDorsz = _ARG_4_
      costSzczupak = _ARG_5_
      costRekin = _ARG_6_
      numberDorsz = 0
      cost1Dorsz = 0
      numberCarp = 0
      cost1Carp = 0
      numberMakrela = 0
      cost1Makrela = 0
      numberSzczupak = 0
      cost1Szczupak = 0
      numberRekin = 0
      cost1Rekin = 0
      items_table = _ARG_7_
      table_statistics = _ARG_8_
      for _FORV_15_, _FORV_16_ in ipairs(items_table) do
        if _FORV_16_.name == "Makrela" then
          numberMakrela = _FORV_16_.ilosc
          cost1Makrela = costMakrela * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Karp" then
          numberCarp = _FORV_16_.ilosc
          cost1Carp = costCarp * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Dorsz" then
          numberDorsz = _FORV_16_.ilosc
          cost1Dorsz = costDorsz * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Szczupak" then
          numberSzczupak = _FORV_16_.ilosc
          cost1Szczupak = costSzczupak * _FORV_16_.ilosc
        end
        if _FORV_16_.name == "Rekin" then
          numberRekin = _FORV_16_.ilosc
          cost1Rekin = costRekin * _FORV_16_.ilosc
        end
      end
      refreshTableFish()
      lastTickCount = getTickCount()
    else
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.fish = false
      showCursor(false)
      for _FORV_15_, _FORV_16_ in pairs(textures) do
        if isElement(_FORV_16_) then
          destroyElement(_FORV_16_)
        end
      end
      textures = {}
    end
  elseif _ARG_0_ == "showGuiBizuteria" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        strzalka = dxCreateTexture("img/strzalka.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        ring_icon = dxCreateTexture(":ST_napad_jubiler/img/ring_icon.png"),
        gold_icon = dxCreateTexture(":ST_napad_jubiler/img/gold_icon.png"),
        chain2_icon = dxCreateTexture(":ST_napad_jubiler/img/chain2_icon.png"),
        chain_icon = dxCreateTexture(":ST_napad_jubiler/img/chain_icon.png")
      }
      bizuteria_table = {
        {
          name = "Z\197\130oto",
          icon = textures.gold_icon
        },
        {
          name = "Z\197\130oty \197\130a\197\132cuszek",
          icon = textures.chain_icon
        },
        {
          name = "\197\129a\197\132cuszek z diamentem",
          icon = textures.chain2_icon
        },
        {
          name = "Pier\197\155cionek z diamentem",
          icon = textures.ring_icon
        }
      }
      addEventHandler("onClientRender", root, windowBizuteria)
      addEventHandler("onClientClick", root, clickBizuteria)
      windows.main = false
      windows.bizuteria = true
      showCursor(true)
      numberZloto = 0
      cost1Zloto = 0
      costZloto = _ARG_2_
      numberZlotyLancuszek = 0
      cost1ZlotyLancuszek = 0
      costZlotyLancuszek = _ARG_3_
      numberDiamentowyLancuszek = 0
      cost1DiamentowyLancuszek = 0
      costDiamentowyLancuszek = _ARG_4_
      numberPierscionek = 0
      cost1Pierscionek = 0
      costPierscionek = _ARG_5_
      items_table = _ARG_6_
      for _FORV_15_, _FORV_16_ in ipairs(items_table) do
        if _FORV_16_.name == "Z\197\130oto" then
          numberZloto = _FORV_16_.ilosc
          cost1Zloto = costZloto * _FORV_16_.ilosc
        elseif _FORV_16_.name == "Z\197\130oty \197\130a\197\132cuszek" then
          numberZlotyLancuszek = _FORV_16_.ilosc
          cost1ZlotyLancuszek = costZlotyLancuszek * _FORV_16_.ilosc
        elseif _FORV_16_.name == "\197\129a\197\132cuszek z diamentem" then
          numberDiamentowyLancuszek = _FORV_16_.ilosc
          cost1DiamentowyLancuszek = costDiamentowyLancuszek * _FORV_16_.ilosc
        elseif _FORV_16_.name == "Pier\197\155cionek z diamentem" then
          numberPierscionek = _FORV_16_.ilosc
          cost1Pierscionek = costPierscionek * _FORV_16_.ilosc
        end
      end
    else
      removeEventHandler("onClientClick", root, clickBizuteria)
      removeEventHandler("onClientRender", root, windowBizuteria)
      showCursor(false)
      for _FORV_15_, _FORV_16_ in pairs(textures) do
        if isElement(_FORV_16_) then
          destroyElement(_FORV_16_)
        end
      end
      textures = {}
    end
  elseif _ARG_0_ == "showGuiMedyczne" then
    if _ARG_1_ then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        strzalka = dxCreateTexture("img/strzalka.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        morfina = dxCreateTexture(":ST_invetory/img/morphine_icon.png"),
        adrenalina = dxCreateTexture(":ST_invetory/img/adrenalina_icon.png")
      }
      botmedyczny_table = {
        {
          name = "Morfina",
          icon = textures.morfina
        },
        {
          name = "Adrenalina",
          icon = textures.adrenalina
        }
      }
      addEventHandler("onClientRender", root, windowbotmedyczny)
      addEventHandler("onClientClick", root, clickbotmedyczny)
      windows.main = false
      windows.botmedyczny = true
      showCursor(true)
      numberMorfina = 0
      cost1Morfina = 0
      costMorfina = _ARG_2_
      numberAdrenalina = 0
      cost1Adrenalina = 0
      costAdrenalina = _ARG_3_
      items_table = _ARG_4_
      for _FORV_15_, _FORV_16_ in ipairs(items_table) do
        if _FORV_16_.name == "Morfina" then
          numberMorfina = _FORV_16_.ilosc
          cost1Morfina = costMorfina * _FORV_16_.ilosc
        elseif _FORV_16_.name == "Adrenalina" then
          numberAdrenalina = _FORV_16_.ilosc
          cost1Adrenalina = costAdrenalina * _FORV_16_.ilosc
        end
      end
    else
      removeEventHandler("onClientClick", root, clickbotmedyczny)
      removeEventHandler("onClientRender", root, windowbotmedyczny)
      showCursor(false)
      for _FORV_15_, _FORV_16_ in pairs(textures) do
        if isElement(_FORV_16_) then
          destroyElement(_FORV_16_)
        end
      end
      textures = {}
    end
  elseif _ARG_0_ == "showStatisticsJobsClient" then
    table_statistics = _ARG_1_
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.fish == true then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    elseif windows.main == true then
      if _UPVALUE3_ == _UPVALUE4_ then
        return
      end
      _UPVALUE5_ = _UPVALUE5_ - 1
      _UPVALUE3_ = _UPVALUE3_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if windows.fish == true then
      if _UPVALUE0_ >= #fish then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ + 1
      _UPVALUE0_ = _UPVALUE0_ + 1
    elseif windows.main == true then
      if _UPVALUE3_ >= #drugs then
        return
      end
      _UPVALUE5_ = _UPVALUE5_ + 1
      _UPVALUE3_ = _UPVALUE3_ + 1
    end
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
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(15, 15, 15, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / zoom, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(255, 187, 0, 255))
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
getResourceName(getThisResource(), true, 258631028)
return
