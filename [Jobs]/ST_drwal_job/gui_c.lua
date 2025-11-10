screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
table_statistics = {}
tressStandard = {}
tressBlip = {}
selfJob = {}
selfSelect = {}
tressSciete = {}
treesDoZebrania = {}
drzewa_na_aucie = {}
ulozoneDrewno = {}
windows = {
  category = false,
  background = false,
  computer = false,
  scinanieDrewna = false,
  odbieraniePieniedzy = false
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
      dxDrawText("DRWAL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Wciel si\196\153 w drwala! Chwy\196\135 siekier\196\153, wybierz zlecenie,\npo\197\155cinaj drzewa i za\197\130aduj je do pojazdu. Nast\196\153pnie\ndostarcz drewno do tartaku, aby zdoby\196\135 nagrod\196\153\nw postaci pieni\196\153dzy. Sta\197\132 si\196\153 mistrzem w \197\155wiecie wycinki!", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Level potaci: 15", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
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
        dxDrawText("EXP: #ffbf00" .. _FORV_8_.exp_drwal .. [[

#b4b4b4EXP RANKING: #ffbf00]] .. _FORV_8_.exp1_drwal .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_drwal .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobek_drwal) .. "\n#b4b4b4Wyp\197\130ata do odebrania: #00ad23" .. przecinek(_FORV_8_.wyplata_drwal) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 495 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_drwal), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
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
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_drwal) .. " #ffffffPLN", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 178 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_drwal) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 242 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJobTable) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_drwal
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
      dxDrawText("MNO\197\187NIK #00ad23X" .. _FORV_10_.money, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 200 + rgb), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.category == "WYBIERZ TRYB" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("DRWAL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("Wybierz w jakim trybie pracy chcesz pracowa\196\135", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 85 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(70, 70, 70, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 202.5 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawImage(_UPVALUE0_.x + 255 / zoom, _UPVALUE0_.y + 202.5 / zoom, 120 / zoom, 120 / zoom, textures.solo_icon, 0, 0, 0, tocolor(255, 147, 0, 255), false)
      dxDrawText("SOLO", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 465 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(90, 90, 90, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 202.5 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 255 / zoom, _UPVALUE0_.y + 202.5 / zoom, 120 / zoom, 120 / zoom, textures.solo_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("SOLO", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 465 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(70, 70, 70, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 202.5 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 202.5 / zoom, 120 / zoom, 120 / zoom, textures.duo_icon, 0, 0, 0, tocolor(255, 147, 0, 255), false)
      dxDrawText("DUO", _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y + 465 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(90, 90, 90, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 202.5 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 202.5 / zoom, 120 / zoom, 120 / zoom, textures.duo_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("DUO", _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y + 465 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.category == "WYBIERZ GRACZA" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ WSP\195\147\197\129PRACOWNIKA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 122 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("WYBIERZ GRACZA, Z KT\195\147RYM B\196\152DZIESZ WSP\195\147LNIE PRACOWA\196\134", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_ = 1, 9 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 115 / zoom + 50 / zoom * (xY - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 80))
    end
    players = {}
    for _FORV_8_, _FORV_9_ in ipairs(getElementsByType("player")) do
      if _FORV_9_ ~= localPlayer and not getElementData(_FORV_9_, "spec:pos") and getDistanceBetweenPoints3D(getElementPosition(localPlayer)) < 20 then
        table.insert(players, {
          _FORV_9_,
          (getDistanceBetweenPoints3D(getElementPosition(localPlayer)))
        })
        table.sort(players, function(_ARG_0_, _ARG_1_)
          return _ARG_0_[2] < _ARG_1_[2]
        end)
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(players) do
      if _FORV_8_ >= 1 and _FORV_8_ <= 9 then
        if isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 110))
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 80))
        end
        dxDrawText(getPlayerName(_FORV_9_[1]) .. " #ff8c00(" .. math.floor(_FORV_9_[2]) .. "m)", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 70 / zoom + 100 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText(getElementData(_FORV_9_[1], "player:sid"), _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom + 100 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 310 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 65 / zoom, _UPVALUE0_.y + 27 / zoom, 20 / zoom, 20 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 66 / zoom, _UPVALUE0_.y + 26 / zoom, 22 / zoom, 22 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 65 / zoom, _UPVALUE0_.y + 27 / zoom, 20 / zoom, 20 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "oczekiwanieNaGracza" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("OCZEKIWANIE NA GRACZA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 122 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText([[
OCZEKIWANIE NA POTWIERDZENIE PRACY DUO PRZEZ
GRACZA #ffbb00]] .. getPlayerName(self.selectPlayerOffer) .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 320 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.scinanieDrewna == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 2 / zoom, _UPVALUE1_.y - 252 / zoom, _UPVALUE1_.w + 4 / zoom, _UPVALUE1_.h + 4 / zoom, 15 / zoom, tocolor(colorBar[1], colorBar[2], colorBar[3], 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y - 250 / zoom, _UPVALUE1_.w, _UPVALUE1_.h, 15 / zoom, tocolor(35, 35, 35, 255), false)
    if isElement(tressStandard[selfJob.idScinanegoDrewna]) then
      dxDrawText("\197\154CINANIE DREWNA " .. selfJob.punktyRabanie .. " / " .. selfJob.punktyRabanieMax, _UPVALUE1_.x + 3 / zoom, _UPVALUE1_.y - 598 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffffff\197\154CINANIE DREWNA #ffbb00" .. selfJob.punktyRabanie .. " #ffffff/ #ffbb00" .. selfJob.punktyRabanieMax, _UPVALUE1_.x + 1 / zoom, _UPVALUE1_.y - 600 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawText("R\196\132BANIE DREWNA " .. selfJob.punktyRabanie .. " / " .. selfJob.punktyRabanieMax, _UPVALUE1_.x + 3 / zoom, _UPVALUE1_.y - 598 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffffffR\196\132BANIE DREWNA #ffbb00" .. selfJob.punktyRabanie .. " #ffffff/ #ffbb00" .. selfJob.punktyRabanieMax, _UPVALUE1_.x + 1 / zoom, _UPVALUE1_.y - 600 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("KLIKNIJ SPACJ\196\152 GDY WSKA\197\185NIK B\196\152DZIE NA ZIELONYM POLU", _UPVALUE1_.x + 3 / zoom, _UPVALUE1_.y - 388 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    dxDrawText("KLIKNIJ #ffbb00SPACJ\196\152 #ffffffGDY WSKA\197\185NIK B\196\152DZIE NA ZIELONYM POLU", _UPVALUE1_.x + 1 / zoom, _UPVALUE1_.y - 390 / zoom, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 230 / zoom, _UPVALUE1_.y - 248 / zoom, _UPVALUE1_.w - 460 / zoom, _UPVALUE1_.h - 4 / zoom, 15 / zoom, tocolor(0, 100, 0, 255), false)
    dxDrawRectangle(_UPVALUE1_.x + selfJob.pozycjaLiniX / zoom, _UPVALUE1_.y - 245 / zoom, 3 / zoom, _UPVALUE1_.h - 10 / zoom, tocolor(255, 187, 0, 255), false)
    if selfJob.stronaLini == "prawo" then
      selfJob.pozycjaLiniX = selfJob.pozycjaLiniX + selfJob.predkoscLini
    else
      selfJob.pozycjaLiniX = selfJob.pozycjaLiniX - selfJob.predkoscLini
    end
    if selfJob.pozycjaLiniX / zoom < 0 then
      selfJob.stronaLini = "prawo"
    elseif selfJob.pozycjaLiniX / zoom + _UPVALUE1_.x > _UPVALUE1_.x + _UPVALUE1_.w then
      selfJob.stronaLini = "lewo"
    end
  end
  if windows.odbieraniePieniedzy == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 98 / zoom, _UPVALUE0_.y + 48 / zoom, _UPVALUE0_.w - 196 / zoom, _UPVALUE0_.h - 96 / zoom, 35 / zoom, tocolor(255, 187, 0, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 50 / zoom, _UPVALUE0_.w - 200 / zoom, _UPVALUE0_.h - 100 / zoom, 35 / zoom, tocolor(20, 20, 20, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 100 / zoom, _UPVALUE0_.w - 240 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("KIEROWNIK TARTAKU", _UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y - 412 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 145 / zoom, _UPVALUE0_.y + 67 / zoom, 20 / zoom, 20 / zoom) then
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 146 / zoom, _UPVALUE0_.y + 66 / zoom, 22 / zoom, 22 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 145 / zoom, _UPVALUE0_.y + 67 / zoom, 20 / zoom, 20 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 148 / zoom, _UPVALUE0_.y + 123 / zoom, 254 / zoom, _UPVALUE0_.h - 196 / zoom, 35 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom, 35 / zoom, tocolor(12, 12, 12, 255), false)
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 140 / zoom, 150 / zoom, 150 / zoom, textures.automation_icon, 0, 0, 0, tocolor(255, 255, 255, 190), false)
      dxDrawText("AUTOMATYCZNIE ROZ\197\129ADUJ\nDREWNO I OTRZYMAJ", _UPVALUE0_.x - 330 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(self.money1) .. " #ffffffPLN", _UPVALUE0_.x - 330 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 148 / zoom, _UPVALUE0_.y + 123 / zoom, 254 / zoom, _UPVALUE0_.h - 196 / zoom, 35 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom, 35 / zoom, tocolor(15, 15, 15, 255), false)
      dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 140 / zoom, 150 / zoom, 150 / zoom, textures.automation_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("AUTOMATYCZNIE ROZ\197\129ADUJ\nDREWNO I OTRZYMAJ", _UPVALUE0_.x - 330 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(self.money1) .. " #ffffffPLN", _UPVALUE0_.x - 330 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + _UPVALUE0_.w - 402 / zoom, _UPVALUE0_.y + 123 / zoom, 254 / zoom, _UPVALUE0_.h - 196 / zoom, 35 / zoom, tocolor(40, 40, 40, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom, 35 / zoom, tocolor(12, 12, 12, 255), false)
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 350 / zoom, _UPVALUE0_.y + 140 / zoom, 150 / zoom, 150 / zoom, textures.trees_icon, 0, 0, 0, tocolor(255, 255, 255, 190), false)
      dxDrawText("POUK\197\129ADAJ DREWNO I\nOTRZYMAJ", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(self.money1) .. " #ffffffPLN", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#00ff59+" .. przecinek(math.floor(self.money1 * 1.2 - self.money1)) .. " #ffffffPLN", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 330 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + _UPVALUE0_.w - 402 / zoom, _UPVALUE0_.y + 123 / zoom, 254 / zoom, _UPVALUE0_.h - 196 / zoom, 35 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom, 35 / zoom, tocolor(15, 15, 15, 255), false)
      dxDrawImage(_UPVALUE0_.x + _UPVALUE0_.w - 350 / zoom, _UPVALUE0_.y + 140 / zoom, 150 / zoom, 150 / zoom, textures.trees_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("POUK\197\129ADAJ DREWNO I\nOTRZYMAJ", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(self.money1) .. " #ffffffPLN", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 190), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      dxDrawText("#00ff59+" .. przecinek(math.floor(self.money1 * 1.2 - self.money1)) .. " #ffffffPLN", _UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 330 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    end
  end
end
function windowComputer()
  if windows.computer == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, texturesComputer.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and mapIsMoving then
      if not cursorX then
      else
      end
      playerX = -(cursorX * screenW * mapZoom - mapOffsetX)
      playerY = cursorY * screenH * mapZoom - mapOffsetY
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, (3000 + playerX) * mapUnit - _UPVALUE1_.w / 2 * mapZoom, (3000 - playerY) * mapUnit - _UPVALUE1_.h / 2 * mapZoom, _UPVALUE1_.w * mapZoom, _UPVALUE1_.h * mapZoom, texturesComputer.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    if getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE1_.x and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE1_.x + _UPVALUE1_.w and getMapFromWorldPosition(getElementPosition(localPlayer)) >= _UPVALUE1_.y and getMapFromWorldPosition(getElementPosition(localPlayer)) <= _UPVALUE1_.y + _UPVALUE1_.h then
      dxDrawImage(getMapFromWorldPosition(getElementPosition(localPlayer)) - 10 / zoom, getMapFromWorldPosition(getElementPosition(localPlayer)) - 10 / zoom, 20 / zoom, 20 / zoom, texturesComputer.player_icon, 360 - getElementRotation(localPlayer))
    end
    if selfSelect.id then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 12 / zoom, _UPVALUE0_.y + 8 / zoom, _UPVALUE0_.w - 24 / zoom, 70 / zoom, 34 / zoom, tocolor(22, 22, 22, 245))
      dxDrawText("ZLECENIE ##ffbf00" .. selfSelect.id or "-", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      dxDrawText("DYSTANS", _UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawText("#ffbf00" .. string.format("%.1f #ffffffkm", math.floor(getDistanceBetweenPoints3D(selfSelect.posCenter[1], selfSelect.posCenter[2], selfSelect.posCenter[3], getElementPosition(localPlayer))) / 1000), _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText("PRZEWIDYWANY ZAROBEK", _UPVALUE0_.x + 600 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23$", _UPVALUE0_.x + 776 / zoom, _UPVALUE0_.y - 141.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      for _FORV_21_, _FORV_22_ in ipairs(table_statistics) do
        if _FORV_22_.ulepszenie_zarobek_drwal == 1 then
        end
      end
      dxDrawText("#00ad23" .. przecinek(math.floor((math.floor(math.floor(selfSelect.przewidywanyZarobek * moneyJob * 1.1) * 1.1)))) .. " #ffffffPLN", _UPVALUE0_.x + 620 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      if selfJob.id then
        dxDrawText("ZAPAKOWANE DREWNO", _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawText("#fbfd57" .. selfJob.zapakowaneDoPojazdu .. " #ffffff/ #fbfd57" .. selfJob.ilosc, _UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 799 / zoom, _UPVALUE0_.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 15, 15, 255))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(18, 18, 18, 245))
          dxDrawText("\226\136\142", _UPVALUE0_.x + 814 / zoom, _UPVALUE0_.y - 116 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Zako\197\132cz zlecenie", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
            dxDrawText("Zako\197\132cz zlecenie", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 799 / zoom, _UPVALUE0_.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(255, 15, 15, 150))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(15, 15, 15, 245))
          dxDrawText("\226\136\142", _UPVALUE0_.x + 814 / zoom, _UPVALUE0_.y - 116 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        end
      else
        dxDrawText("DRZEWA", _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawText("#fbfd57" .. selfSelect.ilosc, _UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 799 / zoom, _UPVALUE0_.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(15, 255, 15, 255))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(18, 18, 18, 245))
          dxDrawText("\226\150\182", _UPVALUE0_.x + 813 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Wybierz", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
            dxDrawText("Wybierz", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font2_14"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 799 / zoom, _UPVALUE0_.y + 20 / zoom, 47 / zoom, 47 / zoom, 15 / zoom, tocolor(15, 255, 15, 150))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(15, 15, 15, 245))
          dxDrawText("\226\150\182", _UPVALUE0_.x + 813 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        end
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 12 / zoom, _UPVALUE0_.y + 8 / zoom, _UPVALUE0_.w - 24 / zoom, 70 / zoom, 34 / zoom, tocolor(22, 22, 22, 235))
      dxDrawText("WYBIERZ ZLECENIE", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    end
    if selfJob.id then
    else
      xY = 0
      for _FORV_19_, _FORV_20_ in ipairs(positions) do
        xY = xY + 1
        if isMouseIn(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom) then
          dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, texturesComputer.blip, 0, 0, 0, tocolor(255, 255, 255, 255))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(100, 100, 100, 200))
        else
          dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_20_[1]].center[1], positionTree[_FORV_20_[1]].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, texturesComputer.blip, 0, 0, 0, tocolor(200, 200, 200, 200))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(50, 50, 50, 200))
        end
        if selfSelect.id == _FORV_20_[1] then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / zoom, _UPVALUE0_.y + 90 / zoom + 55 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
        dxDrawText("ZLECENIE ##ffbf00" .. _FORV_20_[1], _UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 19 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      end
    end
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    self.time = self.time + 1
    self.timeSave = self.timeSave + 1
  end
  if self.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 220))
    if twojWspolpracownik then
      if isElement(twojWspolpracownik) then
        dxDrawImage(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y - 10 / zoom, 70 / zoom, 70 / zoom, texturesRender.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if avatarIMG then
          dxDrawImage(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y - 10 / zoom, 70 / zoom, 70 / zoom, avatarIMG, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        dxDrawText("Wsp\195\179\197\130praca z #ffbf00" .. getPlayerName(twojWspolpracownik) .. "", _UPVALUE0_.x + 65 / zoom, _UPVALUE0_.y - 122 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
      else
        twojWspolpracownik = false
        endJobAll()
        triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "tpPos", localPlayer, {
          -2008.41,
          -2419.32,
          30.62
        })
        exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153, poniewa\197\188 wsp\195\179\197\130pracownik wyszed\197\130 z serwera", "info")
      end
    else
      dxDrawText("DRWAL - LEVEL #00a118" .. levelJob, _UPVALUE0_.x, _UPVALUE0_.y - 124 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(self.time) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("DREWNO: #ffbf00" .. self.exp1, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("ZAROBEK: #ffbf00" .. przecinek(math.floor(self.money)) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 90 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("EXP: #ffbf00" .. self.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawText(self.textInfo, _UPVALUE0_.x, _UPVALUE0_.y - 30 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
  end
  if self.posRender and getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) and getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - 83, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - 85, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(self.posRender[1], self.posRender[2], self.posRender[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 2, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(self.posRender[1], self.posRender[2], self.posRender[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(self.posRender[1], self.posRender[2], self.posRender[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - 86 / zoom, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - 85 / zoom, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText(self.textRender, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(self.posRender[1], self.posRender[2], self.posRender[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if isElement(self.siekiera) then
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "giveTakeWeapon", localPlayer, true)
          destroyElement(self.siekiera)
          exports.st_gui:showPlayerNotification("Udaj si\196\153 do zaznaczonego pojazdu", "info")
          for _FORV_13_, _FORV_14_ in ipairs(table_statistics) do
            if _FORV_14_.ulepszenie_auto_drwal == 2 then
              self.vehicleClient = createVehicle(505, pozycjaPojazdu[1], pozycjaPojazdu[2], pozycjaPojazdu[3], pozycjaPojazdu[4], pozycjaPojazdu[5], pozycjaPojazdu[6])
            elseif _FORV_14_.ulepszenie_auto_drwal == 1 then
              self.vehicleClient = createVehicle(554, pozycjaPojazdu[1], pozycjaPojazdu[2], pozycjaPojazdu[3], pozycjaPojazdu[4], pozycjaPojazdu[5], pozycjaPojazdu[6])
            else
              self.vehicleClient = createVehicle(543, pozycjaPojazdu[1], pozycjaPojazdu[2], pozycjaPojazdu[3], pozycjaPojazdu[4], pozycjaPojazdu[5], pozycjaPojazdu[6])
            end
          end
          self.posRender = {
            pozycjaPojazdu[1],
            pozycjaPojazdu[2],
            pozycjaPojazdu[3] + 0.6
          }
          self.textRender = "ABY WSI\196\132\197\154\196\134 DO AUTA KLIKNIJ"
          self.textInfo = "Udaj si\196\153 do #ffbb00pojazdu#ffffff"
          setElementFrozen(self.vehicleClient, true)
          setElementAlpha(self.vehicleClient, 150)
        elseif self.textInfo == "Udaj si\196\153 do #ffbb00pojazdu#ffffff" and self.lider == true then
          for _FORV_19_, _FORV_20_ in ipairs(table_statistics) do
            if _FORV_20_.ulepszenie_auto_drwal == 2 then
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "createVehicle", localPlayer, twojWspolpracownik, 2, {
                getElementPosition(self.vehicleClient)
              }, _FORV_20_.ulepszenie_silnik_drwal)
            elseif _FORV_20_.ulepszenie_auto_drwal == 1 then
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "createVehicle", localPlayer, twojWspolpracownik, 1, {
                getElementPosition(self.vehicleClient)
              }, _FORV_20_.ulepszenie_silnik_drwal)
            else
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "createVehicle", localPlayer, twojWspolpracownik, false, {
                getElementPosition(self.vehicleClient)
              }, _FORV_20_.ulepszenie_silnik_drwal)
            end
          end
          self.posRender = false
          if isElement(self.vehicleClient) then
            destroyElement(self.vehicleClient)
          else
          end
        end
      end
    end
  end
  if isElement(self.blipZlecenie) then
    if getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) and getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) then
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) - 83, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)))
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) - 85, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)))
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.blipZlecenie))) .. "m", getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + 2, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.blipZlecenie))) .. "m", getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.blipZlecenie)))
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(self.blipZlecenie))) < 300 and not clickC then
        setTimer(function()
          clickC = false
        end, 1500, 1)
        destroyElement(self.blipZlecenie)
        self.textInfo = "Po\197\155cinaj oraz zapakuj drewno #ffbf00" .. selfJob.zapakowaneDoPojazdu .. " #ffffff/ #ffbf00" .. selfJob.ilosc .. ""
      end
    end
  elseif 0 < #selfJob.tableTrees then
    for _FORV_10_, _FORV_11_ in ipairs(selfJob.tableTrees) do
      if getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) then
        dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 83, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        dxDrawText("\226\134\134", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 85, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 2, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
        if 2 > math.floor(getDistanceBetweenPoints3D(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3], getElementPosition(localPlayer))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 95 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 29 / zoom, 190 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 94 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 30 / zoom, 188 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
          dxDrawText("ABY ROZPOCZ\196\132\196\134 \197\154CINANIE KLIKNIJ", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("R", getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_.pos[1], _FORV_11_.pos[2], _FORV_11_.pos[3] + 0.5, 200))
          if getKeyState("R") and not clickC and not selfJob.trzymaDrewno and not getPedOccupiedVehicle(localPlayer) then
            clickC = true
            setTimer(function()
              clickC = false
            end, 500, 1)
            rozpocznijScinanie(_FORV_11_.id, _FORV_10_)
          end
        end
      end
    end
  end
  if 0 < #selfJob.tableTreesSciete then
    for _FORV_10_, _FORV_11_ in ipairs(selfJob.tableTreesSciete) do
      if getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) and getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) then
        dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - 83, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
        dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - 85, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(tressSciete[_FORV_11_.id]))) .. "m", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 2, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(tressSciete[_FORV_11_.id]))) .. "m", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
        if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(tressSciete[_FORV_11_.id]))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
          dxDrawText("ABY POR\196\132BA\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("R", getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(tressSciete[_FORV_11_.id])))
          if getKeyState("R") and not clickC and not selfJob.trzymaDrewno and not getPedOccupiedVehicle(localPlayer) then
            clickC = true
            setTimer(function()
              clickC = false
            end, 500, 1)
            rozpocznijScinanie(_FORV_11_.id, _FORV_10_)
          end
        end
      end
    end
  end
  if 0 < #selfJob.tableTreesDoZebrania then
    for _FORV_10_, _FORV_11_ in ipairs(selfJob.tableTreesDoZebrania) do
      if isElement(treesDoZebrania[_FORV_11_.id]) and getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) and getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) then
        dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - 83, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
        dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - 85, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(treesDoZebrania[_FORV_11_.id]))) .. "m", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 2, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(treesDoZebrania[_FORV_11_.id]))) .. "m", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
        if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(treesDoZebrania[_FORV_11_.id]))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
          dxDrawText("ABY PODNIE\197\154\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("R", getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(treesDoZebrania[_FORV_11_.id])))
          if getKeyState("R") and not clickC then
            clickC = true
            setTimer(function()
              clickC = false
            end, 1500, 1)
            if not getPedOccupiedVehicle(localPlayer) and isElement(self.vehicleJob) and isElement(treesDoZebrania[_FORV_11_.id]) and not isElement(selfJob.drzewoPojazdAlpha) then
              removeById(selfJob.tableTreesDoZebrania, _FORV_11_.id)
              setTimer(function()
                if isElement(treesDoZebrania[_UPVALUE0_.id]) then
                  destroyElement(treesDoZebrania[_UPVALUE0_.id])
                end
              end, 500, 1)
              selfJob.drzewoPojazdAlpha = createObject(1463, 9999, 9999, 555)
              setObjectScale(selfJob.drzewoPojazdAlpha, 0.35)
              attachElements(selfJob.drzewoPojazdAlpha, self.vehicleJob, packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][1], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][2], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][3])
              if getElementModel(self.vehicleJob) == 554 then
                attachElements(selfJob.drzewoPojazdAlpha, self.vehicleJob, packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][1], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][2], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][3], 0, 0, 90)
              else
                attachElements(selfJob.drzewoPojazdAlpha, self.vehicleJob, packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][1], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][2], packages_positions[getElementModel(self.vehicleJob)][#drzewa_na_aucie + 1][3])
              end
              setElementAlpha(selfJob.drzewoPojazdAlpha, 150)
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroScinanie", localPlayer, twojWspolpracownik, "podnosiDrewno", _FORV_11_.id, _FORV_10_)
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "podniesDrewno", localPlayer)
              selfJob.trzymaDrewno = _FORV_11_.id
              runningBlock(localPlayer, true)
              addEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
            end
          end
        end
      end
    end
  end
  if (selfJob.trzymaDrewno or self.ukladanieDrewna) and isElement(self.vehicleJob) then
    if self.ukladanieDrewna or getVehicleDoorOpenRatio(self.vehicleJob, 1) == 0 then
      vehx, vehy, vehz = getVehicleComponentPosition(self.vehicleJob, "boot_dummy", "world")
    else
      vehx, vehy, vehz = getElementPosition(selfJob.drzewoPojazdAlpha)
    end
    if getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) and getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) then
      dxDrawText("\226\134\134", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - 83, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
      dxDrawText("\226\134\134", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - 85, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(vehx, vehy, vehz, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 2, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(vehx, vehy, vehz, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
      if 3 > math.floor(getDistanceBetweenPoints3D(vehx, vehy, vehz, getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - 86 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - 85 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        if getVehicleDoorOpenRatio(self.vehicleJob, 1) == 0 then
          dxDrawText("ABY OTWORZY\196\134 KLAP\196\152 KLIKNIJ", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
        elseif self.ukladanieDrewna then
          dxDrawText("ABY WZI\196\132\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
        else
          dxDrawText("ABY OD\197\129O\197\187Y\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(vehx, vehy, vehz + 0.5, 200))
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if not getPedOccupiedVehicle(localPlayer) then
            if getVehicleDoorOpenRatio(self.vehicleJob, 1) == 0 then
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "otworzBagaznik", localPlayer, self.vehicleJob, true)
            elseif self.ukladanieDrewna == true then
              if not self.posOdkladanieDrewna then
                if 0 < #drzewa_na_aucie then
                  attachTreeToVehicle(self.vehicleJob, #drzewa_na_aucie - 1)
                else
                  attachTreeToVehicle(self.vehicleJob, 0)
                end
                triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "podniesDrewno", localPlayer)
                if twojWspolpracownik then
                  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroUkladanie", localPlayer, twojWspolpracownik, "podnosiDrewno")
                end
                self.posOdkladanieDrewna = {
                  ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][1],
                  ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][2],
                  ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][3]
                }
                selfJob.drzewoPojazdAlpha = createObject(1463, ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][1], ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][2], ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][3], 0, 0, ukladanieDrewna_pos[self.idUkladaniaPos][#ulozoneDrewno + 1][4])
                setObjectScale(selfJob.drzewoPojazdAlpha, 0.35)
                setElementAlpha(selfJob.drzewoPojazdAlpha, 150)
                runningBlock(localPlayer, true)
              end
            else
              removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
              runningBlock(localPlayer, false)
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
              selfJob.trzymaDrewno = false
              selfJob.zapakowaneDoPojazdu = selfJob.zapakowaneDoPojazdu + 1
              self.textInfo = "Po\197\155cinaj oraz zapakuj drewno #ffbf00" .. selfJob.zapakowaneDoPojazdu .. " #ffffff/ #ffbf00" .. selfJob.ilosc .. ""
              attachTreeToVehicle(self.vehicleJob, self.exp1 + selfJob.zapakowaneDoPojazdu)
              if isElement(selfJob.drzewoPojazdAlpha) then
                destroyElement(selfJob.drzewoPojazdAlpha)
              end
              if selfJob.zapakowaneDoPojazdu >= selfJob.ilosc then
                self.exp = self.exp + selfJob.ilosc
                self.exp1 = self.exp1 + selfJob.ilosc
                for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
                  if _FORV_15_.ulepszenie_zarobek_drwal == 1 then
                  end
                end
                if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Drwal" then
                end
                if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
                end
                self.money = self.money + math.floor(math.floor(math.floor(selfJob.zarobek * moneyJob * 1.1) * 1.1) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))
                self.money1 = self.money1 + math.floor(math.floor(math.floor(selfJob.zarobek * moneyJob * 1.1) * 1.1) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))
                exports.st_gui:showPlayerNotification("Pomy\197\155lnie za\197\130adowano wszystkie drewna do pojazdu", "success")
                setTimer(function()
                  exports.st_gui:showPlayerNotification("Wybierz kolejne zleceniu lub wr\195\179\196\135 do tartaku", "info")
                  self.textInfo = "Wybierz nast\196\153pne #ffbb00zlecenie#ffffff lub wr\195\179\196\135 na #ffbb00tartak"
                end, 2000, 1)
                selfSelect = {}
                selfSelect.id = false
                selfSelect.ilosc = 0
                selfJob = {}
                selfJob.tableTrees = {}
                selfJob.tableTreesSciete = {}
                selfJob.tableTreesDoZebrania = {}
                triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "otworzBagaznik", localPlayer, self.vehicleJob, false)
                if twojWspolpracownik then
                  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "odstawilDrewnoSynchro", localPlayer, twojWspolpracownik, true)
                end
              else
                if twojWspolpracownik then
                  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "odstawilDrewnoSynchro", localPlayer, twojWspolpracownik, false)
                end
                exports.st_gui:showPlayerNotification("Zapakowano drewno " .. selfJob.zapakowaneDoPojazdu .. "/" .. selfJob.ilosc .. " do pojazdu", "info")
              end
            end
          end
        end
      end
    end
  end
  if isElement(self.ped) and not self.ukladanieDrewna and getScreenFromWorldPosition(getElementPosition(self.ped)) and getScreenFromWorldPosition(getElementPosition(self.ped)) and math.floor(getDistanceBetweenPoints3D(getElementPosition(self.ped))) < 100 then
    if 0 < self.exp1 then
      for _FORV_16_, _FORV_17_ in ipairs(line) do
        if math.floor(getDistanceBetweenPoints3D(_FORV_17_[1], _FORV_17_[2], _FORV_17_[3], getElementPosition(localPlayer))) < 20 then
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 187, 5, 255), 3)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 3)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 3)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 187, 5, 255), 2)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
          end
          if isLineOfSightClear(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), getGroundPosition(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.sin(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4] + 270)) - 6.2 * math.cos(-math.rad(({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[4])), ({
            _FORV_17_[1],
            _FORV_17_[2],
            _FORV_17_[3],
            _FORV_17_[4]
          })[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 187, 0, 255), 2)
          else
            dxDrawLine3D(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), getGroundPosition(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[1] - 1.75 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.sin(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[2] - 1.75 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 90)) - 7.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 180)) - 2.5 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4] + 270)) - 6.2 * math.cos(-math.rad(({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[4])), ({
              _FORV_17_[1],
              _FORV_17_[2],
              _FORV_17_[3],
              _FORV_17_[4]
            })[3] + 5) + 0.3, tocolor(255, 0, 0, 255), 2)
          end
        end
      end
    end
    dxDrawText("#00ad23$", getScreenFromWorldPosition(getElementPosition(self.ped)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)) - 83, getScreenFromWorldPosition(getElementPosition(self.ped)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
    dxDrawText("#00ad23$", getScreenFromWorldPosition(getElementPosition(self.ped)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)) - 85, getScreenFromWorldPosition(getElementPosition(self.ped)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.ped))) .. "m", getScreenFromWorldPosition(getElementPosition(self.ped)) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)) + 2, getScreenFromWorldPosition(getElementPosition(self.ped)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(self.ped))) .. "m", getScreenFromWorldPosition(getElementPosition(self.ped)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
    if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(self.ped))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.ped)) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(self.ped)) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.ped)) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(self.ped)) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("ABY OTWORZY\196\134 OKNO KLIKNIJ", getScreenFromWorldPosition(getElementPosition(self.ped)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(self.ped)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(self.ped)) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(self.ped)) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(getElementPosition(self.ped)) - screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(self.ped)) + screenW / 5, getScreenFromWorldPosition(getElementPosition(self.ped)))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 500, 1)
        if self.lider == true and windows.odbieraniePieniedzy == false and self.ukladanieDrewna == false and not getPedOccupiedVehicle(localPlayer) then
          if 0 < self.exp1 then
            textures = {
              cross = dxCreateTexture(":ST_gui/img/cross.png"),
              automation_icon = dxCreateTexture("img/automation_icon.png"),
              trees_icon = dxCreateTexture("img/trees_icon.png")
            }
            addEventHandler("onClientRender", root, window)
            addEventHandler("onClientClick", root, click)
            windows.odbieraniePieniedzy = true
            showCursor(true)
            addEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
          else
            exports.st_gui:showPlayerNotification("Nie posiadasz \197\188adnego drewna na pace", "error")
          end
        end
      end
    end
  end
  if self.posOdkladanieDrewna and getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) and getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 2 - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - 83, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - 85, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 2 - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 2, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
    if math.floor(getDistanceBetweenPoints3D(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], getElementPosition(localPlayer))) < 2 then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - 86 / zoom, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - 85 / zoom, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("ABY OD\197\129O\197\187Y\196\134 DREWNO KLIKNIJ", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 93 / zoom, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - 10 / zoom, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) - screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + 138 / zoom, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200) + screenW / 5, getScreenFromWorldPosition(self.posOdkladanieDrewna[1], self.posOdkladanieDrewna[2], self.posOdkladanieDrewna[3], 200))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if not getPedOccupiedVehicle(localPlayer) then
          self.odlozoneDrewno = self.odlozoneDrewno + 1
          self.textInfo = "Pouk\197\130adaj drewno #ffbf00" .. self.odlozoneDrewno .. " #ffffff/ #ffbf00" .. self.exp1 .. ""
          exports.st_gui:showPlayerNotification("U\197\130o\197\188ono drewno " .. self.odlozoneDrewno .. "/" .. self.exp1 .. "", "info")
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "usunDrewno", localPlayer)
          drewnoUlozone(self.odlozoneDrewno, self.idUkladaniaPos)
          self.posOdkladanieDrewna = false
          if isElement(selfJob.drzewoPojazdAlpha) then
            destroyElement(selfJob.drzewoPojazdAlpha)
          end
          runningBlock(localPlayer, false)
          if self.odlozoneDrewno >= self.exp1 then
            giveMoney(true)
            if twojWspolpracownik then
              triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroUkladanie", localPlayer, twojWspolpracownik, "dajkase", true)
            end
            triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "otworzBagaznik", localPlayer, self.vehicleJob, false)
          elseif twojWspolpracownik then
            triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroUkladanie", localPlayer, twojWspolpracownik, "odkladaDrewno")
          end
        end
      end
    end
  end
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "space" and _ARG_1_ then
    if clickC then
      colorBar = {
        50,
        0,
        0
      }
    elseif _UPVALUE0_.x + selfJob.pozycjaLiniX / zoom > _UPVALUE0_.x + 230 / zoom and _UPVALUE0_.x + 230 / zoom + _UPVALUE0_.w - 460 / zoom > _UPVALUE0_.x + selfJob.pozycjaLiniX / zoom then
      colorBar = {
        50,
        200,
        50
      }
      klikniecieSpacjiMiniGierka()
      clickC = true
      setTimer(function()
        clickC = false
      end, 600, 1)
    else
      clickC = true
      setTimer(function()
        clickC = false
      end, 600, 1)
      colorBar = {
        200,
        50,
        50
      }
    end
    setTimer(function()
      colorBar = {
        50,
        50,
        50
      }
    end, 100, 1)
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "WYBIERZ GRACZA" then
      for _FORV_8_, _FORV_9_ in ipairs(players) do
        if 1 <= _FORV_8_ and _FORV_8_ <= 9 and isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom) then
          if getElementData(localPlayer, "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Aktualnie nie mo\197\188esz zaprosi\196\135 wybranego gracza", "error")
            return
          end
          if getElementData(_FORV_9_[1], "player:job") then
            exports.st_gui:showPlayerNotification("Wybrany gracz ju\197\188 gdzie\197\155 pracuje", "error")
            return
          end
          if getElementData(_FORV_9_[1], "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Aktualnie nie mo\197\188esz zaprosi\196\135 wybranego gracza", "error")
            return
          end
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "sendOfferJob", localPlayer, _FORV_9_[1], positions, pozycjaPojazdu)
          windows.category = "oczekiwanieNaGracza"
          self.selectPlayerOffer = _FORV_9_[1]
        end
      end
    end
    if windows.computer == true then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(positions) do
        xY = xY + 1
        if isMouseIn(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_8_[1]].center[1], positionTree[_FORV_8_[1]].center[2]))) - 38 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionTree[_FORV_8_[1]].center[1], positionTree[_FORV_8_[1]].center[2]))) - 38 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom) then
          if selfJob.id then
            return
          end
          if self.ukladanieDrewna then
            return
          end
          selfSelect = {}
          selfSelect.id = _FORV_8_[1]
          selfSelect.id_i = _FORV_7_
          selfSelect.posCenter = positionTree[_FORV_8_[1]].center
          selfSelect.ilosc = _FORV_8_[2]
          selfSelect.przewidywanyZarobek = _FORV_8_[3]
        end
      end
    end
    if windows.category == "level" then
      for _FORV_9_, _FORV_10_ in ipairs(levelJobTable) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
          if getElementData(localPlayer, "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz rozpocz\196\133\196\135 pracy", "error")
            return
          end
          levelJob = _FORV_10_.levelJob
          moneyJob = _FORV_10_.money
          if self.offerLevel == true then
            windows.category = false
            showCursor(false)
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            for _FORV_16_, _FORV_17_ in pairs(textures) do
              if isElement(_FORV_17_) then
                destroyElement(_FORV_17_)
              end
            end
            textures = {}
            self.offerLevel = false
            texturesRender = {
              user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
            }
            startJob()
          elseif self.wybraneDuo == true then
            self.wybraneDuo = false
            windows.category = "WYBIERZ GRACZA"
          else
            windows.category = false
            showCursor(false)
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            for _FORV_16_, _FORV_17_ in pairs(textures) do
              if isElement(_FORV_17_) then
                destroyElement(_FORV_17_)
              end
            end
            textures = {}
            startJob()
            self.lider = true
            exports.st_gui:showPlayerNotification("Rozpocz\196\153to prac\196\153", "success")
          end
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_8_.status == "0" or _FORV_8_.status == 0) then
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Drwal" then
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
      if getElementData(localPlayer, "player:lvl") < 15 then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 15 level aby tutaj pracowa\196\135", "error")
        return
      end
      windows.background = false
      windows.category = "WYBIERZ TRYB"
      self.lider = false
      refreshPacks()
      exports.st_gui:showPlayerNotification("Wybierz tryb", "info")
      pozycjaPojazdu = {
        positionVehicle[math.random(1, #positionVehicle)][1],
        positionVehicle[math.random(1, #positionVehicle)][2],
        positionVehicle[math.random(1, #positionVehicle)][3],
        positionVehicle[math.random(1, #positionVehicle)][4],
        positionVehicle[math.random(1, #positionVehicle)][5],
        positionVehicle[math.random(1, #positionVehicle)][6]
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
      if getElementData(localPlayer, "player:job") ~= "Drwal" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      if twojWspolpracownik then
        triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "endJob", localPlayer, twojWspolpracownik)
      end
      endJobAll()
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
        if _FORV_8_.wyplata_drwal > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_8_.wyplata_drwal) > 999999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
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
        if _FORV_8_.wyplata_drwal > 10000 then
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      self.wybraneDuo = false
      windows.category = "level"
      self.lider = true
      twojWspolpracownik = false
    elseif isMouseIn(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      self.wybraneDuo = true
      windows.category = "level"
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 65 / zoom, _UPVALUE0_.y + 27 / zoom, 20 / zoom, 20 / zoom) and windows.category == "WYBIERZ GRACZA" then
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
    elseif isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 21 / zoom, 45 / zoom, 45 / zoom) and windows.computer == true then
      if selfJob.id then
        if self.lider == true then
          self.exp = self.exp + selfJob.zapakowaneDoPojazdu
          self.exp1 = self.exp1 + selfJob.zapakowaneDoPojazdu
          for _FORV_9_, _FORV_10_ in ipairs(table_statistics) do
            if _FORV_10_.ulepszenie_zarobek_drwal == 1 then
            end
          end
          if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Drwal" then
          end
          if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
          end
          self.money = self.money + math.floor(math.floor(math.floor(selfJob.zarobek * moneyJob / selfJob.ilosc * selfJob.zapakowaneDoPojazdu * 1.1) * 1.1) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))
          self.money1 = self.money1 + math.floor(math.floor(math.floor(selfJob.zarobek * moneyJob / selfJob.ilosc * selfJob.zapakowaneDoPojazdu * 1.1) * 1.1) * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))
          exports.st_gui:showPlayerNotification("Anulowano zlecenie", "info")
          setTimer(function()
            exports.st_gui:showPlayerNotification("Wybierz kolejne zleceniu lub wr\195\179\196\135 do tartaku", "info")
            self.textInfo = "Wybierz nast\196\153pne #ffbb00zlecenie#ffffff lub wr\195\179\196\135 na #ffbb00tartak"
          end, 2000, 1)
          usunDrzewa_anulowanie()
          selfSelect = {}
          selfSelect.id = false
          selfSelect.ilosc = 0
          selfJob = {}
          selfJob.tableTrees = {}
          selfJob.tableTreesSciete = {}
          selfJob.tableTreesDoZebrania = {}
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "otworzBagaznik", localPlayer, self.vehicleJob, false)
          if twojWspolpracownik then
            triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "odstawilDrewnoSynchro", localPlayer, twojWspolpracownik, true, true)
          end
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz zako\197\132czy\196\135 zlecenia", "info")
        end
      else
        if self.ukladanieDrewna then
          return
        end
        if selfSelect.id then
          selfJob.posCenter = positionTree[selfSelect.id].center
          selfJob.id = selfSelect.id
          selfJob.zapakowaneDoPojazdu = 0
          selfJob.ilosc = selfSelect.ilosc
          selfJob.zarobek = selfSelect.przewidywanyZarobek
          table.remove(positions, selfSelect.id_i)
          selfJob.tableTrees = {}
          repeat
            for _FORV_9_, _FORV_10_ in ipairs(selfJob.tableTrees) do
              if positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][1] == _FORV_10_.id then
              end
            end
            if not true then
              if math.random(1, 5) == 1 then
              elseif 615 == 2 then
              elseif 687 == 3 then
              elseif 708 == 4 then
              elseif 655 == 5 then
              end
              table.insert(selfJob.tableTrees, {
                id = positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][1],
                pos = {
                  positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][2],
                  positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][3],
                  positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][4],
                  positionTree[selfJob.id].pkt[math.random(1, #positionTree[selfJob.id].pkt)][5]
                },
                modelID = 773
              })
            end
          until #selfJob.tableTrees == selfSelect.ilosc
          for _FORV_7_, _FORV_8_ in ipairs(selfJob.tableTrees) do
            tressStandard[_FORV_8_.id] = createObject(_FORV_8_.modelID, _FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3] - 1.2)
            tressBlip[_FORV_8_.id] = createBlip(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], 0, 1, 255, 191, 0)
            setElementFrozen(tressStandard[_FORV_8_.id], true)
          end
          if twojWspolpracownik then
            triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "wyslijTabeleDrzewa1", localPlayer, twojWspolpracownik, selfJob.tableTrees, selfJob.id, selfJob.zarobek, selfSelect.id_i)
          end
          self.blipZlecenie = createBlip(selfJob.posCenter[1], selfJob.posCenter[2], selfJob.posCenter[3], 41, 2, 0, 0, 0, 0, 0, 9999)
          self.textInfo = "Jed\197\186 do wybranego #b80000celu"
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 145 / zoom, _UPVALUE0_.y + 67 / zoom, 20 / zoom, 20 / zoom) and windows.odbieraniePieniedzy == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.odbieraniePieniedzy = false
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
      removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
    elseif isMouseIn(_UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom) and windows.odbieraniePieniedzy == true then
      if not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.odbieraniePieniedzy = false
        showCursor(false)
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
        giveMoney(false)
        if twojWspolpracownik then
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroUkladanie", localPlayer, twojWspolpracownik, "dajkase", false)
        end
        removeEventHandler("onClientVehicleStartEnter", self.vehicleJob, onVehEnter)
      end
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.y + 125 / zoom, 250 / zoom, _UPVALUE0_.h - 200 / zoom) and windows.odbieraniePieniedzy == true and not clickC then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      if twojWspolpracownik then
        jestKierowca = getPedOccupiedVehicle(twojWspolpracownik)
      else
        jestKierowca = false
      end
      if jestKierowca then
        exports.st_gui:showPlayerNotification("W poje\197\186dzie nie mo\197\188e by\196\135 kierowcy oraz pasa\197\188er\195\179w", "error")
      else
        for _FORV_11_, _FORV_12_ in ipairs(line) do
          if getDistanceBetweenPoints3D(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3], getElementPosition(self.vehicleJob)) < 10 then
            table.insert({}, _FORV_12_)
          end
        end
        if #{} == 0 then
          return
        end
        for _FORV_13_, _FORV_14_ in ipairs({}) do
          if getDistanceBetweenPoints3D(getElementPosition(self.vehicleJob)) > getDistanceBetweenPoints3D(getElementPosition(self.vehicleJob)) then
          end
        end
        if not (isLineOfSightClear(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, false, true, false, false, false)) or isLineOfSightClear(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          exports.st_gui:showPlayerNotification("Linia nie mo\197\188e by\196\135 czerwona", "error")
          return
        end
        if processLineOfSight(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)) - 2.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 270)) - 6.2 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4])), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1, ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[4] + 180)), ({
          _FORV_14_[1],
          _FORV_14_[2],
          _FORV_14_[3],
          _FORV_14_[4]
        })[3] + 5) + 1, false, true, false, false, false) then
          unlockButton = true
        else
          unlockButton = false
        end
        if self.vehicleJob or isElement(self.vehicleJob) then
          unlockButton = true
        else
          unlockButton = false
        end
        if 1 <= #{} then
          unlockButton = true
        else
          unlockButton = false
        end
        if unlockButton then
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.odbieraniePieniedzy = false
          showCursor(false)
          for _FORV_51_, _FORV_52_ in pairs(textures) do
            if isElement(_FORV_52_) then
              destroyElement(_FORV_52_)
            end
          end
          textures = {}
          self.ukladanieDrewna = true
          self.odlozoneDrewno = 0
          self.idUkladaniaPos = math.random(1, 2)
          attachElements(createObject(1463, 9999, 9999, 9999, 99), self.vehicleJob, -1, 0, 0)
          self.posTylPojazdu = {
            getElementPosition((createObject(1463, 9999, 9999, 9999, 99)))
          }
          if isElement((createObject(1463, 9999, 9999, 9999, 99))) then
            destroyElement((createObject(1463, 9999, 9999, 9999, 99)))
          end
          triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "zablokujPojazd", localPlayer, self.vehicleJob, true)
          if twojWspolpracownik then
            triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroUkladanie", localPlayer, twojWspolpracownik, "rozpocznij", self.idUkladaniaPos)
          end
          exports.st_gui:showPlayerNotification("Pouk\197\130adaj drewno w wyznaczonym miejscu", "info")
          self.textInfo = "Pouk\197\130adaj drewno #ffbf00" .. self.odlozoneDrewno .. " #ffffff/ #ffbf00" .. self.exp1 .. ""
        else
          exports.st_gui:showPlayerNotification("Pojazd musi by\196\135 wyznaczonych miejscach", "error")
        end
      end
    end
  end
