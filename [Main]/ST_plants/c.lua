windows = {
  enter = false,
  main = false,
  enterExit = false
}
position = {
  {
    25,
    3278.66,
    -1917.43,
    17.45
  },
  {
    24,
    2530.47,
    -2434.72,
    17.88
  },
  {
    10,
    2524.36,
    -1702.62,
    14.05
  },
  {
    8,
    2494.05,
    -1464.71,
    24.03
  },
  {
    4,
    2522.97,
    -1343.71,
    31.05
  },
  {
    1,
    2514.56,
    -1240.46,
    39.34
  },
  {
    2,
    2324.38,
    -1280.97,
    27.98
  },
  {
    13,
    2266.5,
    -1700.94,
    13.69
  },
  {
    22,
    1914.55,
    -2021.37,
    13.55
  },
  {
    23,
    1988.85,
    -1086.51,
    24.76
  }
}
for _FORV_8_, _FORV_9_ in ipairs(position) do
  enter = createMarker(_FORV_9_[2], _FORV_9_[3], _FORV_9_[4] - 0.9, "cylinder", 1.5, 246, 255, 0, 255)
  setElementPosition(createElement("text"), _FORV_9_[2], _FORV_9_[3], _FORV_9_[4])
  setElementData(createElement("text"), "name", "Melina")
  addEventHandler("onClientMarkerHit", enter, function(_ARG_0_, _ARG_1_)
    if not _ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer then
      return
    end
    if getElementData(localPlayer, "org:przestepcza") then
      loadTexture()
      addEventHandler("onClientRender", root, window)
      windows.enter = true
      showCursor(true)
      idMarker = _UPVALUE0_[1]
    else
      exports.st_gui:showPlayerNotification("Nie jeste\197\155 w organizacji przestepczej.", "error")
    end
  end)
