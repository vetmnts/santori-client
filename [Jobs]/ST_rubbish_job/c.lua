startJobMarker = createMarker(-365.28, 1077.8, 19.19, "cylinder", 2, 246, 255, 0, 255)
setElementData(startJobMarker, "marker:icon", "praca")
createBlip(-351.14, 1073.84, 19.73, 46, 2, 0, 0, 0, 0, 0, 250)
zoom = exports.st_gui:getInterfaceZoom()
windows = {background = false, category = false}
info = {}
koszJob = {}
blipKosza = {}
kosze_tabela = {}
rt_table = {}
dataJob = {}
dataJob.progressKoszR = 0
rt_vehicle = {}
kosze_odlozone = {}
rozladunekShape = {}
rozladunekBlip = {}
table_statistics = {}
upgrades = {}
zespolyTabela = {}
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
      dxDrawText("WYW\195\147Z ODPAD\195\147W", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Twoim zadaniem w tej pracy jest\nje\197\188d\197\188enie oraz zbieranie odpad\195\179w\npo stanie San Andreas.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- Level postaci: 20", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
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
        dxDrawText("#b4b4b4EXP: #ffbf00" .. _FORV_8_.exp_smieciarki .. [[

#b4b4b4EXP RANKING: #ffbf00]] .. _FORV_8_.exp1_smieciarki .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_smieciarki .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobek_smieciarki) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 495 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_smieciarki), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.name == "Pojemno\197\155\196\135 \197\155mieciarki" or _FORV_8_.name == "sgdhfdgfh kilofa" then
          if _FORV_8_.status >= 4 then
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
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_smieciarki) .. " #ffffffPLN", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 178 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_smieciarki) .. "", _UPVALUE0_.x + 595 / zoom, _UPVALUE0_.y + 242 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
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
        expLevel = _FORV_18_.exp_smieciarki
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
      dxDrawText(przecinek(_FORV_10_.money) .. " PLN / KG", _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 200 + rgb), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.category == "zespoly" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("ZESPO\197\129Y", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("NAZWA", _UPVALUE0_.x + 40 / zoom, _UPVALUE0_.y - 24 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("HAS\197\129O", _UPVALUE0_.x + 410 / zoom, _UPVALUE0_.y - 24 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("SLOTY", _UPVALUE0_.x, _UPVALUE0_.y - 24 / zoom, _UPVALUE0_.x + 362 / zoom + 480 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 747 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawText("\226\134\186", _UPVALUE0_.x, _UPVALUE0_.y - 141 / zoom, _UPVALUE0_.x + 362 / zoom + 412 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(140, 140, 140, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "right", "center", false, false, false, false, false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE1_ * cxs, _UPVALUE2_ * cys
        dxDrawText("Od\197\155wie\197\188 zespo\197\130y", cxs + 11 / zoom, cys + 25 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Od\197\155wie\197\188 zespo\197\130y", cxs + 9 / zoom, cys + 27 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
      end
    else
      dxDrawText("\226\134\186", _UPVALUE0_.x, _UPVALUE0_.y - 141 / zoom, _UPVALUE0_.x + 362 / zoom + 412 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal30"), "right", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 777 / zoom, _UPVALUE0_.y + 25 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawText("+", _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + 362 / zoom + 443 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(0, 200, 0, 220), 1 / zoom, exports.ST_gui:getGUIFont("light34"), "right", "center", false, false, false, false, false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = _UPVALUE1_ * cxs, _UPVALUE2_ * cys
        dxDrawText("Stw\195\179rz nowy zesp\195\179\197\130", cxs + 11 / zoom, cys + 25 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        dxDrawText("Stw\195\179rz nowy zesp\195\179\197\130", cxs + 9 / zoom, cys + 27 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, true, false)
      end
    else
      dxDrawText("+", _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + 362 / zoom + 443 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(20, 230, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("light34"), "right", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    xY = 0
    for _FORV_7_ = 1, 8 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 110 / zoom + 55 / zoom * (xY - 1), _UPVALUE0_.w - 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 90))
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(zespolyTabela) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 110 / zoom + 55 / zoom * (xY - 1), _UPVALUE0_.w - 50 / zoom, 50 / zoom, 15 / zoom, tocolor(35, 35, 35, 230), false)
        dxDrawText(_FORV_8_.nazwa, _UPVALUE0_.x + 40 / zoom, _UPVALUE0_.y + 72 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        if _FORV_8_.haslo then
          dxDrawText("TAK", _UPVALUE0_.x + 410 / zoom, _UPVALUE0_.y + 72 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        else
          dxDrawText("NIE", _UPVALUE0_.x + 410 / zoom, _UPVALUE0_.y + 72 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        end
        dxDrawText("#ffbf00" .. #_FORV_8_.members .. " #ffffff/ #ffbf004", _UPVALUE0_.x, _UPVALUE0_.y + 72 / zoom + 110 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 480 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawScrollBar(#zespolyTabela, _UPVALUE0_.x + 860 / zoom, _UPVALUE0_.y + 85 / zoom, 3 / zoom, 450 / zoom, _UPVALUE5_, _UPVALUE3_)
  end
  if windows.category == "TWORZENIE ZESPO\197\129U" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("TWORZENIE ZESPO\197\129U", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Stw\195\179rz", _UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 410 / zoom, 190 / zoom, 50 / zoom, 255, 1)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 273 / zoom, _UPVALUE0_.y + 168 / zoom, _UPVALUE0_.w - 546 / zoom, 204 / zoom, 15 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 275 / zoom, _UPVALUE0_.y + 170 / zoom, _UPVALUE0_.w - 550 / zoom, 200 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "haslo zespolu" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("ZESPO\197\129", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 273 / zoom, _UPVALUE0_.y + 168 / zoom, _UPVALUE0_.w - 546 / zoom, 204 / zoom, 15 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 275 / zoom, _UPVALUE0_.y + 170 / zoom, _UPVALUE0_.w - 550 / zoom, 200 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    dxDrawText("WPISZ HAS\197\129O", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 225 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Do\197\130\196\133cz", _UPVALUE0_.x + 350 / zoom, _UPVALUE0_.y + 410 / zoom, 190 / zoom, 50 / zoom, 255, 1)
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "rozladunek" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("ROZ\197\129ADUNEK", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 208 / zoom, _UPVALUE0_.y + 118 / zoom, _UPVALUE0_.w - 416 / zoom, 394 / zoom, 15 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 120 / zoom, _UPVALUE0_.w - 420 / zoom, 390 / zoom, 15 / zoom, tocolor(25, 25, 25, 255))
    for _FORV_11_, _FORV_12_ in ipairs(table_statistics) do
      if _FORV_12_.ulepszenie_zarobek_smieciarki == 1 then
      else
      end
    end
    if getElementData(localPlayer, "player:premium") then
    else
    end
    if (1000 - dataJob.rozladunekGetElementHealth) / 700 * 50 > 100 then
    end
    if moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1 - (moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) > 0 then
    end
    if dataJob.rozladunekIloscKG - dataJob.rozladunekZlaIloscKG < 0 then
    end
    if 0 / dataJob.rozladunekIloscKG * 100 > 100 then
    end
    if 100 == 100 then
    end
    if dataJob.rozladunekGetElementHealth == 1000 then
    end
    if (moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05 - ((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * (100 / 100) > 0 then
    end
    dxDrawText("#00ad23" .. moneyJob .. " #ffffffPLN / #c771001#ffffffkg", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 80 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    dxDrawText("#00ad23" .. moneyJob .. " PLN #ffffff* #ffbf00" .. dataJob.rozladunekIloscKG .. "KG #ffffff= #00ad23" .. przecinek(moneyJob * dataJob.rozladunekIloscKG) .. " #ffffffPLN", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    dxDrawText("Poprawno\197\155\196\135 segregacji:", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    dxDrawText(rgbToHex(interpolateColor(100, 100, 50)) .. "" .. math.floor(100) .. "%", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 290 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("Wynagrodzenie:", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 695 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    dxDrawText("#00ad23" .. przecinek(math.floor(((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * (100 / 100))) .. " #ffffffPLN", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 760 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    dxDrawText("Bonusy i kary:", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 280 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
    if 0 + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05 > 0 or (moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05 - ((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * (100 / 100) > 0 then
      dxDrawText(((((((("" .. "#c9c9c9ulepszenie: #00ad23+" .. moneyJob * dataJob.rozladunekIloscKG * 0.1 .. " PLN #c9c9c9(+10%)\n") .. "#c9c9c9ulepszenie: brak\n") .. "#c9c9c9premium: #00ad23+" .. moneyJob * dataJob.rozladunekIloscKG * 0.1 .. " PLN #c9c9c9(+10%)\n") .. "#c9c9c9premium: brak\n") .. "#c9c9c9uszkodzenie pojazdu: #ff0000-" .. math.floor(moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1 - (moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100)) .. " PLN #c9c9c9(-" .. math.floor(100) .. "%)\n") .. "#c9c9c9poprawno\197\155\196\135 segregacji: #00ad23+" .. math.floor(moneyJob * dataJob.rozladunekIloscKG * 0.1) .. " PLN #c9c9c9(+10%)\n") .. "#c9c9c9stan pojazdu: #00ad23+" .. moneyJob * dataJob.rozladunekIloscKG * 0.05 .. " PLN #c9c9c9(+5%)\n") .. "#c9c9c9brak segregacji: #ff0000-" .. math.floor((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05 - ((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * (100 / 100)) .. " PLN #c9c9c9(-" .. math.floor(((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05 - ((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * (100 / 100)) / ((moneyJob * dataJob.rozladunekIloscKG + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.1) * (1 - 100 / 100) + moneyJob * dataJob.rozladunekIloscKG * 0.1 + moneyJob * dataJob.rozladunekIloscKG * 0.05) * 100) .. "%)\n", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 310 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.category == "wybor spawnu" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYB\195\147R OBSZARU", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 818 / zoom, _UPVALUE0_.y + 22 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and mapIsMoving then
      if not cursorX then
      else
      end
      playerX = -(cursorX * _UPVALUE1_ * mapZoom - mapOffsetX)
      playerY = cursorY * _UPVALUE2_ * mapZoom - mapOffsetY
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, (3000 + playerX) * mapUnit - _UPVALUE6_.w / 2 * mapZoom, (3000 - playerY) * mapUnit - _UPVALUE6_.h / 2 * mapZoom, _UPVALUE6_.w * mapZoom, _UPVALUE6_.h * mapZoom, texturesMAP.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    for _FORV_18_, _FORV_19_ in ipairs(posVehicles) do
      if isMouseIn(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom) then
        dxDrawRoundedRectangle(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, 15 / zoom, tocolor(250, 201, 7, 230))
      else
        dxDrawRoundedRectangle(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_18_].center[1], posVehicles[_FORV_18_].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, 15 / zoom, tocolor(250, 201, 7, 150))
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if not windows then
      return
    end
    if windows.category == "wybor spawnu" then
      for _FORV_7_, _FORV_8_ in ipairs(posVehicles) do
        if isMouseIn(math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - _UPVALUE0_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + _UPVALUE0_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_7_].center[1], posVehicles[_FORV_7_].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - _UPVALUE0_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + _UPVALUE0_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(posVehicles[_FORV_7_].center[1], posVehicles[_FORV_7_].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom) then
          wyborObszaru = posVehicles[_FORV_7_].pos
          unbindKey("mouse_wheel_up", "down", scrollBigMap)
          unbindKey("mouse_wheel_down", "down", scrollBigMap)
          removeEventHandler("onClientClick", root, moveBigMap)
          for _FORV_24_, _FORV_25_ in pairs(texturesMAP) do
            if isElement(_FORV_25_) then
              destroyElement(_FORV_25_)
            end
          end
          texturesMAP = {}
          exports.ST_gui:destroyCustomEditbox("name_team_job")
          exports.ST_gui:destroyCustomEditbox("pass_team_job")
          windows.category = "TWORZENIE ZESPO\197\129U"
          exports.ST_gui:createCustomEditbox("name_team_job", "Wpisz nazw\196\153 zespo\197\130u", _UPVALUE1_.x + 300 / zoom, _UPVALUE1_.y + 195 / zoom, _UPVALUE1_.w - 600 / zoom, 50 / zoom, false, "", "", 1)
          exports.ST_gui:createCustomEditbox("pass_team_job", "Wpisz has\197\130o", _UPVALUE1_.x + 300 / zoom, _UPVALUE1_.y + 285 / zoom, _UPVALUE1_.w - 600 / zoom, 50 / zoom, false, "", "", 1)
        end
      end
    end
    if windows.category == "zespoly" then
      for _FORV_8_, _FORV_9_ in ipairs(zespolyTabela) do
        if _FORV_8_ >= _UPVALUE2_ and _FORV_8_ <= _UPVALUE3_ and isMouseIn(_UPVALUE1_.x + 20 / zoom, _UPVALUE1_.y + 110 / zoom + 55 / zoom * (0 + 1 - 1), _UPVALUE1_.w - 50 / zoom, 50 / zoom) and windows.category == "zespoly" then
          var.team = {
            id = _FORV_9_.index,
            haslo = _FORV_9_.haslo
          }
          if not _FORV_9_.index then
            exports.st_gui:showPlayerNotification("Ten zesp\195\179\197\130 ju\197\188 nie istnieje", "error")
            return
          end
          if _FORV_9_.haslo then
            windows.category = "haslo zespolu"
            exports.ST_gui:createCustomEditbox("pass_team_job", "Wpisz has\197\130o", _UPVALUE1_.x + 300 / zoom, _UPVALUE1_.y + 265 / zoom, _UPVALUE1_.w - 600 / zoom, 50 / zoom, false, "", "", 1)
            return
          end
          if not var.team then
            return
          end
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "dolacz_do_teamu", var.team)
        end
      end
    end
    if windows.category == "level" then
      for _FORV_9_, _FORV_10_ in ipairs(levelJobTable) do
        if 2 < 0 + 1 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE1_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
          if getElementData(localPlayer, "player_offerTrade") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz rozpocz\196\133\196\135 pracy", "error")
            return
          end
          levelJob = _FORV_10_.levelJob
          moneyJob = _FORV_10_.moneyJob
          windows.category = "zespoly"
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "pobierz_zespoly")
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE1_.x + 685 / zoom, _UPVALUE1_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          if _FORV_8_.name == "Pojemno\197\155\196\135 \197\155mieciarki" or _FORV_8_.name == "dsjutfg" then
            if _FORV_8_.status >= 4 then
            else
              triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, true)
            end
          elseif _FORV_8_.status == 0 then
            triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, false)
          end
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 690 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "\197\154mieciarki" then
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
      if 20 > getElementData(localPlayer, "player:lvl") then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 20 level aby tutaj pracowa\196\135", "error")
        return
      end
      windows.background = false
      windows.category = "level"
      dataJob = {}
      dataJob.progressKoszR = 0
    elseif isMouseIn(_UPVALUE1_.x + 490 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "\197\154mieciarki" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      endJobAll()
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
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
      removeEventHandler("onClientKey", root, key)
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
      exports.ST_gui:destroyCustomEditbox("name_team_job")
      exports.ST_gui:destroyCustomEditbox("pass_team_job")
    elseif isMouseIn(_UPVALUE1_.x + 780 / zoom, _UPVALUE1_.y + 23 / zoom, 25 / zoom, 25 / zoom) and windows.category == "zespoly" then
      texturesMAP = {
        map = dxCreateTexture(":ST_bus_job/img/map.png"),
        blip = dxCreateTexture(":ST_courier_job/img/blip.png")
      }
      playerX, playerY = 100.54, 1154.88
      mapZoom = 2
      dxSetTextureEdge(texturesMAP.map, "border", tocolor(0, 0, 0, 0))
      bindKey("mouse_wheel_up", "down", scrollBigMap)
      bindKey("mouse_wheel_down", "down", scrollBigMap)
      addEventHandler("onClientClick", root, moveBigMap)
      windows.category = "wybor spawnu"
    elseif isMouseIn(_UPVALUE1_.x + 745 / zoom, _UPVALUE1_.y + 23 / zoom, 25 / zoom, 25 / zoom) and windows.category == "zespoly" then
      triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "pobierz_zespoly")
      exports.st_gui:showPlayerNotification("Od\197\155wie\197\188ono zespo\197\130y", "info")
    elseif isMouseIn(_UPVALUE1_.x + 818 / zoom, _UPVALUE1_.y + 22 / zoom, 25 / zoom, 25 / zoom) and (windows.category == "zespoly" or windows.category == "TWORZENIE ZESPO\197\129U" or windows.category == "haslo zespolu" or windows.category == "rozladunek" or windows.category == "wybor spawnu") then
      if windows.category == "wybor spawnu" then
        unbindKey("mouse_wheel_up", "down", scrollBigMap)
        unbindKey("mouse_wheel_down", "down", scrollBigMap)
        removeEventHandler("onClientClick", root, moveBigMap)
        for _FORV_7_, _FORV_8_ in pairs(texturesMAP) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        texturesMAP = {}
      end
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("name_team_job")
      exports.ST_gui:destroyCustomEditbox("pass_team_job")
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE1_.x + 350 / zoom, _UPVALUE1_.y + 410 / zoom, 190 / zoom, 50 / zoom) and windows.category == "TWORZENIE ZESPO\197\129U" then
      if 3 > exports.ST_gui:getCustomEditboxText("name_team_job"):len() or exports.ST_gui:getCustomEditboxText("name_team_job"):len() > 14 then
        exports.st_gui:showPlayerNotification("Nazwa powinna zawiera\196\135 od 3 do 14 znak\195\179w!", "error")
        return
      end
      for _FORV_9_, _FORV_10_ in ipairs(table_statistics) do
        if _FORV_10_.predkosc_smieciarki == 1 then
          predkosc_ulepszenie = 1
        else
          predkosc_ulepszenie = 0
        end
        ulepszenie_zapelnienie_smieciarki = _FORV_10_.ulepszenie_zapelnienie_smieciarki
      end
      if exports.ST_gui:getCustomEditboxText("pass_team_job"):len() == 0 then
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "sprawdz_istnienie_zespolu", exports.ST_gui:getCustomEditboxText("name_team_job"), nil, var.z_p, predkosc_ulepszenie, ulepszenie_zapelnienie_smieciarki, wyborObszaru)
      else
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "sprawdz_istnienie_zespolu", exports.ST_gui:getCustomEditboxText("name_team_job"), nil, var.z_p, predkosc_ulepszenie, ulepszenie_zapelnienie_smieciarki, wyborObszaru)
      end
    elseif isMouseIn(_UPVALUE1_.x + 350 / zoom, _UPVALUE1_.y + 410 / zoom, 190 / zoom, 50 / zoom) and windows.category == "haslo zespolu" then
      if 1 > exports.ST_gui:getCustomEditboxText("pass_team_job"):len() then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 has\197\130o", "error")
        return
      end
      if not var.team then
        exports.st_gui:showPlayerNotification("Ten zesp\195\179\197\130 ju\197\188 nie istnieje", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("pass_team_job") ~= var.team.haslo then
        exports.st_gui:showPlayerNotification("Nieprawid\197\130owe has\197\130o", "error")
        return
      end
      if not var.team then
        return
      end
      triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "dolacz_do_teamu", var.team)
    elseif isMouseIn(_UPVALUE1_.x + 200 / zoom, _UPVALUE1_.y + 290 / zoom, 200 / zoom, 200 / zoom) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if _FORV_8_.wyplata_smieciarki > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_8_.wyplata_smieciarki) > 999999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
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
        if _FORV_8_.wyplata_smieciarki > 10000 then
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    end
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    info.time = info.time + 1
    info.timeSave = info.timeSave + 1
    textt3 = "#edbd02\226\151\143 #c8c8c8stan pojazdu: #c29b02" .. string.format("%.2f", getElementHealth(dataJob.vehicle) / 10) .. "#c8c8c8%"
    textt4 = "#edbd02\226\151\143 #c8c8c8nazwa: #c29b02" .. info.team[1] .. " #c8c8c8has\197\130o: #c29b02" .. info.team[2] .. ""
    textt5 = "#edbd02\226\151\143 #c8c8c8cz\197\130onkowie zespo\197\130u: #c29b02" .. info.team[3] .. "#c8c8c8/#c29b024"
    if math.floor(info.time / 5) % 3 == 0 then
      info.text3 = textt3
    elseif math.floor(info.time / 5) % 3 == 1 then
      info.text3 = textt4
    elseif math.floor(info.time / 5) % 3 == 2 then
      info.text3 = textt5
    end
  end
  if info.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 220))
    dxDrawText("\197\155mieciarki - level #00a118" .. levelJob, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    if info.text2 == "" then
      dxDrawText(info.text3, _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "right", "center", false, false, false, true, false)
    else
      dxDrawText(info.text2, _UPVALUE0_.x, _UPVALUE0_.y - 135 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "right", "center", false, false, false, true, false)
    end
    dxDrawText("EXP: #ffbf00" .. info.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(info.time) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 115 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("TYP SEGREGACJI: " .. _UPVALUE1_[dataJob.typSmieci][4] .. "" .. dataJob.typSmieci, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 70 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("ZAROBEK: #00ad23" .. przecinek(moneyJob * dataJob.zapelnienie_smieciarki) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 115 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    if dataJob.czyMozeRozladowac then
      dxDrawText("Kliknij R aby rozk\197\130adowa\196\135", _UPVALUE0_.x, _UPVALUE0_.y - 25 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, false)
    else
      dxDrawText(info.text, _UPVALUE0_.x, _UPVALUE0_.y - 25 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, false)
      if info.text == "" then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 74 / zoom, _UPVALUE0_.w - 200 / zoom, 16 / zoom, 5 / zoom, tocolor(45, 45, 45, 255))
        if 10 < (_UPVALUE0_.w - 200 / zoom) * tonumber(dataJob.zapelnienie_smieciarki) / tonumber(dataJob.MAXzapelnienie_smieciarki) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / zoom, _UPVALUE0_.y + 74 / zoom, (_UPVALUE0_.w - 200 / zoom) * tonumber(dataJob.zapelnienie_smieciarki) / tonumber(dataJob.MAXzapelnienie_smieciarki), 16 / zoom, 5 / zoom, tocolor(252, 186, 3, 255), false)
        end
        dxDrawText("#ffbf00" .. tonumber(dataJob.zapelnienie_smieciarki) .. " #ffffffKG / #ffbf00" .. tonumber(dataJob.MAXzapelnienie_smieciarki) .. " #ffffffKG", _UPVALUE0_.x, _UPVALUE0_.y - 53 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, true, false)
      end
    end
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00K", _UPVALUE0_.x, _UPVALUE0_.y + 151 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font12"), "center", "center", false, false, false, true, false)
  end
  for _FORV_10_, _FORV_11_ in ipairs(kosze_tabela) do
    if isElement(koszJob[_FORV_11_[1]]) and getElementBoundingBox(koszJob[_FORV_11_[1]]) then
      x1, y1, z1 = getPositionFromElementOffset(koszJob[_FORV_11_[1]], 0, getElementBoundingBox(koszJob[_FORV_11_[1]]) + 0.1, 1.3)
      lx, ly, lz = getPositionFromElementOffset(koszJob[_FORV_11_[1]], 0, 5, 0)
      dxDrawMaterialLine3D(x1, y1, z1 + 0.35, x1, y1, z1 - 0.65, rt_table[koszJob[_FORV_11_[1]]], 2, tocolor(255, 255, 255, 255), false, lx, ly, lz)
      if getScreenFromWorldPosition(getElementPosition(koszJob[_FORV_11_[1]])) and getScreenFromWorldPosition(getElementPosition(koszJob[_FORV_11_[1]])) then
        if 5 > getDistanceBetweenPoints3D(getElementPosition(koszJob[_FORV_11_[1]])) then
          renderTarget(koszJob[_FORV_11_[1]], false)
        end
        if 1 > getDistanceBetweenPoints3D(getElementPosition(koszJob[_FORV_11_[1]])) then
          if getKeyState("R") then
            if not dataJob.trzymaKosz and not dataJob.blokadaBraniaKosza then
              dataJob.progressKoszR = dataJob.progressKoszR + 2
              if 100 <= dataJob.progressKoszR and not clickC then
                clickC = true
                setTimer(function()
                  dataJob.progressKoszR = 0
                  clickC = false
                end, 1500, 1)
                if isPedDucked(localPlayer) then
                  exports.st_gui:showPlayerNotification("Nie mo\197\188esz kuca\196\135", "error")
                  return
                end
                dataJob.koszInfoOdkladanie = {
                  getElementModel(koszJob[_FORV_11_[1]]),
                  {
                    getElementPosition(koszJob[_FORV_11_[1]])
                  },
                  {
                    getElementRotation(koszJob[_FORV_11_[1]])
                  },
                  _FORV_11_[1],
                  _FORV_11_[6],
                  _FORV_11_[7]
                }
                dataJob.trzymaKosz = true
                triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezKosz", _FORV_11_[1], _FORV_11_[6])
                if isElement(rt_table[koszJob[_FORV_11_[1]]]) then
                  destroyElement(rt_table[koszJob[_FORV_11_[1]]])
                  rt_table[koszJob[_FORV_11_[1]]] = nil
                end
                if isElement(koszJob[_FORV_11_[1]]) then
                  destroyElement(koszJob[_FORV_11_[1]])
                end
                if isElement(blipKosza[_FORV_11_[1]]) then
                  destroyElement(blipKosza[_FORV_11_[1]])
                end
                table.remove(kosze_tabela, _FORV_10_)
                info.text = "Umie\197\155\196\135 kosz w uchwycie \197\155mieciarki"
                runningBlock(localPlayer, true)
                koszAlpha = createObject(dataJob.koszInfoOdkladanie[1], dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3], 0, 0, dataJob.koszInfoOdkladanie[3][3])
                setElementCollisionsEnabled(koszAlpha, false)
                setElementAlpha(koszAlpha, 150)
                blipKoszAlpha = createBlip(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3], 0, 1, 9, 214, 39)
              end
            end
          else
            dataJob.progressKoszR = 0
          end
        end
      end
    end
  end
  if isElement(dataJob.koszDoOdebrania) and 25 > getDistanceBetweenPoints3D(getElementPosition(dataJob.koszDoOdebrania)) and getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)) and getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)) then
    if 1 > getDistanceBetweenPoints3D(getElementPosition(dataJob.koszDoOdebrania)) then
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)))
      if getKeyState("R") then
        dataJob.trzymaKosz = true
        dataJob.koszDoOdebrania = false
        runningBlock(localPlayer, true)
        info.text = "Odstaw kosz w wyznaczone miejsce"
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezKoszZeSmieciarki")
      end
    end
    dxDrawCircle(getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)) - _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)) + 162 / zoom, getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)) + _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(dataJob.koszDoOdebrania)))
  end
  if isElement(dataJob.vehicle) and getElementBoundingBox(dataJob.vehicle) then
    x1, y1, z1 = getPositionFromElementOffset(dataJob.vehicle, 0, getElementBoundingBox(dataJob.vehicle) - 0.3, -0.4)
    lx, ly, lz = getPositionFromElementOffset(dataJob.vehicle, 0, -5, 0)
    dxDrawMaterialLine3D(x1, y1, z1 + 0.25, x1, y1, z1 - 0.5, rt_vehicle[1], 1, tocolor(255, 255, 255, 255), false, lx, ly, lz)
    if dataJob.trzymaKosz and info.text ~= "Zabierz kosz z uchwytu \197\155mieciarki" and info.text ~= "Odstaw kosz w wyznaczone miejsce" and getScreenFromWorldPosition(getElementPosition(dataJob.vehicle)) and getScreenFromWorldPosition(getElementPosition(dataJob.vehicle)) and 5 > math.floor(getDistanceBetweenPoints3D(getElementPosition(dataJob.vehicle))) then
      if isLineOfSightClear(getElementPosition(localPlayer)) then
      end
      if processLineOfSight(getElementPosition(localPlayer)) then
        if getElementType(processLineOfSight(getElementPosition(localPlayer))) ~= "vehicle" then
        end
        if not processLineOfSight(getElementPosition(localPlayer)) or not isElement(processLineOfSight(getElementPosition(localPlayer))) then
        end
        if getElementModel(processLineOfSight(getElementPosition(localPlayer))) ~= 408 then
        end
        if 2 < getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
        end
      else
      end
      if not dataJob.trzymaKosz then
      end
      if false then
        dataJob.mozeOdlozycKosz = true
        info.text = "Kliknij R aby od\197\130o\197\188y\196\135 kosz"
      else
        dataJob.mozeOdlozycKosz = false
        info.text = "Umie\197\155\196\135 kosz w uchwycie \197\155mieciarki"
      end
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if dataJob.mozeOdlozycKosz then
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "odlozKoszDoSmieciarki", processLineOfSight(getElementPosition(localPlayer)))
          dataJob.mozeOdlozycKosz = false
          setTimer(function()
            info.text = "Odczekaj"
          end, 300, 1)
        end
      end
    end
  end
  if dataJob.zapelnienie_smieciarki > 50 then
    for _FORV_10_, _FORV_11_ in ipairs(_UPVALUE3_) do
      if isElement(rozladunekShape[_FORV_10_]) then
        if 50 > getDistanceBetweenPoints3D(getElementPosition(rozladunekShape[_FORV_10_])) then
          if dataJob.rozladunekLinie == false then
            dataJob.rozladunekLinie = true
            addEventHandler("onClientRender", root, drawCircleArea)
            centerXCircle, centerYCircle, centerZCircle = getElementPosition(rozladunekShape[_FORV_10_])
          end
        elseif dataJob.rozladunekLinie == true then
          dataJob.rozladunekLinie = false
          removeEventHandler("onClientRender", root, drawCircleArea)
        end
      end
    end
  end
  if isElement(koszAlpha) and dataJob.trzymaKosz and 25 > getDistanceBetweenPoints3D(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3], getElementPosition(localPlayer)) and getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4) and getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4) then
    if 1 > getDistanceBetweenPoints3D(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3], getElementPosition(localPlayer)) then
      dxDrawCircle(getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4))
      if getKeyState("R") and dataJob.trzymaKosz and not clickC then
        clickC = true
        setTimer(function()
          dataJob.progressKoszR = 0
          clickC = false
        end, 1500, 1)
        if isElement(koszAlpha) then
          destroyElement(koszAlpha)
        end
        if isElement(blipKoszAlpha) then
          destroyElement(blipKoszAlpha)
        end
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "odlozKoszNaMiejsce", dataJob.koszInfoOdkladanie)
        dataJob.trzymaKosz = false
        dataJob.koszInfoOdkladanie = false
        dataJob.blokadaBraniaKosza = false
        info.text = ""
        runningBlock(localPlayer, false)
      end
    end
    dxDrawCircle(getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4))
    dxDrawText("R", getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4) - _UPVALUE2_ / 4, getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4) + 162 / zoom, getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4) + _UPVALUE2_ / 4, getScreenFromWorldPosition(dataJob.koszInfoOdkladanie[2][1], dataJob.koszInfoOdkladanie[2][2], dataJob.koszInfoOdkladanie[2][3] + 0.4))
  end
