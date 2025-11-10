windowPos = {
  x = guiGetScreenSize() / 2 - 882 / exports.st_gui:getInterfaceZoom() / 2,
  y = guiGetScreenSize() / 2 - 573 / exports.st_gui:getInterfaceZoom() / 2,
  w = 882 / exports.st_gui:getInterfaceZoom(),
  h = 573 / exports.st_gui:getInterfaceZoom()
}
windows = {background = false, category = false}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(windowPos.x + 9 / _UPVALUE0_, windowPos.y + 5 / _UPVALUE0_, windowPos.w - 18 / _UPVALUE0_, windowPos.h - 10 / _UPVALUE0_, 35 / _UPVALUE0_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / _UPVALUE0_, windowPos.y + 62 / _UPVALUE0_, 820 / _UPVALUE0_, 3 / _UPVALUE0_, 2 / _UPVALUE0_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(windowPos.x + 20 / _UPVALUE0_, windowPos.y + 80 / _UPVALUE0_, 70 / _UPVALUE0_, 400 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
    if isMouseIn(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 85 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) then
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 85 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 85 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 145 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) then
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 145 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 145 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 420 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) then
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 420 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / _UPVALUE0_, windowPos.y + 420 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "g\197\130\195\179wne" then
    dxDrawText("PRACA W RESTAURACJI", windowPos.x + 30 / _UPVALUE0_, windowPos.y - 121 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    dxDrawImage(windowPos.x + 105 / _UPVALUE0_, windowPos.y + 83 / _UPVALUE0_, 360 / _UPVALUE0_, 206 / _UPVALUE0_, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("OPIS", windowPos.x + 114 / _UPVALUE0_, windowPos.y + 420 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(220, 220, 220, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 110 / _UPVALUE0_, windowPos.y + 330 / _UPVALUE0_, 350 / _UPVALUE0_, 3 / _UPVALUE0_, 2 / _UPVALUE0_, tocolor(60, 60, 60, 230))
    dxDrawText("Zaczynasz prac\196\153 na stanowisku zmywaka w\np\195\179\197\186niejszym czasie mo\197\188esz awansowa\196\135 na\nwy\197\188sze stanowisko np. kelner lub dostawca.", windowPos.x + 114 / _UPVALUE0_, windowPos.y + 340 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
    dxDrawText("WYMAGANIA", windowPos.x + 114 / _UPVALUE0_, windowPos.y + 710 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(220, 220, 220, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 110 / _UPVALUE0_, windowPos.y + 475 / _UPVALUE0_, 350 / _UPVALUE0_, 3 / _UPVALUE0_, 2 / _UPVALUE0_, tocolor(60, 60, 60, 230))
    dxDrawText("- Brak", windowPos.x + 114 / _UPVALUE0_, windowPos.y + 810 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + 490 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) then
      dxDrawRoundedRectangle(windowPos.x + 490 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(32, 32, 32, 230))
      dxDrawImage(windowPos.x + 525 / _UPVALUE0_, windowPos.y + 120 / _UPVALUE0_, 75 / _UPVALUE0_, 75 / _UPVALUE0_, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
      dxDrawText("ZAKO\197\131CZ PRAC\196\152", windowPos.x + 770 / _UPVALUE0_, windowPos.y + 270 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(160, 160, 160, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 490 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
      dxDrawImage(windowPos.x + 525 / _UPVALUE0_, windowPos.y + 120 / _UPVALUE0_, 75 / _UPVALUE0_, 75 / _UPVALUE0_, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ZAKO\197\131CZ PRAC\196\152", windowPos.x + 770 / _UPVALUE0_, windowPos.y + 270 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(windowPos.x + 690 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) then
      dxDrawRoundedRectangle(windowPos.x + 690 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(32, 32, 32, 230))
      dxDrawImage(windowPos.x + 728 / _UPVALUE0_, windowPos.y + 120 / _UPVALUE0_, 75 / _UPVALUE0_, 75 / _UPVALUE0_, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
      dxDrawText("ROZPOCZNIJ PRAC\196\152", windowPos.x + 1170 / _UPVALUE0_, windowPos.y + 270 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(160, 160, 160, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(windowPos.x + 690 / _UPVALUE0_, windowPos.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
      dxDrawImage(windowPos.x + 728 / _UPVALUE0_, windowPos.y + 120 / _UPVALUE0_, 75 / _UPVALUE0_, 75 / _UPVALUE0_, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ROZPOCZNIJ PRAC\196\152", windowPos.x + 1170 / _UPVALUE0_, windowPos.y + 270 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    end
    dxDrawText("STATYSTYKI", windowPos.x, windowPos.y + 495 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_ + 500 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(220, 220, 220, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 650 / _UPVALUE0_, windowPos.y + 370 / _UPVALUE0_, 213 / _UPVALUE0_, 3 / _UPVALUE0_, 2 / _UPVALUE0_, tocolor(60, 60, 60, 230))
    for _FORV_11_, _FORV_12_ in ipairs(table_statistics) do
      dxDrawText("EXP: #ffb700" .. _FORV_12_.exp_restauracja .. [[

#b4b4b4EXP RANKING: #ffb700]] .. przecinek(_FORV_12_.exp1_restauracja) .. [[

#b4b4b4Zarobki: #ffb700]] .. przecinek(_FORV_12_.zarobek_restauracja) .. " #b4b4b4PLN\nPunkty ulepsze\197\132: #ffb700" .. _FORV_12_.punkty_restauracja .. "", windowPos.x, windowPos.y + 380 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_ + 500 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(180, 180, 180, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
    end
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(windowPos.x + 9 / _UPVALUE0_, windowPos.y + 5 / _UPVALUE0_, windowPos.w - 18 / _UPVALUE0_, windowPos.h - 10 / _UPVALUE0_, 35 / _UPVALUE0_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / _UPVALUE0_, windowPos.y + 62 / _UPVALUE0_, 820 / _UPVALUE0_, 3 / _UPVALUE0_, 2 / _UPVALUE0_, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", windowPos.x + 30 / _UPVALUE0_, windowPos.y - 117 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_13_, _FORV_14_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_21_, _FORV_22_ in ipairs(table_statistics) do
        expLevel = _FORV_22_.exp_restauracja
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_14_.exp and levelLevel >= _FORV_14_.level then
        rgb = 0
        if isMouseIn(windowPos.x + 30 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 90 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 350 / _UPVALUE0_, 150 / _UPVALUE0_) then
          rgb = rgb - 50
          rgb1 = -50
        else
          rgb = rgb
          rgb1 = 0
        end
        moneyADD = przecinek(_FORV_14_.money)
      else
        rgb = -100
        moneyADD = "?"
      end
      dxDrawRoundedRectangle(windowPos.x + 30 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 90 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 350 / _UPVALUE0_, 150 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
      dxDrawRoundedRectangle(windowPos.x + 45 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 105 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 120 / _UPVALUE0_, 120 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(30, 30, 30, 230))
      dxDrawImage(windowPos.x + 60 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 120 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 90 / _UPVALUE0_, 90 / _UPVALUE0_, _FORV_14_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(windowPos.x + 170 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 135 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 25 / _UPVALUE0_, 25 / _UPVALUE0_, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_14_.exp .. " | LEVEL: " .. _FORV_14_.level, windowPos.x + 200 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 93 / _UPVALUE0_ + 440 / _UPVALUE0_ * (1 + 1 - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawText("LEVEL " .. _FORV_14_.levelJob, windowPos.x + 175 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 30 / _UPVALUE0_ + 440 / _UPVALUE0_ * (1 + 1 - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_14_.exp and levelLevel >= _FORV_14_.level then
        dxDrawImage(windowPos.x + 125 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 110 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 35 / _UPVALUE0_, 35 / _UPVALUE0_, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(windowPos.x + 125 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), windowPos.y + 110 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 35 / _UPVALUE0_, 35 / _UPVALUE0_, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.category == "ulepszenia" then
    dxDrawText("ULEPSZENIA PRACY", windowPos.x + 30 / _UPVALUE0_, windowPos.y - 117 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_restauracja), windowPos.x, windowPos.y - 117 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_ + 485 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    end
    dxDrawScrollBar(#upgrades, windowPos.x + 858 / _UPVALUE0_, windowPos.y + 90 / _UPVALUE0_, 5 / _UPVALUE0_, 440 / _UPVALUE0_, _UPVALUE1_, _UPVALUE2_)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
      if _FORV_7_ >= _UPVALUE2_ and _FORV_7_ <= _UPVALUE3_ then
        xY = xY + 1
        dxDrawRoundedRectangle(windowPos.x + 110 / _UPVALUE0_, windowPos.y + 80 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 740 / _UPVALUE0_, 80 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(windowPos.x + 115 / _UPVALUE0_, windowPos.y + 85 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 70 / _UPVALUE0_, 70 / _UPVALUE0_, 15 / _UPVALUE0_, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", windowPos.x + 195 / _UPVALUE0_, windowPos.y - 7 / _UPVALUE0_ + 194 / _UPVALUE0_ * (xY - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, windowPos.x + 195 / _UPVALUE0_, windowPos.y + 65 / _UPVALUE0_ + 194 / _UPVALUE0_ * (xY - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(160, 160, 160, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 120 / _UPVALUE0_, windowPos.y + 90 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 60 / _UPVALUE0_, 60 / _UPVALUE0_, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", windowPos.x + 720 / _UPVALUE0_, windowPos.y + 40 / _UPVALUE0_ + 194 / _UPVALUE0_ * (xY - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(210, 210, 210, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", windowPos.x + 685 / _UPVALUE0_, windowPos.y + 95 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 150 / _UPVALUE0_, 50 / _UPVALUE0_, 255, 1)
        end
      end
    end
  end
  if windows.category == "mycieTalerza" then
    dxDrawImage(windowPos.x - 115 / _UPVALUE0_, windowPos.y - 35 / _UPVALUE0_, 1120 / _UPVALUE0_, 630 / _UPVALUE0_, texturesTracking.sink, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(windowPos.x - 30 / _UPVALUE0_, windowPos.y + 75 / _UPVALUE0_, 400 / _UPVALUE0_, 400 / _UPVALUE0_, texturesTracking.plate, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(windowPos.x - 30 / _UPVALUE0_, windowPos.y + 75 / _UPVALUE0_, 400 / _UPVALUE0_, 400 / _UPVALUE0_, texturesTracking.dirt_plate, 0, 0, 0, tocolor(255, 255, 255, plateAlpha), false)
    dxDrawImage(hitX, hitY, hitS, hitS, texturesTracking.crosshair, 0, 0, 0, tocolor(rCross, gCross, bCross, 255), false)
    for _FORV_9_ = 1, lastPlace - 1 do
      if 0 + 1 > 4 then
      end
      dxDrawImage(windowPos.x + 460 / _UPVALUE0_ + 120 / _UPVALUE0_ * (1 - 1), windowPos.y + 70 / _UPVALUE0_ + 115 / _UPVALUE0_ * (1 + 1 - 1), 110 / _UPVALUE0_, 110 / _UPVALUE0_, texturesTracking.plate, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(windowPos.x + 460 / _UPVALUE0_ + 120 / _UPVALUE0_ * (1 - 1), windowPos.y + 70 / _UPVALUE0_ + 115 / _UPVALUE0_ * (1 + 1 - 1), 110 / _UPVALUE0_, 110 / _UPVALUE0_, texturesTracking.dirt_plate, 0, 0, 0, tocolor(255, 255, 255, 200), false)
    end
    if isCursorShowing() then
      setCursorAlpha(0)
      pickaxeRX = 0
      if getKeyState("mouse1") then
        pickaxeRX = -30
      end
      dxDrawImage(getCursorPosition() * _UPVALUE4_, getCursorPosition() * _UPVALUE5_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, texturesTracking.sponge, pickaxeRX, 0, 0)
    end
  end
  if windows.category == "odbior pizzy kelner" then
    dxDrawRoundedRectangle(windowPos.x + 9 / _UPVALUE0_, windowPos.y + 5 / _UPVALUE0_, windowPos.w - 18 / _UPVALUE0_, windowPos.h - 10 / _UPVALUE0_, 35 / _UPVALUE0_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, texturesTracking.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    if selfRender.trzymamPizzeGui == true then
      xPizza, yPizza = getCursorPosition() * _UPVALUE4_ - 185 / _UPVALUE0_ / 2, getCursorPosition() * _UPVALUE5_ - 185 / _UPVALUE0_ / 2
    end
    dxDrawText("We\197\186 pizze i przeci\196\133gnij w wyznaczony cel", windowPos.x + 520 / _UPVALUE0_, windowPos.y - 125 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawText("KOSZT ZAM\195\147WIENIA: #00ad23" .. string.format("%.2f", selfRender.kosztZamowienia / 100) .. " #f0f0f0PLN", windowPos.x + 520 / _UPVALUE0_, windowPos.y + 460 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawImage(windowPos.x + 340 / _UPVALUE0_, windowPos.y + 360 / _UPVALUE0_, 200 / _UPVALUE0_, 200 / _UPVALUE0_, texturesTracking.pizza_clipart, 0, 0, 0, tocolor(0, 0, 0, 255), false)
    dxDrawImage(windowPos.x + 340 / _UPVALUE0_, windowPos.y + 100 / _UPVALUE0_, 200 / _UPVALUE0_, 200 / _UPVALUE0_, texturesTracking.pizza_clipart, 0, 0, 0, tocolor(255, 255, 255, 50), false)
    dxDrawImage(xPizza, yPizza, 200 / _UPVALUE0_, 200 / _UPVALUE0_, texturesTracking.pizza_clipart, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    if windowPos.x + 330 / _UPVALUE0_ < xPizza and windowPos.y + 350 / _UPVALUE0_ < yPizza and windowPos.x + 400 / _UPVALUE0_ > xPizza and windowPos.y + 410 / _UPVALUE0_ > yPizza and selfRender.trzymamPizzeGui == false then
      takePizza()
    end
  end
  if windows.category == "terminal" then
    if selfRender.wylosowanaKwestia == "kart\196\133, poprosz\196\153 o terminal" then
      dxDrawImage(windowPos.x + 500 / _UPVALUE0_, windowPos.y - 20 / _UPVALUE0_, 450 / _UPVALUE0_, 675 / _UPVALUE0_, texturesTracking.terminal_clipart, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ZAMOWIENIE NR. " .. selfRender.nrZamowienia .. "", windowPos.x + 1090 / _UPVALUE0_, windowPos.y + 210 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(10, 10, 10, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, true, false)
      dxDrawText("KOSZT:", windowPos.x + 1090 / _UPVALUE0_, windowPos.y + 270 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(10, 10, 10, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, true, false)
      dxDrawText(string.format("%.2f", selfRender.kosztZamowienia / 100) .. " PLN", windowPos.x + 1090 / _UPVALUE0_, windowPos.y + 320 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(10, 10, 10, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, true, false)
      dxDrawText("WPISZ CENE:", windowPos.x + 1090 / _UPVALUE0_, windowPos.y + 400 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(10, 10, 10, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, true, false)
      dxDrawText(string.format("%.2f", tonumber(selfRender.kosztEditBox) / 100) .. " PLN", windowPos.x + 1090 / _UPVALUE0_, windowPos.y + 480 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(10, 10, 10, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry20"), "center", "center", false, false, false, true, false)
      for _FORV_13_, _FORV_14_ in ipairs(selfRender.przyciskiTerminal) do
        if 3 < 0 + 1 then
        end
        if _FORV_14_[1] == "CLEAR" or _FORV_14_[1] == "ENTER" then
          dxDrawRoundedRectangle(windowPos.x + 644 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 384 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 78 / _UPVALUE0_, 32 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(80, 80, 80, 255), false)
          if _FORV_14_[1] == "CLEAR" then
            if isMouseIn(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_) then
              dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(158, 0, 0, 170), false)
            else
              dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(158, 0, 0, 255), false)
            end
          elseif isMouseIn(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_) then
            dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(5, 158, 0, 170), false)
          else
            dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 85 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 76 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(5, 158, 0, 255), false)
          end
          dxDrawText(_FORV_14_[1], windowPos.x + 1003 / _UPVALUE0_ + 170 / _UPVALUE0_ * (1 - 1), windowPos.y + 601 / _UPVALUE0_ + 68 / _UPVALUE0_ * (1 + 1 - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry12"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 644 / _UPVALUE0_ + 56 / _UPVALUE0_ * (1 - 1), windowPos.y + 384 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 52 / _UPVALUE0_, 32 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(80, 80, 80, 255), false)
          if isMouseIn(windowPos.x + 645 / _UPVALUE0_ + 56 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 50 / _UPVALUE0_, 30 / _UPVALUE0_) then
            dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 56 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 50 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(50, 50, 50, 170), false)
          else
            dxDrawRoundedRectangle(windowPos.x + 645 / _UPVALUE0_ + 56 / _UPVALUE0_ * (1 - 1), windowPos.y + 385 / _UPVALUE0_ + 34 / _UPVALUE0_ * (1 + 1 - 1), 50 / _UPVALUE0_, 30 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(50, 50, 50, 255), false)
          end
          dxDrawText(_FORV_14_[1], windowPos.x + 979 / _UPVALUE0_ + 112 / _UPVALUE0_ * (1 - 1), windowPos.y + 601 / _UPVALUE0_ + 68 / _UPVALUE0_ * (1 + 1 - 1), windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("cyfry15"), "center", "center", false, false, false, true, false)
        end
      end
    else
      dxDrawRoundedRectangle(windowPos.x + 9 / _UPVALUE0_, windowPos.y + 5 / _UPVALUE0_, windowPos.w - 18 / _UPVALUE0_, windowPos.h - 10 / _UPVALUE0_, 35 / _UPVALUE0_, tocolor(255, 187, 0, 200), false)
      dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
      dxDrawText("We\197\186 pieni\196\133dze od klienta i przeci\196\133gnij", windowPos.x + 520 / _UPVALUE0_, windowPos.y - 125 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("DO ZAP\197\129ATY:\n#00ad23" .. string.format("%.2f", selfRender.kosztZamowienia / 100) .. " #f0f0f0PLN", windowPos.x + 520 / _UPVALUE0_, windowPos.y + 250 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 50 / _UPVALUE0_, windowPos.y + 60 / _UPVALUE0_, 300 / _UPVALUE0_, 430 / _UPVALUE0_, 20 / _UPVALUE0_, tocolor(35, 35, 35, 200), false)
      dxDrawRoundedRectangle(windowPos.x + 535 / _UPVALUE0_, windowPos.y + 60 / _UPVALUE0_, 300 / _UPVALUE0_, 430 / _UPVALUE0_, 20 / _UPVALUE0_, tocolor(35, 35, 35, 200), false)
      exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", windowPos.x + 360 / _UPVALUE0_, windowPos.y + 493 / _UPVALUE0_, 170 / _UPVALUE0_, 55 / _UPVALUE0_, 255, 1)
      for _FORV_17_, _FORV_18_ in ipairs(selfRender.moneyPlatnosc) do
        if _FORV_18_[1] >= 1000 then
          dxDrawImage(windowPos.x + 100 / _UPVALUE0_, windowPos.y + 30 / _UPVALUE0_ + 110 / _UPVALUE0_ * (1 + 1 - 1), 200 / _UPVALUE0_, 100 / _UPVALUE0_, _FORV_18_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          if 0 + 1 > 4 then
          end
          dxDrawImage(windowPos.x + 70 / _UPVALUE0_ + 65 / _UPVALUE0_ * (1 - 1), windowPos.y + 70 / _UPVALUE0_ + 65 / _UPVALUE0_ * (1 + 1 + 1 - 1), 60 / _UPVALUE0_, 60 / _UPVALUE0_, _FORV_18_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      for _FORV_17_, _FORV_18_ in ipairs(selfRender.pieniadzeNaTacy) do
        selfRender.zebranePieniadze = selfRender.zebranePieniadze + _FORV_18_[1]
        if _FORV_18_[3] == 2 then
          dxDrawImage(_FORV_18_[4][1], _FORV_18_[4][2], 200 / _UPVALUE0_, 100 / _UPVALUE0_, _FORV_18_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          dxDrawImage(_FORV_18_[4][1], _FORV_18_[4][2], 60 / _UPVALUE0_, 60 / _UPVALUE0_, _FORV_18_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      if selfRender.zebranePieniadze == selfRender.kosztZamowienia then
        dxDrawText("ZEBRANE PIENI\196\132DZE:\n#00ad23" .. string.format("%.2f", selfRender.zebranePieniadze / 100) .. " #f0f0f0PLN", windowPos.x + 520 / _UPVALUE0_, windowPos.y + 450 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("ZEBRANE PIENI\196\132DZE:\n#940000" .. string.format("%.2f", selfRender.zebranePieniadze / 100) .. " #f0f0f0PLN", windowPos.x + 520 / _UPVALUE0_, windowPos.y + 450 / _UPVALUE0_, windowPos.x + 362 / _UPVALUE0_, windowPos.y + 204 / _UPVALUE0_, tocolor(255, 255, 255, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
      end
      selfRender.zebranePieniadze = 0
      xMoney, yMoney = 0, 0
      if selfRender.trzymamHajs then
        if selfRender.trzymamHajs[3] == 2 then
          xMoney, yMoney = getCursorPosition() * _UPVALUE4_ - 185 / _UPVALUE0_ / 2, getCursorPosition() * _UPVALUE5_ - 185 / _UPVALUE0_ / 2
          dxDrawImage(xMoney, yMoney, 200 / _UPVALUE0_, 100 / _UPVALUE0_, selfRender.trzymamHajs[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          xMoney, yMoney = getCursorPosition() * _UPVALUE4_ - 60 / _UPVALUE0_ / 2, getCursorPosition() * _UPVALUE5_ - 60 / _UPVALUE0_ / 2
          dxDrawImage(xMoney, yMoney, 60 / _UPVALUE0_, 60 / _UPVALUE0_, selfRender.trzymamHajs[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
      if windowPos.x + 535 / _UPVALUE0_ < xMoney and windowPos.y + 60 / _UPVALUE0_ < yMoney and windowPos.x + 835 / _UPVALUE0_ > xMoney and windowPos.y + 840 / _UPVALUE0_ > yMoney and selfRender.trzymamPizzeGui == false and selfRender.trzymamHajs then
        table.insert(selfRender.pieniadzeNaTacy, {
          selfRender.trzymamHajs[1],
          selfRender.trzymamHajs[2],
          selfRender.trzymamHajs[3],
          {xMoney, yMoney}
        })
        selfRender.trzymamHajs = false
      end
    end
  end
  if windows.category == "\197\130adunek pizzy pojazd" then
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("Kliknij na pizze by za\197\130adowa\196\135 pojazd.", windowPos.x + math.floor(225 / _UPVALUE0_), windowPos.y - math.floor(135 / _UPVALUE0_), windowPos.x + math.floor(362 / _UPVALUE0_), windowPos.y + math.floor(204 / _UPVALUE0_), tocolor(180, 180, 180, 255), 1 / _UPVALUE0_, exports.ST_gui:getGUIFont("normal22"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + math.floor(340 / _UPVALUE0_), windowPos.y + math.floor(200 / _UPVALUE0_), _UPVALUE6_.w + math.floor(150 / _UPVALUE0_), _UPVALUE6_.h + math.floor(150 / _UPVALUE0_)) then
      dxDrawImage(windowPos.x + math.floor(340 / _UPVALUE0_), windowPos.y + math.floor(200 / _UPVALUE0_), _UPVALUE6_.w + math.floor(150 / _UPVALUE0_), _UPVALUE6_.h + math.floor(150 / _UPVALUE0_), textures.pizza_clipart, 0, 0, 0, tocolor(180, 180, 180, 255), false)
    else
      dxDrawImage(windowPos.x + math.floor(340 / _UPVALUE0_), windowPos.y + math.floor(200 / _UPVALUE0_), _UPVALUE6_.w + math.floor(150 / _UPVALUE0_), _UPVALUE6_.h + math.floor(150 / _UPVALUE0_), textures.pizza_clipart, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
function windowRender1()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h - 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("ZMYWAK - LEVEL #00a118" .. levelJob1, _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfRender.time = selfRender.time + 1
  end
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfRender.time) .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfRender.exp, _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 0 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfRender.zarobek) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  for _FORV_10_, _FORV_11_ in ipairs(selfRender.trackingPos) do
    if getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) and getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) then
      dxDrawImage(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.sponge, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
      if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText("ABY ZACZ\196\132\196\134 ZMYWA\196\134 KLIKNIJ", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
        if getKeyState("q") and not clickC then
          clickC = true
          if windows.category == false then
            addEventHandler("onClientRender", root, window)
            lastTickCount = getTickCount()
            windows.category = "mycieTalerza"
            cleanPlate()
            lastPlace = math.random(3, 7)
            showCursor(true)
          end
          setTimer(function()
            clickC = false
          end, 1500, 1)
        end
      end
    end
  end
end
function windowRender2()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h - 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("KELNER - LEVEL #00a118" .. levelJob1, _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfRender.time = selfRender.time + 1
  end
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfRender.time) .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfRender.exp, _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 0 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfRender.zarobek) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  if selfRender.trackingPosPizza then
    if getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) and getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) then
      dxDrawImage(getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.client_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 2, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200))
      if 2 > math.floor(getDistanceBetweenPoints3D(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3], getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText("ABY ODDA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.trackingPosPizza[1], selfRender.trackingPosPizza[2], selfRender.trackingPosPizza[3] + 0.1, 200))
        if getKeyState("q") and not clickC then
          clickC = true
          selfRender.trackingPosPizza = false
          selfRender.wylosowanaKwestia = math.random(1, 2)
          if selfRender.wylosowanaKwestia == 1 then
            selfRender.wylosowanaKwestia = "got\195\179wk\196\133, prosz\196\153 tu s\196\133 pieni\196\133dze"
          elseif selfRender.wylosowanaKwestia == 2 then
            selfRender.wylosowanaKwestia = "kart\196\133, poprosz\196\153 o terminal"
          end
          setPedAnimation(localPlayer, "dealer", "shop_pay")
          setElementData(pizzaCustomerText, "name", "P\197\130ac\196\153 " .. selfRender.wylosowanaKwestia .. ".")
          setElementDimension(pizzaCustomerText, 1)
          triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
          setElementFrozen(localPlayer, true)
          setTimer(function()
            for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
              if _FORV_4_.ulepszenie_terminal_restauracja == 1 then
                giveMoneyKelner()
              else
                if selfRender.wylosowanaKwestia == "got\195\179wk\196\133, prosz\196\153 tu s\196\133 pieni\196\133dze" then
                  textures = {
                    background = dxCreateTexture(":ST_gui/img/background2.png"),
                    gr1 = dxCreateTexture("img/1gr.png"),
                    zl1 = dxCreateTexture("img/1zl.png"),
                    gr10 = dxCreateTexture("img/10gr.png"),
                    zl5 = dxCreateTexture("img/5zl.png"),
                    zl10 = dxCreateTexture("img/10zl.png"),
                    zl50 = dxCreateTexture("img/50zl.png"),
                    zl100 = dxCreateTexture("img/100zl.png")
                  }
                  selfRender.moneyPlatnosc = {
                    {
                      1,
                      textures.gr1
                    },
                    {
                      10,
                      textures.gr10
                    },
                    {
                      100,
                      textures.zl1
                    },
                    {
                      500,
                      textures.zl5
                    },
                    {
                      1000,
                      textures.zl10
                    },
                    {
                      5000,
                      textures.zl50
                    },
                    {
                      10000,
                      textures.zl100
                    }
                  }
                  selfRender.pieniadzeNaTacy = {}
                  selfRender.zebranePieniadze = 0
                end
                showCursor(true)
                addEventHandler("onClientRender", root, window)
                windows.category = "terminal"
              end
            end
            clickC = false
          end, 1500, 1)
        end
      end
    end
  else
    for _FORV_10_, _FORV_11_ in ipairs(selfRender.trackingPos) do
      if getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) and getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) then
        dxDrawImage(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.pizza_clipart, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
        if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 96 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 29 / _UPVALUE1_, 192 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 95 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 30 / _UPVALUE1_, 190 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
          dxDrawText("ABY ODEBRA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.1, 200))
          if getKeyState("q") and not clickC then
            clickC = true
            if windows.category == false then
              setPedAnimation(cook, "carry", "liftup")
              windows.category = "odbior pizzy kelner"
              setTimer(function()
                showCursor(true)
                addEventHandler("onClientRender", root, window)
                selfRender.kosztEditBox = "0"
                selfRender.kosztZamowienia = math.random(500, 20000)
                selfRender.nrZamowienia = math.random(1, 30)
                xPizza, yPizza = windowPos.x + 340 / _UPVALUE0_, windowPos.y + 100 / _UPVALUE0_
                setPedAnimation(cook)
                setElementPosition(cook, 849.93, -2830.99, 544.8)
              end, 1600, 1)
            end
            setTimer(function()
              clickC = false
            end, 1500, 1)
          end
        end
      end
    end
  end
end
function windowRender3()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("DOSTAWCA - LEVEL #00a118" .. levelJob1, _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfRender.time = selfRender.time + 1
  end
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfRender.time) .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. selfRender.exp, _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(selfRender.zarobek) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  dxDrawText("" .. selfRender.trackingText .. "", _UPVALUE0_.x, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  if selfRender.odbiorZamowienia then
    dxDrawText("ZA\197\129ADOWANE ZAMOWIENIA: #ffbf00" .. selfRender.zaladowaneZamowienia .. " #f0f0f0/ #ffbf00" .. selfRender.maxLiczbaZamowien .. "", _UPVALUE0_.x, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  end
  if selfRender.odbiorZamowienia and getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) and getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) then
    dxDrawImage(getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.pizza_clipart, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 2, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - 96 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 29 / _UPVALUE1_, 192 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - 95 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 30 / _UPVALUE1_, 190 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawText("ABY ODEBRA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfRender.odbiorZamowienia[1], selfRender.odbiorZamowienia[2], selfRender.odbiorZamowienia[3] + 0.1, 200))
      if getKeyState("q") and not clickC then
        clickC = true
        if windows.category == false and not selfRender.maPizze then
          if getPedOccupiedVehicle(localPlayer) then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz siedzie\196\135 w poje\197\186dzie", "error")
          else
            selfRender.nrZamowienia = math.random(1, 30)
            selfRender.kosztZamowienia = math.random(500, 20000)
            showCursor(true)
            addEventHandler("onClientRender", root, window)
            windows.category = "odbior pizzy kelner"
            xPizza, yPizza = windowPos.x + 340 / _UPVALUE1_, windowPos.y + 100 / _UPVALUE1_
            selfRender.maPizze = true
          end
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if trackingVehicleStatus and getScreenFromWorldPosition(getElementPosition(colVehTracking)) and getScreenFromWorldPosition(getElementPosition(colVehTracking)) then
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 25 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.scooter_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 2, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) .. "m", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
    if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(colVehTracking))) then
      if selfRender.odbiorZamowienia then
        if selfRender.maPizze then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 96 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 29 / _UPVALUE1_, 192 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 95 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 30 / _UPVALUE1_, 190 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
          dxDrawText("ABY SCHOWA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 10 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 138 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
        end
      else
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 96 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 29 / _UPVALUE1_, 192 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 95 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 30 / _UPVALUE1_, 190 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        if selfRender.maPizze then
          dxDrawText("ABY SCHOWA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
        else
          dxDrawText("ABY WYJ\196\132\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 93 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(colVehTracking)) - 10 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(colVehTracking)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + 138 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(colVehTracking)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(colVehTracking)))
      end
      if getKeyState("q") and not clickC then
        clickC = true
        if selfRender.odbiorZamowienia then
          if selfRender.maPizze then
            selfRender.maPizze = false
            triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
            selfRender.zaladowaneZamowienia = selfRender.zaladowaneZamowienia + 1
            insertPackPos()
            blokadaChodzenia(localPlayer, false)
            if selfRender.zaladowaneZamowienia == selfRender.maxLiczbaZamowien then
              selfRender.zaladowaneZamowienia = 0
              selfRender.trackingText = "DOSTARCZ ZAM\195\147WIENIA #ffbf00" .. selfRender.zaladowaneZamowienia .. " #f0f0f0/ #ffbf00" .. selfRender.maxLiczbaZamowien .. ""
              exports.st_gui:showPlayerNotification("Zapakowano wszystkie zam\195\179wienia do pojazdu", "success")
              selfRender.odbiorZamowienia = false
              for _FORV_16_, _FORV_17_ in ipairs(selfRender.zamowieniaTable) do
                clientsPed[_FORV_17_[1]] = createPed(skins[math.random(1, #skins)], _FORV_17_[2], _FORV_17_[3], _FORV_17_[4], _FORV_17_[5])
                clientsBlip[_FORV_17_[1]] = createBlip(_FORV_17_[2], _FORV_17_[3], _FORV_17_[4], 41, 2, 255, 255, 255, 255, 0, 9999999)
                setElementFrozen(clientsPed[_FORV_17_[1]], true)
              end
            end
          end
        elseif selfRender.maPizze then
          selfRender.maPizze = false
          triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
          blokadaChodzenia(localPlayer, false)
        else
          selfRender.maPizze = true
          triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "givePizza", localPlayer)
          blokadaChodzenia(localPlayer, true)
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if not selfRender.odbiorZamowienia then
    for _FORV_10_, _FORV_11_ in ipairs(selfRender.zamowieniaTable) do
      if selfRender.idTable ~= _FORV_10_ and getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) and getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) then
        dxDrawImage(getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, texturesTracking.client_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200))
        if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4], getElementPosition(localPlayer))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - 96 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 29 / _UPVALUE1_, 192 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - 95 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 30 / _UPVALUE1_, 190 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
          dxDrawText("ABY ODDA\196\134 ZAM\195\147WIENIE KLIKNIJ", getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
          dxDrawText("Q", getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1, 200))
          if getKeyState("q") and not clickC then
            clickC = true
            if selfRender.maPizze and isElement(clientsBlip[_FORV_11_[1]]) then
              selfRender.idTable = _FORV_10_
              selfRender.kosztEditBox = "0"
              selfRender.kosztZamowienia = math.random(500, 20000)
              selfRender.nrZamowienia = math.random(1, 30)
              selfRender.wylosowanaKwestia = math.random(1, 2)
              if selfRender.wylosowanaKwestia == 1 then
                selfRender.wylosowanaKwestia = "got\195\179wk\196\133, prosz\196\153 tu s\196\133 pieni\196\133dze"
              elseif selfRender.wylosowanaKwestia == 2 then
                selfRender.wylosowanaKwestia = "kart\196\133, poprosz\196\153 o terminal"
              end
              pizzaCustomerText = createElement("text")
              setElementPosition(pizzaCustomerText, _FORV_11_[2], _FORV_11_[3], _FORV_11_[4] + 0.1)
              setPedAnimation(localPlayer, "dealer", "shop_pay")
              setElementData(pizzaCustomerText, "name", "P\197\130ac\196\153 " .. selfRender.wylosowanaKwestia .. ".")
              triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "destroyPizza", localPlayer)
              blokadaChodzenia(localPlayer, false)
              setElementFrozen(localPlayer, true)
              setTimer(function()
                for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
                  if _FORV_4_.ulepszenie_terminal_restauracja == 1 then
                    giveMoneyDostawca(true)
                  else
                    if selfRender.wylosowanaKwestia == "got\195\179wk\196\133, prosz\196\153 tu s\196\133 pieni\196\133dze" then
                      textures = {
                        background = dxCreateTexture(":ST_gui/img/background2.png"),
                        gr1 = dxCreateTexture("img/1gr.png"),
                        zl1 = dxCreateTexture("img/1zl.png"),
                        gr10 = dxCreateTexture("img/10gr.png"),
                        zl5 = dxCreateTexture("img/5zl.png"),
                        zl10 = dxCreateTexture("img/10zl.png"),
                        zl50 = dxCreateTexture("img/50zl.png"),
                        zl100 = dxCreateTexture("img/100zl.png")
                      }
                      selfRender.moneyPlatnosc = {
                        {
                          1,
                          textures.gr1
                        },
                        {
                          10,
                          textures.gr10
                        },
                        {
                          100,
                          textures.zl1
                        },
                        {
                          500,
                          textures.zl5
                        },
                        {
                          1000,
                          textures.zl10
                        },
                        {
                          5000,
                          textures.zl50
                        },
                        {
                          10000,
                          textures.zl100
                        }
                      }
                      selfRender.pieniadzeNaTacy = {}
                      selfRender.zebranePieniadze = 0
                    end
                    showCursor(true)
                    addEventHandler("onClientRender", root, window)
                    windows.category = "terminal"
                  end
                end
              end, 1500, 1)
            end
            setTimer(function()
              clickC = false
            end, 1500, 1)
          end
        end
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.category == "odbior pizzy kelner" then
    if isMouseIn(xPizza, yPizza, _UPVALUE0_.w + 150 / _UPVALUE1_, _UPVALUE0_.h + 150 / _UPVALUE1_) then
      selfRender.trzymamPizzeGui = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" and (windows.category == "odbior pizzy kelner" or windows.category == "terminal") then
    selfRender.trzymamPizzeGui = false
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "mycieTalerza" and isMouseIn(hitX, hitY, hitS, hitS) then
      if getTickCount() - lastTickCount > 300 then
        rCross = math.random(0, 255)
        gCross = math.random(0, 255)
        bCross = math.random(0, 255)
        cleanPlate()
        lastTickCount = getTickCount()
      else
        return
      end
    end
    if windows.category == "terminal" then
      if selfRender.wylosowanaKwestia == "kart\196\133, poprosz\196\153 o terminal" then
        for _FORV_7_, _FORV_8_ in ipairs(selfRender.przyciskiTerminal) do
          if 0 + 1 > 3 then
          end
          if _FORV_8_[1] == "CLEAR" or _FORV_8_[1] == "ENTER" then
            offsetX = 85 / _UPVALUE1_ * (1 - 1)
          else
            offsetX = 56 / _UPVALUE1_ * (1 - 1)
          end
          if isMouseIn(windowPos.x + 645 / _UPVALUE1_ + offsetX, windowPos.y + 385 / _UPVALUE1_ + 34 / _UPVALUE1_ * (1 + 1 - 1), 50 / _UPVALUE1_, 30 / _UPVALUE1_) then
            if _FORV_8_[1] == "*" or _FORV_8_[1] == "#" then
              return
            end
            if _FORV_8_[1] == "CLEAR" then
              selfRender.kosztEditBox = "0"
            elseif _FORV_8_[1] == "ENTER" then
              if tonumber(selfRender.kosztEditBox) == selfRender.kosztZamowienia then
                if levelJob1 == 2 then
                  giveMoneyKelner()
                else
                  giveMoneyDostawca(true)
                end
              else
                if levelJob1 ~= 2 then
                  giveMoneyDostawca(false)
                end
                setElementFrozen(localPlayer, false)
                exports.st_gui:showPlayerNotification("Kwota nie jest prawid\197\130owa", "error")
                if isElement(pizzaCustomerText) then
                  destroyElement(pizzaCustomerText)
                  pizzaCustomerText = nil
                end
                setElementPosition(localPlayer, getElementPosition(localPlayer))
              end
            end
          end
          if not isMouseIn(windowPos.x + 645 / _UPVALUE1_ + offsetX, windowPos.y + 385 / _UPVALUE1_ + 34 / _UPVALUE1_ * (1 + 1 - 1), 50 / _UPVALUE1_, 30 / _UPVALUE1_) or _FORV_8_[1] == "*" or _FORV_8_[1] == "#" or _FORV_8_[1] == "CLEAR" or _FORV_8_[1] == "ENTER" then
          else
            if tonumber(selfRender.kosztEditBox) > 100000 then
              return
            end
            selfRender.kosztEditBox = string.insert(selfRender.kosztEditBox, _FORV_8_[1], 6)
          end
        end
      else
        for _FORV_7_, _FORV_8_ in ipairs(selfRender.pieniadzeNaTacy) do
          if _FORV_8_[1] >= 1000 then
            if isMouseIn(_FORV_8_[4][1], _FORV_8_[4][2], 200 / _UPVALUE1_, 100 / _UPVALUE1_) then
              table.remove(selfRender.pieniadzeNaTacy, _FORV_7_)
            end
          elseif isMouseIn(_FORV_8_[4][1], _FORV_8_[4][2], 60 / _UPVALUE1_, 60 / _UPVALUE1_) then
            table.remove(selfRender.pieniadzeNaTacy, _FORV_7_)
          end
        end
        for _FORV_9_, _FORV_10_ in ipairs(selfRender.moneyPlatnosc) do
          if _FORV_10_[1] >= 1000 then
            if isMouseIn(windowPos.x + 100 / _UPVALUE1_, windowPos.y + 30 / _UPVALUE1_ + 110 / _UPVALUE1_ * (1 + 1 - 1), 200 / _UPVALUE1_, 100 / _UPVALUE1_) then
              selfRender.trzymamHajs = {
                _FORV_10_[1],
                _FORV_10_[2],
                2
              }
              selfRender.trzymamPizzeGui = true
            end
          else
            if 0 + 1 > 4 then
            end
            if isMouseIn(windowPos.x + 70 / _UPVALUE1_ + 65 / _UPVALUE1_ * (1 - 1), windowPos.y + 70 / _UPVALUE1_ + 65 / _UPVALUE1_ * (1 + 1 + 1 - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_) then
              selfRender.trzymamHajs = {
                _FORV_10_[1],
                _FORV_10_[2],
                1
              }
              selfRender.trzymamPizzeGui = true
            end
          end
        end
        if isMouseIn(windowPos.x + 360 / _UPVALUE1_, windowPos.y + 493 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_) then
          for _FORV_9_, _FORV_10_ in ipairs(selfRender.pieniadzeNaTacy) do
            selfRender.zebranePieniadze = selfRender.zebranePieniadze + _FORV_10_[1]
          end
          if selfRender.zebranePieniadze == selfRender.kosztZamowienia then
            showCursor(false)
            removeEventHandler("onClientRender", root, window)
            windows.category = false
            for _FORV_9_, _FORV_10_ in pairs(textures) do
              if isElement(_FORV_10_) then
                destroyElement(_FORV_10_)
              end
            end
            textures = {}
            if levelJob1 == 2 then
              giveMoneyKelner()
            else
              giveMoneyDostawca(true)
            end
          else
            if levelJob1 ~= 2 then
              giveMoneyDostawca(false)
            end
            showCursor(false)
            removeEventHandler("onClientRender", root, window)
            windows.category = false
            for _FORV_9_, _FORV_10_ in pairs(textures) do
              if isElement(_FORV_10_) then
                destroyElement(_FORV_10_)
              end
            end
            textures = {}
            setElementFrozen(localPlayer, false)
            exports.st_gui:showPlayerNotification("Kwota nie jest prawid\197\130owa", "error")
            if isElement(pizzaCustomerText) then
              destroyElement(pizzaCustomerText)
              pizzaCustomerText = nil
            end
            setElementPosition(localPlayer, getElementPosition(localPlayer))
          end
        end
      end
    end
    if windows.category == "level" then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(windowPos.x + 30 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), windowPos.y + 90 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 350 / _UPVALUE1_, 150 / _UPVALUE1_) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          startJob(_FORV_8_.levelJob)
          levelJob1 = _FORV_8_.levelJob
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153!", "success")
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          windows.category = false
          windows.background = false
          showCursor(false)
          for _FORV_14_, _FORV_15_ in pairs(textures) do
            if isElement(_FORV_15_) then
              destroyElement(_FORV_15_)
            end
          end
          textures = {}
          setCursorAlpha(255)
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        if _FORV_5_ >= _UPVALUE2_ and _FORV_5_ <= _UPVALUE3_ then
          xY = xY + 1
          if isMouseIn(windowPos.x + 685 / _UPVALUE1_, windowPos.y + 95 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
            triggerServerEvent("evEwenciks_ageyrhfgerds", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
          end
        end
      end
    end
    if isMouseIn(windowPos.x + 29 / _UPVALUE1_, windowPos.y + 85 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(windowPos.x + 29 / _UPVALUE1_, windowPos.y + 145 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and windows.background == true then
      windows.category = "ulepszenia"
    elseif isMouseIn(windowPos.x + 29 / _UPVALUE1_, windowPos.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.category = false
      windows.background = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      setCursorAlpha(255)
    elseif isMouseIn(windowPos.x + 690 / _UPVALUE1_, windowPos.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Restauracja" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getPedOccupiedVehicle(localPlayer) then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz siedzie\196\135 w poje\197\186dzie!!", "error")
        return
      end
      windows.background = false
      windows.category = "level"
      exports.st_gui:showPlayerNotification("Wybierz level", "info")
      if getElementData(localPlayer, "player:level") then
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "",
            level = 0,
            img = textures.level1_icon,
            money = 1800
          },
          {
            levelJob = 2,
            exp = 0,
            moneyJob = "",
            level = 0,
            img = textures.level2_icon,
            money = 2000
          },
          {
            levelJob = 3,
            exp = 0,
            moneyJob = "",
            level = 0,
            img = textures.level3_icon,
            money = 2400
          },
          {
            levelJob = 4,
            exp = 0,
            moneyJob = "",
            level = 0,
            img = textures.level4_icon,
            money = 2700
          }
        }
      else
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "",
            level = 0,
            img = textures.level1_icon,
            money = 1800
          },
          {
            levelJob = 2,
            exp = 50,
            moneyJob = "",
            level = 10,
            img = textures.level2_icon,
            money = 2000
          },
          {
            levelJob = 3,
            exp = 500,
            moneyJob = "",
            level = 20,
            img = textures.level3_icon,
            money = 2400
          },
          {
            levelJob = 4,
            exp = 1000,
            moneyJob = "",
            level = 40,
            img = textures.level4_icon,
            money = 2700
          }
        }
      end
    elseif isMouseIn(windowPos.x + 490 / _UPVALUE1_, windowPos.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) and windows.category == "g\197\130\195\179wne" then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Restauracja" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      endJobAll()
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      setCursorAlpha(255)
    end
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.category == "ulepszenia" or windows.background == true then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and (windows.category == "ulepszenia" or windows.background == true) then
    if _UPVALUE0_ >= #upgrades then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 1
  end
end
getResourceName(getThisResource(), true, 659956191)
return
