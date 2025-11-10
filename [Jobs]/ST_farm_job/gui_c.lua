screenW, screenH = guiGetScreenSize()
px, py = screenW / 1920, screenH / 1080
zoom = exports.st_gui:getInterfaceZoom()
table_statistics = {}
windows = {
  category = false,
  background = false,
  endJob = false,
  wyborPlonow = false
}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 205 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.category == "g\197\130\195\179wne" then
      dxDrawText("FARMER", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Zasad\197\186 i zbierz swoje plony, a nast\196\153pnie\nodwie\197\186 uzyskane baloty do wskazanego\npunktu.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Level postaci: 5", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / zoom, _UPVALUE0_.x + 362 / zoom + 500 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("EXP: #ffbf00" .. _FORV_8_.exp_farmer .. [[

#b4b4b4EXP RANKING: #ffbf00]] .. _FORV_8_.exp1_farmer .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_farmer .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobek_farmer) .. "\n#b4b4b4Wyp\197\130ata do odebrania: #00ad23" .. przecinek(_FORV_8_.wyplata_farmer) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 495 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_farmer), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.name == "Wi\196\153cej plon\195\179w (#c77100" .. _FORV_8_.status .. "#9e9e9e/#c771003#9e9e9e)" then
          if _FORV_8_.status == 3 then
            dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          else
            exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
          end
        elseif _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
    if windows.category == "wyp\197\130ata" then
      dxDrawText("WYP\197\129ATA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 164 / zoom, 562 / zoom, 82 / zoom, 15 / zoom, tocolor(40, 150, 40, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 165 / zoom, 560 / zoom, 80 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(134, 184, 1, 255))
      if isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 559 / zoom, _UPVALUE0_.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(44, 150, 226, 255))
      if isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("TWOJA WYP\197\129ATA DO ODEBRANIA", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_farmer) .. " #ffffffPLN", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 178 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_farmer) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 242 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_farmer
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        rgb = 0
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) then
          rgb = rgb - 50
          rgb1 = -50
        else
          rgb = rgb
          rgb1 = 0
        end
        moneyADD = przecinek(_FORV_10_.money)
      else
        rgb = -100
        moneyADD = "?"
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 29 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 89 / zoom + 220 / zoom * (1 + 1 - 1), 352 / zoom, 152 / zoom, 15 / zoom, tocolor(60 - rgb, 60 - rgb, 60 - rgb, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 105 / zoom + 220 / zoom * (1 + 1 - 1), 120 / zoom, 120 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 60 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 120 / zoom + 220 / zoom * (1 + 1 - 1), 90 / zoom, 90 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 135 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_10_.exp .. " | LEVEL: " .. _FORV_10_.level, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 93 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("" .. _FORV_10_.money, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 200 + rgb), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.wyborPlonow == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ ILO\197\154\196\134 PLON\195\147W", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("Wybierz ilos\196\135 plon\195\179w", _UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("wybrana ilo\197\155\196\135: #ffbf00" .. math.floor(ilePunktowWybor) .. " #ffffff/ #ffbf00" .. maxPunktowWybor .. "", _UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 260 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 280 / zoom, _UPVALUE0_.w - 200 / zoom, 20 / zoom, 8 / zoom, tocolor(35, 35, 35, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 280 / zoom, (_UPVALUE0_.w - 200 / zoom) / maxPunktowWybor * ilePunktowWybor / zoom, 20 / zoom, 8 / zoom, tocolor(255, 187, 0, 200), false)
    if isDragging then
      dxDrawCircle(_UPVALUE0_.x + 100 / zoom + (_UPVALUE0_.w - 200 / zoom) / maxPunktowWybor * ilePunktowWybor / zoom, _UPVALUE0_.y + 290 / zoom, 14 / zoom, 0, 360, tocolor(170, 170, 170, 255))
    else
      dxDrawCircle(_UPVALUE0_.x + 100 / zoom + (_UPVALUE0_.w - 200 / zoom) / maxPunktowWybor * ilePunktowWybor / zoom, _UPVALUE0_.y + 290 / zoom, 14 / zoom, 0, 360, tocolor(255, 255, 255, 255))
    end
    exports.ST_buttons:dxCreateButton("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 380 / zoom, 190 / zoom, 50 / zoom, 255, 1)
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 99 / zoom, _UPVALUE0_.w - 398 / zoom, _UPVALUE0_.h - 198 / zoom, 25 / zoom, tocolor(255, 187, 0, 200))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 100 / zoom, _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.h - 200 / zoom, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134\nPRAC\196\152?", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 120 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom, 255, 1)
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    self.time = self.time + 1
    self.timeSave = self.timeSave + 1
  end
  if isElementWithinColShape(localPlayer, shape) then
    if kombajn then
      self.textInfoText = "Zetnij #ffbf00" .. ilePunktow .. " #ffffffplon\195\179w"
      self.textInfoText1 = "Post\196\153p #ffbf00" .. self.scietePlony .. "#ffffff/#ffbf00" .. ilePunktow .. ""
      if self.scietePlony >= ilePunktow then
        for _FORV_7_, _FORV_8_ in ipairs(plonTable) do
          table.remove(plonTable, _FORV_7_)
        end
        plonMarker = {}
        plon = {}
        kombajn = false
        widlak = true
        for _FORV_7_, _FORV_8_ in ipairs(balotTable) do
          self.blipP[_FORV_8_.id] = createBlip(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], 0, 1, 255, 191, 0)
        end
        setTimer(function()
          triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "destroyVehicle", localPlayer)
        end, 500, 1)
        setTimer(function()
          triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "createVehicle", localPlayer, true)
        end, 1000, 1)
      end
    elseif widlak then
      if maBalot then
        self.textInfoText = "Oddaj balot do wyznaczonego punktu"
        self.textInfoText1 = ""
      else
        self.textInfoText = "Zbierz #ffbf00" .. ilePunktow .. " #ffffffbalot\195\179w"
        self.textInfoText1 = "Post\196\153p #ffbf00" .. self.zebraneBaloty .. "#ffffff/#ffbf00" .. ilePunktow .. ""
      end
    else
      mozeZasiac = true
      if #plonTable > 0 then
        for _FORV_10_, _FORV_11_ in ipairs(plonTable) do
          if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 20 and not timerZasiania then
            mozeZasiac = false
          end
        end
      end
      if mozeZasiac then
        if plony == 0 then
          self.textInfoText = "Kliknij przycisk \"#ffbf00E#ffffff\" aby zasia\196\135 plon"
          self.textInfoText1 = ""
        else
          self.textInfoText = "Zasiej #ffbf00" .. ilePunktow .. " #ffffffplon\195\179w"
          self.textInfoText1 = "Post\196\153p #ffbf00" .. plony .. "#ffffff/#ffbf00" .. ilePunktow .. ""
        end
      else
        self.textInfoText = "#d14b4bNie mo\197\188esz sia\196\135 zbyt blisko swoich plon\195\179w"
        self.textInfoText1 = ""
      end
      if plony >= ilePunktow then
        plony = 0
        self.scietePlony = 0
        exports.st_gui:showPlayerNotification("Zetnij \197\188niwa", "info")
        markerDestroyPlon = {}
        for _FORV_10_, _FORV_11_ in ipairs(plonTable) do
          if plonMarker[_FORV_11_.id] then
            destroyElement(plonMarker[_FORV_11_.id])
          end
          markerDestroyPlon[_FORV_11_.id] = createMarker(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] - 5.95, "cylinder", 5, 255, 255, 255, 255)
          self.blipP[_FORV_11_.id] = createBlip(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], 0, 1, 255, 191, 0)
          addEventHandler("onClientMarkerHit", markerDestroyPlon[_FORV_11_.id], function(_ARG_0_, _ARG_1_)
            if (_ARG_1_ or getElementType(_ARG_0_) ~= "player" or _ARG_0_ ~= localPlayer) and _ARG_0_ == _UPVALUE0_.player and kombajn then
              if plon[_UPVALUE0_.id] then
                destroyElement(plon[_UPVALUE0_.id])
              end
              if markerDestroyPlon[_UPVALUE0_.id] then
                destroyElement(markerDestroyPlon[_UPVALUE0_.id])
              end
              if self.blipP[_UPVALUE0_.id] then
                destroyElement(self.blipP[_UPVALUE0_.id])
              end
              self.scietePlony = self.scietePlony + 1
              self.zebraneBaloty = 0
              balot[self.scietePlony] = createObject(1454, getElementPosition((getPedOccupiedVehicle(localPlayer))) + -5 * math.sin(-math.rad(getElementRotation((getPedOccupiedVehicle(localPlayer))))), getElementPosition((getPedOccupiedVehicle(localPlayer))) + -5 * math.cos(-math.rad(getElementRotation((getPedOccupiedVehicle(localPlayer))))), getElementPosition((getPedOccupiedVehicle(localPlayer))) - 1.1)
              table.insert(balotTable, {
                id = self.scietePlony,
                pos = {
                  getElementPosition((getPedOccupiedVehicle(localPlayer))) + -5 * math.sin(-math.rad(getElementRotation((getPedOccupiedVehicle(localPlayer))))),
                  getElementPosition((getPedOccupiedVehicle(localPlayer))) + -5 * math.cos(-math.rad(getElementRotation((getPedOccupiedVehicle(localPlayer))))),
                  getElementPosition((getPedOccupiedVehicle(localPlayer)))
                },
                player = localPlayer
              })
            end
          end)
        end
        setTimer(function()
          kombajn = true
          for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
            triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "createVehicle", localPlayer, false, _FORV_4_.ulepszenie_kombajn_farmer)
          end
          unbindKey("E", "down", sianie)
        end, 2500, 1)
        bindKey("F", "down", exitGUI)
        bindKey("enter", "down", exitGUI)
      end
    end
  else
    self.textInfoText = "#d14b4bWR\195\147\196\134 NA POLE"
    self.textInfoText1 = ""
  end
  if self.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 220))
    dxDrawText("FARMER - LEVEL #00a118" .. levelJob, _UPVALUE0_.x, _UPVALUE0_.y - 120 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(self.time) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("EXP POSTACI: #ffbf00" .. self.exp1, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("ZAROBEK: #ffbf00" .. przecinek(math.floor(self.money)) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("EXP: #ffbf00" .. self.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    if self.textInfoText1 == "Post\196\153p #ffbf00" .. plony .. "#ffffff/#ffbf00" .. ilePunktow .. "" or self.textInfoText1 == "Post\196\153p #ffbf00" .. self.zebraneBaloty .. "#ffffff/#ffbf00" .. ilePunktow .. "" or self.textInfoText1 == "Post\196\153p #ffbf00" .. self.scietePlony .. "#ffffff/#ffbf00" .. ilePunktow .. "" then
      if self.textInfoText1 == "Post\196\153p #ffbf00" .. plony .. "#ffffff/#ffbf00" .. ilePunktow .. "" then
      elseif self.textInfoText1 == "Post\196\153p #ffbf00" .. self.zebraneBaloty .. "#ffffff/#ffbf00" .. ilePunktow .. "" then
      elseif self.textInfoText1 == "Post\196\153p #ffbf00" .. self.scietePlony .. "#ffffff/#ffbf00" .. ilePunktow .. "" then
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.w - 250 / zoom, 18 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      if (_UPVALUE0_.w - 250 / zoom) / ilePunktow * self.scietePlony / zoom < 20 / zoom then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 80 / zoom, 20 / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 80 / zoom, (_UPVALUE0_.w - 250 / zoom) / ilePunktow * self.scietePlony / zoom, 18 / zoom, 5 / zoom, tocolor(255, 196, 0, 255))
      end
      dxDrawText("" .. ("%.2f"):format(100 / ilePunktow * self.scietePlony) .. "%", _UPVALUE0_.x + 2 / zoom, _UPVALUE0_.y + 3 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
      dxDrawText("" .. ("%.2f"):format(100 / ilePunktow * self.scietePlony) .. "%", _UPVALUE0_.x, _UPVALUE0_.y + 1 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, true, false, true, false)
      dxDrawText(self.textInfoText, _UPVALUE0_.x, _UPVALUE0_.y - 50 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    else
      dxDrawText(self.textInfoText, _UPVALUE0_.x, _UPVALUE0_.y - 35 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawText(self.textInfoText1, _UPVALUE0_.x, _UPVALUE0_.y + 55 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    end
  end
  if oddawaniePunkt and getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) and getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - 83, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - 85, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 2, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - 86 / zoom, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - 85 / zoom, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("ABY ODSTAWI\196\134 BALOT KLIKNIJ", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(oddawaniePunkt[1], oddawaniePunkt[2], oddawaniePunkt[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        oddawanieBalota()
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if widlak == true then
    for _FORV_10_, _FORV_11_ in ipairs(balotTable) do
      if getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) and 3 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 86 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 85 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY CHWYCI\196\134 BALOT KLIKNIJ", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        if getKeyState("R") and not clickC and not maBalot then
          clickC = true
          table.remove(balotTable, _FORV_10_)
          chwycBalot(_FORV_11_.id)
          setTimer(function()
            clickC = false
          end, 1500, 1)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if windows.wyborPlonow == true and _ARG_0_ == "left" then
    if _ARG_1_ == "down" then
      if isMouseIn(_UPVALUE0_.x + 88 / zoom + (_UPVALUE0_.w - 200 / zoom) / maxPunktowWybor * ilePunktowWybor / zoom, _UPVALUE0_.y + 278 / zoom, 25 / zoom, 25 / zoom) then
        isDragging = true
        prevMouseX, prevMouseY = _ARG_2_, _ARG_3_
        addEventHandler("onClientCursorMove", root, cursorMove)
      end
    elseif _ARG_1_ == "up" and isDragging then
      isDragging = false
      removeEventHandler("onClientCursorMove", root, cursorMove)
    end
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "level" then
      for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
          levelJob = _FORV_10_.levelJob
          exports.st_gui:showPlayerNotification("Wybierz ilo\197\155\196\135 plon\195\179w", "info")
          maxPunktowWybor = 25
          ilePunktowWybor = 25
          for _FORV_16_, _FORV_17_ in ipairs(table_statistics) do
            if _FORV_17_.ulepszenie_punkty_farmer == 3 then
              maxPunktowWybor = 40
              ilePunktowWybor = 40
            elseif _FORV_17_.ulepszenie_punkty_farmer == 2 then
              maxPunktowWybor = 35
              ilePunktowWybor = 35
            elseif _FORV_17_.ulepszenie_punkty_farmer == 1 then
              maxPunktowWybor = 30
              ilePunktowWybor = 30
            else
              maxPunktowWybor = 25
              ilePunktowWybor = 25
            end
          end
          windows.category = false
          windows.background = false
          windows.wyborPlonow = true
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          if _FORV_8_.name == "Wi\196\153cej plon\195\179w (#c77100" .. _FORV_8_.status .. "#9e9e9e/#c771003#9e9e9e)" then
            if _FORV_8_.status == 3 then
            else
              triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, getElementData(localPlayer, "player:sid"))
            end
          elseif _FORV_8_.status == "0" or _FORV_8_.status == 0 then
            triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, getElementData(localPlayer, "player:sid"))
          end
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Farmer" then
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
      if getElementData(localPlayer, "player:lvl") < 5 then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 5 level aby tutaj pracowa\196\135", "error")
        return
      end
      windows.category = "level"
      windows.background = false
      exports.st_gui:showPlayerNotification("Wybierz level", "info")
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          moneyJob = "0",
          level = 5,
          img = textures.level1_icon,
          money = "#00ad233600 - 4200 #d2d2d2PLN"
        },
        {
          levelJob = 2,
          exp = 300,
          moneyJob = "0",
          level = 10,
          img = textures.level2_icon,
          money = "#00ad234200 - 4750 #d2d2d2PLN"
        },
        {
          levelJob = 3,
          exp = 850,
          moneyJob = "0",
          level = 25,
          img = textures.level3_icon,
          money = "#00ad234750 - 5250 #d2d2d2PLN"
        },
        {
          levelJob = 4,
          exp = 1400,
          moneyJob = "0",
          level = 40,
          img = textures.level4_icon,
          money = "#00ad235250 - 6300 #d2d2d2PLN"
        }
      }
    elseif isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if blockStopJob then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz zako\197\132czysz pracy\nSpr\195\179buj za chwil\196\153", "error")
        return
      end
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Farmer" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      endJobAll()
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "ulepszenia"
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 205 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      windows.category = "wyp\197\130ata"
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if _FORV_8_.wyplata_farmer > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_8_.wyplata_farmer) > 999999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if _FORV_8_.wyplata_farmer > 10000 then
          triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom) and windows.endJob == true then
      if maBalot then
        exports.st_gui:showPlayerNotification("Najpierw oddaj balot", "error")
        return
      end
      endJobAll()
      showCursor(false)
      setTimer(function()
        triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "tpPos", localPlayer, {
          -1191.26,
          -1049.45,
          129.22
        })
      end, 500, 1)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.endJob = false
    elseif isMouseIn(_UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom) and windows.endJob == true then
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.endJob = false
    elseif isMouseIn(_UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 380 / zoom, 190 / zoom, 50 / zoom) and windows.wyborPlonow == true then
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      windows.wyborPlonow = false
      textures = {}
      ilePunktow = math.floor(ilePunktowWybor)
      startJob()
      exports.st_gui:showPlayerNotification("Rozpocz\196\153to prac\196\153", "success")
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz zarobek wi\196\153kszy o 10%",
          price = 300,
          icon = textures.dolar_icon,
          status = _FORV_12_.ulepszenie_zarobek_farmer,
          nameDatabase = "ulepszenie_zarobek_farmer"
        },
        {
          name = "Wi\196\153cej plon\195\179w (#c77100" .. _FORV_12_.ulepszenie_punkty_farmer .. "#9e9e9e/#c771003#9e9e9e)",
          description = "Dodaje 5 plon\195\179w wi\196\153cej",
          price = 350,
          icon = textures.energy_icon,
          status = _FORV_12_.ulepszenie_punkty_farmer,
          nameDatabase = "ulepszenie_punkty_farmer"
        },
        {
          name = "Ulepszony kombajn",
          description = "To ulepszenie poprawia przy\197\155pienie w kombajnie",
          price = 500,
          icon = textures.combine_icon,
          status = _FORV_12_.ulepszenie_kombajn_farmer,
          nameDatabase = "ulepszenie_kombajn_farmer"
        }
      }
    end
  end
