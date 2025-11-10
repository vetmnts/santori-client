screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowsUP = {
  x = screenW / 2 - 225,
  y = 20 / zoom,
  w = 450 / zoom,
  h = 120 / zoom
}
table_statistics = {}
table_course = {}
table_paczki = {}
selfTracking = {}
upgradesPKT = {}
selfLoadingPack = {}
selectLevel = 0
pedBot = {}
pedBlip = {}
windows = {
  startJob = false,
  computer = false,
  select = false,
  upgrades = false,
  selectFriends = false,
  selectPack = false
}
k = 1
n = 8
m = 8
playerX, playerY = 0, 0
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _ARG_2_ >= _UPVALUE0_.x and _ARG_2_ <= _UPVALUE0_.x + _UPVALUE0_.w and _ARG_3_ >= _UPVALUE0_.y and _ARG_3_ <= _UPVALUE0_.y + _UPVALUE0_.h then
      _UPVALUE1_ = _ARG_2_ * _UPVALUE2_ + playerX
      _UPVALUE3_ = _ARG_3_ * _UPVALUE2_ - playerY
      _UPVALUE4_ = true
      _UPVALUE5_ = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
    _UPVALUE4_ = false
  end
end
function scrollBigMap(_ARG_0_)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h) then
    if windows.packs and not isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h) then
      return
    end
    if _ARG_0_ == "mouse_wheel_down" then
      _UPVALUE1_ = math.min(_UPVALUE1_ + 0.3, 3.2)
    elseif _ARG_0_ == "mouse_wheel_up" then
      _UPVALUE1_ = math.max(0.5, _UPVALUE1_ - 0.3)
    end
  end
