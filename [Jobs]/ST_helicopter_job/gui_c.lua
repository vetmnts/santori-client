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
  keyboard = false
}
self = {}
levelJob = {}
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
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.main == true then
      dxDrawText("Logistyka lotnicza", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("W tej pracy twoim zadaniem jest dostarczanie\npojazd\195\179w oraz \197\130adunk\195\179w do celu.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText([[
- Licencja kat. H
- Level postaci: 20]], _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / zoom, _UPVALUE0_.y + 120 / zoom, 75 / zoom, 75 / zoom, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / zoom, _UPVALUE0_.y + 270 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + math.floor(495 / zoom), _UPVALUE0_.x + math.floor(362 / zoom) + math.floor(500 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 370 / zoom, 213 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("EXP: " .. przecinek(_FORV_8_.exp_helikoptery) .. [[

EXP ranking: ]] .. przecinek(_FORV_8_.exp1_helikoptery) .. "\nPunkty ulepsze\197\132: " .. przecinek(_FORV_8_.punkty_helikoptery) .. "\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_helikoptery) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 500 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, false, false)
      end
    end
    if windows.upgrades == true then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_helikoptery), _UPVALUE0_.x, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 485 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
  end
  if windows.level == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_helikoptery
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
  if windows.keyboard == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("KLAWISZOLOGIA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 180 / zoom, _UPVALUE0_.y + 110 / zoom, 202 / zoom, 157 / zoom, 15 / zoom, tocolor(100, 100, 100, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 181 / zoom, _UPVALUE0_.y + 111 / zoom, 200 / zoom, 155 / zoom, 15 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 145 / zoom, 180 / zoom, 1 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawText("PODNOSZENIE MAGNESU", _UPVALUE0_.x + 190 / zoom, _UPVALUE0_.y + 63 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 257 / zoom, _UPVALUE0_.y + 169 / zoom, 21 / zoom, 33 / zoom, 7 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE0_.x + 237 / zoom, _UPVALUE0_.y + 163 / zoom, 80 / zoom, 80 / zoom, textures.mouse_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 110 / zoom, 202 / zoom, 157 / zoom, 15 / zoom, tocolor(100, 100, 100, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 491 / zoom, _UPVALUE0_.y + 111 / zoom, 200 / zoom, 155 / zoom, 15 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y + 145 / zoom, 180 / zoom, 1 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawText("OPUSZCZANIE MAGNESU", _UPVALUE0_.x + 500 / zoom, _UPVALUE0_.y + 63 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 588 / zoom, _UPVALUE0_.y + 169 / zoom, 21 / zoom, 33 / zoom, 7 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawImage(_UPVALUE0_.x + 547 / zoom, _UPVALUE0_.y + 163 / zoom, 80 / zoom, 80 / zoom, textures.mouse_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 295 / zoom, 202 / zoom, 157 / zoom, 15 / zoom, tocolor(100, 100, 100, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 336 / zoom, _UPVALUE0_.y + 296 / zoom, 200 / zoom, 155 / zoom, 15 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 345 / zoom, _UPVALUE0_.y + 330 / zoom, 180 / zoom, 1 / zoom, 1 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawText("POD\197\129\196\132CZENIE \197\129ADUNKU", _UPVALUE0_.x + 345 / zoom, _UPVALUE0_.y + 426 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 395 / zoom, _UPVALUE0_.y + 370 / zoom, 80 / zoom, 40 / zoom, 10 / zoom, tocolor(70, 70, 70, 255))
    dxDrawText("CTRL", _UPVALUE0_.x + 505 / zoom, _UPVALUE0_.y + 577 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, true, false, true, false)
    exports.ST_buttons:dxCreateButton("OK", _UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 490 / zoom, 150 / zoom, 50 / zoom, 255, 1)
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 200, _UPVALUE0_.y + 100, _UPVALUE0_.w - 400, _UPVALUE0_.h - 200, 25 / zoom, tocolor(33, 33, 33, 240))
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134\nPRAC\196\152?", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 140 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom, 15 / zoom, tocolor(45, 45, 45, 255), false)
    if isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom, 15 / zoom, tocolor(26, 26, 26, 255), false)
      dxDrawText("TAK", _UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
      dxDrawText("TAK", _UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 394 / zoom, 102 / zoom, 62 / zoom, 15 / zoom, tocolor(45, 45, 45, 255), false)
    if isMouseIn(_UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom, 15 / zoom, tocolor(26, 26, 26, 255), false)
      dxDrawText("NIE", _UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
      dxDrawText("NIE", _UPVALUE0_.x + 820 / zoom, _UPVALUE0_.y + 650 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.level == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createVehicle", localPlayer)
          moneyADD = tonumber(_FORV_8_.money)
          selectLevel = _FORV_8_.levelJob
        end
      end
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = true
      windows.upgrades = false
      windows.level = false
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = false
      windows.upgrades = true
      windows.level = false
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.upgrades = false
      windows.background = false
      windows.level = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Logistyka lotnicza" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      endJobAll()
    elseif isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if getElementData(localPlayer, "player:job") == "Logistyka lotnicza" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getElementData(localPlayer, "player:lvl") < 20 then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 20 level aby tutaj pracowa\196\135", "error")
        return
      end
      if getElementData(localPlayer, "player:elementDat").license_H == 0 then
        exports.st_gui:showPlayerNotification("Nie posiadasz licencji kat.H", "error")
        return
      end
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
          level = 30,
          img = textures.level2_icon,
          money = 1.3
        },
        {
          levelJob = 3,
          exp = 250,
          level = 40,
          img = textures.level3_icon,
          money = 1.6
        },
        {
          levelJob = 4,
          exp = 350,
          level = 45,
          img = textures.level4_icon,
          money = 1.9
        }
      }
      windows.background = false
      windows.main = false
      windows.level = true
    elseif isMouseIn(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom) and windows.endJob == true then
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
      endJobAll()
      showCursor(false)
      exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153", "info")
    elseif isMouseIn(_UPVALUE0_.x + 540 / zoom, _UPVALUE0_.y + 395 / zoom, 100 / zoom, 60 / zoom) and windows.endJob == true then
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 360 / zoom, _UPVALUE0_.y + 490 / zoom, 150 / zoom, 50 / zoom) and windows.keyboard == true then
      removeEventHandler("onClientRender", root, window)
      windows.keyboard = false
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
getResourceName(getThisResource(), true, 255863829)
return
