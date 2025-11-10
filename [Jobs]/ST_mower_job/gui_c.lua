screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 225,
  y = 20 / zoom,
  w = 450 / zoom,
  h = 120 / zoom
}
windows = {
  main = false,
  upgrades = false,
  background = false,
  level = false,
  soloDuo = false,
  computer = false
}
dataJob = {}
levelJob = {}
dataSelect = {}
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
      dxDrawText("KOSIARKI", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("W tej pracy twoim zadaniem jest dojecha\196\135 do\ncelu wraz z kosiark\196\133 a nast\196\153pnie skosi\196\135\ntraw\196\153 na wyznaczonym terenie. Pami\196\153taj\no opr\195\179znianiu kosza kosiarki.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Prawo jazdy kat.C", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / zoom, _UPVALUE0_.y + 85 / zoom, 152 / zoom, 202 / zoom, 15 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + math.floor(495 / zoom), _UPVALUE0_.x + math.floor(362 / zoom) + math.floor(500 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("#b4b4b4EXP: #ffbf00" .. przecinek(_FORV_8_.exp_kosiarki) .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. przecinek(_FORV_8_.punkty_kosiarki) .. "\n#b4b4b4\197\129\196\133czne zarobki: #ffbf00" .. przecinek(_FORV_8_.zarobek_kosiarki) .. "\n#b4b4b4Wyp\197\130ata do odebrania: #00ad23" .. przecinek(_FORV_8_.wyplata_kosiarki) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 500 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_kosiarki), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 485 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.name == "Wi\196\153ksza pojemno\197\155\196\135 kosza" then
          if _FORV_8_.status >= 8 then
            dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          else
            exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
          end
        elseif _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
    if windows.category == "wyp\197\130ata" then
      dxDrawText("WYP\197\129ATA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 164 / zoom, 562 / zoom, 82 / zoom, 15 / zoom, tocolor(40, 150, 40, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 165 / zoom, 560 / zoom, 80 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(134, 184, 1, 255))
      if isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 559 / zoom, _UPVALUE0_.y + 289 / zoom, 202 / zoom, 202 / zoom, 15 / zoom, tocolor(44, 150, 226, 255))
      if isMouseIn(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / zoom, _UPVALUE0_.y + 430 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 290 / zoom, 200 / zoom, 200 / zoom, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("TWOJA WYP\197\129ATA DO ODEBRANIA", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 40 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_kosiarki) .. " #ffffffPLN", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 178 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_kosiarki) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 242 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.category == "WYBIERZ TRYB" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("KOSIARKI", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
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
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
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
      if _FORV_9_ ~= localPlayer and not getElementData(_FORV_9_, "spec:pos") and 20 > getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
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
      if 1 <= _FORV_8_ and _FORV_8_ <= 9 then
        if isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 110))
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 80))
        end
        dxDrawText(getPlayerName(_FORV_9_[1]) .. " #ff8c00(" .. math.floor(_FORV_9_[2]) .. "m)", _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 70 / zoom + 100 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText(getElementData(_FORV_9_[1], "player:sid"), _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom + 100 / zoom * (0 + 1 - 1), _UPVALUE0_.x + 362 / zoom + 310 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "oczekiwanieNaGracza" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("OCZEKIWANIE NA GRACZA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 122 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText([[
OCZEKIWANIE NA POTWIERDZENIE PRACY DUO PRZEZ
GRACZA #ffbb00]] .. getPlayerName(dataJob.selectPlayerOffer) .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 320 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_kosiarki
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
      else
        rgb = -100
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 105 / zoom + 220 / zoom * (1 + 1 - 1), 120 / zoom, 120 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 60 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 120 / zoom + 220 / zoom * (1 + 1 - 1), 90 / zoom, 90 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 135 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_10_.exp .. " | LEVEL: " .. _FORV_10_.level, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 93 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("MNO\197\187NIK #00ad23" .. _FORV_10_.money, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
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
    if dataSelect.id then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 12 / zoom, _UPVALUE0_.y + 8 / zoom, _UPVALUE0_.w - 24 / zoom, 70 / zoom, 34 / zoom, tocolor(22, 22, 22, 245))
      dxDrawText("ZLECENIE ##ffbf00" .. dataSelect.id or "-", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 115 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      dxDrawText("DYSTANS", _UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawText("#ffbf00" .. string.format("%.1f #ffffffkm", math.floor(getDistanceBetweenPoints3D(dataSelect.posCenter[1], dataSelect.posCenter[2], dataSelect.posCenter[3], getElementPosition(localPlayer))) / 1000), _UPVALUE0_.x + 220 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText("PRZEWIDYWANY ZAROBEK", _UPVALUE0_.x + 570 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23$", _UPVALUE0_.x + 746 / zoom, _UPVALUE0_.y - 141.5 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 560 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
      for _FORV_21_, _FORV_22_ in ipairs(table_statistics) do
        if _FORV_22_.ulepszenie_zarobek_kosiarki == 1 then
        end
      end
      dxDrawText("#00ad23" .. przecinek(math.floor(math.floor(dataSelect.przewidywanyZarobek * dataSelect.ilosc * moneyADD * 1.1) * 1.1)) .. " #ffffffPLN | #00ad23" .. przecinek(math.floor(math.floor(dataSelect.przewidywanyZarobek * dataSelect.ilosc * moneyADD * 1.1) * 1.1 / dataSelect.ilosc)) .. " #ffffffPLN / m", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      if dataJob.idWork then
        dxDrawText("WYKONANE", _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawText("#fbfd57" .. dataJob.pkt .. "M #ffffff/ #fbfd57" .. dataJob.allPkt .. "M", _UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
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
        dxDrawText("WIELKO\197\154\196\134", _UPVALUE0_.x + 400 / zoom, _UPVALUE0_.y - 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 30 / zoom, 2 / zoom, 30 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 390 / zoom, _UPVALUE0_.y + 60 / zoom, 20 / zoom, 2 / zoom, tocolor(60, 60, 60, 255), false)
        dxDrawText("#fbfd57" .. dataSelect.ilosc .. "m", _UPVALUE0_.x + 420 / zoom, _UPVALUE0_.y - 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
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
    if dataJob.idWork then
      dxDrawImage(getMapFromWorldPosition(posTracking[1], posTracking[2]) - 10 / zoom, getMapFromWorldPosition(posTracking[1], posTracking[2]) - 25 / zoom, 30 / zoom, 30 / zoom, texturesComputer.blip, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      xY = 0
      for _FORV_19_, _FORV_20_ in ipairs(positions) do
        xY = xY + 1
        if isMouseIn(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom) then
          dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, texturesComputer.blip, 0, 0, 0, tocolor(255, 255, 255, 255))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(100, 100, 100, 200))
        else
          dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_20_[1]].posCenter[1], posM[_FORV_20_[1]].posCenter[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, texturesComputer.blip, 0, 0, 0, tocolor(200, 200, 200, 200))
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(50, 50, 50, 200))
        end
        if dataSelect.id == _FORV_20_[1] then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 24 / zoom, _UPVALUE0_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom, 15 / zoom, tocolor(255, 187, 0, 255))
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 25 / zoom, _UPVALUE0_.y + 90 / zoom + 55 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
        dxDrawText("ZLECENIE ##ffbf00" .. _FORV_20_[1], _UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 19 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.computer == true then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(positions) do
        xY = xY + 1
        if isMouseIn(math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - _UPVALUE0_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + _UPVALUE0_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_8_[1]].posCenter[1], posM[_FORV_8_[1]].posCenter[2]))) - 38 / zoom / 2, math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - _UPVALUE0_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + _UPVALUE0_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posM[_FORV_8_[1]].posCenter[1], posM[_FORV_8_[1]].posCenter[2]))) - 38 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE1_.x + 24 / zoom, _UPVALUE1_.y + 89 / zoom + 55 / zoom * (xY - 1), 142 / zoom, 42 / zoom) then
          if dataJob.idWork then
            return
          end
          dataSelect = {}
          dataSelect.id = _FORV_8_[1]
          dataSelect.posCenter = posM[_FORV_8_[1]].posCenter
          dataSelect.ilosc = _FORV_8_[2]
          dataSelect.przewidywanyZarobek = _FORV_8_[3]
        end
      end
    end
    if windows.category == "WYBIERZ GRACZA" then
      for _FORV_8_, _FORV_9_ in ipairs(players) do
        if 1 <= _FORV_8_ and _FORV_8_ <= 9 and isMouseIn(_UPVALUE1_.x + 200 / zoom, _UPVALUE1_.y + 112 / zoom + 50 / zoom * (0 + 1 - 1), _UPVALUE1_.w - 400 / zoom, 45 / zoom) and windows.category == "WYBIERZ GRACZA" then
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
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "sendOfferJob", localPlayer, _FORV_9_[1], positions)
          windows.selectLevel = false
          windows.category = "oczekiwanieNaGracza"
          dataJob.selectPlayerOffer = _FORV_9_[1]
        end
      end
    end
    if windows.category == "level" then
      for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE1_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
          blockOpenGui = false
          moneyADD = tonumber(_FORV_10_.money)
          selectLevel = _FORV_10_.levelJob
          if dataJob.offerLevel == true then
            dataJob.offerLevel = false
            selfTracking = {}
            tick = getTickCount()
            addEventHandler("onClientRender", root, tracking)
            bindKey("k", "down", showComputer)
            textures1 = {
              truck_icon = dxCreateTexture(":ST_escort_job/img/truck_icon.png"),
              mower_icon = dxCreateTexture("img/mower_icon.png"),
              user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
            }
            selfTracking.timeSave = 0
            selfTracking.money = 0
            selfTracking.time = 0
            selfTracking.exp = 0
            selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            windows.category = false
            showCursor(false)
            for _FORV_16_, _FORV_17_ in pairs(textures) do
              if isElement(_FORV_17_) then
                destroyElement(_FORV_17_)
              end
            end
            textures = {}
            if isElement(blip) then
              destroyElement(blip)
            end
          elseif dataJob.wybraneDuo == true then
            windows.category = "WYBIERZ GRACZA"
            dataJob.wybraneDuo = false
          else
            selfTracking = {}
            tick = getTickCount()
            bindKey("k", "down", showComputer)
            addEventHandler("onClientRender", root, tracking)
            selfTracking.timeSave = 0
            selfTracking.money = 0
            selfTracking.time = 0
            selfTracking.exp = 0
            selfTracking.text = "Wybierz #ffbb00zlecenie #ffffffpod \"#ffbb00k#ffffff\""
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            windows.category = false
            showCursor(false)
            for _FORV_16_, _FORV_17_ in pairs(textures) do
              if isElement(_FORV_17_) then
                destroyElement(_FORV_17_)
              end
            end
            textures = {}
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153", "success")
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "plrJob", localPlayer, true)
            for _FORV_16_, _FORV_17_ in ipairs(table_statistics) do
              triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "createVehicle", localPlayer, false, _FORV_17_.ulepszenie_tuning_kosiarki, _FORV_17_.ulepszenie_kosiarka_kosiarki)
            end
            textures1 = {
              truck_icon = dxCreateTexture(":ST_escort_job/img/truck_icon.png"),
              mower_icon = dxCreateTexture("img/mower_icon.png")
            }
          end
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE1_.x + 685 / zoom, _UPVALUE1_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          if _FORV_8_.name == "Wi\196\153ksza pojemno\197\155\196\135 kosza" then
            if _FORV_8_.status >= 8 then
            else
              triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, true)
            end
          elseif _FORV_8_.status == 0 then
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price)
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "ulepszenia"
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 205 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      windows.category = "wyp\197\130ata"
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      windows.background = false
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE1_.x + 818 / zoom, _UPVALUE1_.y + 22 / zoom, 25 / zoom, 25 / zoom) and (windows.category == "WYBIERZ TRYB" or windows.category == "WYBIERZ GRACZA") then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.category = false
      windows.background = false
      showCursor(false)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE1_.x + 490 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Kosiarki" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      if associateUserSelect then
        triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "endJob", localPlayer, associateUserSelect)
      end
      endJobAll()
    elseif isMouseIn(_UPVALUE1_.x + 690 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Kosiarki" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getElementData(localPlayer, "player:elementDat").license_C == 0 then
        exports.st_gui:showPlayerNotification("Nie posiadasz kategorii Kat.C", "error")
        return
      end
      refreshPacks()
      windows.background = false
      windows.category = "WYBIERZ TRYB"
      dataJob.lider = false
    elseif isMouseIn(_UPVALUE1_.x + 237.5 / zoom, _UPVALUE1_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          level = 0,
          img = textures.level1_icon,
          money = 1
        },
        {
          levelJob = 2,
          exp = 100,
          level = 10,
          img = textures.level2_icon,
          money = 1.25
        },
        {
          levelJob = 3,
          exp = 200,
          level = 20,
          img = textures.level3_icon,
          money = 1.5
        },
        {
          levelJob = 4,
          exp = 300,
          level = 30,
          img = textures.level4_icon,
          money = 1.75
        }
      }
      dataJob.wybraneDuo = false
      windows.category = "level"
      dataJob.lider = true
    elseif isMouseIn(_UPVALUE1_.x + 492.5 / zoom, _UPVALUE1_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          level = 0,
          img = textures.level1_icon,
          money = 1
        },
        {
          levelJob = 2,
          exp = 100,
          level = 10,
          img = textures.level2_icon,
          money = 1.25
        },
        {
          levelJob = 3,
          exp = 200,
          level = 20,
          img = textures.level3_icon,
          money = 1.5
        },
        {
          levelJob = 4,
          exp = 300,
          level = 30,
          img = textures.level4_icon,
          money = 1.75
        }
      }
      dataJob.wybraneDuo = true
      windows.category = "level"
    elseif isMouseIn(_UPVALUE1_.x + 200 / zoom, _UPVALUE1_.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if _FORV_8_.wyplata_kosiarki > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_8_.wyplata_kosiarki) > 999999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 560 / zoom, _UPVALUE1_.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if _FORV_8_.wyplata_kosiarki > 10000 then
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 800 / zoom, _UPVALUE1_.y + 21 / zoom, 45 / zoom, 45 / zoom) and windows.computer == true then
      if dataJob.maKosiarke == true then
        exports.st_gui:showPlayerNotification("Najpierw schowaj kosiark\196\153", "info")
        return
      end
      if dataJob.idWork then
        if dataJob.lider == true then
          dataSelect = {}
          dataJob.idWork = false
          dataSelect.ilosc = 0
          zakonczenieZlecenia()
          if associateUserSelect then
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "zatwierdzanieZlecenieSynchro", localPlayer, associateUserSelect, dataJob.idWork, false)
          end
          exports.st_gui:showPlayerNotification("Zako\197\132czono zlecenie", "success")
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz zako\197\132czy\196\135 zlecenia", "error")
        end
      elseif dataSelect.id then
        if dataJob.lider == true then
          zakonczenieZlecenia()
          dataJob.tablePkt = {}
          dataJob.idWork = dataSelect.id
          lastIdWork = dataJob.idWork
          for _FORV_7_, _FORV_8_ in ipairs(posM[dataJob.idWork].pkt) do
            table.insert(dataJob.tablePkt, {_FORV_7_, _FORV_8_})
          end
          dataJob.pkt = 0
          dataJob.allPkt = tonumber(#dataJob.tablePkt)
          posTracking = {
            posM[dataJob.idWork].posCenter[1],
            posM[dataJob.idWork].posCenter[2],
            posM[dataJob.idWork].posCenter[3]
          }
          blip = createBlip(posM[dataJob.idWork].posCenter[1], posM[dataJob.idWork].posCenter[2], posM[dataJob.idWork].posCenter[3], 41)
          selfTracking.text = "DOJED\197\185 DO #ab0000CELU"
          if associateUserSelect then
            triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "zatwierdzanieZlecenieSynchro", localPlayer, associateUserSelect, dataJob.idWork, true, dataSelect.przewidywanyZarobek)
          end
          exports.st_gui:showPlayerNotification("Rozpocz\196\153to nowe zlecenie", "success")
        else
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz rozpocz\196\133\196\135 zlecenia", "error")
        end
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
getResourceName(getThisResource(), true, 265325622)
return
