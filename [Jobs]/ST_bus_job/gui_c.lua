zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = guiGetScreenSize() / 2 - 882 / zoom / 2,
  y = guiGetScreenSize() / 2 - 573 / zoom / 2,
  w = 882 / zoom,
  h = 573 / zoom
}
windows = {
  main = false,
  background = false,
  ticket = false,
  render = false,
  category = false,
  computer = false
}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(windowPos.x + 20 / zoom, windowPos.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 145 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 205 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos.x + 29 / zoom, windowPos.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.category == "g\197\130\195\179wne" then
      dxDrawText("KIEROWCA AUTOBUSU", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 105 / zoom, windowPos.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", windowPos.x + 114 / zoom, windowPos.y + 420 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 110 / zoom, windowPos.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Twoim zadaniem jest rozwo\197\188enie pasa\197\188er\195\179w\npo stanie San Andreas, pami\196\153taj by\nnie pomyli\196\135 si\196\153 przy sprzeda\197\188y bilet\195\179w\noraz kontroluj zadowolenie pasa\197\188er\195\179w.", windowPos.x + 114 / zoom, windowPos.y + 340 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", windowPos.x + 114 / zoom, windowPos.y + 710 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 110 / zoom, windowPos.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Prawo jazdy kat.C", windowPos.x + 114 / zoom, windowPos.y + 810 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(windowPos.x + 490 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 489 / zoom, windowPos.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(windowPos.x + 490 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 255))
        dxDrawImage(windowPos.x + 525 / zoom, windowPos.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", windowPos.x + 770 / zoom, windowPos.y + 270 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 489 / zoom, windowPos.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(windowPos.x + 490 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawImage(windowPos.x + 525 / zoom, windowPos.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", windowPos.x + 770 / zoom, windowPos.y + 270 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(windowPos.x + 690 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 689 / zoom, windowPos.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(windowPos.x + 690 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(windowPos.x + 728 / zoom, windowPos.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", windowPos.x + 1170 / zoom, windowPos.y + 270 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 689 / zoom, windowPos.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(windowPos.x + 690 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(windowPos.x + 728 / zoom, windowPos.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", windowPos.x + 1170 / zoom, windowPos.y + 270 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", windowPos.x, windowPos.y + 495 / zoom, windowPos.x + 362 / zoom + 500 / zoom, windowPos.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 650 / zoom, windowPos.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("EXP: #ffbf00" .. _FORV_8_.exp_autobusy .. [[

#b4b4b4EXP RANKING: #ffbf00]] .. _FORV_8_.exp1_autobusy .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_autobusy .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobek_autobusy) .. "", windowPos.x, windowPos.y + 380 / zoom, windowPos.x + 362 / zoom + 495 / zoom, windowPos.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_autobusy), windowPos.x, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom + 485 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(windowPos.x + 110 / zoom, windowPos.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(windowPos.x + 115 / zoom, windowPos.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", windowPos.x + 195 / zoom, windowPos.y + 2 / zoom + 194 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, windowPos.x + 195 / zoom, windowPos.y + 70 / zoom + 194 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 120 / zoom, windowPos.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", windowPos.x + 720 / zoom, windowPos.y + 40 / zoom + 194 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", windowPos.x + 685 / zoom, windowPos.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
    if windows.category == "wyp\197\130ata" then
      dxDrawText("WYP\197\129ATA", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 199 / zoom, windowPos.y + 164 / zoom, 562 / zoom, 82 / zoom, 15 / zoom, tocolor(40, 150, 40, 255))
      dxDrawRoundedRectangle(windowPos.x + 200 / zoom, windowPos.y + 165 / zoom, 560 / zoom, 80 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawRoundedRectangle(windowPos.x + 199 / zoom, windowPos.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(134, 184, 1, 255))
      if isMouseIn(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", windowPos.x + 235 / zoom, windowPos.y + 430 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", windowPos.x + 235 / zoom, windowPos.y + 430 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawRoundedRectangle(windowPos.x + 559 / zoom, windowPos.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(44, 150, 226, 255))
      if isMouseIn(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", windowPos.x + 960 / zoom, windowPos.y + 430 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", windowPos.x + 960 / zoom, windowPos.y + 430 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("TWOJA WYP\197\129ATA DO ODEBRANIA", windowPos.x + 595 / zoom, windowPos.y + 40 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_autobusy) .. " #ffffffPLN", windowPos.x + 595 / zoom, windowPos.y + 178 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_autobusy) .. "", windowPos.x + 595 / zoom, windowPos.y + 242 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJobTable) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_autobusy
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        rgb = 0
        if isMouseIn(windowPos.x + 30 / zoom + 470 / zoom * (1 - 1), windowPos.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) then
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
      dxDrawRoundedRectangle(windowPos.x + 29 / zoom + 470 / zoom * (1 - 1), windowPos.y + 89 / zoom + 220 / zoom * (1 + 1 - 1), 352 / zoom, 152 / zoom, 15 / zoom, tocolor(60 - rgb, 60 - rgb, 60 - rgb, 255))
      dxDrawRoundedRectangle(windowPos.x + 30 / zoom + 470 / zoom * (1 - 1), windowPos.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
      dxDrawRoundedRectangle(windowPos.x + 45 / zoom + 470 / zoom * (1 - 1), windowPos.y + 105 / zoom + 220 / zoom * (1 + 1 - 1), 120 / zoom, 120 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawImage(windowPos.x + 60 / zoom + 470 / zoom * (1 - 1), windowPos.y + 120 / zoom + 220 / zoom * (1 + 1 - 1), 90 / zoom, 90 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(windowPos.x + 170 / zoom + 470 / zoom * (1 - 1), windowPos.y + 135 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_10_.exp .. " | LEVEL: " .. _FORV_10_.level, windowPos.x + 200 / zoom + 470 / zoom * (1 - 1), windowPos.y + 93 / zoom + 440 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 170 / zoom + 470 / zoom * (1 - 1), windowPos.y + 175 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("Zarobek za przystanek #00ad23" .. przecinek(_FORV_10_.money), windowPos.x + 200 / zoom + 470 / zoom * (1 - 1), windowPos.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, windowPos.x + 175 / zoom + 470 / zoom * (1 - 1), windowPos.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(windowPos.x + 125 / zoom + 470 / zoom * (1 - 1), windowPos.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(windowPos.x + 125 / zoom + 470 / zoom * (1 - 1), windowPos.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.category == "wybierz tryb" then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ TRYB", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("WYBIERZ JEDN\196\132 Z OPCJI", windowPos.x + 517 / zoom, windowPos.y + 50 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 214 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom) then
      dxDrawRoundedRectangle(windowPos.x + 214 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
    else
      dxDrawRoundedRectangle(windowPos.x + 214 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    end
    dxDrawRoundedRectangle(windowPos.x + 215 / zoom, windowPos.y + 190 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
    dxDrawImage(windowPos.x + 255 / zoom, windowPos.y + 210 / zoom, 120 / zoom, 120 / zoom, textures.bus_icon, 0, 0, 0, tocolor(200, 255, 200, 255), false)
    dxDrawImage(windowPos.x + 260 / zoom, windowPos.y + 210 / zoom, 30 / zoom, 30 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(15, 200, 15, 255), false)
    dxDrawText("FIRMOWY BUS", windowPos.x + 268 / zoom, windowPos.y + 510 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    if isMouseIn(windowPos.x + 469 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom) then
      dxDrawRoundedRectangle(windowPos.x + 469 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
    else
      dxDrawRoundedRectangle(windowPos.x + 469 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
    end
    dxDrawRoundedRectangle(windowPos.x + 470 / zoom, windowPos.y + 190 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
    dxDrawImage(windowPos.x + 515 / zoom, windowPos.y + 210 / zoom, 110 / zoom, 110 / zoom, textures.bus_icon, 0, 0, 0, tocolor(255, 200, 200, 255), false)
    dxDrawImage(windowPos.x + 520 / zoom, windowPos.y + 210 / zoom, 30 / zoom, 30 / zoom, textures.lock_icon, 0, 0, 0, tocolor(200, 15, 15, 255), false)
    dxDrawText("PRYWATNY BUS", windowPos.x + 779 / zoom, windowPos.y + 510 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.category == "wybierz busa" then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ SW\195\147J POJAZD", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    if 2 < self.levelJob then
      dxDrawText("DOPUSZCZALNE POJAZDY: #ffbf00Iveco Bus#d2d2d2, #ffbf00Brute Bus", windowPos.x + 517 / zoom, windowPos.y - 23 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("DOPUSZCZALNE POJAZDY: #ffbf00Brute Pony", windowPos.x + 517 / zoom, windowPos.y - 23 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    end
    for _FORV_8_ = 1, 8 do
      dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 55 / zoom + 55 / zoom * (1 + 1 - 1), 820 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 50))
    end
    vehicleBus = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("vehicle")) do
      if getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 100 then
        if getElementData(_FORV_9_, "vehicle:customID") then
          model = getElementData(_FORV_9_, "vehicle:customID")
        else
          model = getElementModel(_FORV_9_)
        end
        if self.levelJob > 2 then
          if model == 23001 or model == 437 and getElementData(_FORV_9_, "vehicle:id") then
            if getElementData(_FORV_9_, "vehicle:rent") then
              if getElementData(_FORV_9_, "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") or tonumber((getElementData(_FORV_9_, "vehicle:rent"))) == getElementData(localPlayer, "player:sid") then
                table.insert(vehicleBus, _FORV_9_)
              end
            elseif getElementData(_FORV_9_, "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") then
              table.insert(vehicleBus, _FORV_9_)
            end
          end
        elseif model == 413 then
          if getElementData(_FORV_9_, "vehicle:rent") then
            if getElementData(_FORV_9_, "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") or tonumber((getElementData(_FORV_9_, "vehicle:rent"))) == getElementData(localPlayer, "player:sid") then
              table.insert(vehicleBus, _FORV_9_)
            end
          elseif getElementData(_FORV_9_, "vehicle:ownedPlayer") == getElementData(localPlayer, "player:sid") then
            table.insert(vehicleBus, _FORV_9_)
          end
        end
      end
    end
    for _FORV_9_, _FORV_10_ in ipairs(vehicleBus) do
      if isMouseIn(windowPos.x + 30 / zoom, windowPos.y + 110 / zoom + 55 / zoom * (0 + 1 - 1), 820 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 110 / zoom + 55 / zoom * (0 + 1 - 1), 820 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 200))
      else
        dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 110 / zoom + 55 / zoom * (0 + 1 - 1), 820 / zoom, 50 / zoom, 20 / zoom, tocolor(45, 45, 45, 150))
      end
      dxDrawText(exports.ST_core:changeNameClient(getVehicleName(_FORV_10_), getElementData(_FORV_10_, "vehicle:customID")), windowPos.x + 45 / zoom, windowPos.y + 70 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawText(getElementData(_FORV_10_, "vehicle:id"), windowPos.x, windowPos.y + 70 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 475 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    end
  end
  if windows.ticket == true then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 30 / zoom, windowPos.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("Przeci\196\133gnij bilet na klienta", windowPos.x + 517 / zoom, windowPos.y - 23 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    dxDrawText("Klient prosi o bilet: " .. self.rodzajBiletu .. "", windowPos.x + 30 / zoom, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, true, false)
    dxDrawText("Pozosta\197\130ych klient\195\179w: #ffbf00" .. self.liczbaPasazerow .. "", windowPos.x, windowPos.y - 121 / zoom, windowPos.x + 362 / zoom + 485 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    if self.trzymamBilet == "Ulgowy" then
      self.xTicketUl, self.yTicketUl = getCursorPosition() * _UPVALUE0_ - 185 / zoom / 2, getCursorPosition() * _UPVALUE1_ - 185 / zoom / 2
    end
    if self.trzymamBilet == "Normalny" then
      self.xTicketNo, self.yTicketNo = getCursorPosition() * _UPVALUE0_ - 185 / zoom / 2, getCursorPosition() * _UPVALUE1_ - 185 / zoom / 2
    end
    dxDrawRoundedRectangle(windowPos.x + 300 / zoom, windowPos.y + 110 / zoom, 285 / zoom, 390 / zoom, 15 / zoom, tocolor(18, 18, 18, 245))
    if isMouseIn(self.xTicketNo, self.yTicketNo, 230 / zoom, 126 / zoom) then
      dxDrawImage(self.xTicketNo, self.yTicketNo, 230 / zoom, 116 / zoom, textures.normalny, 0, 0, 0, tocolor(255, 255, 255, 200), false)
    else
      dxDrawImage(self.xTicketNo, self.yTicketNo, 230 / zoom, 116 / zoom, textures.normalny, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(self.xTicketUl, self.yTicketUl, 230 / zoom, 126 / zoom) then
      dxDrawImage(self.xTicketUl, self.yTicketUl, 230 / zoom, 116 / zoom, textures.ulgowy, 0, 0, 0, tocolor(255, 255, 255, 200), false)
    else
      dxDrawImage(self.xTicketUl, self.yTicketUl, 230 / zoom, 116 / zoom, textures.ulgowy, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windowPos.x + 300 / zoom < self.xTicketNo and windowPos.y + 100 / zoom < self.yTicketNo and windowPos.x + 585 / zoom > self.xTicketNo and windowPos.y + 410 / zoom > self.yTicketNo and self.trzymamBilet == false then
      giveTicket("#ff7400NORMALNY")
    elseif windowPos.x + 300 / zoom < self.xTicketUl and windowPos.y + 100 / zoom < self.yTicketUl and windowPos.x + 585 / zoom > self.xTicketUl and windowPos.y + 410 / zoom > self.yTicketUl and self.trzymamBilet == false then
      giveTicket("#ffff00ULGOWY")
    end
  end
end
function windowComputer()
  if windows.computer == true and getPedOccupiedVehicleSeat(localPlayer) == 0 then
    dxDrawRoundedRectangle(windowPos.x + 9 / zoom, windowPos.y + 5 / zoom, windowPos.w - 18 / zoom, windowPos.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos.x, windowPos.y, windowPos.w, windowPos.h, texturesComputer.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and mapIsMoving then
      if not cursorX then
      else
      end
      playerX = -(cursorX * _UPVALUE0_ * mapZoom - mapOffsetX)
      playerY = cursorY * _UPVALUE1_ * mapZoom - mapOffsetY
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, (3000 + playerX) * mapUnit - _UPVALUE2_.w / 2 * mapZoom, (3000 - playerY) * mapUnit - _UPVALUE2_.h / 2 * mapZoom, _UPVALUE2_.w * mapZoom, _UPVALUE2_.h * mapZoom, texturesComputer.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    if getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE2_.x and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE2_.x + _UPVALUE2_.w and getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE2_.y and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE2_.y + _UPVALUE2_.h then
      dxDrawImage(getMapFromWorldPosition(getElementPosition(localPlayer)) - 10 / zoom, getMapFromWorldPosition(getElementPosition(localPlayer)) - 10 / zoom, 20 / zoom, 20 / zoom, texturesComputer.player_icon, 360 - getElementRotation(localPlayer))
    end
    if selectLineBus then
      for _FORV_20_, _FORV_21_ in ipairs(customWaypoints) do
        if getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) >= _UPVALUE2_.x and getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) <= _UPVALUE2_.x + _UPVALUE2_.w and getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) >= _UPVALUE2_.y and getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) <= _UPVALUE2_.y + _UPVALUE2_.h then
          dxDrawImage(getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) - 10 / zoom, getMapFromWorldPosition(_FORV_21_[1], _FORV_21_[2]) - 10 / zoom, 30 / zoom, 30 / zoom, texturesComputer.bus_stop_icon, 0, 0, 0, tocolor(255, 0, 0, 255), false)
        end
      end
      dxDrawRoundedRectangle(windowPos.x + 12 / zoom, windowPos.y + 8 / zoom, windowPos.w - 24 / zoom, 70 / zoom, 34 / zoom, tocolor(22, 22, 22, 245))
      dxDrawText("TRASA ##ffbf00" .. selectLineBus, windowPos.x + 30 / zoom, windowPos.y - 115 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      dxDrawImage(getMapFromWorldPosition(GPS.lastPosition.x, GPS.lastPosition.y) - 10 / zoom, getMapFromWorldPosition(GPS.lastPosition.x, GPS.lastPosition.y) - 25 / zoom, 30 / zoom, 30 / zoom, texturesComputer.point_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      dxDrawImage(getMapFromWorldPosition(posBusStop[selectLineBus][#posBusStop[selectLineBus]][1], posBusStop[selectLineBus][#posBusStop[selectLineBus]][2]) - 10 / zoom, getMapFromWorldPosition(posBusStop[selectLineBus][#posBusStop[selectLineBus]][1], posBusStop[selectLineBus][#posBusStop[selectLineBus]][2]) - 25 / zoom, 30 / zoom, 30 / zoom, texturesComputer.finish_icon, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      dxDrawImage(windowPos.x + 267 / zoom, windowPos.y + 18 / zoom, 22 / zoom, 22 / zoom, texturesComputer.point_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("DYSTANS", windowPos.x + 200 / zoom, windowPos.y - 140 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(windowPos.x + 190 / zoom, windowPos.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(windowPos.x + 190 / zoom, windowPos.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawText(GPS.distance or "-", windowPos.x + 220 / zoom, windowPos.y - 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawImage(windowPos.x + 483 / zoom, windowPos.y + 12.5 / zoom, 35 / zoom, 35 / zoom, texturesComputer.bus_stop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("PRZYSTANKI", windowPos.x + 400 / zoom, windowPos.y - 140 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(windowPos.x + 390 / zoom, windowPos.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(windowPos.x + 390 / zoom, windowPos.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawText("#fbfd57" .. #posBusStop[selectLineBus], windowPos.x + 420 / zoom, windowPos.y - 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText("PRZEWIDYWANY ZAROBEK", windowPos.x + 600 / zoom, windowPos.y - 140 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23$", windowPos.x + 776 / zoom, windowPos.y - 141.5 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawRectangle(windowPos.x + 590 / zoom, windowPos.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(windowPos.x + 590 / zoom, windowPos.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      for _FORV_25_, _FORV_26_ in ipairs(table_statistics) do
        if _FORV_26_.ulepszenie_zarobek_autobusy == 1 then
        end
      end
      if getElementData(localPlayer, "player:premium") then
      end
      dxDrawText("#00ad23" .. przecinek((math.floor(addMoney * 1.1 * 1.1 * #posBusStop[selectLineBus]))) .. " #ffffffPLN", windowPos.x + 620 / zoom, windowPos.y - 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      if self.jobTarget then
        if isMouseIn(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 799 / zoom, windowPos.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 15, 15, 255))
          dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(18, 18, 18, 245))
          dxDrawText("\226\136\142", windowPos.x + 814 / zoom, windowPos.y - 116 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = _UPVALUE0_ * cxs, _UPVALUE1_ * cys
            dxDrawText("Zako\197\132cz tras\196\153", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
            dxDrawText("Zako\197\132cz tras\196\153", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(windowPos.x + 799 / zoom, windowPos.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 15, 15, 150))
          dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(15, 15, 15, 245))
          dxDrawText("\226\136\142", windowPos.x + 814 / zoom, windowPos.y - 116 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        end
      elseif isMouseIn(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 799 / zoom, windowPos.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(15, 255, 15, 255))
        dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(18, 18, 18, 245))
        dxDrawText("\226\150\182", windowPos.x + 813 / zoom, windowPos.y - 115 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = _UPVALUE0_ * cxs, _UPVALUE1_ * cys
          dxDrawText("Rozpocznij tras\196\153", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
          dxDrawText("Rozpocznij tras\196\153", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawRoundedRectangle(windowPos.x + 799 / zoom, windowPos.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(15, 255, 15, 150))
        dxDrawRoundedRectangle(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(15, 15, 15, 245))
        dxDrawText("\226\150\182", windowPos.x + 813 / zoom, windowPos.y - 115 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      end
    else
      dxDrawRoundedRectangle(windowPos.x + 12 / zoom, windowPos.y + 8 / zoom, windowPos.w - 24 / zoom, 70 / zoom, 34 / zoom, tocolor(22, 22, 22, 235))
      dxDrawText("WYBIERZ TRAS\196\152", windowPos.x + 30 / zoom, windowPos.y - 115 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    end
    if not self.jobTarget then
      for _FORV_21_, _FORV_22_ in ipairs(positions) do
        if isMouseIn(windowPos.x + 25 / zoom, windowPos.y + 100 / zoom + 55 / zoom * (0 + 1 - 1), 120 / zoom, 40 / zoom) then
          if selectLineBus == _FORV_22_[1] then
            dxDrawRoundedRectangle(windowPos.x + 24 / zoom, windowPos.y + 89 / zoom + 55 / zoom * (0 + 1 - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(255, 187, 0, 200))
            dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 90 / zoom + 55 / zoom * (0 + 1 - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
          else
            dxDrawRoundedRectangle(windowPos.x + 24 / zoom, windowPos.y + 89 / zoom + 55 / zoom * (0 + 1 - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(50, 50, 50, 200))
            dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 90 / zoom + 55 / zoom * (0 + 1 - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 250))
          end
        elseif selectLineBus == _FORV_22_[1] then
          dxDrawRoundedRectangle(windowPos.x + 24 / zoom, windowPos.y + 89 / zoom + 55 / zoom * (0 + 1 - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(255, 187, 0, 200))
          dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 90 / zoom + 55 / zoom * (0 + 1 - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
        else
          dxDrawRoundedRectangle(windowPos.x + 24 / zoom, windowPos.y + 89 / zoom + 55 / zoom * (0 + 1 - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(50, 50, 50, 200))
          dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 90 / zoom + 55 / zoom * (0 + 1 - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 220))
        end
        dxDrawText("##ffbf00" .. _FORV_22_[1], windowPos.x + 35 / zoom, windowPos.y + 22 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
        dxDrawText("" .. #posBusStop[_FORV_22_[1]], windowPos.x, windowPos.y + 22 / zoom + 110 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom - 230 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 130 / zoom, windowPos.y + 92.5 / zoom + 55 / zoom * (0 + 1 - 1), 35 / zoom, 35 / zoom, texturesComputer.bus_stop_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
  end
end
function getMapPositionFromWorld(_ARG_0_, _ARG_1_)
  return _ARG_0_ + _ARG_0_ * 0.26666666666666666, _ARG_1_ - _ARG_1_ * 0.26666666666666666
end
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (playerX - _ARG_0_) / mapZoom * mapUnit, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - playerX) / mapZoom * mapUnit, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - (_ARG_1_ - playerY) / mapZoom * mapUnit, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + (playerY - _ARG_1_) / mapZoom * mapUnit, _UPVALUE0_.y + _UPVALUE0_.h / 2)))
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    self.time = self.time + 1
    self.timeSave = self.timeSave + 1
  end
  if self.zadowolenie > 0.2 then
    self.zadowolenie = self.zadowolenie - 0.012
  end
  if self.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 220))
    dxDrawText("KIEROWCA AUTOBUSU - LEVEL #00a118" .. self.levelJob, _UPVALUE0_.x, _UPVALUE0_.y - 110 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(self.time) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("ZAROBEK: #ffbf00" .. przecinek(self.money) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("EXP: #ffbf00" .. self.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("" .. self.textinfo, _UPVALUE0_.x, _UPVALUE0_.y - 25 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    if self.jobTarget then
      if self.zadowolenie < 40 then
        dxDrawImage(_UPVALUE0_.x + 7 / zoom, _UPVALUE0_.y + 100 / zoom, 17 / zoom, 17 / zoom, texturesRender.angry, 0, 0, 0, tocolor(255, 0, 0, 220), false)
        dxDrawText("Pasa\197\188erowie s\196\133 \197\186li!  #ffffff[#ff0000" .. math.floor(self.zadowolenie) .. "%#ffffff]", _UPVALUE0_.x + 28 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
      elseif self.zadowolenie > 40 and self.zadowolenie < 65 then
        dxDrawImage(_UPVALUE0_.x + 7 / zoom, _UPVALUE0_.y + 100 / zoom, 17 / zoom, 17 / zoom, texturesRender.neutral, 0, 0, 0, tocolor(186, 162, 4, 220), false)
        dxDrawText("Pasa\197\188erowie s\196\133 neutralni  #ffffff[#baa204" .. math.floor(self.zadowolenie) .. "%#ffffff]", _UPVALUE0_.x + 28 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(186, 162, 4, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
      elseif self.zadowolenie > 65 then
        dxDrawImage(_UPVALUE0_.x + 7 / zoom, _UPVALUE0_.y + 100 / zoom, 17 / zoom, 17 / zoom, texturesRender.smile, 0, 0, 0, tocolor(4, 224, 0, 220), false)
        dxDrawText("Pasa\197\188erowie s\196\133 zadowoleni  #ffffff[#04e000" .. math.floor(self.zadowolenie) .. "%#ffffff]", _UPVALUE0_.x + 28 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(4, 224, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  if self.jobTarget and getPedOccupiedVehicle(localPlayer) == self.vehicleBus and getPedOccupiedVehicleSeat(localPlayer) == 0 then
    if self.textinfo == "Zaliczone przystanki #ffbf00" .. self.jobTarget - 1 .. " #ffffff/ #ffbf00" .. self.maxTarget .. "" and math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 145 and self.zadowolenie > 0.1 then
      self.zadowolenie = self.zadowolenie - 0.1
    end
    if getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) and getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) then
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 2 - _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 2, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200))
      dxDrawImage(getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesRender.bus_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if math.floor(getDistanceBetweenPoints3D(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3], getElementPosition(localPlayer))) < 5 then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - 86 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - 85 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WPU\197\154\196\134 PASA\197\187ER\195\147W", getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - 10.6 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3] + 0.1, 200))
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if math.ceil((getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2 + getElementVelocity((getPedOccupiedVehicle(localPlayer))) ^ 2) ^ 0.5 * 161) > 20 then
            if self.zadowolenie > 0.2 then
              self.zadowolenie = self.zadowolenie - 10
            end
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz jecha\196\135 wi\196\153cej ni\197\188 20 km/h", "info")
          else
            if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID") then
              model21 = getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID")
            else
              model21 = getElementModel((getPedOccupiedVehicle(localPlayer)))
            end
            if model21 == 23001 or model21 == 437 or model21 == 413 then
              if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") and not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_job_Bus") then
                endJobAll()
                return
              end
              if isElement(self.blip) then
                destroyElement(self.blip)
                self.blip = nil
              end
              if self.jobTarget == #posBusStop[selectLineBus] then
                if getZoneName(getElementPosition(localPlayer)) == "Las Venturas" then
                elseif "lv" == "Los Santos" then
                elseif "ls" == "San Fierro" then
                end
                refreshPacks("sf")
                self.jobTarget = false
                self.maxTarget = false
                exports.st_gui:showPlayerNotification("Zako\197\132czono tras\196\153", "success")
                self.textinfo = "Kliknij przycisk #ffbf00K#ffffff, aby wybra\196\135 tras\196\153"
                triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "wages", localPlayer, {
                  self.moneySave,
                  self.expSave,
                  self.timeSave,
                  64237834
                })
                self.timeSave = 0
                self.moneySave = 0
                self.expSave = 0
                blockStopJob = true
                selectLineBus = false
                setTimer(function()
                  exports.st_gui:showPlayerNotification("Zapisano dane aktualnej sesji pracy", "info")
                end, 2000, 1)
              else
                triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "setFrozenVeh", localPlayer, getPedOccupiedVehicle(localPlayer), true)
                self.jobTarget = self.jobTarget + 1
                self.blip = createBlip(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3], 41, 2, 0, 0, 0, 0, 0, 9999)
                execNPCsRoutine()
                setTimer(function()
                  textures = {
                    background = dxCreateTexture(":ST_gui/img/background2.png"),
                    normalny = dxCreateTexture("img/normalny.png"),
                    ulgowy = dxCreateTexture("img/ulgowy.png")
                  }
                  self.liczbaPasazerow = math.random(1, 3)
                  for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
                    if _FORV_4_.ulepszenie_bilety_autobusy == 1 then
                      self.liczbaPasazerow = self.liczbaPasazerow + 1
                    end
                  end
                  addEventHandler("onClientRender", root, window)
                  if not isEventHandlerAdded("onClientClick", root, click) then
                    addEventHandler("onClientClick", root, click)
                  end
                  windows.ticket = true
                  if math.random(1, 2) == 1 then
                    self.rodzajBiletu = "#ff7400NORMALNY"
                  elseif math.random(1, 2) == 2 then
                    self.rodzajBiletu = "#ffff00ULGOWY"
                  end
                  showCursor(true)
                  self.xTicketUl, self.yTicketUl = windowPos.x + 620 / zoom, windowPos.y + 240 / zoom
                  self.xTicketNo, self.yTicketNo = windowPos.x + 35 / zoom, windowPos.y + 240 / zoom
                  ped = createPed(getElementModel(jobPeds[self.liczbaPasazerow]), getCameraMatrix())
                  myObject = exports.ST_object_preview:createObjectPreview(ped, -10, 0, 180, windowPos.x + 290 / zoom, windowPos.y + 90 / zoom, 305 / zoom, 430 / zoom, false, true)
                end, 1550, 1)
              end
            else
              endJobAll()
            end
          end
        end
      end
    end
  end
end
function execNPCsRoutine()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  for _FORV_4_, _FORV_5_ in pairs(jobPeds) do
    if isElement(_FORV_5_) then
      setElementFrozen(_FORV_5_, false)
      setElementRotation(_FORV_5_, 0, 0, findRotation(getElementPosition(_FORV_5_)), "default", true)
      setPedControlState(_FORV_5_, "forwards", true)
      setPedControlState(_FORV_5_, "walk", true)
    end
  end
  setTimer(sellNextTicket, 1500, 1)
end
function sellNextTicket()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  for _FORV_4_, _FORV_5_ in pairs(jobPeds) do
    if isElement(_FORV_5_) then
      setElementPosition(_FORV_5_, 0, 0, 0)
    end
  end
end
function getPositionFromElementOffset1(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.ticket == true then
    if isMouseIn(self.xTicketUl, self.yTicketUl, 230 / zoom, 126 / zoom) then
      self.trzymamBilet = "Ulgowy"
    elseif isMouseIn(self.xTicketNo, self.yTicketNo, 230 / zoom, 126 / zoom) then
      self.trzymamBilet = "Normalny"
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" and windows.ticket == true then
    self.trzymamBilet = false
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "level" then
      for _FORV_7_, _FORV_8_ in ipairs(levelJobTable) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(windowPos.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), windowPos.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
            if _FORV_15_.ulepszenie_wlasnybus_autobusy == 1 then
              addMoney = _FORV_8_.money
              self = {}
              self.levelJob = _FORV_8_.levelJob
              ulepszenie_pospieszny_autobusy = _FORV_15_.ulepszenie_pospieszny_autobusy
              modelBus = _FORV_8_.model
              setTimer(function()
                windows.category = "wybierz tryb"
              end, 100, 1)
            else
              addMoney = _FORV_8_.money
              self = {}
              self.levelJob = _FORV_8_.levelJob
              exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153!", "success")
              removeEventHandler("onClientRender", root, window)
              removeEventHandler("onClientClick", root, click)
              windows.category = false
              windows.background = false
              showCursor(false)
              for _FORV_19_, _FORV_20_ in pairs(textures) do
                if isElement(_FORV_20_) then
                  destroyElement(_FORV_20_)
                end
              end
              textures = {}
              triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "startJobBus", localPlayer, false, _FORV_15_.ulepszenie_pospieszny_autobusy, _FORV_8_.model, false, posRespVehicle)
            end
          end
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(windowPos.x + 685 / zoom, windowPos.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if windows.category == "wybierz busa" then
      for _FORV_6_, _FORV_7_ in ipairs(vehicleBus) do
        if isMouseIn(windowPos.x + 30 / zoom, windowPos.y + 110 / zoom + 55 / zoom * (0 + 1 - 1), 820 / zoom, 50 / zoom) then
          if getElementData(_FORV_7_, "vehicle_job_Courier") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz pracowa\196\135 tym busem", "error")
            return
          end
          if getElementData(_FORV_7_, "vehicle_job_Bus") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz pracowa\196\135 tym busem", "error")
            return
          end
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "startJobBus", localPlayer, "prywatny", false, false, _FORV_7_)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.category = false
          windows.background = false
          showCursor(false)
          for _FORV_12_, _FORV_13_ in pairs(textures) do
            if isElement(_FORV_13_) then
              destroyElement(_FORV_13_)
            end
          end
          textures = {}
        end
      end
    end
    if windows.computer == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(positions) do
        xY = xY + 1
        if isMouseIn(windowPos.x + 25 / zoom, windowPos.y + 100 / zoom + 55 / zoom * (xY - 1), 120 / zoom, 40 / zoom) and not self.jobTarget then
          customWaypoints = {}
          for _FORV_11_, _FORV_12_ in ipairs(posBusStop[_FORV_6_[1]]) do
            if _FORV_11_ == 1 then
              posStart = {
                _FORV_12_[1],
                _FORV_12_[2],
                _FORV_12_[3]
              }
            end
            if _FORV_11_ == #posBusStop[_FORV_6_[1]] then
              posEnd = {
                _FORV_12_[1],
                _FORV_12_[2]
              }
            end
            if _FORV_11_ ~= 1 and _FORV_11_ ~= #posBusStop[_FORV_6_[1]] then
              table.insert(customWaypoints, _FORV_12_)
            end
          end
          GPS.lastPosition.x, GPS.lastPosition.y, GPS.lastPosition.z = posStart[1], posStart[2], posStart[3]
          GPS.lastPosition.z = GPS.lastPosition.z - 1
          selectLineBus = _FORV_6_[1]
        end
      end
    end
    if isMouseIn(windowPos.x + 690 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Kierowca autobusu" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getElementData(localPlayer, "player:elementDat").license_C == 0 then
        exports.st_gui:showPlayerNotification("Nie posiadasz kategorii kat.C", "error")
        return
      end
      windows.category = "level"
      windows.background = false
      exports.st_gui:showPlayerNotification("Wybierz level", "info")
      levelJobTable = {
        {
          levelJob = 1,
          exp = 0,
          moneyJob = "0",
          level = 0,
          img = textures.level1_icon,
          money = 3900,
          model = 413
        },
        {
          levelJob = 2,
          exp = 1100,
          moneyJob = "0",
          level = 10,
          img = textures.level2_icon,
          money = 4300,
          model = 413
        },
        {
          levelJob = 3,
          exp = 2200,
          moneyJob = "0",
          level = 25,
          img = textures.level3_icon,
          money = 4900,
          model = 437
        },
        {
          levelJob = 4,
          exp = 3300,
          moneyJob = "0",
          level = 40,
          img = textures.level4_icon,
          money = 5500,
          model = 437
        }
      }
    elseif isMouseIn(windowPos.x + 490 / zoom, windowPos.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Kierowca autobusu" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      endJobAll()
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
    elseif isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "ulepszenia"
    elseif isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 205 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      windows.category = "wyp\197\130ata"
    elseif isMouseIn(windowPos.x + 200 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.wyplata_autobusy > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_6_.wyplata_autobusy) > 99999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(windowPos.x + 560 / zoom, windowPos.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.wyplata_autobusy > 10000 then
          triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(windowPos.x + 29 / zoom, windowPos.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      windows.background = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(windowPos.x + 214 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom) and windows.category == "wybierz tryb" then
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153!", "success")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      windows.background = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      triggerServerEvent("evEwenciks_4ewujdgtf", resourceRoot, "startJobBus", localPlayer, false, ulepszenie_pospieszny_autobusy, modelBus, false, posRespVehicle)
      ulepszenie_pospieszny_autobusy = false
      modelBus = false
    elseif isMouseIn(windowPos.x + 469 / zoom, windowPos.y + 189 / zoom, 202 / zoom, 202 / zoom) and windows.category == "wybierz tryb" then
      windows.category = "wybierz busa"
    elseif isMouseIn(windowPos.x + 800 / zoom, windowPos.y + 21 / zoom, 45 / zoom, 45 / zoom) and windows.computer == true then
      if not lastTickCount then
        lastTickCount = 10001
      end
      if 10000 < getTickCount() - lastTickCount then
        if self.jobTarget then
          self.jobTarget = false
          self.maxTarget = false
          for _FORV_5_, _FORV_6_ in pairs(jobPeds) do
            if isElement(_FORV_6_) then
              destroyElement(_FORV_6_)
            end
          end
          selectLineBus = 0
          exports.st_gui:showPlayerNotification("Zako\197\132czono tras\196\153\nNie dopisano nic do wyp\197\130aty", "info")
          self.textinfo = "Kliknij przycisk #ffbf00K#ffffff, aby wybra\196\135 tras\196\153"
        elseif selectLineBus then
          self.maxTarget = #posBusStop[selectLineBus]
          self.jobTarget = 1
          if isElement(self.blip) then
            destroyElement(self.blip)
            self.blip = nil
          end
          self.blip = createBlip(posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2], posBusStop[selectLineBus][self.jobTarget][3], 41, 2, 0, 0, 0, 0, 0, 9999)
          self.zadowolenie = 100
          jobPeds = {}
          for _FORV_5_ = 1, 4 do
            setElementFrozen(createPed(skins[math.random(1, #skins)], posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[3], (findRotation(posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2]))), true)
            table.insert(jobPeds, (createPed(skins[math.random(1, #skins)], posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[3], (findRotation(posBusStop[selectLineBus][self.jobTarget].posPed[1] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget].posPed[2] + math.random(-100, 100) / 100, posBusStop[selectLineBus][self.jobTarget][1], posBusStop[selectLineBus][self.jobTarget][2])))))
          end
          exports.st_gui:showPlayerNotification("Wybrano tras\196\153!\nPodjed\197\186 do pierwszego przystanku", "info")
          self.textinfo = "Zaliczone przystanki #ffbf00" .. self.jobTarget - 1 .. " #ffffff/ #ffbf00" .. self.maxTarget .. ""
        end
        lastTickCount = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj chwil\196\153", "error")
      end
    end
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
playerX, playerY = 0, 0
mapUnit = 0.26666666666666666
mapZoom = 2.5
mapIsMoving, mapOffsetX, mapOffsetY = false, 0, 0
wasMapMoved = true
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _ARG_2_ >= _UPVALUE0_.x and _ARG_2_ <= _UPVALUE0_.x + _UPVALUE0_.w and _ARG_3_ >= _UPVALUE0_.y and _ARG_3_ <= _UPVALUE0_.y + _UPVALUE0_.h then
      mapOffsetX = _ARG_2_ * mapZoom + playerX
      mapOffsetY = _ARG_3_ * mapZoom - playerY
      mapIsMoving = true
      wasMapMoved = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
    mapIsMoving = false
  end
end
function scrollBigMap(_ARG_0_)
  if _ARG_0_ == "mouse_wheel_down" then
    mapZoom = math.min(mapZoom + 0.3, 3.2)
  elseif _ARG_0_ == "mouse_wheel_up" then
    mapZoom = math.max(0.5, mapZoom - 0.3)
  end
end
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (playerX - _ARG_0_) / mapZoom * mapUnit, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - playerX) / mapZoom * mapUnit, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - (_ARG_1_ - playerY) / mapZoom * mapUnit, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + (playerY - _ARG_1_) / mapZoom * mapUnit, _UPVALUE0_.y + _UPVALUE0_.h / 2)))
end
getResourceName(getThisResource(), true, 522095111)
return
