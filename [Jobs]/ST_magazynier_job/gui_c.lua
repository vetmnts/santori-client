table_statistics = {}
windows = {background = false, category = false}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 20 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, 70 / _UPVALUE1_, 400 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.info_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.info_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 145 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.dolar_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 205 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.dolar_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.category == "g\197\130\195\179wne" then
      dxDrawText("MAGAZYNIER", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 121 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 83 / _UPVALUE1_, 360 / _UPVALUE1_, 206 / _UPVALUE1_, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 330 / _UPVALUE1_, 350 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      dxDrawText("W tej pracy twoim zadaniem jest odk\197\130adanie\npaczek na rega\197\130y. Na 3 i 4 levelu mo\197\188esz porusza\196\135\nsi\196\153 w\195\179zkiem wid\197\130owym. Powodzenia!", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 710 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 475 / _UPVALUE1_, 350 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      dxDrawText("- brak", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 810 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 152 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(32, 32, 32, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 489 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 152 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 255))
        dxDrawImage(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 152 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 689 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_, 152 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 500 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, 213 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("EXP: #ffbf00" .. _FORV_8_.exp_magazynier .. [[

#b4b4b4EXP RANKING: #ffbf00]] .. _FORV_8_.exp1_magazynier .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_magazynier .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobek_magazynier) .. "\n#b4b4b4Wyp\197\130ata do odebrania: #00ad23" .. przecinek(_FORV_8_.wyplata_magazynier) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 495 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 121 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_magazynier), _UPVALUE0_.x, _UPVALUE0_.y - 121 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 485 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 740 / _UPVALUE1_, 80 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 70 / _UPVALUE1_, 70 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / _UPVALUE1_, _UPVALUE0_.y + 2 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 120 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 60 / _UPVALUE1_, 60 / _UPVALUE1_, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
        end
      end
    end
    if windows.category == "wyp\197\130ata" then
      dxDrawText("WYP\197\129ATA", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 121 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / _UPVALUE1_, _UPVALUE0_.y + 164 / _UPVALUE1_, 562 / _UPVALUE1_, 82 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(40, 150, 40, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 165 / _UPVALUE1_, 560 / _UPVALUE1_, 80 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / _UPVALUE1_, _UPVALUE0_.y + 289 / _UPVALUE1_, 202 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(134, 184, 1, 255))
      if isMouseIn(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA GOT\195\147WK\196\132", _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 559 / _UPVALUE1_, _UPVALUE0_.y + 289 / _UPVALUE1_, 202 / _UPVALUE1_, 202 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(44, 150, 226, 255))
      if isMouseIn(_UPVALUE0_.x + 560 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 560 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 255))
        dxDrawText("WYP\197\129ATA PRZELEWEM", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 430 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 560 / _UPVALUE1_, _UPVALUE0_.y + 290 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures.card_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("TWOJA WYP\197\129ATA DO ODEBRANIA", _UPVALUE0_.x + 595 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("#00ad23" .. przecinek(_FORV_8_.wyplata_magazynier) .. " #ffffffPLN", _UPVALUE0_.x + 595 / _UPVALUE1_, _UPVALUE0_.y + 178 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
        dxDrawText("#ffffffprzepracowany czas: #ffbf00" .. secondsToClock(_FORV_8_.czas_magazynier) .. "", _UPVALUE0_.x + 595 / _UPVALUE1_, _UPVALUE0_.y + 242 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.category == "level" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_magazynier
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        rgb = 0
        if isMouseIn(_UPVALUE0_.x + 30 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 90 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 350 / _UPVALUE1_, 150 / _UPVALUE1_) then
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
      dxDrawRoundedRectangle(_UPVALUE0_.x + 29 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 89 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 352 / _UPVALUE1_, 152 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60 - rgb, 60 - rgb, 60 - rgb, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 90 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 350 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 105 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 120 / _UPVALUE1_, 120 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawImage(_UPVALUE0_.x + 60 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 120 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 90 / _UPVALUE1_, 90 / _UPVALUE1_, _FORV_10_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(_UPVALUE0_.x + 170 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 135 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_10_.exp .. " | LEVEL: " .. _FORV_10_.level, _UPVALUE0_.x + 200 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 93 / _UPVALUE1_ + 440 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 170 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 175 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 25 / _UPVALUE1_, 25 / _UPVALUE1_, textures.dolar_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("MNO\197\187NIK #00ad23" .. _FORV_10_.money, _UPVALUE0_.x + 200 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 175 / _UPVALUE1_ + 440 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 30 / _UPVALUE1_ + 440 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 110 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 110 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.category == "odbi\195\179r paczki" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawText("WE\197\185 PACZK\196\152", _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("kliknij na paczk\196\153 i przeci\196\133gnij j\196\133 na praw\196\133 stron\196\153", _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light16"), "center", "center", false, false, false, false, false)
    if self.worth == 1 then
      self.worth1 = "#00ff40wysoka"
    elseif self.worth == 2 then
      self.worth1 = "#fffc61\197\155rednia"
    else
      self.worth1 = "#ff6161niska"
    end
    dxDrawText("Waga paczki: #ffbb00" .. self.packKG .. " #ffffffKG", _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 750 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("Warto\197\155\196\135 paczki: " .. self.worth1, _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 840 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    if self.trzymamPaczkeGui == true then
      xPack, yPack = getCursorPosition() * _UPVALUE2_ - 200 / _UPVALUE1_ / 2, getCursorPosition() * _UPVALUE3_ - 200 / _UPVALUE1_ / 2
    end
    if _UPVALUE0_.x + 530 / _UPVALUE1_ < xPack and _UPVALUE0_.y + 190 / _UPVALUE1_ < yPack and _UPVALUE0_.x + 760 / _UPVALUE1_ > xPack and _UPVALUE0_.y + 420 / _UPVALUE1_ > yPack and self.trzymamPaczkeGui == false then
      braniePaczki()
    end
    dxDrawImage(xPack, yPack, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures1.carton_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE0_.x + 540 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 200 / _UPVALUE1_, 200 / _UPVALUE1_, textures1.carton_icon, 0, 0, 0, tocolor(200, 200, 200, 100), false)
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    self.time = self.time + 1
    self.timeSave = self.timeSave + 1
  end
  if getTickCount() - tickSave > 600000 then
    tickSave = getTickCount()
    if 1 < self.moneySave then
      exports.st_gui:showPlayerNotification("Zapisano dane aktualnej sesji pracy", "info")
      triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "wages", localPlayer, {
        self.moneySave,
        self.expSave,
        self.timeSave,
        true,
        62543864
      })
      self.timeSave = 0
      self.moneySave = 0
      self.expSave = 0
      blockStopJob = true
    end
  end
  if self.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
    dxDrawText("MAGAZYNIER - LEVEL #00a118" .. levelJob, _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(self.time) .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("GRACZE NA MAGAZYNIE: #ffbf00" .. self.countPlayer, _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    dxDrawText("ZAROBEK: #ffbf00" .. przecinek(self.money) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    dxDrawText("EXP: #ffbf00" .. self.exp .. "", _UPVALUE0_.x, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    if self.worth1 then
      dxDrawText("WARTO\197\154\196\134 PACZKI: " .. self.worth1, _UPVALUE0_.x, _UPVALUE0_.y - 25 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    else
    end
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
    playerJob = {}
  end
  if givePackPos and getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) and getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) then
    dxDrawImage(getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures1.carton_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(givePackPos[1], givePackPos[2], givePackPos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 2, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(givePackPos[1], givePackPos[2], givePackPos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200))
    if 4 > math.floor(getDistanceBetweenPoints3D(givePackPos[1], givePackPos[2], givePackPos[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawText("ABY PODNIE\197\154\196\134 PACZK\196\152 KLIKNIJ", getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(givePackPos[1], givePackPos[2], givePackPos[3] + 0.3, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        givePackPos = false
        xPack, yPack = _UPVALUE3_.x + 140 / _UPVALUE1_, _UPVALUE3_.y + 200 / _UPVALUE1_
        self.worth = math.random(1, 3)
        self.packKG = math.random(5, 40)
        textures = {
          background = dxCreateTexture(":ST_gui/img/background2.png")
        }
        if isElement(blip) then
          destroyElement(blip)
        end
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        windows.category = "odbi\195\179r paczki"
        showCursor(true)
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
  if packPos and getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) and getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) then
    dxDrawText("\226\134\134", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - 83, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - 85, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(packPos[1], packPos[2], packPos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 2, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(packPos[1], packPos[2], packPos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
    if 2 > math.floor(getDistanceBetweenPoints3D(packPos[1], packPos[2], packPos[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      dxDrawText("ABY ODSTAWI\196\134 PACZK\196\152 KLIKNIJ", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(packPos[1], packPos[2], packPos[3] + 0.5, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        odkladaniePaczki()
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" and windows.category == "odbi\195\179r paczki" then
    if isMouseIn(xPack, yPack, 150 / _UPVALUE0_, 150 / _UPVALUE0_) then
      self.trzymamPaczkeGui = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" and windows.category == "odbi\195\179r paczki" then
    self.trzymamPaczkeGui = false
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "level" then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE0_ + math.floor(470 / _UPVALUE0_) * (1 - 1), _UPVALUE1_.y + 90 / _UPVALUE0_ + math.floor(220 / _UPVALUE0_) * (1 + 1 - 1), 350 / _UPVALUE0_, 150 / _UPVALUE0_) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          addMoney = _FORV_8_.money
          levelJob = _FORV_8_.levelJob
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153!\nUdaj si\196\153 po paczk\196\153", "success")
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          windows.category = false
          windows.background = false
          showCursor(false)
          for _FORV_14_, _FORV_15_ in pairs(textures) do
            if isElement(_FORV_15_) then
              destroyElement(_FORV_15_)
            end
          end
          textures = {}
          startJob1()
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE1_.x + 685 / _UPVALUE0_, _UPVALUE1_.y + 95 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 150 / _UPVALUE0_, 50 / _UPVALUE0_) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 690 / _UPVALUE0_, _UPVALUE1_.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Magazynier" then
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
      windows.category = "level"
      windows.background = false
      exports.st_gui:showPlayerNotification("Wybierz level", "info")
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          moneyJob = "0",
          level = 0,
          img = textures.level1_icon,
          money = 1.1
        },
        {
          levelJob = 2,
          exp = 500,
          moneyJob = "0",
          level = 10,
          img = textures.level2_icon,
          money = 1.2
        },
        {
          levelJob = 3,
          exp = 1000,
          moneyJob = "0",
          level = 25,
          img = textures.level3_icon,
          money = 1.6
        },
        {
          levelJob = 4,
          exp = 1500,
          moneyJob = "0",
          level = 40,
          img = textures.level4_icon,
          money = 2
        }
      }
    elseif isMouseIn(_UPVALUE1_.x + 490 / _UPVALUE0_, _UPVALUE1_.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.category == "g\197\130\195\179wne" then
      if blockStopJob then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz zako\197\132czysz pracy\nSpr\195\179buj za chwil\196\153", "error")
        return
      end
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Magazynier" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if 1 < self.moneySave then
        triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "wages", localPlayer, {
          self.moneySave,
          self.expSave,
          self.timeSave,
          true,
          62543864
        })
        self.timeSave = 0
        self.moneySave = 0
        self.expSave = 0
        blockStopJob = true
      end
      endJobAll()
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 85 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 145 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      windows.category = "ulepszenia"
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 205 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      windows.category = "wyp\197\130ata"
    elseif isMouseIn(_UPVALUE1_.x + 200 / _UPVALUE0_, _UPVALUE1_.y + 290 / _UPVALUE0_, 200 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.wyplata_magazynier > 10000 then
          if tonumber(getElementData(localPlayer, "player:moneyMNn") + _FORV_6_.wyplata_magazynier) > 99999999 then
            exports.st_gui:showPlayerNotification("Masz przy sobie za du\197\188o pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "paycheck", localPlayer, "got\195\179wka")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 560 / _UPVALUE0_, _UPVALUE1_.y + 290 / _UPVALUE0_, 200 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.category == "wyp\197\130ata" then
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if blockStopJob then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_statistics) do
        if _FORV_6_.wyplata_magazynier > 10000 then
          triggerServerEvent("evEwenciks_e457tefgjdf", resourceRoot, "paycheck", localPlayer, "przelew")
        else
          exports.st_gui:showPlayerNotification("Pieni\196\133dze mo\197\188esz wyp\197\130aci\196\135 od 10,000 PLN", "error")
        end
      end
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 420 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.background = false
      windows.category = false
      showCursor(false)
    end
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
getResourceName(getThisResource(), true, 206983078)
return
