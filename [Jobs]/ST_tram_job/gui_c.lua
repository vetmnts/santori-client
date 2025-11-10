screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos1 = {
  x = screenW / 2 - 340 / zoom / 2,
  y = 0,
  w = 340 / zoom,
  h = 120 / zoom
}
windowPos1.y = math.floor(60 / zoom)
windows = {
  main = false,
  upgrades = false,
  background = false,
  level = false,
  ticket = false
}
function window()
  if windows.background == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
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
      dxDrawText("TRAMWAJARZ", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Twoim zadaniem jest rozwo\197\188enie pasa\197\188er\195\179w\npo mie\197\155cie San Fierro, pami\196\153taj by nie\npomyli\196\135 si\196\153 przy sprzeda\197\188y bilet\195\179w oraz\nkontroluj zadowolenie pasa\197\188er\195\179w.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- brak", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
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
        dxDrawText("EXP: " .. przecinek(_FORV_8_.exp_tramwajarz) .. "\nPunkty ulepsze\197\132: " .. przecinek(_FORV_8_.punkty_tramwajarz) .. "\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_tramwajarz) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 500 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, false, false)
      end
    end
    if windows.upgrades == true then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_tramwajarz), _UPVALUE0_.x, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 485 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
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
        elseif isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 15 / zoom, tocolor(26, 26, 26, 230))
          dxDrawText("ZAKUP", _UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
          dxDrawText("ZAKUP", _UPVALUE0_.x + 735 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
        end
      end
    end
  end
  if windows.level == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_tramwajarz
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        rgb = 0
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) then
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
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 105 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 120 / zoom, 120 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 60 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 120 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 90 / zoom, 90 / zoom, _FORV_10_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 135 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_10_.exp .. " | LEVEL: " .. _FORV_10_.level, _UPVALUE0_.x + 200 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 93 / zoom + math.floor(440 / zoom) * (1 + 1 - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 175 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.dolar1_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText(_FORV_10_.moneyJob .. " + " .. moneyADD, _UPVALUE0_.x + 200 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 175 / zoom + math.floor(440 / zoom) * (1 + 1 - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawText("LEVEL " .. _FORV_10_.levelJob, _UPVALUE0_.x + 175 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 30 / zoom + math.floor(440 / zoom) * (1 + 1 - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_10_.exp and levelLevel >= _FORV_10_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 110 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 110 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.ticket == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures1.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("KLIENT PROSI I BILET: " .. jakibilet .. ", POZOSTA\197\129O " .. ileos .. " KLIENT\195\147W", _UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y - 120 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y - math.floor(5 / zoom), _UPVALUE1_.w, _UPVALUE1_.h) then
      dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures1.normalny, 0, 0, 0, tocolor(255, 255, 255, 200), false)
    else
      dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures1.normalny, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(_UPVALUE1_.x + math.floor(460 / zoom), _UPVALUE1_.y - math.floor(5 / zoom), _UPVALUE1_.w, _UPVALUE1_.h) then
      dxDrawImage(_UPVALUE1_.x + math.floor(460 / zoom), _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures1.ulgowy, 0, 0, 0, tocolor(255, 255, 255, 200), false)
    else
      dxDrawImage(_UPVALUE1_.x + math.floor(460 / zoom), _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures1.ulgowy, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.endJob == true then
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures1.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134 PRAC\196\152?", _UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 200 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(28, 28, 28, 230))
      dxDrawText("TAK", _UPVALUE0_.x + 880 / zoom, _UPVALUE0_.y + 530 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawText("TAK", _UPVALUE0_.x + 880 / zoom, _UPVALUE0_.y + 530 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 180 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 180 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(28, 28, 28, 230))
      dxDrawText("NIE", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 530 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 180 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawText("NIE", _UPVALUE0_.x + 150 / zoom, _UPVALUE0_.y + 530 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.level == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE0_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          startJob()
          moneyADD = _FORV_8_.money
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153\nUdaj si\196\153 do najbli\197\188szego przystanku", "success")
        end
      end
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
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
      if getElementData(localPlayer, "player:job") ~= "Tramwajarz" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "plrJob", localPlayer, false)
      endJobAll()
    elseif isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if getElementData(localPlayer, "player:job") == "Tramwajarz" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      windows.background = false
      windows.main = false
      windows.level = true
      if getElementData(localPlayer, "player:level") then
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "1,500",
            level = 0,
            img = textures.level1_icon,
            money = 0
          },
          {
            levelJob = 2,
            exp = 0,
            moneyJob = "1,500",
            level = 0,
            img = textures.level2_icon,
            money = 1000
          },
          {
            levelJob = 3,
            exp = 0,
            moneyJob = "1,500",
            level = 0,
            img = textures.level3_icon,
            money = 2000
          },
          {
            levelJob = 4,
            exp = 0,
            moneyJob = "1,500",
            level = 0,
            img = textures.level4_icon,
            money = 3000
          }
        }
      else
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "1,500",
            level = 0,
            img = textures.level1_icon,
            money = 0
          },
          {
            levelJob = 2,
            exp = 750,
            moneyJob = "1,500",
            level = 10,
            img = textures.level2_icon,
            money = 1000
          },
          {
            levelJob = 3,
            exp = 1250,
            moneyJob = "1,500",
            level = 20,
            img = textures.level3_icon,
            money = 2000
          },
          {
            levelJob = 4,
            exp = 2000,
            moneyJob = "1,500",
            level = 35,
            img = textures.level4_icon,
            money = 3000
          }
        }
      end
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y - math.floor(5 / zoom), _UPVALUE1_.w, _UPVALUE1_.h) and windows.ticket == true then
      if jakibilet ~= "#ff7400NORMALNY#d2d2d2" then
        exports.st_gui:showPlayerNotification("Poda\197\130e\197\155 z\197\130y bilet klientowi!", "error")
        zadowolenie = zadowolenie - 20
        showCursor(false)
        setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
        showMarker()
        removeEventHandler("onClientRender", root, window)
        windows.ticket = false
        ileos = 0
        return
      end
      triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "wages1", localPlayer, {100, 642743})
      exports.st_gui:showPlayerNotification("Za sprzedanie biletu otrzymujesz: " .. 100 .. " PLN", "money")
      zadowolenie = zadowolenie + math.random(5, 17)
      if zadowolenie > 100 then
        zadowolenie = 100
      end
      ileos = ileos - 1
      randomBilet()
      if ileos == 0 then
        showCursor(false)
        setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
        showMarker()
        removeEventHandler("onClientRender", root, window)
        windows.ticket = false
      end
    elseif isMouseIn(_UPVALUE1_.x + math.floor(460 / zoom), _UPVALUE1_.y - math.floor(5 / zoom), _UPVALUE1_.w, _UPVALUE1_.h) and windows.ticket == true then
      if jakibilet ~= "#ffff00ULGOWY#d2d2d2" then
        exports.st_gui:showPlayerNotification("Poda\197\130e\197\155 z\197\130y bilet klientowi!", "error")
        zadowolenie = zadowolenie - 20
        showCursor(false)
        setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
        showMarker()
        removeEventHandler("onClientRender", root, window)
        windows.ticket = false
        ileos = 0
        return
      end
      triggerServerEvent("evEwenciks_shstrhjdfg", resourceRoot, "wages1", localPlayer, {100, 642743})
      exports.st_gui:showPlayerNotification("Za sprzedanie biletu otrzymujesz: " .. 100 .. " PLN", "money")
      zadowolenie = zadowolenie + math.random(5, 17)
      if zadowolenie > 100 then
        zadowolenie = 100
      end
      ileos = ileos - 1
      randomBilet()
      if ileos == 0 then
        showCursor(false)
        setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
        showMarker()
        removeEventHandler("onClientRender", root, window)
        windows.ticket = false
      end
    elseif isMouseIn(_UPVALUE0_.x + 180 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom) and windows.endJob == true then
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
      showCursor(false)
    elseif isMouseIn(_UPVALUE0_.x + 550 / zoom, _UPVALUE0_.y + 340 / zoom, 150 / zoom, 50 / zoom) and windows.endJob == true then
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
      endJobAll()
      setTimer(setElementPosition, 300, 1, localPlayer, -2268.88, 534.67, 35.02)
      showCursor(false)
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
getResourceName(getThisResource(), true, 767070149)
return