end
tabela = {}
function renderTarget(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    tabela[_ARG_0_] = _ARG_1_
  end
  dxSetRenderTarget(rt_table[_ARG_0_], false)
  dxDrawRoundedRectangle(105, 40, 90, 155, 15, tocolor((_UPVALUE0_[tabela[_ARG_0_][2]] or {
    255,
    255,
    255
  })[1], (_UPVALUE0_[tabela[_ARG_0_][2]] or {
    255,
    255,
    255
  })[2], (_UPVALUE0_[tabela[_ARG_0_][2]] or {
    255,
    255,
    255
  })[3], 255))
  dxDrawRoundedRectangle(107, 42, 86, 151, 15, tocolor(25, 25, 25, 255))
  dxDrawText("KOSZ: #ffbb00#" .. tabela[_ARG_0_][1] .. "", 3, 50, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
  dxDrawText("TYP: " .. (_UPVALUE0_[tabela[_ARG_0_][2]] or {
    255,
    255,
    255
  })[4] .. "" .. tabela[_ARG_0_][2], 0, 89, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  dxDrawText("WAGA: #ffbb00" .. tabela[_ARG_0_][3] .. " #ffffffKG", 0, 108, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  if 1 > getDistanceBetweenPoints3D(getElementPosition(_ARG_0_)) then
    dxDrawCircle(150, 150, 16, 270, 270 + dataJob.progressKoszR * 3.6, tocolor(255, 187, 0, 255))
    dxDrawCircle(150, 150, 14, 0, 360, tocolor(35, 35, 35, 255))
    dxDrawText("R", 0, 138, 300, 300, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font16"), "center", "top", false, false, false, true, false)
  end
  dxDrawText("#c8c8c8" .. (getZoneName(getElementPosition(localPlayer)) or "Nie znaleziono"), 0, 175, 300, 300, tocolor(220, 220, 220, 235), 0.9, exports.ST_gui:getGUIFont("font10"), "center", "top", false, false, false, true, false)
  dxSetRenderTarget()
end
function renderTargetVehicle()
  dxSetRenderTarget(rt_vehicle[1], false)
  dxDrawRoundedRectangle(0, 70, 300, 89, 20, tocolor(255, 187, 0, 255))
  dxDrawRoundedRectangle(2, 72, 296, 85, 20, tocolor(25, 25, 25, 255))
  dxDrawText("ZAPE\197\129NIENIE", 0, 76, 300, 122, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxDrawText("#ffbf00" .. tonumber(dataJob.zapelnienie_smieciarki) .. " #ffffffKG / #ffbf00" .. tonumber(dataJob.MAXzapelnienie_smieciarki) .. " #ffffffKG", 0, 110, 300, 122, tocolor(255, 255, 255, 255), 1, exports.ST_gui:getGUIFont("font14"), "center", "top", false, false, false, true, false)
  dxDrawRoundedRectangle(30, 135, 240, 15, 5, tocolor(35, 35, 35, 255))
  if 20 < 240 * tonumber(dataJob.zapelnienie_smieciarki) / tonumber(dataJob.MAXzapelnienie_smieciarki) then
    dxDrawRoundedRectangle(30, 135, 240 * tonumber(dataJob.zapelnienie_smieciarki) / tonumber(dataJob.MAXzapelnienie_smieciarki), 15, 5, tocolor(252, 186, 3, 255), false)
  end
  dxSetRenderTarget()
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if _ARG_0_ == "wylacz_okno" then
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    removeEventHandler("onClientClick", root, click)
    windows.background = false
    windows.category = false
    showCursor(false)
    exports.ST_gui:destroyCustomEditbox("name_team_job")
    exports.ST_gui:destroyCustomEditbox("pass_team_job")
    for _FORV_10_, _FORV_11_ in pairs(textures) do
      if isElement(_FORV_11_) then
        destroyElement(_FORV_11_)
      end
    end
    textures = {}
  elseif _ARG_0_ == "startJob" then
    tick = getTickCount()
    info = {}
    info.time = 0
    info.timeSave = 0
    info.text = ""
    info.text2 = ""
    info.text3 = ""
    info.showinfo = true
    info.exp = 0
    info.expSave = 0
    info.team = _ARG_5_
    if not info.team[2] then
      info.team[2] = "brak"
    end
    dataJob.vehicle = _ARG_1_
    dataJob.zapelnienie_smieciarki = _ARG_2_
    dataJob.typSmieci = _ARG_3_
    dataJob.MAXzapelnienie_smieciarki = _ARG_4_
    rt_vehicle[1] = dxCreateRenderTarget(300, 226, true)
    addEventHandler("onClientRender", root, windowRender)
    renderTargetVehicle()
    bindKey("k", "down", showinfoF)
    blipPojazdu = createBlipAttachedTo(dataJob.vehicle, 0, 2, 0, 191, 255)
    dataJob.rozladunekLinie = false
    for _FORV_10_, _FORV_11_ in ipairs(_UPVALUE0_) do
      rozladunekShape[_FORV_10_] = createColSphere(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], _FORV_11_[4])
      rozladunekBlip[_FORV_10_] = createBlip(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], 41, 2, 0, 0, 0, 0, 0, 9999)
      addEventHandler("onClientColShapeHit", rozladunekShape[_FORV_10_], function(_ARG_0_, _ARG_1_)
        if _ARG_0_ ~= localPlayer or not _ARG_1_ then
          return
        end
        if dataJob.zapelnienie_smieciarki > 50 then
          dataJob.czyMozeRozladowac = true
          bindKey("r", "down", wyslijRozladunek)
        end
      end)
      addEventHandler("onClientColShapeLeave", rozladunekShape[_FORV_10_], function(_ARG_0_, _ARG_1_)
        if _ARG_0_ ~= localPlayer or not _ARG_1_ then
          return
        end
        dataJob.czyMozeRozladowac = false
        unbindKey("r", "down", wyslijRozladunek)
      end)
    end
    setElementData(localPlayer, "rubbishLevel", levelJob)
  elseif _ARG_0_ == "zwroc_zespoly" then
    zespolyTabela = _ARG_1_
  elseif _ARG_0_ == "blokadaChodzenia" then
  elseif _ARG_0_ == "spr_czy_stoi_przy_smieciarce" then
    if isLineOfSightClear(getElementPosition(localPlayer)) then
      return
    end
    if not processLineOfSight(getElementPosition(localPlayer)) then
      return
    end
    if getElementType(processLineOfSight(getElementPosition(localPlayer))) ~= "vehicle" then
      return
    end
    if not processLineOfSight(getElementPosition(localPlayer)) or not isElement(processLineOfSight(getElementPosition(localPlayer))) then
      return
    end
    if getElementModel(processLineOfSight(getElementPosition(localPlayer))) ~= 408 then
      return
    end
    if 4 < getDistanceBetweenPoints3D(getElementPosition(localPlayer)) then
      return
    end
    triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "odloz_kosz", processLineOfSight(getElementPosition(localPlayer)))
  elseif _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 2000,
          icon = textures.dolar_icon,
          status = _FORV_15_.ulepszenie_zarobek_smieciarki,
          nameDatabase = "ulepszenie_zarobek_smieciarki"
        },
        {
          name = "Szybsza \197\155mieciarka",
          description = "Twoja \197\155mieciarka osi\196\133ga wi\196\153ksz\196\133\npr\196\153dko\197\155\196\135 maksymaln\196\133.",
          price = 600,
          icon = textures.car_icon,
          status = _FORV_15_.predkosc_smieciarki,
          nameDatabase = "predkosc_smieciarki"
        },
        {
          name = "Kondycja",
          description = "Dzi\196\153ki temu ulepszeniu poruszasz si\196\153 szybciej",
          price = 250,
          icon = textures.condition_icon,
          status = _FORV_15_.kondycja_smieciarki,
          nameDatabase = "kondycja_smieciarki"
        },
        {
          name = "Pojemno\197\155\196\135 \197\155mieciarki",
          description = "Twoja \197\155mieciarka mo\197\188e zmie\197\155ci\196\135 wi\196\153cej KG. Ulepszenie #c77100" .. _FORV_15_.ulepszenie_zapelnienie_smieciarki .. " #a0a0a0/ #c771004",
          price = 500,
          icon = textures.trash_icon,
          status = _FORV_15_.ulepszenie_zapelnienie_smieciarki,
          nameDatabase = "ulepszenie_zapelnienie_smieciarki"
        }
      }
    end
  elseif _ARG_0_ == "tabelaKosze_client" then
    for _FORV_10_, _FORV_11_ in ipairs(kosze_tabela) do
      if isElement(rt_table[koszJob[_FORV_11_[1]]]) then
        destroyElement(rt_table[koszJob[_FORV_11_[1]]])
      end
      if isElement(koszJob[_FORV_11_[1]]) then
        destroyElement(koszJob[_FORV_11_[1]])
      end
      if isElement(blipKosza[_FORV_11_[1]]) then
        destroyElement(blipKosza[_FORV_11_[1]])
        blipKosza[_FORV_11_[1]] = nil
      end
    end
    kosze_tabela = _ARG_1_
    for _FORV_11_, _FORV_12_ in ipairs(kosze_tabela) do
      koszJob[_FORV_12_[1]] = createObject(({
        Papier = 1339,
        ["Szk\197\130o"] = 10700,
        Mieszane = 10737,
        Plastik = 10738
      })[_FORV_12_[6]], _FORV_12_[2], _FORV_12_[3], _FORV_12_[4] - 0.35, 0, 0, _FORV_12_[5])
      if _ARG_2_ == _FORV_12_[6] then
        blipKosza[_FORV_12_[1]] = createBlip(_FORV_12_[2], _FORV_12_[3], _FORV_12_[4], 34, 2, 0, 0, 0, 0, 0, 9999)
      end
      rt_table[koszJob[_FORV_12_[1]]] = dxCreateRenderTarget(300, 198, true)
      renderTarget(koszJob[_FORV_12_[1]], {
        _FORV_12_[1],
        _FORV_12_[6],
        _FORV_12_[7]
      })
    end
    info.text2 = "#0aff2b\226\151\143 #c8c8c8wylosowano nowe pozycje koszy"
    if isTimer(timerText) then
      killTimer(timerText)
    end
    timerText = setTimer(function()
      info.text2 = ""
    end, 6000, 1)
  elseif _ARG_0_ == "pokazKoszRClient" then
    dataJob.trzymaKosz = false
    dataJob.blokadaBraniaKosza = true
    renderTargetVehicle()
    runningBlock(localPlayer, true, true)
    setTimer(function()
      dataJob.koszDoOdebrania = _UPVALUE0_
      info.text = "Zabierz kosz z uchwytu \197\155mieciarki"
    end, 5500, 1)
  elseif _ARG_0_ == "usunKoszWszystkimClient" then
    if isElement(rt_table[koszJob[_ARG_1_]]) then
      destroyElement(rt_table[koszJob[_ARG_1_]])
    end
    if isElement(koszJob[_ARG_1_]) then
      destroyElement(koszJob[_ARG_1_])
    end
    if isElement(blipKosza[_ARG_1_]) then
      destroyElement(blipKosza[_ARG_1_])
      blipKosza[_ARG_1_] = nil
    end
    removeById(kosze_tabela, _ARG_1_)
  elseif _ARG_0_ == "usunWszystkieKoszeStareClient" then
    for _FORV_10_, _FORV_11_ in ipairs(kosze_tabela) do
      if isElement(rt_table[koszJob[_FORV_11_[1]]]) then
        destroyElement(rt_table[koszJob[_FORV_11_[1]]])
      end
      if isElement(koszJob[_FORV_11_[1]]) then
        destroyElement(koszJob[_FORV_11_[1]])
      end
      if isElement(blipKosza[_FORV_11_[1]]) then
        destroyElement(blipKosza[_FORV_11_[1]])
        blipKosza[_FORV_11_[1]] = nil
      end
    end
    setTimer(function()
      for _FORV_3_, _FORV_4_ in pairs(kosze_odlozone) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
    end, 30000, 1)
  elseif _ARG_0_ == "odlozKoszNaMiejsceClient" then
    kosze_odlozone[_ARG_1_[4]] = createObject(_ARG_1_[1], _ARG_1_[2][1], _ARG_1_[2][2], _ARG_1_[2][3], 0, 0, _ARG_1_[3][3])
    setElementCollisionsEnabled(kosze_odlozone[_ARG_1_[4]], false)
  elseif _ARG_0_ == "dodajZapelnienieWszystkimClient" then
    dataJob.zapelnienie_smieciarki = _ARG_1_
    if isTimer(timerText) then
      killTimer(timerText)
    end
    info.text2 = "" .. _UPVALUE1_[_ARG_2_[2]][4] .. "\226\151\143 #c8c8c8" .. _ARG_2_[1] .. " odda\197\130 " .. _UPVALUE1_[_ARG_2_[2]][4] .. "kosz #c8c8c8" .. _ARG_2_[3] .. " kg"
    info.exp = info.exp + 1
    info.expSave = info.expSave + 1
    timerText = setTimer(function()
      info.text2 = ""
    end, 6000, 1)
    renderTargetVehicle()
  elseif _ARG_0_ == "unbugJesli2osobyWezmaKosz" then
    dataJob.koszInfoOdkladanie = false
    dataJob.trzymaKosz = false
    info.text = ""
    outputChatBox("unbug")
  elseif _ARG_0_ == "dolaczylDoTeamu" then
    if isTimer(timerText) then
      killTimer(timerText)
    end
    if _ARG_3_ then
      info.text2 = "#0aff2b\226\151\143 #ededed" .. getPlayerName(_ARG_1_) .. " #c8c8c8opu\197\155ci\197\130/a zespo\197\130"
    else
      info.text2 = "#0aff2b\226\151\143 #ededed" .. getPlayerName(_ARG_1_) .. " #c8c8c8do\197\130\196\133czy\197\130/a do zespo\197\130u"
    end
    info.team[3] = _ARG_2_
    timerText = setTimer(function()
      info.text2 = ""
    end, 10000, 1)
  elseif _ARG_0_ == "wyslijRozladunekClient" then
    dataJob.zapelnienie_smieciarki = 0
    dataJob.typSmieci = _ARG_5_
    renderTargetVehicle()
    dataJob.rozladunekIloscKG = _ARG_1_
    dataJob.rozladunekZlaIloscKG = _ARG_2_
    dataJob.rozladunekMaxIloscSmieciarka = _ARG_3_
    dataJob.rozladunekGetElementHealth = _ARG_4_
    dataJob.rozladunekLinie = false
    removeEventHandler("onClientRender", root, drawCircleArea)
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png")
    }
    if getElementData(localPlayer, "player:premium") then
      exports.ST_levelsystem:addExp(info.expSave * 3)
    else
      exports.ST_levelsystem:addExp(info.expSave * 2)
    end
    triggerServerEvent("addExpOrganization", localPlayer, localPlayer, info.expSave)
    triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "rozladunekExpCzas", info.timeSave, info.expSave)
    info.timeSave = 0
    info.expSave = 0
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientKey", root, key)
    addEventHandler("onClientClick", root, click)
    windows.category = "rozladunek"
    showCursor(true)
    createEffect("explosion_barrel", _ARG_6_[1], _ARG_6_[2], _ARG_6_[3], 0, 0, 360 - _ARG_6_[4] + 180, 300)
    setTimer(createEffect, 100, 30, "explosion_barrel", _ARG_6_[1], _ARG_6_[2], _ARG_6_[3], 0, 0, 360 - _ARG_6_[4] + 180, 300)
  end