end
function renderTime()
  if clientProduction then
    dxDrawRoundedRectangle(-10 / _UPVALUE0_, _UPVALUE1_.y + 350 / _UPVALUE0_, 150 / _UPVALUE0_, 50 / _UPVALUE0_, 12 / _UPVALUE0_, tocolor(35, 35, 35, 240), false)
    dxDrawRoundedRectangle(4 / _UPVALUE0_ / _UPVALUE0_, _UPVALUE1_.y + 352.5 / _UPVALUE0_, 45 / _UPVALUE0_, 45 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(25, 25, 25, 250), false)
    dxDrawImage(6.5 / _UPVALUE0_, _UPVALUE1_.y + 355 / _UPVALUE0_, 40 / _UPVALUE0_, 40 / _UPVALUE0_, icon_render, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText(clientProduction[1], 0 / _UPVALUE0_ + 55 / _UPVALUE0_, _UPVALUE1_.y + 523 / _UPVALUE0_, 0 / _UPVALUE0_, _UPVALUE1_.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
    dxDrawText(resulted1(loadingTime), 0 / _UPVALUE0_ + 55 / _UPVALUE0_, _UPVALUE1_.y + 568 / _UPVALUE0_, 0 / _UPVALUE0_, _UPVALUE1_.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if exports.ST_datasystem:getCustomData(localPlayer, "player:afk", "synced") then
      if getTickCount() - tick > 2000 then
        tick = getTickCount()
        loadingTime = loadingTime - 1
      end
    elseif getTickCount() - tick > 1000 then
      tick = getTickCount()
      loadingTime = loadingTime - 1
    end
    if 1 > loadingTime then
      loadingTime = 1
      exports.ST_gui:destroyProgressbar()
      triggerServerEvent("evEwenciks_plants", resourceRoot, "addDrugs", localPlayer)
      clientProduction = false
      click = false
      removeEventHandler("onClientRender", root, renderTime)
      if isElement(icon_render) then
        destroyElement(icon_render)
      end
    end
  end
end
function window()
  if windows.enter == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 202 / _UPVALUE1_, _UPVALUE0_.y + 131 / _UPVALUE1_, _UPVALUE0_.w - 405 / _UPVALUE1_, _UPVALUE0_.h - 261 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.w - 400 / _UPVALUE1_, _UPVALUE0_.h - 260 / _UPVALUE1_, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("MELINA", _UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, _UPVALUE0_.w - 440 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("MO\197\187LIWO\197\154CI:", _UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText([[
#ffbb00-#e8e8e8 produkcja LSD
#ffbb00-#e8e8e8 produkcja mefedronu
#ffbb00-#e8e8e8 produkcja kokainy
#ffbb00-#e8e8e8 produkcja amfetaminy
#ffbb00-#e8e8e8 produkcja MDMA]], _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 225 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "top", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("WEJD\197\185", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 180 / _UPVALUE1_, 61 / _UPVALUE1_, 255, 1)
    if isMouseIn(_UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 630 / _UPVALUE1_, _UPVALUE0_.y + 141 / _UPVALUE1_, 28 / _UPVALUE1_, 28 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.enterExit == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 202 / _UPVALUE1_, _UPVALUE0_.y + 131 / _UPVALUE1_, _UPVALUE0_.w - 405 / _UPVALUE1_, _UPVALUE0_.h - 261 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.w - 400 / _UPVALUE1_, _UPVALUE0_.h - 260 / _UPVALUE1_, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("WYJ\197\154CIE", _UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 220 / _UPVALUE1_, _UPVALUE0_.y + 175 / _UPVALUE1_, _UPVALUE0_.w - 440 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("CZY NA PEWNO CHCESZ WYJ\197\154\196\134?", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("WYJD\197\185", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, 180 / _UPVALUE1_, 61 / _UPVALUE1_, 255, 1)
    if isMouseIn(_UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 630 / _UPVALUE1_, _UPVALUE0_.y + 141 / _UPVALUE1_, 28 / _UPVALUE1_, 28 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("PRODUKCJA NARKOTYK\195\147W", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 61 / _UPVALUE1_, _UPVALUE0_.y + 24 / _UPVALUE1_, 27 / _UPVALUE1_, 27 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 60 / _UPVALUE1_, _UPVALUE0_.y + 25 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if saveProductionQuid then
      dxDrawText("Posiadasz niedoko\197\132czon\196\133 produkcj\196\153 narkotyku", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 100, 100, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("Produkcja: #ffbf00" .. saveProductionQuid[1] .. "\n#ffffffIlo\197\155\196\135: #ffbf00" .. saveProductionQuid[2] .. "\n#ffffffPozosta\197\130y czas produkcji: " .. resulted(saveProductionQuid[3]), _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("WZN\195\147W", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 180 / _UPVALUE1_, 61 / _UPVALUE1_, 255, 1)
    elseif getElementData(localPlayer, "player:plants_on") then
      dxDrawText("Produkcja: #ffbf00" .. clientProduction[1] .. "\n#ffffffIlo\197\155\196\135: #ffbf00" .. clientProduction[2] .. "\n#ffffffPozosta\197\130y czas produkcji: " .. resulted(loadingTime), _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("PRODUKTY DO PRODUKCJI", _UPVALUE0_.x + 158 / _UPVALUE1_, _UPVALUE0_.y + 92 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      xY1 = 0
      xX1 = 0
      for _FORV_7_ = 1, 12 do
        xX1 = xX1 + 1
        if xX1 > 4 then
          xX1 = 1
          xY1 = xY1 + 1
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 118 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 235 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY1 - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
      end
      xY = 0
      xX = 0
      for _FORV_7_, _FORV_8_ in ipairs(table_drugs) do
        xX = xX + 1
        if 4 < xX then
          xX = 1
          xY = xY + 1
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 118 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 235 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
        dxDrawImage(_UPVALUE0_.x + 123 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 240 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 54 / _UPVALUE1_, 54 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("#ffbf00" .. _FORV_8_.number, _UPVALUE0_.x, _UPVALUE0_.y + 375 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ - 182 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 118 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX - 1), _UPVALUE0_.y + 235 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_) and isCursorShowing() then
          dxDrawText(_FORV_8_.name, _UPVALUE2_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          dxDrawText(_FORV_8_.name, _UPVALUE2_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        end
      end
      dxDrawText("\226\135\168", _UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 325 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold50"), "left", "center", false, false, false, false, false)
      dxDrawText("WYBRANE PRODUKTY", _UPVALUE0_.x + 555 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      xY1 = 0
      xX1 = 0
      for _FORV_7_ = 1, 8 do
        xX1 = xX1 + 1
        if xX1 > 4 then
          xX1 = 1
          xY1 = xY1 + 1
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 268 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY1 - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
      end
      xY1 = 0
      xX1 = 0
      activeDrugs = false
      for _FORV_7_, _FORV_8_ in ipairs(selectItemTable) do
        xX1 = xX1 + 1
        if xX1 > 4 then
          xX1 = 1
          xY1 = xY1 + 1
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 268 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY1 - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
        dxDrawImage(_UPVALUE0_.x + 505 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 273 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY1 - 1), 54 / _UPVALUE1_, 54 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("#ffbf00" .. _FORV_8_.number, _UPVALUE0_.x, _UPVALUE0_.y + 435 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 200 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 500 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xX1 - 1), _UPVALUE0_.y + 268 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY1 - 1), 64 / _UPVALUE1_, 64 / _UPVALUE1_) and isCursorShowing() then
          dxDrawText(_FORV_8_.name, _UPVALUE2_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          dxDrawText(_FORV_8_.name, _UPVALUE2_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        end
        if _FORV_8_.name == "Izopropanol" then
          izopropanol_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Azotan rteci" then
          azotanRteci_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Kwas octowy" then
          kwasOctowy_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Chlorek metylu" then
          chlorekMetylu_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Dioksan" then
          dioksan_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Kanister" then
          kanister_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Amfetamina" then
          amfetamina_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Liscie koki" then
          liscieKoki_select = _FORV_8_.number
        end
        if _FORV_8_.name == "Marihuana indica" then
          indica_select = _FORV_8_.number
        end
        if izopropanol_select == 96 and azotanRteci_select == 160 and kwasOctowy_select == 80 then
          activeDrugs = {
            "Amfetamina",
            350,
            57600
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 48 and azotanRteci_select == 80 and kwasOctowy_select == 40 then
          activeDrugs = {
            "Amfetamina",
            160,
            28800
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 24 and azotanRteci_select == 40 and kwasOctowy_select == 20 then
          activeDrugs = {
            "Amfetamina",
            80,
            14400
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 12 and azotanRteci_select == 20 and kwasOctowy_select == 10 then
          activeDrugs = {
            "Amfetamina",
            40,
            7200
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 6 and azotanRteci_select == 10 and kwasOctowy_select == 5 then
          activeDrugs = {
            "Amfetamina",
            20,
            3600
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 4 and azotanRteci_select == 5 and kwasOctowy_select == 3 then
          activeDrugs = {
            "Amfetamina",
            10,
            1800
          }
          icon = textures.amphetamines_icon
        end
        if izopropanol_select == 2 and azotanRteci_select == 3 and kwasOctowy_select == 1 then
          activeDrugs = {
            "Amfetamina",
            5,
            900
          }
          icon = textures.amphetamines_icon
        end
        if kanister_select == 800 and liscieKoki_select == 160 then
          activeDrugs = {
            "Kokaina",
            330,
            57600
          }
          icon = textures.coco_icon
        end
        if kanister_select == 400 and liscieKoki_select == 80 then
          activeDrugs = {
            "Kokaina",
            120,
            28800
          }
          icon = textures.coco_icon
        end
        if kanister_select == 200 and liscieKoki_select == 40 then
          activeDrugs = {
            "Kokaina",
            60,
            14400
          }
          icon = textures.coco_icon
        end
        if kanister_select == 100 and liscieKoki_select == 20 then
          activeDrugs = {
            "Kokaina",
            30,
            7200
          }
          icon = textures.coco_icon
        end
        if kanister_select == 50 and liscieKoki_select == 10 then
          activeDrugs = {
            "Kokaina",
            15,
            3600
          }
          icon = textures.coco_icon
        end
        if kanister_select == 25 and liscieKoki_select == 5 then
          activeDrugs = {
            "Kokaina",
            7,
            1800
          }
          icon = textures.coco_icon
        end
        if kanister_select == 12 and liscieKoki_select == 3 then
          activeDrugs = {
            "Kokaina",
            3,
            900
          }
          icon = textures.coco_icon
        end
        if chlorekMetylu_select == 256 and dioksan_select == 192 and amfetamina_select == 320 then
          activeDrugs = {
            "MDMA",
            350,
            57600
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 128 and dioksan_select == 96 and amfetamina_select == 160 then
          activeDrugs = {
            "MDMA",
            160,
            28800
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 64 and dioksan_select == 48 and amfetamina_select == 80 then
          activeDrugs = {
            "MDMA",
            80,
            14400
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 32 and dioksan_select == 24 and amfetamina_select == 40 then
          activeDrugs = {
            "MDMA",
            40,
            7200
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 16 and dioksan_select == 12 and amfetamina_select == 20 then
          activeDrugs = {
            "MDMA",
            20,
            3600
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 8 and dioksan_select == 6 and amfetamina_select == 10 then
          activeDrugs = {
            "MDMA",
            10,
            1800
          }
          icon = textures.mdma_icon
        end
        if chlorekMetylu_select == 4 and dioksan_select == 3 and amfetamina_select == 5 then
          activeDrugs = {
            "MDMA",
            5,
            900
          }
          icon = textures.mdma_icon
        end
        if kanister_select == 800 and izopropanol_select == 128 and amfetamina_select == 320 then
          activeDrugs = {
            "Mefedron",
            280,
            57600
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 400 and izopropanol_select == 64 and amfetamina_select == 160 then
          activeDrugs = {
            "Mefedron",
            128,
            28800
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 200 and izopropanol_select == 32 and amfetamina_select == 80 then
          activeDrugs = {
            "Mefedron",
            64,
            14400
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 100 and izopropanol_select == 16 and amfetamina_select == 40 then
          activeDrugs = {
            "Mefedron",
            32,
            7200
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 50 and izopropanol_select == 8 and amfetamina_select == 20 then
          activeDrugs = {
            "Mefedron",
            16,
            3600
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 25 and izopropanol_select == 4 and amfetamina_select == 10 then
          activeDrugs = {
            "Mefedron",
            8,
            1800
          }
          icon = textures.mephedrone_icon
        end
        if kanister_select == 12 and izopropanol_select == 2 and amfetamina_select == 5 then
          activeDrugs = {
            "Mefedron",
            4,
            900
          }
          icon = textures.mephedrone_icon
        end
        if kwasOctowy_select == 128 and indica_select == 64 and chlorekMetylu_select == 256 then
          activeDrugs = {
            "LSD",
            220,
            57600
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 64 and indica_select == 32 and chlorekMetylu_select == 128 then
          activeDrugs = {
            "LSD",
            96,
            28800
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 32 and indica_select == 16 and chlorekMetylu_select == 64 then
          activeDrugs = {
            "LSD",
            48,
            14400
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 16 and indica_select == 8 and chlorekMetylu_select == 32 then
          activeDrugs = {
            "LSD",
            24,
            7200
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 8 and indica_select == 4 and chlorekMetylu_select == 16 then
          activeDrugs = {
            "LSD",
            12,
            3600
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 4 and indica_select == 2 and chlorekMetylu_select == 8 then
          activeDrugs = {
            "LSD",
            6,
            1800
          }
          icon = textures.lsd_icon
        end
        if kwasOctowy_select == 2 and indica_select == 1 and chlorekMetylu_select == 4 then
          activeDrugs = {
            "LSD",
            3,
            900
          }
          icon = textures.lsd_icon
        end
      end
      if activeDrugs then
        dxDrawText("\226\135\169", _UPVALUE0_.x + 608 / _UPVALUE1_, _UPVALUE0_.y + 570 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("bold50"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 602 / _UPVALUE1_, _UPVALUE0_.y + 438 / _UPVALUE1_, 64 / _UPVALUE1_, 64 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
        dxDrawImage(_UPVALUE0_.x + 607 / _UPVALUE1_, _UPVALUE0_.y + 443 / _UPVALUE1_, 54 / _UPVALUE1_, 54 / _UPVALUE1_, icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("#ffbf00" .. activeDrugs[2], _UPVALUE0_.x, _UPVALUE0_.y + 774 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 301 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 602 / _UPVALUE1_, _UPVALUE0_.y + 438 / _UPVALUE1_, 64 / _UPVALUE1_, 64 / _UPVALUE1_) and isCursorShowing() then
          dxDrawText(activeDrugs[1], _UPVALUE2_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          dxDrawText(activeDrugs[1], _UPVALUE2_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE3_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE2_ * getCursorPosition(), _UPVALUE3_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        end
        dxDrawText("Czas produkcji: " .. resulted(activeDrugs[3]) .. "", _UPVALUE0_.x + 518 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("PRODUKUJ", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 180 / _UPVALUE1_, 61 / _UPVALUE1_, 255, 1)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_drugs) do
        if 0 + 1 > 4 then
        end
        if isMouseIn(_UPVALUE1_.x + 118 / _UPVALUE0_ + 68 / _UPVALUE0_ * (1 - 1), _UPVALUE1_.y + 235 / _UPVALUE0_ + 68 / _UPVALUE0_ * (0 + 1 - 1), 64 / _UPVALUE0_, 64 / _UPVALUE0_) and windows.main == true then
          if _FORV_8_.number == 0 then
            return
          end
          if getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if _FORV_8_.number < numberAdd then
            return
          end
          table.remove(table_drugs, _FORV_7_)
          if _FORV_8_.number ~= 0 then
            table.insert(table_drugs, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = _FORV_8_.number - numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(table_drugs, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          if #selectItemTable == 0 then
            table.insert(selectItemTable, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = numberAdd,
              id = _FORV_8_.id
            })
          elseif table.search(selectItemTable, _FORV_8_.name) then
            table.removeValue(selectItemTable, _FORV_8_.name)
            table.insert(selectItemTable, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          else
            table.insert(selectItemTable, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(selectItemTable, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
        end
      end
    end
    if windows.main == true then
      for _FORV_7_, _FORV_8_ in ipairs(selectItemTable) do
        if 0 + 1 > 4 then
        end
        if isMouseIn(_UPVALUE1_.x + 500 / _UPVALUE0_ + 68 / _UPVALUE0_ * (1 - 1), _UPVALUE1_.y + 268 / _UPVALUE0_ + 68 / _UPVALUE0_ * (0 + 1 - 1), 64 / _UPVALUE0_, 64 / _UPVALUE0_) and windows.main == true then
          if getKeyState("lshift") then
            numberAdd = 10
          else
            numberAdd = 1
          end
          if _FORV_8_.number < numberAdd then
            return
          end
          if _FORV_8_.number ~= numberAdd then
            table.removeValue(selectItemTable, _FORV_8_.name)
            table.insert(selectItemTable, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = _FORV_8_.number - numberAdd,
              id = _FORV_8_.id
            })
          else
            table.removeValue(selectItemTable, _FORV_8_.name)
          end
          if table.search(table_drugs, _FORV_8_.name) then
            table.removeValue(table_drugs, _FORV_8_.name)
            table.insert(table_drugs, {
              name = _FORV_8_.name,
              img = _FORV_8_.img,
              number = table.returns + numberAdd,
              id = _FORV_8_.id
            })
          end
          table.sort(table_drugs, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
          table.sort(selectItemTable, function(_ARG_0_, _ARG_1_)
            return _ARG_0_.id > _ARG_1_.id
          end)
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 350 / _UPVALUE0_, _UPVALUE1_.y + 450 / _UPVALUE0_, 180 / _UPVALUE0_, 61 / _UPVALUE0_) and windows.main == true then
      if getElementData(localPlayer, "player:faction") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz produkowa\196\135, poniewa\197\188 jest\197\155 na duty frakcji", "error")
        return
      end
      if saveProductionQuid then
        if click then
          return
        end
        click = true
        saveProductionQuid = false
        triggerServerEvent("evEwenciks_plants", resourceRoot, "wznowProdukcje", localPlayer)
      elseif getElementData(localPlayer, "player:plants_on") then
      else
        if click then
          return
        end
        possible = false
        for _FORV_5_, _FORV_6_ in ipairs(possibleDrugs) do
          if possible then
            return
          end
          if activeDrugs and activeDrugs[1] == _FORV_6_.name then
            click = true
            possible = true
            triggerServerEvent("evEwenciks_plants", resourceRoot, "startProduction", localPlayer, activeDrugs[1], activeDrugs[2])
          end
        end
        if not possible then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz tu produkowa\196\135 tego narkotyku", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 61 / _UPVALUE0_, _UPVALUE1_.y + 24 / _UPVALUE0_, 27 / _UPVALUE0_, 27 / _UPVALUE0_) and windows.main == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      showCursor(false)
      exports.ST_gui:destroyProgressbar()
    elseif isMouseIn(_UPVALUE1_.x + 350 / _UPVALUE0_, _UPVALUE1_.y + 360 / _UPVALUE0_, 180 / _UPVALUE0_, 61 / _UPVALUE0_) and windows.enter == true then
      triggerServerEvent("evEwenciks_plants", resourceRoot, "enter", localPlayer, (getElementData(localPlayer, "player:organization")))
    elseif isMouseIn(_UPVALUE1_.x + 629 / _UPVALUE0_, _UPVALUE1_.y + 140 / _UPVALUE0_, 30 / _UPVALUE0_, 30 / _UPVALUE0_) and windows.enter == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.enter = false
      showCursor(false)
      exports.ST_gui:destroyProgressbar()
    elseif isMouseIn(_UPVALUE1_.x + 350 / _UPVALUE0_, _UPVALUE1_.y + 350 / _UPVALUE0_, 180 / _UPVALUE0_, 61 / _UPVALUE0_) and windows.enterExit == true then
      if isElement(marker) then
        destroyElement(marker)
      end
      if isElement(markerExit) then
        destroyElement(markerExit)
      end
      fadeCamera(false)
      setTimer(function()
        triggerServerEvent("evEwenciks_plants", resourceRoot, "tppos", localPlayer, {
          lostPos[1],
          lostPos[2],
          lostPos[3],
          0
        })
      end, 1000, 1)
      setTimer(function()
        fadeCamera(true)
      end, 3000, 1)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.enterExit = false
      showCursor(false)
      exports.ST_gui:destroyProgressbar()
    elseif isMouseIn(_UPVALUE1_.x + 629 / _UPVALUE0_, _UPVALUE1_.y + 140 / _UPVALUE0_, 30 / _UPVALUE0_, 30 / _UPVALUE0_) and windows.enterExit == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      windows.enterExit = false
      showCursor(false)
      exports.ST_gui:destroyProgressbar()
    end
  end
end)
function table.search(_ARG_0_, _ARG_1_, _ARG_2_)
  for _FORV_6_, _FORV_7_ in ipairs(_ARG_0_) do
    if _FORV_7_.name == _ARG_1_ then
      table.returns = _FORV_7_.number
      return true
    end
  end
  return false
end
function table.removeValue(_ARG_0_, _ARG_1_)
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_0_) do
    if _FORV_6_.name == _ARG_1_ then
      table.remove(_ARG_0_, _FORV_5_)
      return _FORV_5_
    end
  end
  return false
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ then
    if source == marker then
      items_table = {}
      triggerServerEvent("evEwenciks_plants", resourceRoot, "showItems", localPlayer, (getElementData(localPlayer, "player:sid")))
      selectItemTable = {}
      izopropanol_select = 0
      azotanRteci_select = 0
      kwasOctowy_select = 0
      chlorekMetylu_select = 0
      dioksan_select = 0
      kanister_select = 0
      amfetamina_select = 0
      liscieKoki_select = 0
      indica_select = 0
      loadTexture()
      table_drugs = {
        {
          name = "Izopropanol",
          img = textures.isopropanol_icon,
          number = 0,
          id = 1
        },
        {
          name = "Azotan rteci",
          img = textures.mercury_nitrate_icon,
          number = 0,
          id = 2
        },
        {
          name = "Kwas octowy",
          img = textures.acetic_acid_icon,
          number = 0,
          id = 3
        },
        {
          name = "Chlorek metylu",
          img = textures.methyl_chloride_icon,
          number = 0,
          id = 4
        },
        {
          name = "Dioksan",
          img = textures.dioxane_icon,
          number = 0,
          id = 5
        },
        {
          name = "Kanister",
          img = textures.canister_icon,
          number = 0,
          id = 6
        },
        {
          name = "Amfetamina",
          img = textures.amphetamines_icon,
          number = 0,
          id = 7
        },
        {
          name = "Liscie koki",
          img = textures.coca_leaves_icon,
          number = 0,
          id = 8
        },
        {
          name = "Marihuana indica",
          img = textures.weed_icon,
          number = 0,
          id = 9
        }
      }
      table.sort(table_drugs, function(_ARG_0_, _ARG_1_)
        return _ARG_0_.id > _ARG_1_.id
      end)
      addEventHandler("onClientRender", root, window)
      windows.main = true
      showCursor(true)
      if getElementData(localPlayer, "player:plants_on") then
        exports.ST_gui:createProgressbar(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, 700 / _UPVALUE1_, 33 / _UPVALUE1_, loadingTime * 1000)
      end
    elseif source == markerExit then
      loadTexture()
      addEventHandler("onClientRender", root, window)
      windows.enterExit = true
      showCursor(true)
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "showItemsClient" then
    items_table = {}
    items_table = _ARG_1_
    izopropanol = 0
    azotanRteci = 0
    kwasOctowy = 0
    chlorekMetylu = 0
    dioksan = 0
    kanister = 0
    amfetamina = 0
    liscieKoki = 0
    indica = 0
    for _FORV_10_, _FORV_11_ in ipairs(_ARG_1_) do
      if _FORV_11_.name == "Izopropanol" then
        izopropanol = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Azotan rteci" then
        azotanRteci = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Kwas octowy" then
        kwasOctowy = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Chlorek metylu" then
        chlorekMetylu = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Dioksan" then
        dioksan = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Kanister" then
        kanister = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Amfetamina" then
        amfetamina = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Liscie koki" then
        liscieKoki = _FORV_11_.ilosc
      end
      if _FORV_11_.name == "Marihuana indica" then
        indica = _FORV_11_.ilosc
      end
    end
    table_drugs = {
      {
        name = "Izopropanol",
        img = textures.isopropanol_icon,
        number = izopropanol,
        id = 1
      },
      {
        name = "Azotan rteci",
        img = textures.mercury_nitrate_icon,
        number = azotanRteci,
        id = 2
      },
      {
        name = "Kwas octowy",
        img = textures.acetic_acid_icon,
        number = kwasOctowy,
        id = 3
      },
      {
        name = "Chlorek metylu",
        img = textures.methyl_chloride_icon,
        number = chlorekMetylu,
        id = 4
      },
      {
        name = "Dioksan",
        img = textures.dioxane_icon,
        number = dioksan,
        id = 5
      },
      {
        name = "Kanister",
        img = textures.canister_icon,
        number = kanister,
        id = 6
      },
      {
        name = "Amfetamina",
        img = textures.amphetamines_icon,
        number = amfetamina,
        id = 7
      },
      {
        name = "Liscie koki",
        img = textures.coca_leaves_icon,
        number = liscieKoki,
        id = 8
      },
      {
        name = "Marihuana indica",
        img = textures.weed_icon,
        number = indica,
        id = 9
      }
    }
    table.sort(table_drugs, function(_ARG_0_, _ARG_1_)
      return _ARG_0_.id > _ARG_1_.id
    end)
  elseif _ARG_0_ == "enterClient" then
    table_info_org = {}
    table_info_org = _ARG_2_
    table_area = {}
    table_area = _ARG_1_
    for _FORV_10_, _FORV_11_ in ipairs(table_info_org) do
      idDim = _FORV_11_.id
    end
    if _ARG_3_ then
      for _FORV_10_, _FORV_11_ in ipairs(_ARG_3_) do
        saveProductionQuid = {
          _FORV_11_.drugs,
          _FORV_11_.number,
          _FORV_11_.time
        }
      end
    end
    isArea = false
    for _FORV_10_, _FORV_11_ in ipairs(table_area) do
      if isArea then
        return
      end
      if _FORV_11_.id == idMarker then
        isArea = true
        fadeCamera(false)
        lostPos = {
          getElementPosition(localPlayer)
        }
        setTimer(function()
          triggerServerEvent("evEwenciks_plants", resourceRoot, "tppos", localPlayer, {
            5799.02,
            -1011.99,
            279.81,
            idDim
          })
        end, 1000, 1)
        setTimer(function()
          fadeCamera(true)
        end, 3000, 1)
        markerExit = createMarker(5799.1, -1015.71, 278.91, "cylinder", 1, 246, 255, 0, 255)
        setElementDimension(markerExit, idDim)
        marker = createMarker(5807.93, -1011.82, 278.91, "cylinder", 1, 255, 255, 255, 255)
        setElementDimension(marker, idDim)
        removeEventHandler("onClientRender", root, window)
        windows.enter = false
        showCursor(false)
        for _FORV_18_, _FORV_19_ in pairs(textures) do
          if isElement(_FORV_19_) then
            destroyElement(_FORV_19_)
          end
        end
        textures = {}
        possibleDrugs = {}
        table.insert(possibleDrugs, {name = "Kokaina"})
        table.insert(possibleDrugs, {name = "Amfetamina"})
        table.insert(possibleDrugs, {name = "MDMA"})
        table.insert(possibleDrugs, {name = "Mefedron"})
        table.insert(possibleDrugs, {name = "LSD"})
        triggerServerEvent("evEwenciks_plants", resourceRoot, "showItems", localPlayer, (getElementData(localPlayer, "player:sid")))
      end
    end
    if not isArea then
      exports.st_gui:showPlayerNotification("Twoja organizacja nie posiada odpowiedniej strefy", "error")
    end
  elseif _ARG_0_ == "startOk" then
    clientProduction = _ARG_1_
    loadingTime = clientProduction[3]
    exports.ST_gui:createProgressbar(_UPVALUE0_.x + 95 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, 700 / _UPVALUE1_, 33 / _UPVALUE1_, loadingTime * 1000)
    tick = getTickCount()
    tick1 = getTickCount()
    addEventHandler("onClientRender", root, renderTime)
    if clientProduction[1] == "Kokaina" then
      icon_render = dxCreateTexture(":ST_invetory/img/coco_icon.png")
    elseif clientProduction[1] == "Amfetamina" then
      icon_render = dxCreateTexture(":ST_invetory/img/amphetamines_icon.png")
    elseif clientProduction[1] == "MDMA" then
      icon_render = dxCreateTexture(":ST_invetory/img/mdma_icon.png")
    elseif clientProduction[1] == "Mefedron" then
      icon_render = dxCreateTexture(":ST_invetory/img/mephedrone_icon.png")
    elseif clientProduction[1] == "LSD" then
      icon_render = dxCreateTexture(":ST_invetory/img/lsd_icon.png")
    end
  end
end)
function loadTexture()
  textures = {
    background = dxCreateTexture(":ST_gui/img/background2.png"),
    cross = dxCreateTexture(":ST_gui/img/cross.png"),
    canister_icon = dxCreateTexture(":ST_invetory/img/canister_icon.png"),
    isopropanol_icon = dxCreateTexture(":ST_invetory/img/isopropanol_icon.png"),
    mercury_nitrate_icon = dxCreateTexture(":ST_invetory/img/mercury_nitrate_icon.png"),
    acetic_acid_icon = dxCreateTexture(":ST_invetory/img/acetic_acid_icon.png"),
    methyl_chloride_icon = dxCreateTexture(":ST_invetory/img/methyl_chloride_icon.png"),
    dioxane_icon = dxCreateTexture(":ST_invetory/img/dioxane_icon.png"),
    coca_leaves_icon = dxCreateTexture(":ST_invetory/img/coca_leaves_icon.png"),
    amphetamines_icon = dxCreateTexture(":ST_invetory/img/amphetamines_icon.png"),
    mdma_icon = dxCreateTexture(":ST_invetory/img/mdma_icon.png"),
    coco_icon = dxCreateTexture(":ST_invetory/img/coco_icon.png"),
    mephedrone_icon = dxCreateTexture(":ST_invetory/img/mephedrone_icon.png"),
    lsd_icon = dxCreateTexture(":ST_invetory/img/lsd_icon.png"),
    weed_icon = dxCreateTexture(":ST_invetory/img/weed_icon.png")
  }
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
function resulted(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if 0 <= _ARG_0_ then
    hours = math.floor(_ARG_0_ / 3600)
    mins = math.floor(_ARG_0_ / 60 - hours * 60)
    secs = math.floor(_ARG_0_ - hours * 3600 - mins * 60)
    if hours == 0 and mins == 0 then
      return "#ffbf00" .. secs .. " #ffffffsekund"
    elseif hours == 0 and mins >= 1 then
      return "#ffbf00" .. mins .. " #ffffffminut #ffbf00" .. secs .. " #ffffffsekund"
    else
      return "#ffbf00" .. hours .. " #ffffffgodzin #ffbf00" .. mins .. " #ffffffminut #ffbf00" .. secs .. " #ffffffsekund"
    end
  end
end
function resulted1(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if 0 <= _ARG_0_ then
    hours = math.floor(_ARG_0_ / 3600)
    mins = math.floor(_ARG_0_ / 60 - hours * 60)
    secs = math.floor(_ARG_0_ - hours * 3600 - mins * 60)
    if hours == 0 and mins == 0 then
      return "#ffbf0000#ffffff:" .. secs .. ""
    elseif hours == 0 and mins >= 1 then
      return "#ffbf00" .. mins .. "#ffffff:#ffbf00" .. secs .. " #ffffff"
    else
      return "#ffbf00" .. hours .. "#ffffff:#ffbf00" .. mins .. "#ffffff:#ffbf00" .. secs .. " #ffffff"
    end
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
getResourceName(getThisResource(), true, 95165999)
return