end)
function cursorMove(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if isDragging then
    ilePunktowWybor = math.max(1, math.min(maxPunktowWybor, ilePunktowWybor + (_ARG_2_ - prevMouseX) * maxPunktowWybor / (_UPVALUE0_.w - 200 / zoom)))
    prevMouseX, prevMouseY = _ARG_2_, _ARG_3_
  end
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00:00:00"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. hours .. ":" .. mins .. ":" .. secs
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function oddawanieBalota()
  oddawaniePunkt = false
  if isElement(blip) then
    destroyElement(blip)
    blip = nil
  end
  maBalot = false
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "destroyPack", localPlayer)
  if levelJob == 1 then
    money = math.random(3600, 4200)
  elseif levelJob == 2 then
    money = math.random(4200, 4750)
  elseif levelJob == 3 then
    money = math.random(4750, 5250)
  elseif levelJob == 4 then
    money = math.random(5250, 6300)
  end
  if getElementData(localPlayer, "player:premium") then
    money = money * 1.1
  end
  for _FORV_4_, _FORV_5_ in ipairs(table_statistics) do
    if _FORV_5_.ulepszenie_zarobek_farmer == 1 then
      money = money * 1.1
    end
  end
  if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Farmer" then
    money = money * getElementData(localPlayer, "player:bonusJob").addMoney
  end
  if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
    money = money * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
  end
  triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "wages", localPlayer, {
    math.floor(money),
    self.timeSave,
    8942357
  })
  self.money = self.money + math.floor(money)
  self.exp = self.exp + 1
  self.exp1 = self.exp1 + (math.random(2, 6) + 2)
  exports.ST_levelsystem:addExp(math.random(2, 6) + 2)
  self.timeSave = 0
  triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
  exports.st_gui:showPlayerNotification("Do wyp\197\130aty dopisano " .. math.floor((math.floor(money))) .. " PLN", "money")
  self.zebraneBaloty = self.zebraneBaloty + 1
  stworzBaloty(self.zebraneBaloty)
  if self.zebraneBaloty >= ilePunktow then
    for _FORV_7_, _FORV_8_ in ipairs(balotTable) do
      table.remove(balotTable, _FORV_7_)
    end
    plonTable = {}
    plon = {}
    plonMarker = {}
    balotTable = {}
    balot = {}
    balotMarker = {}
    self.zebraneBaloty = 0
    widlak = false
    maBalot = false
    plony = 0
    mozeZasiac = true
    bindKey("E", "down", sianie)
    unbindKey("F", "down", exitGUI)
    unbindKey("enter", "down", exitGUI)
    setTimer(function()
      if #bele_objects > 0 then
        for _FORV_3_, _FORV_4_ in ipairs(bele_objects) do
          if isElement(_FORV_4_) then
            destroyElement(_FORV_4_)
          end
        end
      end
      bele_objects = {}
    end, 60000, 1)
    triggerServerEvent("evEwenciks_faesijuydh", resourceRoot, "destroyVehicle", localPlayer)
  end
end
getResourceName(getThisResource(), true, 626874266)
return