end)
function endJobAll()
  for _FORV_3_, _FORV_4_ in ipairs(kosze_tabela) do
    if isElement(rt_table[koszJob[_FORV_4_[1]]]) then
      destroyElement(rt_table[koszJob[_FORV_4_[1]]])
    end
    if isElement(koszJob[_FORV_4_[1]]) then
      destroyElement(koszJob[_FORV_4_[1]])
    end
    if isElement(blipKosza[_FORV_4_[1]]) then
      destroyElement(blipKosza[_FORV_4_[1]])
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(kosze_odlozone) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  if isElement(koszAlpha) then
    destroyElement(koszAlpha)
  end
  if isElement(blipKoszAlpha) then
    destroyElement(blipKoszAlpha)
  end
  if isElement(blipPojazdu) then
    destroyElement(blipPojazdu)
  end
  if isEventHandlerAdded("onClientRender", root, windowRender) then
    removeEventHandler("onClientRender", root, windowRender)
  end
  if isEventHandlerAdded("onClientRender", root, drawCircleArea) then
    removeEventHandler("onClientRender", root, drawCircleArea)
  end
  for _FORV_3_, _FORV_4_ in pairs(rozladunekShape) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  for _FORV_3_, _FORV_4_ in pairs(rozladunekBlip) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  unbindKey("k", "down", showinfoF)
  unbindKey("r", "down", wyslijRozladunek)
  info = {}
  dataJob = {}
  triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "zakoncz_prace")