end
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (playerX - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - playerX) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - (_ARG_1_ - playerY) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + (playerY - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.y + _UPVALUE0_.h / 2)))
end
function window1()
  if windows.startJob == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("PRACA KURIERA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("Wybierz w jakim trybie pracy chcesz pracowa\196\135", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 85 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(70, 70, 70, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 200 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawImage(_UPVALUE0_.x + 255 / zoom, _UPVALUE0_.y + 200 / zoom, 120 / zoom, 120 / zoom, textures.solo_icon, 0, 0, 0, tocolor(255, 147, 0, 255), false)
      dxDrawText("SOLO", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 455 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(90, 90, 90, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / zoom, _UPVALUE0_.y + 200 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 255 / zoom, _UPVALUE0_.y + 200 / zoom, 120 / zoom, 120 / zoom, textures.solo_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("SOLO", _UPVALUE0_.x + 265 / zoom, _UPVALUE0_.y + 455 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(70, 70, 70, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 200 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 200 / zoom, 120 / zoom, 120 / zoom, textures.duo_icon, 0, 0, 0, tocolor(255, 147, 0, 255), false)
      dxDrawText("DUO", _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y + 455 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom, 15 / zoom, tocolor(90, 90, 90, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 495 / zoom, _UPVALUE0_.y + 200 / zoom, 150 / zoom, 150 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawImage(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 200 / zoom, 120 / zoom, 120 / zoom, textures.duo_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      dxDrawText("DUO", _UPVALUE0_.x + 775 / zoom, _UPVALUE0_.y + 455 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
    end
    if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 15 / zoom, 40 / zoom, 40 / zoom) then
      dxDrawImage(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 15 / zoom, 40 / zoom, 40 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      if isCursorShowing() then
        cxs, cys = getCursorPosition()
        cxs, cys = screenW * cxs, screenH * cys
        dxDrawText("Ulepszenia", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
        dxDrawText("Ulepszenia", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
      end
    else
      dxDrawImage(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 15 / zoom, 40 / zoom, 40 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.upgrades == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("ULEPSZENIA PRACY", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("PUNKTY ULEPSZE\197\131: " .. przecinek(_FORV_8_.punkty_kurier), _UPVALUE0_.x, _UPVALUE0_.y - 123 / zoom, _UPVALUE0_.x + 362 / zoom + 485 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 80 / zoom + 97 / zoom * (xY - 1), 820 / zoom, 85 / zoom, 15 / zoom, tocolor(25, 25, 25, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 35 / zoom, _UPVALUE0_.y + 85 / zoom + 97 / zoom * (xY - 1), 80 / zoom, 75 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 2 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 70 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y + 92.5 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_8_.status == 1 then
        dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 720 / zoom, _UPVALUE0_.y + 40 / zoom + 194 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      else
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 140 / zoom, 50 / zoom, 255, 1)
      end
    end
  end
  if windows.level == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ LEVEL", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    for _FORV_13_, _FORV_14_ in ipairs(levelJob) do
      if 0 + 1 > 2 then
      end
      for _FORV_21_, _FORV_22_ in ipairs(table_statistics) do
        expLevel = _FORV_22_.exp_kurier
        levelLevel = getElementData(localPlayer, "player:lvl")
      end
      if expLevel >= _FORV_14_.exp and levelLevel >= _FORV_14_.level then
        rgb = 0
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) then
          rgb = rgb - 50
          rgb1 = -50
        else
          rgb = rgb
          rgb1 = 0
        end
        moneyADDC = przecinek(_FORV_14_.money)
      else
        rgb = -100
        moneyADDC = "?"
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 105 / zoom + 220 / zoom * (1 + 1 - 1), 120 / zoom, 120 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
      dxDrawImage(_UPVALUE0_.x + 60 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 120 / zoom + 220 / zoom * (1 + 1 - 1), 90 / zoom, 90 / zoom, _FORV_14_.img, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 135 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.requirements_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText("EXP PRACY: " .. _FORV_14_.exp .. " | LEVEL: " .. _FORV_14_.level, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 93 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 170 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 220 / zoom * (1 + 1 - 1), 25 / zoom, 25 / zoom, textures.dolar_icon, 0, 0, 0, tocolor(255 + rgb, 255 + rgb, 255 + rgb, 255), false)
      dxDrawText(_FORV_14_.moneyJob .. " + " .. moneyADDC, _UPVALUE0_.x + 200 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 175 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, false, false)
      dxDrawText("LEVEL " .. _FORV_14_.levelJob, _UPVALUE0_.x + 175 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 30 / zoom + 440 / zoom * (1 + 1 - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210 + rgb, 210 + rgb, 210 + rgb, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      if expLevel >= _FORV_14_.exp and levelLevel >= _FORV_14_.level then
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.unlock_icon, 0, 0, 0, tocolor(0, 170 + rgb1, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 125 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 110 / zoom + 220 / zoom * (1 + 1 - 1), 35 / zoom, 35 / zoom, textures.lock_icon, 0, 0, 0, tocolor(150, 0, 0, 255), false)
      end
    end
  end
  if windows.selectFriends == true then
    if not getPedOccupiedVehicle(localPlayer) then
      return
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawText("WYBIERZ WSP\195\147\197\129PRACOWNIKA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 117 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
    dxDrawText("WYBIERZ GRACZA, Z KT\195\147RYM B\196\152DZIESZ WSP\195\147LNIE PRACOWA\196\134", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y - 15 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawText("( gracz musi si\196\153 znajdowa\196\135 na miejscu pasa\197\188era )", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 50 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
    xY = 0
    for _FORV_13_ = 1, 8 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom + 50 / zoom * (xY - 1), _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 80))
    end
    if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
      if isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, 45 / zoom) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 200))
        dxDrawText(getPlayerName((getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1))), _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText(getElementData(getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), "player:sid"), _UPVALUE0_.x, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom + 310 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(180, 180, 180, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, 45 / zoom, 15 / zoom, tocolor(25, 25, 25, 150))
        dxDrawText(getPlayerName((getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1))), _UPVALUE0_.x + 210 / zoom, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
        dxDrawText(getElementData(getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), "player:sid"), _UPVALUE0_.x, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom + 310 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.computer == true then
    if not getPedOccupiedVehicle(localPlayer) then
      return
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("KOMPUTER", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 70 / zoom, 340 / zoom, 485 / zoom, 25 / zoom, tocolor(25, 25, 25, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 130 / zoom, 320 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 450 / zoom, 320 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and _UPVALUE1_ then
      if not cursorX then
      else
      end
      playerX = -(cursorX * screenW * _UPVALUE2_ - _UPVALUE3_)
      playerY = cursorY * screenH * _UPVALUE2_ - _UPVALUE4_
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, (3000 + playerX) * _UPVALUE5_ - _UPVALUE6_.w / 2 * _UPVALUE2_, (3000 - playerY) * _UPVALUE5_ - _UPVALUE6_.h / 2 * _UPVALUE2_, _UPVALUE6_.w * _UPVALUE2_, _UPVALUE6_.h * _UPVALUE2_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    if 1 <= #table_paczki then
      xY = 0
      for _FORV_14_, _FORV_15_ in ipairs(table_paczki) do
        xY = xY + 1
        dxDrawImage(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, textures.player, 0, 0, 0, tocolor(255, 255, 255, 255))
        dxDrawRoundedRectangle(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(({
          _FORV_15_.pos[1],
          _FORV_15_.pos[2],
          _FORV_15_.pos[3]
        })[1], ({
          _FORV_15_.pos[1],
          _FORV_15_.pos[2],
          _FORV_15_.pos[3]
        })[2]))) - 10 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(({
          _FORV_15_.pos[1],
          _FORV_15_.pos[2],
          _FORV_15_.pos[3]
        })[1], ({
          _FORV_15_.pos[1],
          _FORV_15_.pos[2],
          _FORV_15_.pos[3]
        })[2]))) - 10 / zoom / 2, 10 / zoom, 10 / zoom, 5 / zoom, tocolor(255, 191, 0, 230))
      end
    else
      xY = 0
      for _FORV_14_, _FORV_15_ in ipairs(table_course) do
        xY = xY + 1
        dxDrawImage(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, textures.player, 0, 0, 0, tocolor(255, 255, 255, 255))
        if isMouseIn(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE0_.x + 40 / zoom, _UPVALUE0_.y + 80 / zoom + 50 / zoom * (xY - 1), 120 / zoom, 38 / zoom) then
          colorBlipsMap = 200
          dxDrawRoundedRectangle(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 100 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 105 / zoom / 2, 100 / zoom, 30 / zoom, 10 / zoom, tocolor(25, 25, 25, 230))
          dxDrawText(_FORV_15_.paczki .. " paczek", math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 1680 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 1010 / zoom / 2, _UPVALUE0_.x + math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))), _UPVALUE0_.y + math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))), tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, false, false)
        else
          colorBlipsMap = 255
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 40 / zoom, _UPVALUE0_.y + 80 / zoom + 50 / zoom * (xY - 1), 120 / zoom, 38 / zoom, 10 / zoom, tocolor(25, 25, 25, 230))
        dxDrawText("OSIEDLE #" .. _FORV_15_.id_osiedla, _UPVALUE0_.x + 45 / zoom, _UPVALUE0_.y - 2 / zoom + 100 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(colorBlipsMap, colorBlipsMap, colorBlipsMap, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, false, false)
        dxDrawImage(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 30 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_15_.id_osiedla].center[1], positionPack[_FORV_15_.id_osiedla].center[2]))) - 30 / zoom / 2, 30 / zoom, 30 / zoom, textures.blip, 0, 0, 0, tocolor(colorBlipsMap, colorBlipsMap, colorBlipsMap, 255))
      end
    end
    if 1 <= #table_paczki then
      dxDrawText("OSIEDLE ##ffbb00" .. selfSelectOsiedle.idOsiedla, _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y - 17 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      dxDrawText(getZoneName(selfSelectOsiedle.posCenter[1], selfSelectOsiedle.posCenter[2], selfSelectOsiedle.posCenter[3], true) .. ", " .. getZoneName(selfSelectOsiedle.posCenter[1], selfSelectOsiedle.posCenter[2], selfSelectOsiedle.posCenter[3], false), _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 30 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
      dxDrawText([[
PACZKI DO DOSTARCZENIA
#ffbb00]] .. selfSelectOsiedle.oddane .. "#f0f0f0/#ffbb00" .. selfSelectOsiedle.ilosc .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("Zako\197\132cz prac\196\153", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 470 / zoom, 210 / zoom, 65 / zoom, 255, 1)
    else
      exports.ST_buttons:dxCreateButton("Zako\197\132cz prac\196\153", _UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 470 / zoom, 210 / zoom, 65 / zoom, 255, 1)
      if windows.select then
        dxDrawText("OSIEDLE ##ffbb00" .. selfSelect.idOsiedla, _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y - 17 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawText(getZoneName(selfSelect.posCenter[1], selfSelect.posCenter[2], selfSelect.posCenter[3], true) .. ", " .. getZoneName(selfSelect.posCenter[1], selfSelect.posCenter[2], selfSelect.posCenter[3], false), _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 30 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawText("ODLEG\197\129O\197\154\196\134 OD CIEBIE\n#ffbb00" .. math.floor(getDistanceBetweenPoints3D(selfSelect.posCenter[1], selfSelect.posCenter[2], selfSelect.posCenter[3], getElementPosition(localPlayer))) .. "m", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawText([[
LICZBA PACZEK DO ROZWIEZIENIA
#ffbb00]] .. selfSelect.ilosc .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 300 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        if associateUserSelect then
          if getElementData(associateUserSelect, "player:sid") then
            selfSelect.nick = getPlayerName(associateUserSelect)
          else
            selfSelect.nick = "Brak"
          end
        else
          selfSelect.nick = "Brak"
        end
        dxDrawText("WSP\195\147\197\129PRACOWNIK\n#ffbb00" .. selfSelect.nick .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 450 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("Wybierz", _UPVALUE0_.x + 587.5 / zoom, _UPVALUE0_.y + 370 / zoom, 180 / zoom, 55 / zoom, 255, 1)
      else
        if 0 >= #table_course then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 280 / zoom, 320 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
          dxDrawText("BRAK DOST\196\152PNYCH ZLECE\197\131", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 320 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
          dxDrawText("Udaj si\196\153 do siedziby kurierskiej i\nza\197\130aduj paczki.", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 440 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
          if selfLoadingPack.unlockButton then
            exports.ST_buttons:dxCreateButton("ZA\197\129ADUJ", _UPVALUE0_.x + 585 / zoom, _UPVALUE0_.y + 370 / zoom, 190 / zoom, 50 / zoom, 255, 1)
          end
        end
        dxDrawText("STATYSTYKI PRACY", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 15 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
          dxDrawText("EXP: #bababa" .. przecinek(_FORV_15_.exp_kurier) .. "\n#dcdcdcPunkty ulepsze\197\132: #bababa" .. przecinek(_FORV_15_.punkty_kurier) .. "\n#dcdcdc\197\129\196\133czne zarobki: #bababa" .. przecinek(_FORV_15_.zarobek_kurier) .. "", _UPVALUE0_.x + 520 / zoom, _UPVALUE0_.y + 145 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true, false)
        end
        for _FORV_18_, _FORV_19_ in ipairs(line) do
          if getDistanceBetweenPoints3D(_FORV_19_[1], _FORV_19_[2], _FORV_19_[3], getElementPosition(idVehGlobal)) < 10 then
            table.insert({}, _FORV_19_)
          end
        end
        if #{} >= 1 then
          for _FORV_20_, _FORV_21_ in ipairs({}) do
            if getDistanceBetweenPoints3D(getElementPosition(idVehGlobal)) > getDistanceBetweenPoints3D(getElementPosition(idVehGlobal)) then
            end
          end
          if processLineOfSight(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, false, true, false, false, false) then
            selfLoadingPack.unlockButton = true
          else
            selfLoadingPack.unlockButton = false
          end
          if processLineOfSight(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, false, true, false, false, false) or isElement(processLineOfSight(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)) - 2.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 270)) - 6.6 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4])), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), getGroundPosition(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[1] - 1.75 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.sin(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[2] - 1.75 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 90)) - 7.5 * math.cos(-math.rad(({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[4] + 180)), ({
            _FORV_21_[1],
            _FORV_21_[2],
            _FORV_21_[3],
            _FORV_21_[4]
          })[3] + 5) + 1, false, true, false, false, false)) then
            selfLoadingPack.unlockButton = true
          else
            selfLoadingPack.unlockButton = false
          end
          if #{} >= 1 then
            selfLoadingPack.unlockButton = true
          else
            selfLoadingPack.unlockButton = false
          end
        end
      end
    end
  end
  if windows.selectPack == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / zoom, _UPVALUE0_.y + 5 / zoom, _UPVALUE0_.w - 18 / zoom, _UPVALUE0_.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawText("WYBIERZ OSIEDLA", _UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / zoom, _UPVALUE0_.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      if _FORV_8_.ulepszenie_obrotny_kurier == 1 then
        ulepszenie_obrotny_kurier = 6
      else
        ulepszenie_obrotny_kurier = 5
      end
    end
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and _UPVALUE1_ then
      if not cursorX then
      else
      end
      playerX = -(cursorX * screenW * _UPVALUE2_ - _UPVALUE3_)
      playerY = cursorY * screenH * _UPVALUE2_ - _UPVALUE4_
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE6_.x, _UPVALUE6_.y, _UPVALUE6_.w, _UPVALUE6_.h, (3000 + playerX) * _UPVALUE5_ - _UPVALUE6_.w / 2 * _UPVALUE2_, (3000 - playerY) * _UPVALUE5_ - _UPVALUE6_.h / 2 * _UPVALUE2_, _UPVALUE6_.w * _UPVALUE2_, _UPVALUE6_.h * _UPVALUE2_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    xY = 0
    for _FORV_14_, _FORV_15_ in ipairs(positions) do
      if _FORV_15_[6] == true then
        dxDrawImage(math.max(_UPVALUE6_.x + _UPVALUE6_.w / 2 - _UPVALUE6_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.x + _UPVALUE6_.w / 2 + _UPVALUE6_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_[1], _FORV_15_[2]))) - 38 / zoom / 2, math.max(_UPVALUE6_.y + _UPVALUE6_.h / 2 - _UPVALUE6_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE6_.y + _UPVALUE6_.h / 2 + _UPVALUE6_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_15_[1], _FORV_15_[2]))) - 38 / zoom / 2, 30 / zoom, 30 / zoom, textures.blip, 0, 0, 0, tocolor(255, 255, 255, 255))
      end
      if _FORV_14_ >= k and _FORV_14_ <= n then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 70 / zoom + 61 / zoom * (xY - 1), 340 / zoom, 60 / zoom) then
          alphaRectangle = 200
        else
          alphaRectangle = 255
        end
        if _FORV_15_[6] == true then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 70 / zoom + 61 / zoom * (xY - 1), 340 / zoom, 60 / zoom, 15 / zoom, tocolor(50, 50, 50, alphaRectangle))
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 70 / zoom + 61 / zoom * (xY - 1), 340 / zoom, 60 / zoom, 15 / zoom, tocolor(25, 25, 25, alphaRectangle))
        end
        dxDrawText("#ffffff##ffbf00" .. _FORV_15_[4] .. " #ffffff" .. getZoneName(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], true) .. ", " .. getZoneName(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], false), _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y - 35 / zoom + 122 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        dxDrawText("#00a803" .. przecinek(_FORV_15_[7]) .. " #ffffffPACZEK", _UPVALUE0_.x + 515 / zoom, _UPVALUE0_.y + 25 / zoom + 122 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
        dxDrawText("#ffbf00" .. math.floor((getDistanceBetweenPoints3D(_FORV_15_[1], _FORV_15_[2], _FORV_15_[3], getElementPosition(localPlayer)))) .. "#ffffffm od ciebie", _UPVALUE0_.x, _UPVALUE0_.y + 25 / zoom + 122 / zoom * (xY - 1), _UPVALUE0_.x + 362 / zoom + 480 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "right", "center", false, false, false, true, false)
      end
    end
    for _FORV_14_, _FORV_15_ in ipairs(table_statistics) do
      if _FORV_15_.ulepszenie_czas_kurier == 1 then
        if 0 + _FORV_15_[7] - 6 < 0 then
        end
        dxDrawText("WYBRANE OSIEDLA #ffbf00" .. selfLoadingPack.wybraneOsiedla .. "#ffffff/#ffbf00" .. ulepszenie_obrotny_kurier .. " #ffffff | liczba paczek: #ffbf00" .. 0 .. " #00b330(-6)", _UPVALUE0_.x, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom + 480 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("WYBRANE OSIEDLA #ffbf00" .. selfLoadingPack.wybraneOsiedla .. "#ffffff/#ffbf00" .. ulepszenie_obrotny_kurier .. " #ffffff | liczba paczek: #ffbf00" .. 0 .. "", _UPVALUE0_.x, _UPVALUE0_.y - 125 / zoom, _UPVALUE0_.x + 362 / zoom + 480 / zoom, _UPVALUE0_.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
    end
    if selfLoadingPack.wybraneOsiedla >= ulepszenie_obrotny_kurier then
      removeEventHandler("onClientRender", root, window1)
      showCursor(false)
      windows.selectPack = false
      for _FORV_14_, _FORV_15_ in pairs(textures) do
        if isElement(_FORV_15_) then
          destroyElement(_FORV_15_)
        end
      end
      textures = {}
      positionsPack = positions
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendStartLoadingPack1", localPlayer, associateUserSelect, selfLoadingPack.Pos, 0, positions, najblizszeXYZ)
    end
  end
end
skins = {
  142,
  143,
  144,
  141,
  130,
  131,
  132,
  133,
  134,
  135,
  123,
  124,
  125,
  126,
  127,
  128,
  129,
  110,
  111,
  112,
  113,
  114,
  115,
  116,
  91,
  90,
  51,
  52,
  53,
  54,
  55,
  56
}
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.selectPack == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(positions) do
        if _FORV_5_ >= k and _FORV_5_ <= n then
          xY = xY + 1
          if isMouseIn(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 70 / zoom + 61 / zoom * (xY - 1), 340 / zoom, 60 / zoom) and windows.selectPack == true then
            if _FORV_6_[6] == true then
              table.remove(positions, _FORV_5_)
              table.insert(positions, {
                _FORV_6_[1],
                _FORV_6_[2],
                _FORV_6_[3],
                _FORV_6_[4],
                _FORV_6_[5],
                false,
                _FORV_6_[7]
              })
              table.sort(positions, function(_ARG_0_, _ARG_1_)
                return _ARG_0_[4] > _ARG_1_[4]
              end)
              selfLoadingPack.wybraneOsiedla = selfLoadingPack.wybraneOsiedla - 1
            else
              table.remove(positions, _FORV_5_)
              table.insert(positions, {
                _FORV_6_[1],
                _FORV_6_[2],
                _FORV_6_[3],
                _FORV_6_[4],
                _FORV_6_[5],
                true,
                _FORV_6_[7]
              })
              table.sort(positions, function(_ARG_0_, _ARG_1_)
                return _ARG_0_[4] > _ARG_1_[4]
              end)
              selfLoadingPack.wybraneOsiedla = selfLoadingPack.wybraneOsiedla + 1
            end
          end
        end
      end
    end
    if windows.computer == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(table_course) do
        xY = xY + 1
        if isMouseIn(math.max(_UPVALUE1_.x + _UPVALUE1_.w / 2 - _UPVALUE1_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.x + _UPVALUE1_.w / 2 + _UPVALUE1_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_6_.id_osiedla].center[1], positionPack[_FORV_6_.id_osiedla].center[2]))) - 38 / zoom / 2, math.max(_UPVALUE1_.y + _UPVALUE1_.h / 2 - _UPVALUE1_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE1_.y + _UPVALUE1_.h / 2 + _UPVALUE1_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(positionPack[_FORV_6_.id_osiedla].center[1], positionPack[_FORV_6_.id_osiedla].center[2]))) - 38 / zoom / 2, 30 / zoom, 30 / zoom) or isMouseIn(_UPVALUE0_.x + 40 / zoom, _UPVALUE0_.y + 80 / zoom + math.floor(50 / zoom) * (xY - 1), 120 / zoom, 38 / zoom) then
          windows.select = true
          selfSelect = {}
          selfSelect.idOsiedla = _FORV_6_.id_osiedla
          selfSelect.id = _FORV_6_.id
          selfSelect.posCenter = positionPack[_FORV_6_.id_osiedla].center
          selfSelect.ilosc = _FORV_6_.paczki
        end
      end
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 690 / zoom, _UPVALUE0_.y + 95 / zoom + 97 / zoom * (xY - 1), 140 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if windows.selectFriends == true and isMouseIn(_UPVALUE0_.x + 200 / zoom, _UPVALUE0_.y + 150 / zoom, _UPVALUE0_.w - 400 / zoom, 45 / zoom) then
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
        if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) == localPlayer then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz wys\197\130a\196\135 oferty samemu sobie", "error")
          return
        end
        if getElementData(getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), "player:job") then
          exports.st_gui:showPlayerNotification("Wybrany gracz ju\197\188 gdzie\197\155 pracuje", "error")
          return
        end
        if getElementData(getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), "player_Trade") then
          exports.st_gui:showPlayerNotification("Aktualnie nie mo\197\188esz zaprosi\196\135 wybranego gracza", "error")
          return
        end
        if getElementData(getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), "player:lvl") < 10 then
          exports.st_gui:showPlayerNotification("Gracz nie posiada 10 levelu postaci", "error")
          return
        end
        triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendOfferJob", localPlayer, getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1), (getPedOccupiedVehicle(localPlayer)))
        exports.st_gui:showPlayerNotification("Wys\197\130ano ofert\196\153 wsp\195\179\197\130pracy do " .. getPlayerName((getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1))) .. "", "info")
        idVehGlobal, blockOpenGui = getPedOccupiedVehicle(localPlayer), true
        removeEventHandler("onClientRender", root, window1)
        showCursor(false)
        windows.computer = false
        windows.startJob = false
        windows.upgrades = false
        windows.level = false
        windows.selectFriends = false
        windows.selectPack = false
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
      end
    end
    if windows.level == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE0_.x + 30 / zoom + 470 / zoom * (1 - 1), _UPVALUE0_.y + 90 / zoom + 220 / zoom * (1 + 1 - 1), 350 / zoom, 150 / zoom) and expLevel >= _FORV_8_.exp and levelLevel >= _FORV_8_.level then
          if not getPedOccupiedVehicle(localPlayer) then
            return
          end
          if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:id") then
            return
          end
          blockOpenGui = false
          moneyADD = _FORV_8_.money
          selectLevel = _FORV_8_.levelJob
          if blockOpenGuiTarget then
            blockOpenGuiTarget = false
          end
          if wybraneDuo == true then
            windows.selectFriends = true
            windows.level = false
            idVehGlobal, wybraneDuo = getPedOccupiedVehicle(localPlayer), false
          else
            idVehGlobal, selfTracking = getPedOccupiedVehicle(localPlayer), {}
            tick = getTickCount()
            addEventHandler("onClientRender", root, tracking)
            texturesTracking = {
              courier_icon = dxCreateTexture("img/courier_icon.png"),
              truck_icon = dxCreateTexture("img/truck_icon.png"),
              user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
            }
            selfTracking.money = 0
            selfTracking.time = 0
            selfTracking.exp = 0
            windows.level = false
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie rozpocz\196\153to prac\196\153", "success")
            windows.computer = true
            triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "plrJob", localPlayer, true, idVehGlobal)
          end
          colVehTracking = createColSphere(0, 0, 0, 1)
          attachElements(colVehTracking, idVehGlobal, 0, -3, 0)
          addEventHandler("onClientVehicleEnter", idVehGlobal, onVehEnter)
          addEventHandler("onClientVehicleExit", idVehGlobal, onVehExit)
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 800 / zoom, _UPVALUE0_.y + 15 / zoom, 40 / zoom, 40 / zoom) and windows.startJob == true then
      windows.startJob = false
      windows.upgrades = true
    elseif isMouseIn(_UPVALUE0_.x + 237.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom) and windows.startJob == true then
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) then
        if getElementData(localPlayer, "player:job") == "Kurier" then
          exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
          return
        end
        if getElementData(localPlayer, "player:job") then
          exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
          return
        end
        windows.startJob = false
        windows.upgrades = false
        windows.level = true
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "3,600 - 7,200",
            level = 10,
            img = textures.level1_icon,
            money = 1
          },
          {
            levelJob = 2,
            exp = 10,
            moneyJob = "3,600 - 7,200",
            level = 15,
            img = textures.level2_icon,
            money = 1.1
          },
          {
            levelJob = 3,
            exp = 30,
            moneyJob = "3,600 - 7,200",
            level = 25,
            img = textures.level3_icon,
            money = 1.2
          },
          {
            levelJob = 4,
            exp = 50,
            moneyJob = "3,600 - 7,200",
            level = 35,
            img = textures.level4_icon,
            money = 1.3
          }
        }
        associateUserSelect = false
      else
        exports.st_gui:showPlayerNotification("Aby wybra\196\135 ten tryb musisz siedzie\196\135 na miejscu kierowcy", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + 492.5 / zoom, _UPVALUE0_.y + 197.5 / zoom, 155 / zoom, 155 / zoom) and windows.startJob == true then
      if not getPedOccupiedVehicle(localPlayer) then
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 0) then
        if getElementData(localPlayer, "player:job") == "Kurier" then
          exports.st_gui:showPlayerNotification("Ju\197\188 tutaj pracujesz", "error")
          return
        end
        if getElementData(localPlayer, "player:job") then
          exports.st_gui:showPlayerNotification("Ju\197\188 gdzie\197\155 pracujesz, zwolnij si\196\153 i wr\195\179\196\135 tutaj", "error")
          return
        end
        windows.startJob = false
        windows.upgrades = false
        windows.level = true
        wybraneDuo = true
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            moneyJob = "3,600 - 7,200",
            level = 10,
            img = textures.level1_icon,
            money = 1
          },
          {
            levelJob = 2,
            exp = 10,
            moneyJob = "3,600 - 7,200",
            level = 15,
            img = textures.level2_icon,
            money = 1.1
          },
          {
            levelJob = 3,
            exp = 30,
            moneyJob = "3,600 - 7,200",
            level = 25,
            img = textures.level3_icon,
            money = 1.2
          },
          {
            levelJob = 4,
            exp = 50,
            moneyJob = "3,600 - 7,200",
            level = 35,
            img = textures.level4_icon,
            money = 1.3
          }
        }
      else
        exports.st_gui:showPlayerNotification("Aby wybra\196\135 ten tryb musisz siedzie\196\135 na miejscu kierowcy", "error")
      end
    elseif isMouseIn(_UPVALUE0_.x + 587.5 / zoom, _UPVALUE0_.y + 370 / zoom, 180 / zoom, 55 / zoom) and windows.select == true then
      if 1 <= #table_paczki then
      else
        selfSelectOsiedle = {}
        selfSelectOsiedle.idOsiedla = selfSelect.idOsiedla
        selfSelectOsiedle.posCenter = selfSelect.posCenter
        selfSelectOsiedle.ilosc = selfSelect.ilosc
        selfSelectOsiedle.oddane = 0
        table_paczki = {}
        repeat
          for _FORV_8_, _FORV_9_ in ipairs(table_paczki) do
            if positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][1] == _FORV_9_.pos[1] and positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][2] == _FORV_9_.pos[2] then
            end
          end
          if not true then
            table.insert(table_paczki, {
              id = 0 + 1,
              pos = {
                positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][1],
                positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][2],
                positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][3],
                positionPack[selfSelect.idOsiedla].pkt[math.random(1, #positionPack[selfSelect.idOsiedla].pkt)][4]
              },
              money = math.random(3600, 7100),
              skin = math.random(1, #skins)
            })
          end
        until #table_paczki == selfSelect.ilosc
        triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendJobTablePaczki", localPlayer, associateUserSelect, table_paczki, selfSelect.id, idVehGlobal, {
          selfSelectOsiedle.idOsiedla,
          selfSelectOsiedle.posCenter,
          selfSelectOsiedle.ilosc,
          selfSelectOsiedle.oddane
        })
        exports.st_gui:showPlayerNotification("Udaj si\196\153 do wybranego osiedla i dostarcz paczki", "info")
        for _FORV_6_, _FORV_7_ in ipairs(table_paczki) do
          pedBot[_FORV_7_.id] = createPed(skins[_FORV_7_.skin], _FORV_7_.pos[1], _FORV_7_.pos[2], _FORV_7_.pos[3], _FORV_7_.pos[4])
          pedBlip[_FORV_7_.id] = createBlip(_FORV_7_.pos[1], _FORV_7_.pos[2], _FORV_7_.pos[3], 0, 1, 255, 191, 0)
          setElementFrozen(pedBot[_FORV_7_.id], true)
        end
      end
    elseif isMouseIn(_UPVALUE0_.x + 575 / zoom, _UPVALUE0_.y + 470 / zoom, 210 / zoom, 65 / zoom) and windows.computer == true then
      triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "endJobAllS", localPlayer, associateUserSelect)
      exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153", "info")
      endJobAll()
    elseif isMouseIn(_UPVALUE0_.x + 585 / zoom, _UPVALUE0_.y + 370 / zoom, 190 / zoom, 50 / zoom) and windows.computer == true and windows.select == false and 0 >= #table_paczki and 0 >= #table_course and selfLoadingPack.unlockButton then
      for _FORV_9_, _FORV_10_ in ipairs(line) do
        if 10 > getDistanceBetweenPoints3D(_FORV_10_[1], _FORV_10_[2], _FORV_10_[3], getElementPosition(idVehGlobal)) then
          table.insert({}, _FORV_10_)
        end
      end
      if #{} == 0 then
        return
      end
      for _FORV_11_, _FORV_12_ in ipairs({}) do
        if getDistanceBetweenPoints3D(getElementPosition(idVehGlobal)) > getDistanceBetweenPoints3D(getElementPosition(idVehGlobal)) then
        end
      end
      if 6 > math.floor(getDistanceBetweenPoints3D(_FORV_12_[1], _FORV_12_[2], _FORV_12_[3], getElementPosition(localPlayer))) then
        if not (isLineOfSightClear(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) and isLineOfSightClear(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, false, true, false, false, false)) or isLineOfSightClear(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)) - 2.7 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 270)) - 6.9 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4])), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), getGroundPosition(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[1] - 1.75 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.sin(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[2] - 1.75 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 90)) - 7.5 * math.cos(-math.rad(({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[4] + 180)), ({
          _FORV_12_[1],
          _FORV_12_[2],
          _FORV_12_[3],
          _FORV_12_[4]
        })[3] + 5) + 1.5, false, true, false, false, false) then
          exports.st_gui:showPlayerNotification("Linia nie mo\197\188e by\196\135 czerwona", "error")
          return
        end
        if isElement(komputer) then
          destroyElement(komputer)
        end
        if _FORV_12_[5] == 1 then
          selfLoadingPack.Pos = {
            1139.32,
            1248,
            10.95
          }
        elseif _FORV_12_[5] == 2 then
          selfLoadingPack.Pos = {
            1129.82,
            1248,
            10.95
          }
        elseif _FORV_12_[5] == 3 then
          selfLoadingPack.Pos = {
            1119.32,
            1248,
            10.95
          }
        elseif _FORV_12_[5] == 4 then
          selfLoadingPack.Pos = {
            846.69,
            -1170.91,
            17.15
          }
        elseif _FORV_12_[5] == 5 then
          selfLoadingPack.Pos = {
            856.42,
            -1170.91,
            17.15
          }
        elseif _FORV_12_[5] == 6 then
          selfLoadingPack.Pos = {
            867.03,
            -1170.91,
            17.15
          }
        elseif _FORV_12_[5] == 7 then
          selfLoadingPack.Pos = {
            -1710.89,
            -50.2,
            3.8
          }
        elseif _FORV_12_[5] == 8 then
          selfLoadingPack.Pos = {
            -1701.59,
            -50.2,
            3.8
          }
        elseif _FORV_12_[5] == 9 then
          selfLoadingPack.Pos = {
            -1690.99,
            -50.2,
            3.8
          }
        end
        najblizszeXYZ = _FORV_12_[5]
        triggerServerEvent("evEwenciks_asjhgfdsgk", resourceRoot, "sendStartLoadingPack", localPlayer, associateUserSelect, idVehGlobal, _FORV_12_[5])
      end
    end
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
bindKey("mouse_wheel_down", "both", function()
  if windows.selectPack == true and isMouseIn(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 5 / zoom, 340 / zoom, _UPVALUE0_.h - 10 / zoom) then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.selectPack == true and isMouseIn(_UPVALUE0_.x + 510 / zoom, _UPVALUE0_.y + 5 / zoom, 340 / zoom, _UPVALUE0_.h - 10 / zoom) then
    scrollDown()
  end
end)
function scrollDown()
  if n == m then
    return
  end
  k = k - 1
  n = n - 1
end
function scrollUp()
  if n >= #positions then
    return
  end
  k = k + 1
  n = n + 1
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
getResourceName(getThisResource(), true, 532207059)
return
