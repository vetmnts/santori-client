screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windows = {
  main = false,
  upgrades = false,
  background = false,
  level = false,
  computer = false
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
      dxDrawText("KONWOJENT BANKOWY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Za\197\130aduj torby pieni\196\153dzy do pojazdu\naby rozwozi\196\135 je do bankomat\195\179w\nw San Andreas.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 350 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText([[
- Level postaci: 5
- Prawo jazdy kat. C]], _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
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
        dxDrawText("EXP: " .. przecinek(_FORV_8_.exp_konwojent) .. "\nPunkty ulepsze\197\132: " .. przecinek(_FORV_8_.punkty_konwojent) .. "\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_konwojent) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 500 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, false, false)
      end
    end
    if windows.upgrades == true then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_konwojent), _UPVALUE0_.x, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom) + 485 / zoom, _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
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
        expLevel = _FORV_18_.exp_konwojent
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
end
function window1()
  if windows.computer == true then
    if not getPedOccupiedVehicle(localPlayer) then
      return
    end
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures2.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
    dxDrawText("KOMPUTER", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    if #table_course == 0 then
      dxDrawText("BRAK DOST\196\152PNYCH ZLECE\197\131\nUDAJ SI\196\152 ZA\197\129ADOWA\196\134\nPACZKI", _UPVALUE0_.x + math.floor(1070 / zoom), _UPVALUE0_.y + math.floor(57 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "center", "center", false, false, false, false, false)
    end
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
    dxDrawImageSection(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, (3000 + playerX) * mapUnit - _UPVALUE1_.w / 2 * mapZoom, (3000 - playerY) * mapUnit - _UPVALUE1_.h / 2 * mapZoom, _UPVALUE1_.w * mapZoom, _UPVALUE1_.h * mapZoom, textures2.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    xY = 0
    for _FORV_14_, _FORV_15_ in ipairs(table_course) do
      xY = xY + 1
      dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - math.floor(38 / zoom) / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - math.floor(38 / zoom) / 2, math.floor(30 / zoom), math.floor(30 / zoom), textures2.player, 0, 0, 0, tocolor(255, 255, 255, 255))
      if isMouseIn(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_.pos[1], _FORV_15_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_.pos[1], _FORV_15_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(30 / zoom), math.floor(30 / zoom)) or isMouseIn(_UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 80 / zoom + 50 / zoom * (xY - 1), 120 / zoom, 38 / zoom) then
        colorBlipsMap = 200
      else
        colorBlipsMap = 255
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 80 / zoom + 50 / zoom * (xY - 1), 120 / zoom, 38 / zoom, 10 / zoom, tocolor(25, 25, 25, 230))
      dxDrawText("BANKOMAT #" .. _FORV_15_.id, _UPVALUE0_.x - 175 / zoom, _UPVALUE0_.y - 5 / zoom + 100 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(colorBlipsMap, colorBlipsMap, colorBlipsMap, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, false, false)
      dxDrawImage(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_.pos[1], _FORV_15_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_.pos[1], _FORV_15_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(30 / zoom), math.floor(30 / zoom), textures2.blip, 0, 0, 0, tocolor(colorBlipsMap, colorBlipsMap, colorBlipsMap, 255))
    end
    if windows.select then
      dxDrawText("INFORMACJE", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y - 5 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 115 / zoom, 260 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("BANKOMAT #" .. idATM, _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 75 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 230 / zoom, 260 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("LOKALIZACJA", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 230 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText(getZoneName(posAtm[1], posAtm[2], posAtm[3], true) .. ", " .. getZoneName(posAtm[1], posAtm[2], posAtm[3], false), _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 300 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 335 / zoom, 260 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("ODLEG\197\129O\197\154\196\134 OD CIEBIE", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 440 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posAtm[1], posAtm[2], posAtm[3], getElementPosition(localPlayer))) .. "m", _UPVALUE0_.x + 590 / zoom, _UPVALUE0_.y + 510 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 420 / zoom, 150 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 420 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(28, 28, 28, 230))
        dxDrawText("WYBIERZ", _UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 687 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(170, 170, 170, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / zoom, _UPVALUE0_.y + 420 / zoom, 150 / zoom, 50 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
        dxDrawText("WYBIERZ", _UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 687 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.computer == true then
      for _FORV_6_, _FORV_7_ in ipairs(table_course) do
        if isMouseIn(math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - _UPVALUE0_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + _UPVALUE0_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_7_.pos[1], _FORV_7_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - _UPVALUE0_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + _UPVALUE0_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_7_.pos[1], _FORV_7_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(30 / zoom), math.floor(30 / zoom)) or isMouseIn(_UPVALUE1_.x + 35 / zoom, _UPVALUE1_.y + 80 / zoom + math.floor(50 / zoom) * (0 + 1 - 1), 120 / zoom, 38 / zoom) then
          windows.select = true
          idSelect = _FORV_6_
          posAtm = {
            _FORV_7_.pos[1],
            _FORV_7_.pos[2],
            _FORV_7_.pos[3]
          }
          idATM = _FORV_7_.id
        end
      end
    end
    if windows.level == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / zoom + math.floor(470 / zoom) * (1 - 1), _UPVALUE1_.y + 90 / zoom + math.floor(220 / zoom) * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          startJob()
          moneyADD = _FORV_8_.money
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153\nUdaj si\196\153 zapakowa\196\135 torby pieni\196\153dzy do pojazdu", "success")
        end
      end
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE1_.x + 685 / zoom, _UPVALUE1_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = true
      windows.upgrades = false
      windows.level = false
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.main = false
      windows.upgrades = true
      windows.level = false
    elseif isMouseIn(_UPVALUE1_.x + 29 / zoom, _UPVALUE1_.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
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
    elseif isMouseIn(_UPVALUE1_.x + 490 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Konwojent bankowy" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      triggerServerEvent("evEwenciks_je6stgfdyh", resourceRoot, "plrJob", localPlayer, false)
      endJobAll()
    elseif isMouseIn(_UPVALUE1_.x + 690 / zoom, _UPVALUE1_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.main == true then
      if getElementData(localPlayer, "player:job") == "Konwojent bankowy" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getElementData(localPlayer, "player:lvl") < 5 then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 5 level aby tutaj pracowa\196\135", "error")
        return
      end
      if getElementData(localPlayer, "player:elementDat").license_C == 0 then
        exports.st_gui:showPlayerNotification("Nie posiadasz kategorii Kat.C", "error")
        return
      end
      windows.background = false
      windows.main = false
      windows.level = true
      levelJob = {
        {
          levelJob = 1,
          exp = 0,
          moneyJob = "22,500 - 24,000",
          level = 10,
          img = textures.level1_icon,
          money = 0
        },
        {
          levelJob = 2,
          exp = 250,
          moneyJob = "22,500 - 24,000",
          level = 15,
          img = textures.level2_icon,
          money = 1500
        },
        {
          levelJob = 3,
          exp = 500,
          moneyJob = "22,500 - 24,000",
          level = 23,
          img = textures.level3_icon,
          money = 2600
        },
        {
          levelJob = 4,
          exp = 600,
          moneyJob = "22,500 - 24,000",
          level = 30,
          img = textures.level4_icon,
          money = 3750
        }
      }
    elseif isMouseIn(_UPVALUE1_.x + 650 / zoom, _UPVALUE1_.y + 420 / zoom, 150 / zoom, 50 / zoom) and windows.computer == true and windows.select == true then
      blockComputer = true
      removeEventHandler("onClientRender", root, window1)
      windows.computer = false
      for _FORV_5_, _FORV_6_ in pairs(textures2) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures2 = {}
      showCursor(false)
      posTracking = {
        posAtm[1],
        posAtm[2],
        posAtm[3] + 1
      }
      blip = createBlip(posAtm[1], posAtm[2], posAtm[3], 41, 2, 0, 0, 0, 0, 0, 9999)
      trackingTEXT = "WYJMIJ TORB\196\152 Z POJAZDU!"
      table.remove(table_course, idSelect)
      exports.st_gui:showPlayerNotification("Udaj si\196\153 do wybranego bankomatu", "info")
      unbindKey("mouse_wheel_up", "down", scrollBigMap)
      unbindKey("mouse_wheel_down", "down", scrollBigMap)
      removeEventHandler("onClientClick", root, moveBigMap)
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
getResourceName(getThisResource(), true, 182360179)
return
