screenW, screenH = guiGetScreenSize()
px, py = screenW / 1920, screenH / 1080
zoom = exports.st_gui:getInterfaceZoom()
stonePos = {
  x = math.floor(screenW / 2 - 400 / zoom / 2),
  y = math.floor(screenH / 2 - 220 / zoom / 2),
  w = math.floor(420 / zoom),
  h = math.floor(200 / zoom)
}
platePos = {
  x = math.floor(screenW / 2 - 940 / zoom / 2),
  y = math.floor(screenH / 2 - 420 / zoom / 2),
  w = math.floor(400 / zoom),
  h = math.floor(400 / zoom)
}
table_statistics = {}
table_stockExchange = {}
hitX, hitY = -100, -100
hitS = math.floor(70 / zoom)
windows = {
  background = false,
  breakingStone = false,
  saleCoal = false,
  endJob = false,
  loading = false,
  fixPick = false
}
graph = {}
key = {}
info = {}
data = {}
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
    if windows.category == "g\197\130\195\179wne" then
      dxDrawText("G\195\147RNIK", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / zoom, _UPVALUE0_.y + 83 / zoom, 360 / zoom, 206 / zoom, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 420 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 330 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("Twoim zadaniem w tej pracy jest\nwydobywanie surowc\195\179w, gdy ju\197\188\nuzbierasz ich dowoln\196\133 ilo\197\155\196\135, mo\197\188esz go\nsprzeda\196\135.", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 340 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(190, 190, 190, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 475 / zoom, 370 / zoom, 3 / zoom, 2 / zoom, tocolor(60, 60, 60, 230))
      dxDrawText("- brak", _UPVALUE0_.x + 114 / zoom, _UPVALUE0_.y + 810 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
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
        dxDrawText("Og\195\179\197\130 kg: #ffbf00" .. _FORV_8_.laczne_kilogramy_kopalnia .. "\n#b4b4b4Punkty ulepsze\197\132: #ffbf00" .. _FORV_8_.punkty_kopalnia .. "\n#b4b4b4\197\129\196\133czne zarobki: #00ad23" .. przecinek(_FORV_8_.zarobki_kopalnia) .. [[
 PLN
#b4b4b4STAN KILOFA: #ffbf00]] .. string.format("%02.1f", _FORV_8_.stanKilofa_kopalnia / 10) .. "%", _UPVALUE0_.x, _UPVALUE0_.y + 380 / zoom, _UPVALUE0_.x + 362 / zoom + 495 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.category == "ulepszenia" then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_kopalnia), _UPVALUE0_.x, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 195 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE0_.x + 120 / zoom, _UPVALUE0_.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.name == "Pojemno\197\155\196\135 przyczepki" or _FORV_8_.name == "Ulepszenie kilofa" then
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
        expLevel = _FORV_18_.laczne_kilogramy_kopalnia
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
    dxDrawText("G\195\147RNIK", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 121 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
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
GRACZA #ffbb00]] .. getPlayerName(data.selectPlayerOffer) .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 320 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
  end
  if windows.breakingStone == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 137 / zoom, _UPVALUE1_.y + 278 / zoom, 124 / zoom, 124 / zoom, 7, tocolor(key.color1[1], key.color1[2], key.color1[3], 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x - 135 / zoom, _UPVALUE1_.y + 280 / zoom, 120 / zoom, 120 / zoom, 7, tocolor(30, 30, 30, 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x - 2 / zoom, _UPVALUE1_.y + 278 / zoom, 124 / zoom, 124 / zoom, 7, tocolor(key.color2[1], key.color2[2], key.color2[3], 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y + 280 / zoom, 120 / zoom, 120 / zoom, 7, tocolor(30, 30, 30, 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 133 / zoom, _UPVALUE1_.y + 278 / zoom, 124 / zoom, 124 / zoom, 7, tocolor(key.color3[1], key.color3[2], key.color3[3], 230))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 135 / zoom, _UPVALUE1_.y + 280 / zoom, 120 / zoom, 120 / zoom, 7, tocolor(30, 30, 30, 230))
    dxDrawText(key.key1, _UPVALUE0_.x + math.floor(250 / zoom), _UPVALUE0_.y + math.floor(930 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold50"), "center", "center", false, false, false, false, false)
    dxDrawText(key.key2, _UPVALUE0_.x + math.floor(520 / zoom), _UPVALUE0_.y + math.floor(930 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold50"), "center", "center", false, false, false, false, false)
    dxDrawText(key.key3, _UPVALUE0_.x + math.floor(790 / zoom), _UPVALUE0_.y + math.floor(930 / zoom), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("bold50"), "center", "center", false, false, false, false, false)
  end
  if windows.saleCoal == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 40 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.w + 80 / zoom, _UPVALUE0_.h + 40 / zoom, 38 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x - 50 / zoom, _UPVALUE0_.y - 25 / zoom, _UPVALUE0_.w + 100 / zoom, _UPVALUE0_.h + 50 / zoom, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 36 / zoom, 920 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 50 / zoom, 530 / zoom, 360 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 50 / zoom, 380 / zoom, 175 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 235 / zoom, 380 / zoom, 175 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 420 / zoom, 380 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawImage(_UPVALUE0_.x + 863 / zoom, _UPVALUE0_.y - 0 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("GIE\197\129DA SUROWC\195\147W - od\197\155wie\197\188enie gie\197\130dy za #ffb700" .. math.floor(CzasZmiany / 60000) .. " #ffffffminut", _UPVALUE0_.x - 10 / zoom, _UPVALUE0_.y - 175 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawText("CENY SUROWC\195\147W NA GIE\197\129DZIE", _UPVALUE0_.x + 535 / zoom, _UPVALUE0_.y - 55 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawText("TWOJE SUROWCCE", _UPVALUE0_.x + 535 / zoom, _UPVALUE0_.y + 320 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      for _FORV_12_, _FORV_13_ in ipairs(table_stockExchange) do
        xY = 0
        for _FORV_18_, _FORV_19_ in ipairs({
          {
            "W\196\153giel",
            _FORV_13_.coal,
            {
              150,
              150,
              150
            },
            _FORV_8_.coal_kopalnia,
            graph.coalNumber,
            "#141414"
          },
          {
            "\197\187elazo",
            _FORV_13_.iron,
            {
              255,
              255,
              255,
              255
            },
            _FORV_8_.iron_kopalnia,
            graph.ironNumber,
            "#bdbdbd"
          },
          {
            "Z\197\130oto",
            _FORV_13_.gold,
            {
              255,
              222,
              56,
              255
            },
            _FORV_8_.gold_kopalnia,
            graph.goldNumber,
            "#ffde05"
          },
          {
            "Diamenty",
            _FORV_13_.diamonds,
            {
              56,
              165,
              255,
              255
            },
            _FORV_8_.diamonds_kopalnia,
            graph.diamondsNumber,
            "#38a5ff"
          }
        }) do
          xY = xY + 1
          dxDrawImage(_UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 98 / zoom + 30 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.coal_icon, 0, 0, 0, tocolor(_FORV_19_[3][1], _FORV_19_[3][2], _FORV_19_[3][3], 255), false)
          dxDrawText(_FORV_19_[1], _UPVALUE0_.x + 570 / zoom, _UPVALUE0_.y + 16 / zoom + 60 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
          dxDrawText("#009419" .. przecinek(_FORV_19_[2]) .. " #ffffffPLN  #ffbf001#ffffff/kg", _UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 16 / zoom + 60 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawImage(_UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 283 / zoom + 30 / zoom * (xY - 1), 25 / zoom, 25 / zoom, textures.coal_icon, 0, 0, 0, tocolor(_FORV_19_[3][1], _FORV_19_[3][2], _FORV_19_[3][3], 255), false)
          dxDrawText(_FORV_19_[1], _UPVALUE0_.x + 570 / zoom, _UPVALUE0_.y + 388 / zoom + 60 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
          dxDrawText("#ffbf00" .. _FORV_19_[4] .. " #ffffffkg  #d2d2d2( #009419" .. przecinek(_FORV_19_[4] * _FORV_19_[2]) .. " #ffffffPLN #d2d2d2)", _UPVALUE0_.x + 680 / zoom, _UPVALUE0_.y + 388 / zoom + 60 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        end
        xY = 0
        for _FORV_18_, _FORV_19_ in ipairs({
          {
            "W\196\153giel",
            _FORV_13_.coal,
            {
              150,
              150,
              150
            },
            _FORV_8_.coal_kopalnia,
            graph.coalNumber,
            "#141414"
          },
          {
            "\197\187elazo",
            _FORV_13_.iron,
            {
              255,
              255,
              255,
              255
            },
            _FORV_8_.iron_kopalnia,
            graph.ironNumber,
            "#bdbdbd"
          },
          {
            "Z\197\130oto",
            _FORV_13_.gold,
            {
              255,
              222,
              56,
              255
            },
            _FORV_8_.gold_kopalnia,
            graph.goldNumber,
            "#ffde05"
          },
          {
            "Diamenty",
            _FORV_13_.diamonds,
            {
              56,
              165,
              255,
              255
            },
            _FORV_8_.diamonds_kopalnia,
            graph.diamondsNumber,
            "#38a5ff"
          }
        }) do
          xY = xY + 1
          dxDrawText(_FORV_19_[6] .. "" .. _FORV_19_[1], _UPVALUE0_.x + 532 / zoom, _UPVALUE0_.y + 679 / zoom + 48 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
          dxDrawText("#ffbf00" .. _FORV_19_[5] .. " #ffffffKG  #d2d2d2( #009419" .. przecinek(_FORV_19_[5] * _FORV_19_[2]) .. " #ffffffPLN #d2d2d2)", _UPVALUE0_.x + 620 / zoom, _UPVALUE0_.y + 679 / zoom + 48 / zoom * (xY - 1), _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        end
        money = graph.coalNumber * _FORV_13_.coal + graph.goldNumber * _FORV_13_.gold + graph.ironNumber * _FORV_13_.iron + graph.diamondsNumber * _FORV_13_.diamonds
        dxDrawText("OTRZYMASZ: #009419" .. przecinek(money) .. " #ffffffPLN", _UPVALUE0_.x + 532 / zoom, _UPVALUE0_.y + 900 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 420 / zoom, 125 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 115 / zoom, _UPVALUE0_.y + 420 / zoom, 125 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / zoom, _UPVALUE0_.y + 420 / zoom, 125 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 385 / zoom, _UPVALUE0_.y + 420 / zoom, 125 / zoom, 155 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
    dxDrawText("\225\144\138", _UPVALUE0_.x - 359 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("W\196\152GIEL", _UPVALUE0_.x - 279 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(20, 20, 20, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.coalNumber, _UPVALUE0_.x - 279 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x - 199 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x - 8 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    dxDrawText("\225\144\138", _UPVALUE0_.x - 88 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#bdbdbd\197\187ELAZO", _UPVALUE0_.x - 8 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.ironNumber, _UPVALUE0_.x - 8 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x + 72 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 127 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    dxDrawText("\225\144\138", _UPVALUE0_.x + 181 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffde05Z\197\129OTO", _UPVALUE0_.x + 261 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.goldNumber, _UPVALUE0_.x + 261 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x + 341 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 262 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    dxDrawText("\225\144\138", _UPVALUE0_.x + 452 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText("#38a5ffDIAMENTY", _UPVALUE0_.x + 532 / zoom, _UPVALUE0_.y + 710 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    dxDrawText(graph.diamondsNumber, _UPVALUE0_.x + 532 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    dxDrawText("\225\144\133", _UPVALUE0_.x + 612 / zoom, _UPVALUE0_.y + 785 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("MAX", _UPVALUE0_.x + 397 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("SPRZEDAJ", _UPVALUE0_.x + 748 / zoom, _UPVALUE0_.y + 520 / zoom, 140 / zoom, 45 / zoom, 255, 1)
    if rendertarget then
      dxDrawImage(_UPVALUE0_.x - 45 / zoom, _UPVALUE0_.y - 7 / zoom, 590 / zoom, 438 / zoom, rendertarget)
    end
  end
  if windows.loading == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 40 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.w + 80 / zoom, _UPVALUE0_.h + 40 / zoom, 38 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x - 50 / zoom, _UPVALUE0_.y - 25 / zoom, _UPVALUE0_.w + 100 / zoom, _UPVALUE0_.h + 50 / zoom, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 20 / zoom, _UPVALUE0_.y + 36 / zoom, 920 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE0_.x + 860 / zoom, _UPVALUE0_.y - 3 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("GIE\197\129DA SUROWC\195\147W - od\197\155wie\197\188enie gie\197\130dy za #ffb700" .. math.floor(CzasZmiany / 60000) .. " #ffffffminut", _UPVALUE0_.x - 10 / zoom, _UPVALUE0_.y - 175 / zoom, _UPVALUE0_.x + math.floor(362 / zoom), _UPVALUE0_.y + math.floor(204 / zoom), tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    dxDrawImage(_UPVALUE0_.x + 370 / zoom, _UPVALUE0_.y + 210 / zoom, 130 / zoom, 130 / zoom, textures.loading, math.cos((interpolateBetween(-9, 0, 0, 0, 0, 0, (getTickCount() - tick1) / 6500, "SineCurve"))) * 250, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 199 / zoom, _UPVALUE0_.y + 149 / zoom, _UPVALUE0_.w - 398 / zoom, _UPVALUE0_.h - 298 / zoom, 25 / zoom, tocolor(255, 187, 0, 200))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, _UPVALUE0_.h - 300 / zoom, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawText("CZY NA PEWNO CHCESZ ANULOWA\196\134\nWYW\195\147Z?", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 290 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 335 / zoom, 102 / zoom, 62 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 335 / zoom, 102 / zoom, 62 / zoom, 255, 1)
  end
  if windows.fixPick == true then
    dxDrawRoundedRectangle(_UPVALUE2_.x - 1 / zoom, _UPVALUE2_.y - 1 / zoom, _UPVALUE2_.w + 2 / zoom, _UPVALUE2_.h + 2 / zoom, 25 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(_UPVALUE2_.x + 15 / zoom, _UPVALUE2_.y + 40 / zoom, _UPVALUE2_.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE2_.x + _UPVALUE2_.w - 45 / zoom, _UPVALUE2_.y + 10 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("NAPRAWA KILOFA", _UPVALUE2_.x + 15 / zoom, _UPVALUE2_.y - 155 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_kopalnia), _UPVALUE2_.x, _UPVALUE2_.y - 157 / zoom, _UPVALUE2_.x + 362 / zoom + 190 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
    end
    dxDrawText("OBECNY STAN: " .. rgbToHex(interpolateColor(dataJob.stanKilofa, 1000, 350)) .. string.format("%02.1f", dataJob.stanKilofa / 10) .. "#ffffff%", _UPVALUE2_.x + 240 / zoom, _UPVALUE2_.y + 153 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #00941940,000 #ffffffPLN ORAZ #ffaa0030 #ffffffPUNKT\195\147W ULEPSZE\197\131", _UPVALUE2_.x + 240 / zoom, _UPVALUE2_.y + 230 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE2_.x + 244 / zoom, _UPVALUE2_.y + 49 / zoom, 102 / zoom, 102 / zoom, 15 / zoom, tocolor(interpolateColor(dataJob.stanKilofa, 1000, 350)))
    dxDrawRoundedRectangle(_UPVALUE2_.x + 245 / zoom, _UPVALUE2_.y + 50 / zoom, 100 / zoom, 100 / zoom, 15 / zoom, tocolor(25, 25, 25, 253))
    dxDrawImage(_UPVALUE2_.x + 250 / zoom, _UPVALUE2_.y + 55 / zoom, 90 / zoom, 90 / zoom, texturesRender.pick_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    exports.ST_buttons:dxCreateButton("NAPRAW", _UPVALUE2_.x + 220 / zoom, _UPVALUE2_.y + 240 / zoom, 160 / zoom, 50 / zoom, 255, 1)
  end
  if windows.rozladowaniePrzyczepki == true then
    dxDrawRoundedRectangle(_UPVALUE2_.x - 1 / zoom, _UPVALUE2_.y - 1 / zoom, _UPVALUE2_.w + 2 / zoom, _UPVALUE2_.h + 2 / zoom, 25 / zoom, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, 25 / zoom, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(_UPVALUE2_.x + 15 / zoom, _UPVALUE2_.y + 40 / zoom, _UPVALUE2_.w - 30 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawImage(_UPVALUE2_.x + _UPVALUE2_.w - 45 / zoom, _UPVALUE2_.y + 10 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ROZ\197\129ADOWANIE PRZYCZEPKI", _UPVALUE2_.x + 15 / zoom, _UPVALUE2_.y - 155 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    if twojWspolpracownik then
      dxDrawText("W\196\152GIEL: #363636" .. dataJob.coal / 2, _UPVALUE2_.x + 140 / zoom, _UPVALUE2_.y - 10 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("\197\187ELAZO: #bdbdbd" .. dataJob.iron / 2, _UPVALUE2_.x + 140 / zoom, _UPVALUE2_.y + 100 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("Z\197\129OTO: #ffde05" .. dataJob.gold / 2, _UPVALUE2_.x + 360 / zoom, _UPVALUE2_.y - 10 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("DIAMENTY: #38a5ff" .. dataJob.diamonds / 2, _UPVALUE2_.x + 360 / zoom, _UPVALUE2_.y + 100 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("W\196\152GIEL: #363636" .. dataJob.coal, _UPVALUE2_.x + 140 / zoom, _UPVALUE2_.y - 10 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("\197\187ELAZO: #bdbdbd" .. dataJob.iron, _UPVALUE2_.x + 140 / zoom, _UPVALUE2_.y + 100 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("Z\197\129OTO: #ffde05" .. dataJob.gold, _UPVALUE2_.x + 360 / zoom, _UPVALUE2_.y - 10 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawText("DIAMENTY: #38a5ff" .. dataJob.diamonds, _UPVALUE2_.x + 360 / zoom, _UPVALUE2_.y + 100 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("ZASOBY W TRYBIE DUO S\196\132 DZIELONE PO PO\197\129OWIE", _UPVALUE2_.x + 240 / zoom, _UPVALUE2_.y + 210 / zoom, _UPVALUE2_.x + 362 / zoom, _UPVALUE2_.y + 204 / zoom, tocolor(60, 60, 60, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ROZ\197\129ADUJ", _UPVALUE2_.x + 220 / zoom, _UPVALUE2_.y + 240 / zoom, 160 / zoom, 50 / zoom, 255, 1)
  end
end
function windowRender()
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    info.time = info.time + 1
  end
  if info.showinfo then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / zoom, _UPVALUE0_.y - 2 / zoom, _UPVALUE0_.w + 4 / zoom, _UPVALUE0_.h + 4 / zoom, 15 / zoom, tocolor(80, 80, 80, 150))
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 220))
    if twojWspolpracownik then
      if isElement(twojWspolpracownik) then
        dxDrawImage(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y - 10 / zoom, 70 / zoom, 70 / zoom, texturesRender.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if avatarIMG then
          dxDrawImage(_UPVALUE0_.x - 15 / zoom, _UPVALUE0_.y - 10 / zoom, 70 / zoom, 70 / zoom, avatarIMG, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        dxDrawText("Wsp\195\179\197\130praca z #ffbf00" .. getPlayerName(twojWspolpracownik) .. "", _UPVALUE0_.x + 65 / zoom, _UPVALUE0_.y - 122 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
      elseif data.lider == true then
        twojWspolpracownik = false
        exports.st_gui:showPlayerNotification("Tw\195\179j wsp\195\179\197\130pracownik wyszed\197\130 z serwera.\nPrzechodzisz w tryb solo", "info")
      else
        endJobAll()
        exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153, poniewa\197\188 tw\195\179j wsp\195\179\197\130pracownik wyszed\197\130 z serwera", "info")
      end
    else
      dxDrawText("G\195\147RNIK - LEVEL #00a118" .. levelJob, _UPVALUE0_.x, _UPVALUE0_.y - 124 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("STAN KILOFA: #ffbf00" .. string.format("%02.1f", dataJob.stanKilofa / 10) .. "#ffffff%", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("ZDOBYTY EXP: #ffbf00" .. info.exp, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 25 / zoom, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("ZDOBYTE KG: #ffbf00" .. info.coal + info.iron + info.gold + info.diamonds, _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 70 / zoom, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("CZAS: #ffbf00" .. secondsToClock(info.time) .. "", _UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 115 / zoom, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
    dxDrawText("W\196\152GIEL: #ffbf00" .. info.coal, _UPVALUE0_.x, _UPVALUE0_.y - 20 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("\197\187ELAZO: #ffbf00" .. info.iron, _UPVALUE0_.x, _UPVALUE0_.y + 25 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("Z\197\129OTO: #ffbf00" .. info.gold, _UPVALUE0_.x, _UPVALUE0_.y + 70 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("DIAMENT: #ffbf00" .. info.diamonds, _UPVALUE0_.x, _UPVALUE0_.y + 115 / zoom, _UPVALUE0_.x + _UPVALUE0_.w - 10 / zoom, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
    dxDrawText("ABY UKRY\196\134 INFORMACJE KLIKNIJ #ffbc00H", _UPVALUE0_.x, _UPVALUE0_.y + 143 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  for _FORV_10_, _FORV_11_ in ipairs(stoneBigTable) do
    if isElement(stoneBig[_FORV_11_[1]]) and getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) and getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) then
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - 83, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - 85, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneBig[_FORV_11_[1]]))) .. "m", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 2, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneBig[_FORV_11_[1]]))) .. "m", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
      if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneBig[_FORV_11_[1]]))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - 91 / zoom, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 29 / zoom, 182 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - 90 / zoom, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 30 / zoom, 180 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY ROZPOCZ\196\132\196\134 KOPANIE KLIKNIJ", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneBig[_FORV_11_[1]])))
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if getPedOccupiedVehicle(localPlayer) then
            return
          end
          if dataJob.trzymaKamien then
            exports.st_gui:showPlayerNotification("Najpierw od\197\130\195\179\197\188 surowiec", "info")
            return
          end
          if dataJob.stanKilofa < 50 then
            exports.st_gui:showPlayerNotification("Stan kilofa jest zbyt s\197\130aby", "error")
            return
          end
          if _FORV_11_[2] == "\197\188elazo" then
            if dataJob.stanKilofa < 100 then
              exports.st_gui:showPlayerNotification("Stan kilofa jest zbyt s\197\130aby", "error")
              return
            end
          elseif (_FORV_11_[2] == "z\197\130oto" or _FORV_11_[2] == "diament") and dataJob.stanKilofa < 400 then
            exports.st_gui:showPlayerNotification("Stan kilofa jest zbyt s\197\130aby", "error")
            return
          end
          if isElement(blip) then
            destroyElement(blip)
            blip = nil
          end
          showCursor(true)
          triggerServerEvent("ev_gornik", resourceRoot, "startAnimationMine", localPlayer)
          key.progress = 1
          key.color1 = {
            150,
            150,
            150
          }
          key.color2 = {
            150,
            150,
            150
          }
          key.color3 = {
            150,
            150,
            150
          }
          key.randomKey1 = math.random(1, #keyRandom)
          key.key1 = keyRandom[key.randomKey1][1]
          key.randomKey2 = math.random(1, #keyRandom)
          key.key2 = keyRandom[key.randomKey2][1]
          key.randomKey3 = math.random(1, #keyRandom)
          key.key3 = keyRandom[key.randomKey3][1]
          key.unlock = true
          key.successKey = 0
          addEventHandler("onClientRender", root, window)
          addEventHandler("onClientKey", root, keyF)
          windows.breakingStone = true
          dataJob.bigStoneID = _FORV_11_[1]
          dataJob.stoneType = _FORV_11_[2]
          if twojWspolpracownik then
            triggerServerEvent("ev_gornik", resourceRoot, "synchroUsuwanieSkaly", {
              twojWspolpracownik,
              dataJob.bigStoneID,
              "usunTabele"
            })
          end
          removeById(stoneBigTable, _FORV_11_[1])
        end
      end
    end
  end
  for _FORV_10_, _FORV_11_ in ipairs(stoneSmallTable) do
    if isElement(stoneSmall[_FORV_11_[1]]) and getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) and getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) then
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - 83, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
      dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - 85, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneSmall[_FORV_11_[1]]))) .. "m", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 2 - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 2, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneSmall[_FORV_11_[1]]))) .. "m", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
      if 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(stoneSmall[_FORV_11_[1]]))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - 86 / zoom, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - 85 / zoom, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY CHWYCI\196\134 " .. _FORV_11_[2] .. " KLIKNIJ", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 93 / zoom, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - 10 / zoom, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) - screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + 138 / zoom, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])) + screenW / 5, getScreenFromWorldPosition(getElementPosition(stoneSmall[_FORV_11_[1]])))
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if dataJob.trzymaKamien then
            exports.st_gui:showPlayerNotification("Najpierw od\197\130\195\179\197\188 surowiec", "info")
            return
          end
          if tonumber(dataJob.coal + dataJob.iron + dataJob.gold + dataJob.diamonds) >= dataJob.maxKgTrailer then
            exports.st_gui:showPlayerNotification("Przyczepka jest prze\197\130adowana.\nRoz\197\130aduj przyczepk\196\153", "info")
            return
          end
          triggerServerEvent("ev_gornik", resourceRoot, "giveStone", localPlayer, _FORV_11_[2], twojWspolpracownik)
          dataJob.trzymaKamien = _FORV_11_[1]
          dataJob.stoneType = _FORV_11_[2]
          usunMalyKamien(_FORV_11_[1])
          runningBlock(localPlayer, true)
          exports.st_gui:showPlayerNotification("Chwycono " .. dataJob.stoneType .. "\nZanie\197\155 " .. dataJob.stoneType .. " na przyczepk\196\153", "info")
          if twojWspolpracownik then
            triggerServerEvent("ev_gornik", resourceRoot, "synchroBranieMalegoKamienia", {
              twojWspolpracownik,
              _FORV_11_[1]
            })
          end
        end
      end
    end
  end
  for _FORV_10_, _FORV_11_ in ipairs(oddaniePos) do
    if getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) and getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) and 50 > math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) then
      dxDrawImage(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - 25 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesRender.trailer1_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 2 - screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 2, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200))
      if 5 > math.floor(getDistanceBetweenPoints3D(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3], getElementPosition(localPlayer))) then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - 86 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - 85 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText("ABY ROZ\197\129ADOWA\196\134 KLIKNIJ", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 93 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - 10 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
        dxDrawText("R", getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) - screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + 138 / zoom, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200) + screenW / 5, getScreenFromWorldPosition(_FORV_11_[1], _FORV_11_[2], _FORV_11_[3] + 0.5, 200))
        if getKeyState("R") and not clickC then
          clickC = true
          setTimer(function()
            clickC = false
          end, 1500, 1)
          if data.lider == true then
            if getPedOccupiedVehicle(localPlayer) then
              if getElementModel((getPedOccupiedVehicle(localPlayer))) == 485 then
                if getVehicleTowedByVehicle(dataJob.vehicle) == dataJob.trailer then
                  if dataJob.trzymaKamien then
                    exports.st_gui:showPlayerNotification("Najpierw od\197\130\195\179\197\188 surowiec", "info")
                    return
                  end
                  if windows.rozladowaniePrzyczepki == true then
                    return
                  end
                  textures = {
                    cross = dxCreateTexture(":ST_gui/img/cross.png")
                  }
                  addEventHandler("onClientRender", root, window)
                  addEventHandler("onClientClick", root, click)
                  showCursor(true)
                  windows.rozladowaniePrzyczepki = true
                else
                  exports.st_gui:showPlayerNotification("Przyczepka musi by\196\135 pod\197\130\196\133czona", "error")
                end
              end
            else
              exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
            end
          else
            exports.st_gui:showPlayerNotification("Musisz siedzie\196\135 w poje\197\186dzie", "error")
          end
        end
      end
    end
  end
  if getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) and getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) and 50 > math.floor(getDistanceBetweenPoints3D(2584.88, -532.2, 1780.05, getElementPosition(localPlayer))) then
    dxDrawImage(getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - 25 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesRender.pick_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(2584.88, -532.2, 1780.05, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 2 - screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 2, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(2584.88, -532.2, 1780.05, getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200))
    if 5 > math.floor(getDistanceBetweenPoints3D(2584.88, -532.2, 1780.05, getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - 86 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - 85 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
      dxDrawText("ABY OTWORZY\196\134 GUI KLIKNIJ", getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 93 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - 10 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
      dxDrawText("R", getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) - screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + 138 / zoom, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200) + screenW / 5, getScreenFromWorldPosition(2584.88, -532.2, 1780.05, 200))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if dataJob.trzymaKamien then
          exports.st_gui:showPlayerNotification("Najpierw od\197\130\195\179\197\188 surowiec", "info")
          return
        end
        textures = {
          cross = dxCreateTexture(":ST_gui/img/cross.png")
        }
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        showCursor(true)
        windows.fixPick = true
      end
    end
  end
end
function renderTargetTrailer(_ARG_0_)
  dxSetRenderTarget(rt_table[1], false)
  dxDrawRoundedRectangle(0, 0, 600, 326, 20, tocolor(255, 187, 0, 255))
  dxDrawRoundedRectangle(2, 2, 596, 322, 20, tocolor(25, 25, 25, 255))
  dxDrawText("ZDOBYTE SUROWCE ", 0, 10, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false)
  exports.shader_circle:dxDrawCircle(95, 80, 42, 42, tocolor(0, 0, 0, 255), 0, 360, 3)
  dxDrawImage(80, 65, 30, 30, texturesRender.coal_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
  dxDrawText("W\196\152GIEL: #ffbf00" .. dataJob.coal, 125, 60, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "top", false, false, false, true, false)
  exports.shader_circle:dxDrawCircle(95, 130, 42, 42, tocolor(100, 100, 100, 255), 0, 360, 3)
  dxDrawImage(80, 115, 30, 30, texturesRender.coal_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  dxDrawText("\197\187ELAZO: #ffbf00" .. dataJob.iron, 125, 110, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "top", false, false, false, true, false)
  exports.shader_circle:dxDrawCircle(370, 80, 42, 42, tocolor(255, 222, 5, 255), 0, 360, 3)
  dxDrawImage(355, 65, 30, 30, texturesRender.coal_icon, 0, 0, 0, tocolor(255, 222, 56, 255), false)
  dxDrawText("Z\197\129OTO: #ffbf00" .. dataJob.gold, 400, 60, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "top", false, false, false, true, false)
  exports.shader_circle:dxDrawCircle(370, 130, 42, 42, tocolor(56, 165, 255), 0, 360, 3)
  dxDrawImage(355, 115, 30, 30, texturesRender.coal_icon, 0, 0, 0, tocolor(56, 165, 255, 255), false)
  dxDrawText("DIAMENTY: #ffbf00" .. dataJob.diamonds, 400, 110, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "top", false, false, false, true, false)
  dxDrawRoundedRectangle(30, 280, 540, 25, 6, tocolor(35, 35, 35, 255))
  dxDrawText("PRZEWIDYWANY ZAROBEK:", 0, 160, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxDrawText("#009419" .. przecinek(dataJob.coal * 280 + dataJob.gold * 850 + dataJob.iron * 530 + dataJob.diamonds * 3300) .. " #ffffffPLN", 0, 196, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "top", false, false, false, true, false)
  if 20 < 290 * tonumber(dataJob.coal + dataJob.iron + dataJob.gold + dataJob.diamonds) / dataJob.maxKgTrailer then
    dxDrawRoundedRectangle(30, 280, 540 * tonumber(dataJob.coal + dataJob.iron + dataJob.gold + dataJob.diamonds) / dataJob.maxKgTrailer, 25, 6, tocolor(252, 186, 3, 255), false)
  end
  dxDrawText("ZAPE\197\129NIENIE: #ffbf00" .. tonumber(dataJob.coal + dataJob.iron + dataJob.gold + dataJob.diamonds) .. " #ffffffKG / #ffbf00" .. dataJob.maxKgTrailer .. " #ffffffKG", 0, 245, 600, 322, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  dxSetRenderTarget()
end
function preRenderTrailer()
  if isElement(dataJob.trailer) and getElementBoundingBox(dataJob.trailer) then
    dxDrawMaterialLine3D(getPositionFromElementOffset(dataJob.trailer, 0, getElementBoundingBox(dataJob.trailer) - 1.5, 1.3))
    if dataJob.trzymaKamien and getScreenFromWorldPosition(getElementPosition(dataJob.trailer)) and getScreenFromWorldPosition(getElementPosition(dataJob.trailer)) and 2 > math.floor(getDistanceBetweenPoints3D(getElementPosition(dataJob.trailer))) and getKeyState("R") and not clickC then
      clickC = true
      setTimer(function()
        clickC = false
      end, 1500, 1)
      addKGtrailer()
      triggerServerEvent("ev_gornik", resourceRoot, "destroyStone", localPlayer, twojWspolpracownik)
      dataJob.trzymaKamien = false
      runningBlock(localPlayer, false)
    end
  end
end
function keyF(_ARG_0_, _ARG_1_)
  if getElementData(localPlayer, "player:job") == "Gornik" and _ARG_1_ then
    if key.progress == 1 and key.unlock then
      if _ARG_0_ == key.key1 then
        key.color1 = {
          0,
          255,
          0
        }
        key.successKey = key.successKey + 1
      else
        key.color1 = {
          255,
          0,
          0
        }
      end
      key.progress = key.progress + 1
      key.unlock = false
      setTimer(function()
        key.unlock = true
      end, 50, 1)
    end
    if key.progress == 2 and key.unlock then
      if _ARG_0_ == key.key2 then
        key.color2 = {
          0,
          255,
          0
        }
        key.successKey = key.successKey + 1
      else
        key.color2 = {
          255,
          0,
          0
        }
      end
      key.progress = key.progress + 1
      key.unlock = false
      setTimer(function()
        key.unlock = true
      end, 50, 1)
    end
    if key.progress == 3 and key.unlock then
      if _ARG_0_ == key.key3 then
        key.color3 = {
          0,
          255,
          0
        }
        key.successKey = key.successKey + 1
      else
        key.color3 = {
          255,
          0,
          0
        }
      end
      key.unlock = false
      setTimer(function()
        triggerServerEvent("ev_gornik", resourceRoot, "stopAnimationMine", localPlayer)
        usunDuzyKamien(dataJob.bigStoneID)
        if key.successKey >= 3 then
          stworzMalyKamien(dataJob.bigStoneID, dataJob.stoneType)
          if twojWspolpracownik then
            triggerServerEvent("ev_gornik", resourceRoot, "synchroUsuwanieSkaly", {
              twojWspolpracownik,
              {
                dataJob.bigStoneID,
                dataJob.stoneType
              },
              "stworzMalyKamien"
            })
          end
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie wydobyto " .. dataJob.stoneType, "info")
          triggerServerEvent("ev_gornik", resourceRoot, "dodajPunkty")
        else
          exports.st_gui:showPlayerNotification("Niestety nie uda\197\130o ci si\196\153 wydoby\196\135 \197\188adnego surowca", "error")
        end
        removeEventHandler("onClientKey", root, keyF)
        windows.breakingStone = false
        removeEventHandler("onClientRender", root, window)
        showCursor(false)
        for _FORV_3_, _FORV_4_ in ipairs(table_statistics) do
          if _FORV_4_.ulepszenie_kilof_kopalnia == 1 then
            dataJob.stanKilofa = dataJob.stanKilofa - math.random(1, 5)
          elseif _FORV_4_.ulepszenie_kilof_kopalnia == 2 then
            dataJob.stanKilofa = dataJob.stanKilofa - math.random(1, 3)
          elseif _FORV_4_.ulepszenie_kilof_kopalnia == 3 then
            dataJob.stanKilofa = dataJob.stanKilofa - math.random(1, 2)
          elseif _FORV_4_.ulepszenie_kilof_kopalnia == 4 then
            dataJob.stanKilofa = dataJob.stanKilofa - 1
          else
            dataJob.stanKilofa = dataJob.stanKilofa - math.random(2, 6)
          end
        end
        if #stoneBigTable <= 0 then
          if data.lider == true then
            createStone()
            if twojWspolpracownik then
              setTimer(function()
                triggerServerEvent("ev_gornik", resourceRoot, "wyslijTabeleSkaly", {twojWspolpracownik, stoneBigTable})
              end, 1000, 1)
            end
          else
            setTimer(function()
              triggerServerEvent("ev_gornik", resourceRoot, "pobierzPozycjeOdLidera", {twojWspolpracownik})
            end, 1000, 1)
          end
        end
        if twojWspolpracownik then
          triggerServerEvent("ev_gornik", resourceRoot, "synchroUsuwanieSkaly", {
            twojWspolpracownik,
            dataJob.bigStoneID,
            "usunObiektSkalaDuza"
          })
        end
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end, 100, 1)
    end
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
          triggerServerEvent("ev_gornik", resourceRoot, "sendOfferJob", localPlayer, _FORV_9_[1], positions)
          windows.category = "oczekiwanieNaGracza"
          data.selectPlayerOffer = _FORV_9_[1]
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
          if data.offerLevel == true then
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
            data.offerLevel = false
          elseif data.wybraneDuo == true then
            data.wybraneDuo = false
            windows.category = "WYBIERZ GRACZA"
          else
            texturesRender = {
              user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
              trailer1_icon = dxCreateTexture("img/trailer1_icon.png"),
              pick_icon = dxCreateTexture("img/pick_icon.png"),
              coal_icon = dxCreateTexture("img/coal_icon.png")
            }
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
            data.lider = true
            dataJob = {}
            startJob()
            exports.st_gui:showPlayerNotification("Rozpocz\196\153to prac\196\153", "success")
            setTimer(function()
              tick = getTickCount()
              createStone()
              addEventHandler("onClientRender", root, windowRender)
            end, 1000, 1)
          end
        end
      end
    end
    if windows.category == "ulepszenia" then
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 685 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) then
          if _FORV_8_.name == "Pojemno\197\155\196\135 przyczepki" or _FORV_8_.name == "Ulepszenie kilofa" then
            if _FORV_8_.status >= 4 then
            else
              triggerServerEvent("ev_gornik", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, true)
            end
          elseif _FORV_8_.status == 0 then
            triggerServerEvent("ev_gornik", resourceRoot, "upgrade", localPlayer, _FORV_8_.nameDatabase, _FORV_8_.price, false)
          end
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if getElementData(localPlayer, "player:job") == "Gornik" then
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
      windows.category = "WYBIERZ TRYB"
      data.lider = false
      exports.st_gui:showPlayerNotification("Wybierz tryb", "info")
    elseif isMouseIn(_UPVALUE0_.x + 490 / zoom, _UPVALUE0_.y + 86 / zoom, 150 / zoom, 200 / zoom) and windows.category == "g\197\130\195\179wne" then
      if blockStopJob then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz teraz zako\197\132czysz pracy\nSpr\195\179buj za chwil\196\153", "error")
        return
      end
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Gornik" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      if twojWspolpracownik then
        triggerServerEvent("ev_gornik", resourceRoot, "endJob", twojWspolpracownik)
      end
      endJobAll()
    elseif isMouseIn(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      data.wybraneDuo = false
      windows.category = "level"
      data.lider = true
      twojWspolpracownik = false
    elseif isMouseIn(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 200 / zoom, 155 / zoom, 155 / zoom) and windows.category == "WYBIERZ TRYB" then
      data.wybraneDuo = true
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
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "g\197\130\195\179wne"
    elseif isMouseIn(_UPVALUE0_.x + 29 / zoom, _UPVALUE0_.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      windows.category = "ulepszenia"
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
    end
    if windows.fixPick == true then
      if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 45 / zoom, _UPVALUE1_.y + 10 / zoom, 25 / zoom, 25 / zoom) then
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.fixPick = false
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
        showCursor(false)
      elseif isMouseIn(_UPVALUE1_.x + 220 / zoom, _UPVALUE1_.y + 240 / zoom, 160 / zoom, 50 / zoom) then
        if dataJob.stanKilofa > 950 then
          exports.st_gui:showPlayerNotification("Tw\195\179j kilof jest w dobrym stanie", "info")
          return
        end
        if not lastTickCountRozladunek then
          lastTickCountRozladunek = 60000
        end
        if 60000 < getTickCount() - lastTickCountRozladunek then
          lastTickCountRozladunek = getTickCount()
          triggerServerEvent("ev_gornik", resourceRoot, "naprawaKilofa")
        else
          exports.st_gui:showPlayerNotification("Mo\197\188esz naprawi\196\135 kilof raz na minut\196\153", "error")
        end
      end
    end
    if windows.rozladowaniePrzyczepki == true then
      if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 45 / zoom, _UPVALUE1_.y + 10 / zoom, 25 / zoom, 25 / zoom) then
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.rozladowaniePrzyczepki = false
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
        showCursor(false)
      elseif isMouseIn(_UPVALUE1_.x + 220 / zoom, _UPVALUE1_.y + 240 / zoom, 160 / zoom, 50 / zoom) and data.lider == true then
        if not lastTickCountRozladunek then
          lastTickCountRozladunek = 120000
        end
        if getTickCount() - lastTickCountRozladunek > 120000 then
          lastTickCountRozladunek = getTickCount()
          if twojWspolpracownik then
            triggerServerEvent("ev_gornik", resourceRoot, "rozladunek", localPlayer, {
              {
                dataJob.coal / 2,
                dataJob.iron / 2,
                dataJob.gold / 2,
                dataJob.diamonds / 2
              },
              twojWspolpracownik,
              6542373,
              dataJob.stanKilofa
            })
          else
            triggerServerEvent("ev_gornik", resourceRoot, "rozladunek", localPlayer, {
              {
                dataJob.coal,
                dataJob.iron,
                dataJob.gold,
                dataJob.diamonds
              },
              false,
              6542373,
              dataJob.stanKilofa
            })
          end
          dataJob.coal = 0
          dataJob.iron = 0
          dataJob.gold = 0
          dataJob.diamonds = 0
          renderTargetTrailer(dataJob.trailer)
        else
          exports.st_gui:showPlayerNotification("Mo\197\188esz roz\197\130adowa\196\135 raz na dwie minuty", "error")
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x - 10 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      if 0 >= graph.coalNumber then
        return
      end
      graph.coalNumber = graph.coalNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 65 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if tonumber(_FORV_8_.coal_kopalnia) < tonumber(graph.coalNumber + 1) then
          return
        end
        graph.coalNumber = graph.coalNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 122 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      if 0 >= graph.ironNumber then
        return
      end
      graph.ironNumber = graph.ironNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if tonumber(_FORV_8_.iron_kopalnia) < tonumber(graph.ironNumber + 1) then
          return
        end
        graph.ironNumber = graph.ironNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 260 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      if 0 >= graph.goldNumber then
        return
      end
      graph.goldNumber = graph.goldNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 335 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if tonumber(_FORV_8_.gold_kopalnia) < tonumber(graph.goldNumber + 1) then
          return
        end
        graph.goldNumber = graph.goldNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x + 395 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      if 0 >= graph.diamondsNumber then
        return
      end
      graph.diamondsNumber = graph.diamondsNumber - 1
    elseif isMouseIn(_UPVALUE0_.x + 470 / zoom, _UPVALUE0_.y + 483 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        if tonumber(_FORV_8_.diamonds_kopalnia) < tonumber(graph.diamondsNumber + 1) then
          return
        end
        graph.diamondsNumber = graph.diamondsNumber + 1
      end
    elseif isMouseIn(_UPVALUE0_.x - 8 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        graph.coalNumber = _FORV_8_.coal_kopalnia
      end
    elseif isMouseIn(_UPVALUE0_.x + 127 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        graph.ironNumber = _FORV_8_.iron_kopalnia
      end
    elseif isMouseIn(_UPVALUE0_.x + 262 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        graph.goldNumber = _FORV_8_.gold_kopalnia
      end
    elseif isMouseIn(_UPVALUE0_.x + 397 / zoom, _UPVALUE0_.y + 530 / zoom, 100 / zoom, 35 / zoom) and windows.saleCoal == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        graph.diamondsNumber = _FORV_8_.diamonds_kopalnia
      end
    elseif isMouseIn(_UPVALUE0_.x + 748 / zoom, _UPVALUE0_.y + 520 / zoom, 140 / zoom, 45 / zoom) and windows.saleCoal == true then
      if getElementData(localPlayer, "player:job") == "Gornik" then
        exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
        if tonumber(graph.coalNumber + graph.goldNumber + graph.ironNumber + graph.diamondsNumber) == 0 then
          exports.st_gui:showPlayerNotification("Masz 0 kg!", "error")
          return
        end
        removeEventHandler("onClientRestore", root, cacheChartDrawing)
        if _FORV_9_.ulepszenie_sprzedaz_kopalnia == 1 then
          tick1 = getTickCount()
          windows.loading = true
          windows.saleCoal = false
          for _FORV_14_, _FORV_15_ in ipairs(table_stockExchange) do
            money = graph.coalNumber * _FORV_15_.coal + graph.goldNumber * _FORV_15_.gold + graph.ironNumber * _FORV_15_.iron + graph.diamondsNumber * _FORV_15_.diamonds
          end
          triggerServerEvent("ev_gornik", resourceRoot, "exportCoal", localPlayer, {
            graph.coalNumber,
            graph.goldNumber,
            graph.ironNumber,
            money,
            5433475,
            graph.diamondsNumber,
            true
          }, cenySurowcow)
        else
          windows.saleCoal = false
          showCursor(false)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientClick", root, click)
          triggerServerEvent("ev_gornik", resourceRoot, "truck_start", localPlayer)
          bindKey("F", "down", exitGUI)
          bindKey("enter", "down", exitGUI)
          triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, true)
          wywoz = createMarker(260.47, 1409.31, 9.61, "cylinder", 3, 255, 255, 255, 255)
          blip = createBlipAttachedTo(wywoz, 41)
          for _FORV_14_, _FORV_15_ in pairs(textures) do
            if isElement(_FORV_15_) then
              destroyElement(_FORV_15_)
            end
          end
          textures = {}
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 863 / zoom, _UPVALUE0_.y - 0 / zoom, 25 / zoom, 25 / zoom) and windows.saleCoal == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      windows.saleCoal = false
      showCursor(false)
      removeEventHandler("onClientRestore", root, cacheChartDrawing)
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
    end
    if windows.endJob == true then
      if isMouseIn(_UPVALUE0_.x + 249 / zoom, _UPVALUE0_.y + 335 / zoom, 102 / zoom, 62 / zoom) then
        exports.st_gui:showPlayerNotification("Anulowano wyw\195\179z", "info")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.endJob = false
        showCursor(false)
        setTimer(function()
          triggerServerEvent("ev_gornik", resourceRoot, "setElementPosition", 2571.64, -536.52, 1780.08, 45)
        end, 500, 1)
        if isElement(wywoz) then
          destroyElement(wywoz)
          wywoz = nil
        end
        if isElement(blip) then
          destroyElement(blip)
          blip = nil
        end
        setTimer(function()
          triggerServerEvent("ev_gornik", resourceRoot, "setElementPosition", 2571.64, -536.52, 1780.08, 45)
        end, 500, 1)
        triggerServerEvent("ev_gornik", resourceRoot, "destroyVehicle", localPlayer)
        unbindKey("F", "down", exitGUI)
        unbindKey("enter", "down", exitGUI)
        triggerServerEvent("ev_gornik", resourceRoot, "plrJob", localPlayer, false)
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
      elseif isMouseIn(_UPVALUE0_.x + 539 / zoom, _UPVALUE0_.y + 335 / zoom, 102 / zoom, 62 / zoom) then
        showCursor(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientClick", root, click)
        windows.endJob = false
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
      end
    end
  end
end
function exitGUI()
  addEventHandler("onClientRender", root, window)
  addEventHandler("onClientClick", root, click)
  windows.endJob = true
  showCursor(true, false)
end
function przecinek(_ARG_0_)
  if tonumber(_ARG_0_) then
    return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function cacheChartDrawing(_ARG_0_)
  if type(_ARG_0_) == "boolean" then
    if not _ARG_0_ then
      return
    end
    _ARG_0_ = true
  end
  if not _ARG_0_ then
    if isElement(rendertarget) then
      destroyElement(rendertarget)
    end
    rendertarget = dxCreateRenderTarget(600 / zoom, 600 / zoom, true)
  end
  if not rendertarget then
    return
  else
    dxSetRenderTarget(rendertarget)
  end
  for _FORV_14_ = 0, chart_columns_iron do
    for _FORV_18_ = 0, 10 do
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_iron), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_iron), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom), tocolor(0, 0, 0, 255))
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - _FORV_18_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - _FORV_18_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10), tocolor(0, 0, 0, 255))
    end
  end
  dxDrawText(przecinek(highest_value), 0.1 / zoom * math.floor(600 / zoom), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), 0.1 / zoom * math.floor(600 / zoom) / 2 + 54 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "right", "center", false, false, false, true)
  for _FORV_14_ = 0, 9 do
    dxDrawText(przecinek(("%.0f"):format(_FORV_14_ / 10 * highest_value)), 0.1 / zoom * math.floor(600 / zoom), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_14_, 0.1 / zoom * math.floor(600 / zoom) / 2 + 54 / zoom, math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom) / 10 * _FORV_14_, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "right", "center", false, false, false, true)
  end
  last_height = false
  last_height1 = false
  last_height2 = false
  last_height3 = false
  for _FORV_14_ = 0, chart_columns_iron do
    if last_height then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_14_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_iron), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_iron), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_iron[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(150, 150, 150, 255), 2)
    end
    last_height = chart_data_iron[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    if last_height1 then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_14_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_coal), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height1, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_coal), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_coal[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(0, 0, 0, 255), 2)
    end
    last_height1 = chart_data_coal[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    if last_height2 then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_14_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_gold), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height2, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_gold), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_gold[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(255, 242, 0, 255), 2)
    end
    last_height2 = chart_data_gold[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
    if last_height3 then
      dxDrawLine(0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + (_FORV_14_ - 1) * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_diamonds), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - last_height3, 0.1 / zoom * math.floor(600 / zoom) / zoom + 42 / zoom + _FORV_14_ * ((math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 42 / zoom) / chart_columns_diamonds), math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) - chart_data_diamonds[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom), tocolor(56, 165, 255, 255), 2)
    end
    last_height3 = chart_data_diamonds[_FORV_14_ + 1] / highest_value * (math.floor(600 / zoom) - 0.1 / zoom * math.floor(600 / zoom) * 2 - 45 / zoom)
  end
  dxSetRenderTarget()
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
getResourceName(getThisResource(), true, 584732039)
return