end
function showinfoF()
  if info.showinfo == true then
    info.showinfo = false
  else
    info.showinfo = true
  end
end
function wyslijRozladunek()
  if dataJob.czyMozeRozladowac == true and getPedOccupiedVehicle(localPlayer) and getVehicleController((getPedOccupiedVehicle(localPlayer))) and getElementModel((getPedOccupiedVehicle(localPlayer))) == 408 then
    dataJob.czyMozeRozladowac = false
    unbindKey("r", "down", wyslijRozladunek)
    triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wyslijRozladunek")
  end
end
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == startJobMarker then
    var = {}
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      off_icon = dxCreateTexture(":ST_jobs_settings/img/off_icon.png"),
      info_icon = dxCreateTexture(":ST_jobs_settings/img/info_icon.png"),
      improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
      start_job_icon = dxCreateTexture(":ST_jobs_settings/img/start_job_icon.png"),
      stop_job_icon = dxCreateTexture(":ST_jobs_settings/img/stop_job_icon.png"),
      game_photo = dxCreateTexture("img/game_photo.png"),
      dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png"),
      condition_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/condition_icon.png"),
      level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
      level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
      level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
      level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
      car_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/car_icon.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      lock_icon = dxCreateTexture(":ST_escort_job/img/lock_icon.png"),
      unlock_icon = dxCreateTexture(":ST_escort_job/img/unlock_icon.png"),
      requirements_icon = dxCreateTexture(":ST_escort_job/img/requirements_icon.png"),
      money_icon = dxCreateTexture(":ST_magazynier_job/img/money_icon.png"),
      card_icon = dxCreateTexture(":ST_magazynier_job/img/card_icon.png"),
      trash_icon = dxCreateTexture("img/trash_icon.png")
    }
    levelJobTable = {
      {
        levelJob = 1,
        exp = 0,
        moneyJob = 152,
        level = 20,
        img = textures.level1_icon,
        money = 152
      },
      {
        levelJob = 2,
        exp = 500,
        moneyJob = 168,
        level = 30,
        img = textures.level2_icon,
        money = 168
      },
      {
        levelJob = 3,
        exp = 1000,
        moneyJob = 184,
        level = 40,
        img = textures.level3_icon,
        money = 184
      },
      {
        levelJob = 4,
        exp = 2000,
        moneyJob = 200,
        level = 50,
        img = textures.level4_icon,
        money = 200
      }
    }
    triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "showStatisticsJobsNew")
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    addEventHandler("onClientKey", root, key)
    windows.background = true
    windows.category = "g\197\130\195\179wne"
    showCursor(true)
  end