end
function rozpocznijScinanie(_ARG_0_, _ARG_1_)
  triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "setPedAnimation", localPlayer, {
    "baseball",
    "bat_idle",
    -1
  })
  if isElement(tressStandard[_ARG_0_]) then
    removeById(selfJob.tableTrees, _ARG_0_)
    setCameraMatrix(getPositionFromElementOffset(localPlayer, 2, -2, 0.5))
    windows.scinanieDrewna = true
    selfJob.pozycjaLiniX = 0
    selfJob.predkoscLini = math.random(3, 6)
    selfJob.stronaLini = "prawo"
    selfJob.punktyRabanie = 0
    selfJob.punktyRabanieMax = math.random(3, 7)
    selfJob.idScinanegoDrewna = _ARG_0_
    selfJob.idScinanegoDrewna_i = _ARG_1_
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientKey", root, key)
    colorBar = {
      50,
      50,
      50
    }
    setElementFrozen(localPlayer, true)
    setElementRotation(localPlayer, 0, 0, (findRotation(getElementPosition(localPlayer))))
  elseif isElement(tressSciete[_ARG_0_]) then
    removeById(selfJob.tableTreesSciete, _ARG_0_)
    setCameraMatrix(getPositionFromElementOffset(localPlayer, 2, -2, 0.5))
    windows.scinanieDrewna = true
    selfJob.pozycjaLiniX = 0
    selfJob.predkoscLini = math.random(3, 6)
    selfJob.stronaLini = "prawo"
    selfJob.punktyRabanie = 0
    selfJob.punktyRabanieMax = math.random(3, 7)
    selfJob.idScinanegoDrewna = _ARG_0_
    selfJob.idScinanegoDrewna_i = _ARG_1_
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientKey", root, key)
    colorBar = {
      50,
      50,
      50
    }
    setElementFrozen(localPlayer, true)
    setElementRotation(localPlayer, 0, 0, (findRotation(getElementPosition(localPlayer))))
  end
  if twojWspolpracownik then
    triggerServerEvent("evEwenciks_jdr5dkjgd", resourceRoot, "synchroScinanie", localPlayer, twojWspolpracownik, "usunTabele", selfJob.idScinanegoDrewna, selfJob.idScinanegoDrewna_i)
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
getResourceName(getThisResource(), true, 956653578)
return
