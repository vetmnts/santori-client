windows = {
  main = false,
  upgrades = false,
  level = false,
  endJob = false,
  background = false,
  loading = false
}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 8 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 16 / _UPVALUE1_, _UPVALUE0_.h - 9 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
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
    if isMouseIn(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(_UPVALUE0_.x + 29 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.main == true then
      dxDrawText("LAWECIARZ", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 105 / _UPVALUE1_, _UPVALUE0_.y + 83 / _UPVALUE1_, 360 / _UPVALUE1_, 206 / _UPVALUE1_, textures.game_photo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("OPIS", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 330 / _UPVALUE1_, 350 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      dxDrawText("Twoim zadaniem w tej pracy jest dostaczanie\n\197\130adunk\195\179w w stanie San Andreas", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "top", false, false, false, false, false)
      dxDrawText("WYMAGANIA", _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 710 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 110 / _UPVALUE1_, _UPVALUE0_.y + 475 / _UPVALUE1_, 350 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      dxDrawText([[
- Prawo jazdy KAT.C
- Level postaci: 10]], _UPVALUE0_.x + 114 / _UPVALUE1_, _UPVALUE0_.y + 810 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.stop_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 490 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 525 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.stop_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ZAKO\197\131CZ PRAC\196\152", _UPVALUE0_.x + 770 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(32, 32, 32, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.start_job_icon, 0, 0, 0, tocolor(180, 180, 180, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 690 / _UPVALUE1_, _UPVALUE0_.y + 86 / _UPVALUE1_, 150 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
        dxDrawImage(_UPVALUE0_.x + 728 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 75 / _UPVALUE1_, 75 / _UPVALUE1_, textures.start_job_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("ROZPOCZNIJ PRAC\196\152", _UPVALUE0_.x + 1170 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
      end
      dxDrawText("STATYSTYKI", _UPVALUE0_.x, _UPVALUE0_.y + 495 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 500 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(190, 190, 190, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 650 / _UPVALUE1_, _UPVALUE0_.y + 370 / _UPVALUE1_, 213 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("EXP: " .. przecinek(_FORV_8_.exp_lawety) .. "\nPunkty ulepsze\197\132: " .. przecinek(_FORV_8_.punkty_lawety) .. "\n\197\129\196\133czne zarobki: " .. przecinek(_FORV_8_.zarobek_lawety) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 380 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 500 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "top", false, false, false, false, false)
      end
    end
    if windows.upgrades == true then
      dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_lawety), _UPVALUE0_.x, _UPVALUE0_.y - 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 485 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
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
  end
  if windows.level == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 8 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 16 / _UPVALUE1_, _UPVALUE0_.h - 9 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_9_, _FORV_10_ in ipairs(levelJob) do
      if 2 < 0 + 1 then
      end
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        expLevel = _FORV_18_.exp_lawety
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
      else
        rgb = -100
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 90 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 350 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / _UPVALUE1_ + 470 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 105 / _UPVALUE1_ + 220 / _UPVALUE1_ * (1 + 1 - 1), 120 / _UPVALUE1_, 120 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 230))
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
  if windows.zlecenia == true then
    if 50 < getDistanceBetweenPoints3D(1108.01, 1851.5, 10.82, getElementPosition(localPlayer)) and 50 < getDistanceBetweenPoints3D(-2945.11, 416.89, 5.3, getElementPosition(localPlayer)) then
      removeEventHandler("onClientRender", root, window)
      windows.zlecenia = false
      showCursor(false)
      for _FORV_8_, _FORV_9_ in pairs(textures) do
        if isElement(_FORV_9_) then
          destroyElement(_FORV_9_)
        end
      end
      textures = {}
      return
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 8 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 16 / _UPVALUE1_, _UPVALUE0_.h - 9 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 250), false)
    dxDrawText("WYBIERZ ZLECENIE", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    xY = 0
    for _FORV_12_, _FORV_13_ in ipairs(possitions) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 64 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 64 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 200), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), 820 / _UPVALUE1_, 64 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(20, 20, 20, 200), false)
      end
      dxDrawText(_FORV_13_.nazwa[1], _UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y - 15 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if selectLevel == 2 then
      elseif selectLevel == 3 then
      elseif selectLevel == 4 then
      end
      if getElementData(localPlayer, "player:premium") then
      end
      for _FORV_26_, _FORV_27_ in ipairs(table_statistics) do
        if _FORV_27_.ulepszenie_zarobek_lawety == 1 then
        end
      end
      if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Laweciarz" then
      end
      if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
      end
      dxDrawText("#ffffff" .. getZoneName(_FORV_13_.dokad[1], _FORV_13_.dokad[2], _FORV_13_.dokad[3], true) .. "#b8b8b8, " .. getZoneName(_FORV_13_.dokad[1], _FORV_13_.dokad[2], _FORV_13_.dokad[3], false) .. " #ffffff(#ffbb00" .. math.floor((getDistanceBetweenPoints3D(_FORV_13_.dokad[1], _FORV_13_.dokad[2], _FORV_13_.dokad[3], getElementPosition(localPlayer)))) .. "#c8c8c8m#ffffff)", _UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 38 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light14"), "left", "center", false, false, false, true, false)
      if _FORV_13_.bonus == true then
        dxDrawText("#00ff59" .. przecinek(math.floor(math.floor(math.floor(1400 * math.floor((getDistanceBetweenPoints3D(_FORV_13_.dokad[1], _FORV_13_.dokad[2], _FORV_13_.dokad[3], getElementPosition(localPlayer)))) / 200 * 1.2) * 1.25 * 1.5 * 1.75 * 1.1 * 1.25 * 1.37 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")) * 4)) .. " #c8c8c8PLN", _UPVALUE0_.x, _UPVALUE0_.y + 10 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 470 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("#00ad23" .. przecinek(math.floor((math.floor(math.floor(1400 * math.floor((getDistanceBetweenPoints3D(_FORV_13_.dokad[1], _FORV_13_.dokad[2], _FORV_13_.dokad[3], getElementPosition(localPlayer)))) / 200 * 1.2) * 1.25 * 1.5 * 1.75 * 1.1 * 1.25 * 1.37 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced"))))) .. " #c8c8c8PLN", _UPVALUE0_.x, _UPVALUE0_.y + 10 / _UPVALUE1_ + 140 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 470 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 200, _UPVALUE0_.y + 150, _UPVALUE0_.w - 400, _UPVALUE0_.h - 300, 25 / _UPVALUE1_, tocolor(33, 33, 33, 240))
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134\nPRAC\196\152?", _UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE0_.x + 249 / _UPVALUE1_, _UPVALUE0_.y + 334 / _UPVALUE1_, 102 / _UPVALUE1_, 62 / _UPVALUE1_, 255, 1)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE0_.x + 539 / _UPVALUE1_, _UPVALUE0_.y + 334 / _UPVALUE1_, 102 / _UPVALUE1_, 62 / _UPVALUE1_, 255, 1)
  end
end
function infoGui()
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(25, 25, 25, 200))
  if getTickCount() - tick > 1000 then
    tick = getTickCount()
    selfInfoGui.Time = selfInfoGui.Time + 1
  end
  if selectLevel then
    dxDrawText("LAWECIARZ - LEVEL #00a118" .. selectLevel, _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  else
    dxDrawText("LAWECIARZ", _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, true, false)
  end
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(selfInfoGui.Time or 0) .. "", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("EXP: #ffbf00" .. przecinek(selfInfoGui.exp or 0), _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
  dxDrawText("ZAROBEK: #ffbf00" .. przecinek(math.floor(selfInfoGui.money or 0)) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  if selfInfoGui.text == "TRWA \197\129ADOWANIE" or selfInfoGui.text1 == "TRWA ROZ\197\129ADUNEK" then
    dxDrawText(selfInfoGui.text, _UPVALUE0_.x, _UPVALUE0_.y - 30 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_, _UPVALUE0_.w - 160 / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_, 2.9 * selfInfoGui.posX / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(255, 196, 0, 255))
  else
    dxDrawText(selfInfoGui.text, _UPVALUE0_.x, _UPVALUE0_.y - 5 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
  end
  dxDrawText("STAN TOWARU: #ffbf00" .. math.floor(selfInfoGui.health) .. "#f0f0f0%", _UPVALUE0_.x, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
  if selfInfoGui.text == "DOSTARCZ \197\129ADUNEK DO CELU" then
    dxDrawText("WARTO\197\154\196\134: #00ad23" .. przecinek(math.floor(selfInfoGui.moneySelect)) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  elseif selfInfoGui.text == "WR\195\147\196\134 NA BAZE" then
    dxDrawText("#00ad23+" .. przecinek(math.floor(selfInfoGui.moneySelect)) .. " #f0f0f0PLN", _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  if selfInfoGui.pos and getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) and getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) then
    if selfInfoGui.text == "DOSTARCZ \197\129ADUNEK DO CELU" then
      for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
        if _FORV_18_.ulepszenie_rozladunek_lawety == 0 and 30 > math.floor(getDistanceBetweenPoints3D(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3], getElementPosition(localPlayer))) then
          if isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
          else
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
          end
          if isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
          else
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
          end
          if isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
          else
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
          end
          if isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) then
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 187, 0, 255), 5)
          else
            dxDrawLine3D(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 0.1, tocolor(255, 0, 0, 255), 5)
          end
        end
      end
    end
    dxDrawImage(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, selfInfoGui.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 2, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200))
    if 5 > math.floor(getDistanceBetweenPoints3D(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3], getElementPosition(localPlayer))) then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
      if selfInfoGui.text1 == "TRWA \197\129ADOWANIE" or selfInfoGui.text1 == "TRWA ROZ\197\129ADUNEK" then
        dxDrawText(selfInfoGui.text1, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 80 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 60 / _UPVALUE1_, 160 / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        selfInfoGui.posX = selfInfoGui.posX + 0.15
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 80 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 60 / _UPVALUE1_, 1.6 * selfInfoGui.posX / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(255, 196, 0, 255))
        if 159 / _UPVALUE1_ < 1.6 * selfInfoGui.posX / _UPVALUE1_ then
          refreshPos()
          triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "objectRemove", localPlayer)
          exports.st_gui:showPlayerNotification("Pomy\197\155lnie dostarczy\197\130e\197\155 \197\130adunek do celu\nWr\195\179\196\135 do bazy, aby otrzyma\196\135 wynagrodzenie.", "success")
          selfInfoGui.text = "WR\195\147\196\134 NA BAZE"
          selfInfoGui.text1 = "WR\195\147\196\134 NA BAZE"
          selfInfoGui.pos = false
          selfInfoGui.posLadunekKoniec = {
            {
              1101.07,
              1903.19,
              10.8
            },
            {
              -2966.95,
              438.76,
              4.96
            }
          }
          selfInfoGui.img = texturesRender.dolar_icon
          setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
          blip = createBlip(1101.07, 1903.19, 10.82, 41, 2, 0, 0, 0, 0, 0, 9999)
          blip1 = createBlip(-2923.82, 483.12, 5.33, 41, 2, 0, 0, 0, 0, 0, 9999)
        end
      else
        dxDrawText(selfInfoGui.text1, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        dxDrawText("Q", getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(selfInfoGui.pos[1], selfInfoGui.pos[2], selfInfoGui.pos[3] + 0.1, 200))
      end
      if getKeyState("Q") then
        if selfInfoGui.text1 == "ABY OTWORZY\196\134 MENU KLIKNIJ" then
          if windows.level == true then
            return
          end
          if windows.zlecenia == true then
            return
          end
          loadTextures()
          levelJob = {
            {
              levelJob = 1,
              exp = 0,
              level = 10,
              img = textures.level1_icon,
              money = 0
            },
            {
              levelJob = 2,
              exp = 100,
              level = 15,
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
              level = 40,
              img = textures.level4_icon,
              money = 1.75
            }
          }
          addEventHandler("onClientRender", root, window)
          windows.level = true
          showCursor(true)
          setElementFrozen(getPedOccupiedVehicle(localPlayer), true)
          selfInfoGui.posX = 5
        elseif selfInfoGui.text1 == "ABY ROZ\197\129ADOWA\196\134 KLIKNIJ" then
          if klikniecie then
            return
          end
          klikniecie = true
          setTimer(function()
            klikniecie = false
          end, 1000, 1)
          blokada = true
          for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
            if _FORV_18_.ulepszenie_rozladunek_lawety == 0 then
              if not processLineOfSight(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1, false, true, false, false, false) then
                blokada = false
                exports.st_gui:showPlayerNotification("Laweta musi znajdowa\196\135 si\196\153 w z\195\179\197\130tym punkcie", "error")
                return
              end
              if not (isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false)) or isLineOfSightClear(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.sin(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.sin(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)) - 3.5 * math.cos(-math.rad(selfInfoGui.pos[4] + 270)) - 9.3 * math.cos(-math.rad(selfInfoGui.pos[4])), selfInfoGui.pos[3] + 5) + 1.5, selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), getGroundPosition(selfInfoGui.pos[1] - 1.75 * math.sin(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.sin(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[2] - 1.75 * math.cos(-math.rad(selfInfoGui.pos[4] + 90)) - 8 * math.cos(-math.rad(selfInfoGui.pos[4] + 180)), selfInfoGui.pos[3] + 5) + 1.5, false, true, false, false, false) then
                exports.st_gui:showPlayerNotification("\197\187adna linia nie mo\197\188e by\196\135 pod\197\155wietlona na czerwono", "error")
                blokada = false
                return
              end
            end
          end
          if blokada == true then
            if isElement(blip) then
              destroyElement(blip)
            end
            if isElement(blip1) then
              destroyElement(blip1)
            end
            selfInfoGui.text = "TRWA ROZ\197\129ADUNEK"
            selfInfoGui.text1 = "TRWA ROZ\197\129ADUNEK"
            setElementFrozen(getPedOccupiedVehicle(localPlayer), true)
            selfInfoGui.posX = 5
          end
        end
      end
    end
  end
  if selfInfoGui.posLadunekKoniec then
    for _FORV_14_, _FORV_15_ in ipairs(selfInfoGui.posLadunekKoniec) do
      if getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) and getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) then
        dxDrawImage(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, selfInfoGui.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 2, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200))
        if 5 > math.floor(getDistanceBetweenPoints3D(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], getElementPosition(localPlayer))) then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
          if selfInfoGui.text1 == "TRWA \197\129ADOWANIE" then
            dxDrawText(selfInfoGui.text1, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200))
            dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 80 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 60 / _UPVALUE1_, 160 / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
            selfInfoGui.posX = selfInfoGui.posX + 0.15
            dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 80 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 60 / _UPVALUE1_, 1.6 * selfInfoGui.posX / _UPVALUE1_, 15 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(255, 196, 0, 255))
            if 159 / _UPVALUE1_ < 1.6 * selfInfoGui.posX / _UPVALUE1_ then
              exports.st_gui:showPlayerNotification("Pomy\197\155lnie za\197\130adowano \197\130adunek\nDostarcz go do celu", "info")
              selfInfoGui.posLadunekKoniec = false
              blip = createBlip(selfInfoGui.posTarget[1], selfInfoGui.posTarget[2], selfInfoGui.posTarget[3], 41, 2, 0, 0, 0, 0, 0, 9999)
              selfInfoGui.pos = selfInfoGui.posTarget
              selfInfoGui.img = texturesRender.finish_icon
              setElementFrozen(getPedOccupiedVehicle(localPlayer), false)
              triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "objectAdd", localPlayer, selfInfoGui.nameObject)
              selfInfoGui.text = "DOSTARCZ \197\129ADUNEK DO CELU"
              selfInfoGui.text1 = "ABY ROZ\197\129ADOWA\196\134 KLIKNIJ"
            end
          else
            dxDrawText(selfInfoGui.text1, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200))
            dxDrawRoundedRectangle(getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - 10 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
            dxDrawText("Q", getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) - _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200) + _UPVALUE2_ / 5, getScreenFromWorldPosition(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3] + 0.1, 200))
          end
          if getKeyState("Q") and selfInfoGui.text1 == "ABY OTWORZY\196\134 MENU KLIKNIJ" then
            if windows.level == true then
              return
            end
            if windows.zlecenia == true then
              return
            end
            loadTextures()
            levelJob = {
              {
                levelJob = 1,
                exp = 0,
                level = 10,
                img = textures.level1_icon,
                money = 0
              },
              {
                levelJob = 2,
                exp = 100,
                level = 15,
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
                level = 40,
                img = textures.level4_icon,
                money = 1.75
              }
            }
            addEventHandler("onClientRender", root, window)
            windows.level = true
            showCursor(true)
            setElementFrozen(getPedOccupiedVehicle(localPlayer), true)
            selfInfoGui.posX = 5
          end
        elseif math.floor(getDistanceBetweenPoints3D(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], getElementPosition(localPlayer))) < 55 and selfInfoGui.text1 == "WR\195\147\196\134 NA BAZE" then
          if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
            return
          end
          if not blockVehicles[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
            endJobAll()
            return
          end
          if isElement(blip) then
            destroyElement(blip)
          end
          selfInfoGui.moneySelect = selfInfoGui.moneySelect * (selfInfoGui.health / 100)
          selfInfoGui.moneySelect = math.ceil(selfInfoGui.moneySelect)
          exports.st_gui:showPlayerNotification("Potr\196\133cono " .. string.format("%.1f", 100 - selfInfoGui.health / 100 * 100) .. "% za uszkodzenia pojazdu.", "info")
          fixVehicle((getPedOccupiedVehicle(localPlayer)))
          exports.st_gui:showPlayerNotification("Otrzymujesz " .. przecinek(math.floor(selfInfoGui.moneySelect)) .. " PLN\nZa\197\130aduj towar ponownie", "money")
          exports.ST_levelsystem:addExp(7)
          triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
          triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "wages", {
            math.floor(selfInfoGui.moneySelect),
            4632723
          })
          selfInfoGui.pos = false
          selfInfoGui.posLadunekKoniec = {
            {
              loadingPos[math.random(2, #loadingPos)][1],
              loadingPos[math.random(2, #loadingPos)][2],
              loadingPos[math.random(2, #loadingPos)][3] + 1
            },
            {
              loadingPosSF[math.random(2, #loadingPosSF)][1],
              loadingPosSF[math.random(2, #loadingPosSF)][2],
              loadingPosSF[math.random(2, #loadingPosSF)][3] + 1
            }
          }
          selfInfoGui.img = texturesRender.container_icon
          selfInfoGui.text = "UDAJ SI\196\152 ZA\197\129ADOWA\196\134 \197\129ADUNEK"
          selfInfoGui.text1 = "ABY OTWORZY\196\134 MENU KLIKNIJ"
          selfInfoGui.health = 100
          selfInfoGui.money = selfInfoGui.money + selfInfoGui.moneySelect
          selfInfoGui.exp = selfInfoGui.exp + 1
        end
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if not windows then
      return
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE1_.x + 685 / _UPVALUE0_, _UPVALUE1_.y + 95 / _UPVALUE0_ + 97 / _UPVALUE0_ * (xY - 1), 150 / _UPVALUE0_, 50 / _UPVALUE0_) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if windows.level == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE0_ + 470 / _UPVALUE0_ * (1 - 1), _UPVALUE1_.y + 90 / _UPVALUE0_ + 220 / _UPVALUE0_ * (1 + 1 - 1), 350 / _UPVALUE0_, 150 / _UPVALUE0_) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          setTimer(function()
            windows.zlecenia = true
            windows.level = false
          end, 50, 1)
          selectLevel = _FORV_8_.levelJob
        end
      end
    end
    if windows.zlecenia == true then
      for _FORV_6_, _FORV_7_ in ipairs(possitions) do
        if isMouseIn(_UPVALUE1_.x + 30 / _UPVALUE0_, _UPVALUE1_.y + 75 / _UPVALUE0_ + 70 / _UPVALUE0_ * (0 + 1 - 1), 820 / _UPVALUE0_, 64 / _UPVALUE0_) then
          if selectLevel == 2 then
          elseif selectLevel == 3 then
          elseif selectLevel == 4 then
          end
          if getElementData(localPlayer, "player:premium") then
          end
          for _FORV_17_, _FORV_18_ in ipairs(table_statistics) do
            if _FORV_18_.ulepszenie_zarobek_lawety == 1 then
            end
          end
          if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Laweciarz" then
          end
          if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
          end
          if _FORV_7_.bonus == true then
          end
          removeEventHandler("onClientRender", root, window)
          showCursor(false)
          windows.zlecenia = false
          for _FORV_19_, _FORV_20_ in pairs(textures) do
            if isElement(_FORV_20_) then
              destroyElement(_FORV_20_)
            end
          end
          textures = {}
          selfInfoGui.nameObject = _FORV_7_.nazwa
          selfInfoGui.moneySelect = math.floor(math.floor(1400 * math.floor((getDistanceBetweenPoints3D(_FORV_7_.dokad[1], _FORV_7_.dokad[2], _FORV_7_.dokad[3], getElementPosition(localPlayer)))) / 200 * 1.2) * 1.25 * 1.5 * 1.75 * 1.1 * 1.25 * 1.37 * getElementData(localPlayer, "player:bonusJob").addMoney * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")) * 4
          selfInfoGui.health = 100
          selfInfoGui.posTarget = {
            _FORV_7_.dokad[1],
            _FORV_7_.dokad[2],
            _FORV_7_.dokad[3],
            _FORV_7_.dokad[4]
          }
          selfInfoGui.text1 = "TRWA \197\129ADOWANIE"
          selfInfoGui.text = "TRWA \197\129ADOWANIE"
        end
      end
    end
    if isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 85 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      windows.main = true
      windows.upgrades = false
      windows.level = false
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 145 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
      windows.main = false
      windows.upgrades = true
      windows.level = false
    elseif isMouseIn(_UPVALUE1_.x + 29 / _UPVALUE0_, _UPVALUE1_.y + 420 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true then
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
    elseif isMouseIn(_UPVALUE1_.x + 490 / _UPVALUE0_, _UPVALUE1_.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.main == true then
      if not getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      if getElementData(localPlayer, "player:job") ~= "Lawety" then
        exports.st_gui:showPlayerNotification("Nie pracujesz tutaj!", "error")
        return
      end
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
      triggerServerEvent("evEwenciks_sfjdsgfdyg", resourceRoot, "plrJob", localPlayer, false)
      endJobAll()
    elseif isMouseIn(_UPVALUE1_.x + 690 / _UPVALUE0_, _UPVALUE1_.y + 86 / _UPVALUE0_, 150 / _UPVALUE0_, 200 / _UPVALUE0_) and windows.main == true then
      if getElementData(localPlayer, "player:job") == "Lawety" then
        exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
        return
      end
      if getElementData(localPlayer, "player:job") then
        exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
        return
      end
      if getElementData(localPlayer, "player:lvl") < 10 then
        exports.st_gui:showPlayerNotification("Musisz posiada\196\135 10 level aby tutaj pracowa\196\135", "error")
        return
      end
      if getElementData(localPlayer, "player:elementDat").license_C == 0 then
        exports.st_gui:showPlayerNotification("Nie posiadasz kategorii Kat.C", "error")
        return
      end
      removeEventHandler("onClientRender", root, window)
      showCursor(false)
      windows.background = false
      windows.main = false
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
      startJob()
    elseif isMouseIn(_UPVALUE1_.x + 249 / _UPVALUE0_, _UPVALUE1_.y + 334 / _UPVALUE0_, 102 / _UPVALUE0_, 62 / _UPVALUE0_) and windows.endJob == true then
      if windows.loading then
        exports.st_gui:showPlayerNotification("Poczekaj a\197\188 towar si\196\153 za\197\130aduje.", "error")
        return
      end
      endJobAll()
      showCursor(false)
      exports.st_gui:showPlayerNotification("Zako\197\132czy\197\130e\197\155 prace", "success")
      if sanFierro then
        setTimer(setElementPosition, 300, 1, localPlayer, -2918.55, 475, 4.91)
        setTimer(setElementPosition, 400, 1, localPlayer, -2918.55, 475, 4.91)
        setTimer(setElementPosition, 500, 1, localPlayer, -2918.55, 475, 4.91)
      else
        setTimer(setElementPosition, 300, 1, localPlayer, 1122.94, 1944.88, 10.82)
        setTimer(setElementPosition, 400, 1, localPlayer, 1122.94, 1944.88, 10.82)
        setTimer(setElementPosition, 500, 1, localPlayer, 1122.94, 1944.88, 10.82)
      end
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
    elseif isMouseIn(_UPVALUE1_.x + 539 / _UPVALUE0_, _UPVALUE1_.y + 334 / _UPVALUE0_, 102 / _UPVALUE0_, 62 / _UPVALUE0_) and windows.endJob == true then
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_10_, _FORV_11_ in ipairs(_ARG_1_) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz wi\196\153ksze wynagrodzenie",
          price = 70,
          icon = textures.dolar_icon,
          status = _FORV_11_.ulepszenie_zarobek_lawety,
          nameDatabase = "ulepszenie_zarobek_lawety"
        },
        {
          name = "Ulepszona laweta",
          description = "Otrzymujesz ulepszon\196\133 lawet\196\153",
          price = 130,
          icon = textures.engine_icon,
          status = _FORV_11_.ulepszenie_silnik_lawety,
          nameDatabase = "ulepszenie_silnik_lawety"
        },
        {
          name = "Brak uszkodze\197\132 \197\130adunku",
          description = "Dzi\196\153ki ulepszeniu \197\130adunek nie b\196\153dzie si\196\153 uszkadza\197\130",
          price = 150,
          icon = textures.energy_icon,
          status = _FORV_11_.ulepszenie_uszkodzenia_lawety,
          nameDatabase = "ulepszenie_uszkodzenia_lawety"
        },
        {
          name = "Szybki roz\197\130adunek",
          description = "Od teraz z\195\179\197\130te linie przy roz\197\130adunku zostaj\196\133 usuni\196\153te",
          price = 100,
          icon = textures.condition_icon,
          status = _FORV_11_.ulepszenie_rozladunek_lawety,
          nameDatabase = "ulepszenie_rozladunek_lawety"
        }
      }
    end
  elseif _ARG_0_ == "damage" and selfInfoGui.text == "DOSTARCZ \197\129ADUNEK DO CELU" then
    for _FORV_8_, _FORV_9_ in ipairs(table_statistics) do
      if _FORV_9_.ulepszenie_uszkodzenia_lawety == 0 then
        selfInfoGui.health = selfInfoGui.health - _ARG_1_ / 2
        if selfInfoGui.health <= 20 then
          selfInfoGui.health = 20
        end
      end
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
getResourceName(getThisResource(), true, 509608400)
return