end)
function renderBieganie()
  keys = getBoundKeys("forwards")
  for _FORV_3_, _FORV_4_ in pairs(keys) do
    if _FORV_4_ and blocked then
      setPedControlState(localPlayer, "walk", true)
    end
  end
end
function runningBlock(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_1_ then
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
    if not isEventHandlerAdded("onClientRender", root, renderBieganie) then
      addEventHandler("onClientRender", root, renderBieganie)
    end
    for _FORV_6_, _FORV_7_ in ipairs(table_statistics) do
      if _FORV_7_.kondycja_smieciarki == 1 and not _ARG_2_ then
        toggleControl("walk", true)
        toggleControl("crouch", true)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setControlState("walk", false)
        blocked = false
      else
        blocked = true
        toggleControl("walk", false)
        toggleControl("crouch", false)
        toggleControl("sprint", false)
        toggleControl("jump", false)
        setControlState("walk", true)
      end
    end
  else
    removeEventHandler("onClientRender", root, renderBieganie)
    blocked = false
    toggleControl("walk", true)
    toggleControl("crouch", true)
    toggleControl("sprint", true)
    toggleControl("jump", true)
    setControlState("walk", false)
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.category == "zespoly" then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and windows.category == "zespoly" then
    if _UPVALUE0_ >= #zespolyTabela then
      return
    end
    _UPVALUE2_ = _UPVALUE2_ + 1
    _UPVALUE0_ = _UPVALUE0_ + 1
  end
end
function drawCircleArea()
  for _FORV_6_ = 1, 100 do
    dxDrawLine3D(centerXCircle + math.cos((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 14, centerYCircle + math.sin((_FORV_6_ - 1) * (math.pi * 2 / 100)) * 14, centerZCircle - 0.9, centerXCircle + math.cos(_FORV_6_ * (math.pi * 2 / 100)) * 14, centerYCircle + math.sin(_FORV_6_ * (math.pi * 2 / 100)) * 14, centerZCircle - 0.9, tocolor(252, 86, 3, 255), 3)
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
getResourceName(getThisResource(), true, 538579659)
return
