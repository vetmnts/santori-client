zoom = exports.st_gui:getInterfaceZoom()
windowPos1 = {
  x = guiGetScreenSize() / 2 - 882 / zoom / 2,
  y = guiGetScreenSize() / 2 - 573 / zoom / 2,
  w = 882 / zoom,
  h = 573 / zoom
}
windows = {
  markerENTER = false,
  vehicle = false,
  tuning = false,
  background = false,
  teleport = false,
  backgroundComputer = false,
  vehiclesComputer = false,
  upgradesComputer = false,
  rankingComputer = false,
  mapComputer = false,
  logsComputer = false,
  settingsComputer = false
}
earnData = {}
show_info_organization = {}
show_vehicles_organization = {}
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if windows.mapComputer == true then
    if _ARG_0_ == "left" and _ARG_1_ == "down" then
      addYMap = 0 / zoom
      if _ARG_2_ >= _UPVALUE0_.x and _ARG_2_ <= _UPVALUE0_.x + _UPVALUE0_.w and _ARG_3_ >= _UPVALUE0_.y + addYMap and _ARG_3_ <= _UPVALUE0_.y + addYMap + _UPVALUE0_.h then
        _UPVALUE1_ = _ARG_2_ * _UPVALUE2_ + _UPVALUE3_
        _UPVALUE4_ = _ARG_3_ * _UPVALUE2_ - _UPVALUE5_
        _UPVALUE6_ = true
        _UPVALUE7_ = true
      end
    elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
      _UPVALUE6_ = false
    end
  end
end
function scrollBigMap(_ARG_0_)
  if _ARG_0_ == "mouse_wheel_down" then
    _UPVALUE0_ = math.min(_UPVALUE0_ + 0.3, 3.2)
  elseif _ARG_0_ == "mouse_wheel_up" then
    _UPVALUE0_ = math.max(0.5, _UPVALUE0_ - 0.3)
  end
end
bindKey("mouse_wheel_up", "down", scrollBigMap)
bindKey("mouse_wheel_down", "down", scrollBigMap)
addEventHandler("onClientClick", root, moveBigMap)
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  if windows.selectJobs == true then
    addYMap = 120 / zoom
  else
    addYMap = 0 / zoom
  end
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (_UPVALUE1_ - _ARG_0_) / _UPVALUE2_ * _UPVALUE3_, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - _UPVALUE1_) / _UPVALUE2_ * _UPVALUE3_, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + addYMap + _UPVALUE0_.h / 2 - (_ARG_1_ - _UPVALUE4_) / _UPVALUE2_ * _UPVALUE3_, math.min(_UPVALUE0_.y + addYMap + _UPVALUE0_.h / 2 + (_UPVALUE4_ - _ARG_1_) / _UPVALUE2_ * _UPVALUE3_, _UPVALUE0_.y + addYMap + _UPVALUE0_.h / 2)))
end
function window()
  if windows.backgroundComputer == true then
    dxDrawRoundedRectangle(windowPos1.x + 9 / zoom, windowPos1.y + 5 / zoom, windowPos1.w - 18 / zoom, windowPos1.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos1.x, windowPos1.y, windowPos1.w, windowPos1.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos1.x + 30 / zoom, windowPos1.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(windowPos1.x + 20 / zoom, windowPos1.y + 80 / zoom, 70 / zoom, 470 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.vehicles_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.vehicles_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 205 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.ranking_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 205 / zoom, 50 / zoom, 50 / zoom, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 265 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 265 / zoom, 50 / zoom, 50 / zoom, textures.map_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 265 / zoom, 50 / zoom, 50 / zoom, textures.map_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 325 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 325 / zoom, 50 / zoom, 50 / zoom, textures.logs_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 325 / zoom, 50 / zoom, 50 / zoom, textures.logs_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 385 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 385 / zoom, 50 / zoom, 50 / zoom, textures.settings_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 385 / zoom, 50 / zoom, 50 / zoom, textures.settings_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 490 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 490 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 490 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.vehiclesComputer == true then
      dxDrawRoundedRectangle(windowPos1.x + 100 / zoom, windowPos1.y + 80 / zoom, 750 / zoom, 470 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
      dxDrawText("POJAZDY W MAGAZYNIE", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
      for _FORV_9_ = 1, 6 do
        if 3 < 0 + 1 then
        end
        dxDrawRoundedRectangle(windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom, 20 / zoom, tocolor(25, 25, 25, 255))
      end
      for _FORV_11_, _FORV_12_ in ipairs(table_vehicle_client) do
        if 3 < 0 + 1 then
        end
        dxDrawRoundedRectangle(windowPos1.x + 261 / zoom * (1 - 1) + 114 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 94 / zoom, 197 / zoom, 197 / zoom, 20 / zoom, tocolor(255, 187, 0, 230))
        dxDrawRoundedRectangle(windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom, 20 / zoom, tocolor(30, 30, 30, 255))
        if isMouseIn(windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom) then
          dxDrawText("#04ff00EXPORTUJ", windowPos1.x + 65 / zoom + 522 / zoom * (1 - 1), windowPos1.y + 33 / zoom + 486 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        else
          dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel((getElementModel(_FORV_12_[2])))), windowPos1.x + 65 / zoom + 522 / zoom * (1 - 1), windowPos1.y + 30 / zoom + 486 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
        end
        dxDrawText("#00b82e" .. przecinek(_FORV_12_[3]) .. " #ffffffPLN", windowPos1.x + 65 / zoom + 522 / zoom * (1 - 1), windowPos1.y + 330 / zoom + 486 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      end
    end
    if windows.upgradesComputer == true then
      dxDrawText("ULEPSZENIA PRACY", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
        xY = xY + 1
        dxDrawRoundedRectangle(windowPos1.x + 110 / zoom, windowPos1.y + 80 / zoom + 97 / zoom * (xY - 1), 740 / zoom, 80 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(windowPos1.x + 115 / zoom, windowPos1.y + 85 / zoom + 97 / zoom * (xY - 1), 70 / zoom, 70 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
        dxDrawText(_FORV_8_.name .. " - #00b82e" .. przecinek(_FORV_8_.price) .. " #9e9e9ePLN", windowPos1.x + 195 / zoom, windowPos1.y - 4 / zoom + 194 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.description, windowPos1.x + 195 / zoom, windowPos1.y + 65 / zoom + 194 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(160, 160, 160, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos1.x + 120 / zoom, windowPos1.y + 90 / zoom + 97 / zoom * (xY - 1), 60 / zoom, 60 / zoom, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if _FORV_8_.status == 1 then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", windowPos1.x + 720 / zoom, windowPos1.y + 40 / zoom + 194 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(210, 210, 210, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 685 / zoom, windowPos1.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom, 255, 1)
        end
      end
    end
    if windows.rankingComputer == true then
      dxDrawText("RANKING NAJLEPSZYCH GRACZY W ORGANIZACJI", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
      for _FORV_9_, _FORV_10_ in pairs(earnData) do
        dxDrawRoundedRectangle(windowPos1.x + 120 / zoom, windowPos1.y + 92 / zoom + 48 / zoom * (0 + 1 - 1), 740 / zoom, 20 / zoom, 10 / zoom, tocolor(45, 45, 45, 255), 2)
        if _FORV_9_ == 1 then
          rgbBar = {
            255,
            178,
            0
          }
          rgbText = {
            255,
            178,
            0
          }
        elseif _FORV_9_ == 2 then
          rgbBar = {
            169,
            166,
            172
          }
          rgbText = {
            169,
            166,
            172
          }
        elseif _FORV_9_ == 3 then
          rgbBar = {
            185,
            139,
            95
          }
          rgbText = {
            185,
            139,
            95
          }
        else
          rgbBar = {
            70,
            70,
            70
          }
          rgbText = {
            150,
            150,
            150
          }
        end
        dxDrawRoundedRectangle(windowPos1.x + 120 / zoom, windowPos1.y + 92 / zoom + 48 / zoom * (0 + 1 - 1), 20 / zoom + (_FORV_10_.totalmoney / earnDiagram.maxEarn * 705 / zoom + 15 / zoom), 20 / zoom, 10 / zoom, tocolor(rgbBar[1], rgbBar[2], rgbBar[3], 255), 2)
        dxDrawText(_FORV_9_ .. "#c7c7c7.", windowPos1.x, windowPos1.y + 90 / zoom + 48 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom - 247 / zoom, windowPos1.y + 204 / zoom, tocolor(rgbText[1], rgbText[2], rgbText[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "top", false, false, false, true, false)
        dxDrawText(_FORV_10_.nick, windowPos1.x + 120 / zoom, windowPos1.y + 68 / zoom + 48 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(250, 250, 250, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, true)
        dxDrawText("#00b82e" .. przecinek(_FORV_10_.totalmoney) .. " #ffffffPLN", windowPos1.x, windowPos1.y + 92 / zoom + 48 / zoom * (0 + 1 - 1), windowPos1.x + 362 / zoom + 490 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "right", "top", false, false, false, true, false)
      end
    end
    if windows.mapComputer == true then
      dxDrawText("MAPA PORZUCONYCH POJAZD\195\147W", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
      if kupilMape == true then
        cursorX, cursorY = getCursorPosition()
        if getKeyState("mouse1") and _UPVALUE0_ then
          if not cursorX then
          else
          end
          _UPVALUE3_ = -(cursorX * _UPVALUE1_ * _UPVALUE4_ - _UPVALUE5_)
          _UPVALUE6_ = cursorY * _UPVALUE2_ * _UPVALUE4_ - _UPVALUE7_
          _UPVALUE3_ = math.max(-3000, math.min(3000, _UPVALUE3_))
          _UPVALUE6_ = math.max(-3000, math.min(3000, _UPVALUE6_))
        end
        dxDrawImageSection(_UPVALUE9_.x, _UPVALUE9_.y, _UPVALUE9_.w, _UPVALUE9_.h, (3000 + _UPVALUE3_) * _UPVALUE8_ - _UPVALUE9_.w / 2 * _UPVALUE4_, (3000 - _UPVALUE6_) * _UPVALUE8_ - _UPVALUE9_.h / 2 * _UPVALUE4_, _UPVALUE9_.w * _UPVALUE4_, _UPVALUE9_.h * _UPVALUE4_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
        xY = 0
        for _FORV_13_, _FORV_14_ in pairs(getElementsByType("vehicle")) do
          if getElementData(_FORV_14_, "import_vehicle") then
            dxDrawRoundedRectangle(math.max(_UPVALUE9_.x + _UPVALUE9_.w / 2 - _UPVALUE9_.w / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE9_.x + _UPVALUE9_.w / 2 + _UPVALUE9_.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(_FORV_14_)))) - 15 / zoom / 2, math.max(_UPVALUE9_.y + _UPVALUE9_.h / 2 - _UPVALUE9_.h / 2 + math.floor(38 / zoom) / 2, math.min(_UPVALUE9_.y + _UPVALUE9_.h / 2 + _UPVALUE9_.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(getElementPosition(_FORV_14_)))) - 15 / zoom / 2, 15 / zoom, 15 / zoom, 5 / zoom, tocolor(150, 0, 0, 230))
          end
        end
      else
        dxDrawRoundedRectangle(windowPos1.x + 150 / zoom, windowPos1.y + 100 / zoom, 650 / zoom, 400 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
        dxDrawText("CZY CHCESZ ZAKUPI\196\134 MAP\196\152 PORZUCONYCH POJAZD\195\147W\nZA #00b82e200,000 #ffffffPLN?", windowPos1.x + 570 / zoom, windowPos1.y + 300 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("ZAKUP", windowPos1.x + 385 / zoom, windowPos1.y + 340 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      end
    end
    if windows.logsComputer == true then
      dxDrawText("LOGI SPRZEDANYCH POJAZD\195\147W", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos1.x + 110 / zoom, windowPos1.y + 80 / zoom, 740 / zoom, 470 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
      xY = 0
      for _FORV_7_, _FORV_8_ in pairs(showLogsIE_table) do
        if _FORV_7_ >= _UPVALUE10_ and _FORV_7_ <= _UPVALUE11_ then
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos1.x + 115 / zoom, windowPos1.y + 85 / zoom + 36 / zoom * (xY - 1), 730 / zoom, 30 / zoom, 15 / zoom, tocolor(30, 30, 30, 230))
          dxDrawText(_FORV_8_.nick, windowPos1.x + 125 / zoom, windowPos1.y - 2 / zoom + 72 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_8_.car, windowPos1.x + 500 / zoom, windowPos1.y - 0 / zoom + 72 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
          if _FORV_8_.type == 0 then
            dxDrawText("#00b82e" .. przecinek(_FORV_8_.money) .. " #ffffffPLN - #ffbb00do gracza", windowPos1.x, windowPos1.y - 0 / zoom + 72 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 475 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          elseif _FORV_8_.type == 1 then
            dxDrawText("#00b82e" .. przecinek(_FORV_8_.money) .. " #ffffffPLN - #ffbb00do org", windowPos1.x, windowPos1.y - 0 / zoom + 72 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 475 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          elseif _FORV_8_.type == 50 then
            dxDrawText("#00b82e" .. przecinek(_FORV_8_.money) .. " #ffffffPLN - #ffbb0050 / 50", windowPos1.x, windowPos1.y - 0 / zoom + 72 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 475 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          end
        end
      end
    end
    if windows.settingsComputer == true then
      dxDrawText("USTAWIENIA ZAROBKU SPRZEDANYCH POJAZD\195\147W", windowPos1.x + 30 / zoom, windowPos1.y - 117 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos1.x + 150 / zoom, windowPos1.y + 100 / zoom, 650 / zoom, 400 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
      dxDrawText("WYBIERZ GDZIE MAJ\196\132 TRAFIA\196\134 PIENI\196\132DZE ZE\nSPRZEDANYCH POJAZD\195\147W", windowPos1.x + 590 / zoom, windowPos1.y + 300 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in pairs(selectInfoUsers_table) do
        if _FORV_8_.wyplata_import == 0 then
          dxDrawRoundedRectangle(windowPos1.x + 168 / zoom, windowPos1.y + 353 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
        elseif _FORV_8_.wyplata_import == 1 then
          dxDrawRoundedRectangle(windowPos1.x + 398 / zoom, windowPos1.y + 353 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
        elseif _FORV_8_.wyplata_import == 50 then
          dxDrawRoundedRectangle(windowPos1.x + 628 / zoom, windowPos1.y + 353 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
        end
        exports.ST_buttons:dxCreateButton("DO MNIE", windowPos1.x + 170 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("DO ORGANIZACJI", windowPos1.x + 400 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("50 / 50", windowPos1.x + 630 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      end
    end
  end
  if windows.markerENTER == true then
    for _FORV_7_, _FORV_8_ in ipairs(show_info_organization) do
      color1 = split(_FORV_8_.color, ",")
    end
    dxDrawRoundedRectangle(_UPVALUE12_.x - 2 / zoom, _UPVALUE12_.y - 2 / zoom, _UPVALUE12_.w + 4 / zoom, _UPVALUE12_.h + 4 / zoom, 15 / zoom, tocolor(color1[1], color1[2], color1[3], 230), false)
    dxDrawRoundedRectangle(_UPVALUE12_.x, _UPVALUE12_.y, _UPVALUE12_.w, _UPVALUE12_.h, 15 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE12_.x + 15 / zoom, _UPVALUE12_.y + 45 / zoom, _UPVALUE12_.w - 30 / zoom, 2 / zoom, 1 / zoom, tocolor(color1[1], color1[2], color1[3], 230), false)
    dxDrawText("IMPORT / EXPORT", _UPVALUE12_.x + 15 / zoom, _UPVALUE12_.y - 152 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE12_.x + 459 / zoom, _UPVALUE12_.y + 9 / zoom, 27 / zoom, 27 / zoom) then
      dxDrawImage(_UPVALUE12_.x + 459 / zoom, _UPVALUE12_.y + 9 / zoom, 27 / zoom, 27 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE12_.x + 460 / zoom, _UPVALUE12_.y + 10 / zoom, 25 / zoom, 25 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    for _FORV_7_, _FORV_8_ in ipairs(show_info_organization) do
      if _FORV_8_.import_export == 1 then
        dxDrawText("Organizacja", _UPVALUE12_.x + 146 / zoom, _UPVALUE12_.y - 30 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.nazwa, _UPVALUE12_.x + 146 / zoom, _UPVALUE12_.y + 40 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(color1[1], color1[2], color1[3], 255), 1 / zoom, exports.ST_gui:getGUIFont("normal19"), "center", "center", false, false, false, false, false)
        dxDrawText("OG\195\147\197\129 ZAROBKU", _UPVALUE12_.x + 146 / zoom, _UPVALUE12_.y + 200 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
        dxDrawText("#00b82e" .. przecinek(_FORV_8_.zarobek_import) .. " #ffffffPLN", _UPVALUE12_.x + 146 / zoom, _UPVALUE12_.y + 270 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal19"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("WEJD\197\185", _UPVALUE13_.x, _UPVALUE13_.y, _UPVALUE13_.w, _UPVALUE13_.h, 255, 1)
      else
        dxDrawText("Twoja organizacja musi posiada\196\135\nulepszenie by z tego korzysta\196\135.\n\nPod klawiszem f4 w zak\197\130adce \"ulepszenia\" mo\197\188esz\nodblokowa\196\135 to miejsce.", _UPVALUE12_.x + math.floor(146 / zoom), _UPVALUE12_.y + math.floor(197 / zoom), _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(240, 240, 240, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal18"), "center", "center", false, false, false, false, false)
      end
    end
  end
  if windows.background == true then
    dxDrawRoundedRectangle(windowPos1.x + 9 / zoom, windowPos1.y + 5 / zoom, windowPos1.w - 18 / zoom, windowPos1.h - 10 / zoom, 35 / zoom, tocolor(255, 187, 0, 200), false)
    dxDrawImage(windowPos1.x, windowPos1.y, windowPos1.w, windowPos1.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos1.x + 30 / zoom, windowPos1.y + 62 / zoom, 820 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(windowPos1.x + 20 / zoom, windowPos1.y + 80 / zoom, 70 / zoom, 400 / zoom, 15 / zoom, tocolor(35, 35, 35, 230))
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.vehicles_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom, textures.vehicles_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 420 / zoom, 50 / zoom, 50 / zoom) then
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(150, 150, 150, 255), false)
    else
      dxDrawImage(windowPos1.x + 29 / zoom, windowPos1.y + 420 / zoom, 50 / zoom, 50 / zoom, textures.off_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.vehicle == true then
    for _FORV_7_, _FORV_8_ in ipairs(show_vehicles_organization) do
      if _FORV_8_.id == vehicleID then
        dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_8_.model)), windowPos1.x + 30 / zoom, windowPos1.y - 125 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
        costVehicles = _FORV_8_.cost
        if _FORV_8_.engine_health == 1000 then
          costVehicles = costVehicles + 15000
        end
        if tonumber(_FORV_8_.us1) == 1 then
          costVehicles = costVehicles + 25000
        end
        if tonumber(_FORV_8_.us2) == 1 then
          costVehicles = costVehicles + 32000
        end
        if tonumber(_FORV_8_.us3) == 1 then
          costVehicles = costVehicles + 36000
        end
        if tonumber(_FORV_8_.turbo) == 1 then
          costVehicles = costVehicles + 37000
        end
        if tonumber(_FORV_8_.trakcja) == 1 then
          costVehicles = costVehicles + 20000
        end
        if tonumber(_FORV_8_.silnik) == 1 then
          costVehicles = costVehicles + 70000
        end
        if tonumber(_FORV_8_.gwint) == 1 then
          costVehicles = costVehicles + 20000
        end
        dxDrawText("INFORMACJE O POJE\197\185DZIE", windowPos1.x + 530 / zoom, windowPos1.y + 90 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        dxDrawText("Koszt pojazdu: #00b82e" .. przecinek(costVehicles) .. " #ffffffPLN", windowPos1.x + 530 / zoom, windowPos1.y + 620 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("Sprzedaj", _UPVALUE13_.x, _UPVALUE13_.y + math.floor(55 / zoom), math.floor(180 / zoom), math.floor(60 / zoom), 255, 1)
        dxDrawRoundedRectangle(windowPos1.x + 225 / zoom, windowPos1.y + 172 / zoom, 215 / zoom, 155 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
        dxDrawRoundedRectangle(windowPos1.x + 448 / zoom, windowPos1.y + 172 / zoom, 215 / zoom, 155 / zoom, 20 / zoom, tocolor(20, 20, 20, 230))
        for _FORV_14_, _FORV_15_ in ipairs(vehTuning) do
          if 0 + 1 > 2 then
          end
          if _FORV_15_.name == "Naprawa" then
            dxDrawText("STAN POJAZDU:", windowPos1.x + 240 / zoom + 220 / zoom * (1 - 1), windowPos1.y + 190 / zoom + 70 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
            dxDrawText("#ffbb00" .. math.floor(_FORV_8_.engine_health / 10) .. "#ffffff%", windowPos1.x, windowPos1.y + 190 / zoom + 70 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom + 70 / zoom + 220 / zoom * (1 - 1), windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, true, false)
          else
            dxDrawText(_FORV_15_.name, windowPos1.x + 240 / zoom + 220 / zoom * (1 - 1), windowPos1.y + 190 / zoom + 70 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
            if _FORV_15_.active == 0 then
              dxDrawText("#d40000NIE", windowPos1.x, windowPos1.y + 190 / zoom + 70 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom + 70 / zoom + 220 / zoom * (1 - 1), windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, true, false)
            else
              dxDrawText("#00b81fTAK", windowPos1.x, windowPos1.y + 190 / zoom + 70 / zoom * (1 + 1 - 1), windowPos1.x + 362 / zoom + 70 / zoom + 220 / zoom * (1 - 1), windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, true, false)
            end
          end
        end
      end
    end
  end
  if windows.tuning == true then
    dxDrawText("MODYFIKACJE POJAZDU", windowPos1.x + 30 / zoom, windowPos1.y - 125 / zoom, windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(show_info_organization) do
      dxDrawText("PORFTEL: #00b82e" .. przecinek(getElementData(localPlayer, "player:moneyMNn")) .. " #ffffffPLN", windowPos1.x, windowPos1.y - 125 / zoom, windowPos1.x + 362 / zoom + 485 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(vehTuning) do
      xY = xY + 1
      dxDrawRoundedRectangle(windowPos1.x + 95 / zoom, windowPos1.y + 70 / zoom + 62 / zoom * (xY - 1), 760 / zoom, 57 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
      costTune = 0
      if _FORV_8_.name == "Naprawa" then
        costTune = costTune + 15000
      end
      if _FORV_8_.name == "US1" then
        costTune = costTune + 25000
      end
      if _FORV_8_.name == "US2" then
        costTune = costTune + 32000
      end
      if _FORV_8_.name == "US3" then
        costTune = costTune + 36000
      end
      if _FORV_8_.name == "TURBO" then
        costTune = costTune + 37000
      end
      if _FORV_8_.name == "Trakcja WRX03" then
        costTune = costTune + 20000
      end
      if _FORV_8_.name == "Silnik 3.0 V8" then
        costTune = costTune + 70000
      end
      if _FORV_8_.name == "Gwintowane zawieszenie" then
        costTune = costTune + 20000
      end
      dxDrawText(_FORV_8_.name, windowPos1.x + 110 / zoom, windowPos1.y - 25 / zoom + 124 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
      dxDrawText("#c4c4c4Koszt: #00ad23" .. przecinek(_FORV_8_.cost) .. " #c4c4c4PLN", windowPos1.x + 110 / zoom, windowPos1.y + 25 / zoom + 124 / zoom * (xY - 1), windowPos1.x + 362 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      if _FORV_8_.active == 1 then
        if _FORV_8_.name == "Naprawa" then
          dxDrawText("Naprawiono #00ff00\226\156\148", windowPos1.x + 550 / zoom, windowPos1.y - 1 / zoom + 124 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 480 / zoom, windowPos1.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("Zakupiono #00ff00\226\156\148", windowPos1.x + 550 / zoom, windowPos1.y - 1 / zoom + 124 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 480 / zoom, windowPos1.y + 204 / zoom, tocolor(220, 220, 220, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
        end
      elseif _FORV_8_.active == 0 then
        if _FORV_8_.name == "Naprawa" then
          exports.ST_buttons:dxCreateButton("Napraw", windowPos1.x + 700 / zoom, windowPos1.y + 77.5 / zoom + 62 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 255, 1)
        else
          exports.ST_buttons:dxCreateButton("Zakup", windowPos1.x + 700 / zoom, windowPos1.y + 77.5 / zoom + 62 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 255, 1)
        end
        dxDrawText("#c4c4c4WARTO\197\154\196\134 POJAZDU\n#00ad23+" .. przecinek(costTune) .. " #c4c4c4PLN", windowPos1.x, windowPos1.y + 0 / zoom + 124 / zoom * (xY - 1), windowPos1.x + 362 / zoom + 330 / zoom, windowPos1.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "right", "center", false, false, false, true, false)
      elseif _FORV_8_.name == "Naprawa" then
        for _FORV_14_, _FORV_15_ in ipairs(show_vehicles_organization) do
          if vehicleID ~= _FORV_15_.id or _FORV_15_.block == 1 then
          else
            exports.ST_buttons:dxCreateButton("Napraw", windowPos1.x + 700 / zoom, windowPos1.y + 77.5 / zoom + 62 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 255, 1)
          end
        end
      else
        for _FORV_14_, _FORV_15_ in ipairs(show_vehicles_organization) do
          if vehicleID ~= _FORV_15_.id or _FORV_15_.block == 1 then
          else
            exports.ST_buttons:dxCreateButton("Zakup", windowPos1.x + 700 / zoom, windowPos1.y + 77.5 / zoom + 62 / zoom * (xY - 1), 140 / zoom, 40 / zoom, 255, 1)
          end
        end
      end
    end
  end
  if windows.teleport == true then
    for _FORV_7_, _FORV_8_ in ipairs(show_info_organization) do
      color1 = split(_FORV_8_.color, ",")
    end
    dxDrawRoundedRectangle(_UPVALUE12_.x - 2 / zoom, _UPVALUE12_.y - 2 / zoom, _UPVALUE12_.w + 4 / zoom, _UPVALUE12_.h + 4 / zoom, 15 / zoom, tocolor(color1[1], color1[2], color1[3], 230), false)
    dxDrawRoundedRectangle(_UPVALUE12_.x, _UPVALUE12_.y, _UPVALUE12_.w, _UPVALUE12_.h, 15 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE12_.x + 15 / zoom, _UPVALUE12_.y + 45 / zoom, _UPVALUE12_.w - 30 / zoom, 2 / zoom, 1 / zoom, tocolor(color1[1], color1[2], color1[3], 230), false)
    dxDrawText("TELEPORTACJA DO MAGAZYNU", _UPVALUE12_.x + 15 / zoom, _UPVALUE12_.y - 152 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("CZY CHCESZ SI\196\152 TELEPORTOWA\196\134\nDO MAGAZYNU?", _UPVALUE12_.x + 146 / zoom, _UPVALUE12_.y + 150 / zoom, _UPVALUE12_.x + 362 / zoom, _UPVALUE12_.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE12_.x + 20 / zoom, _UPVALUE12_.y + 310 / zoom, 100 / zoom, 60 / zoom, 255, 1)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE12_.x + _UPVALUE12_.w - 120 / zoom, _UPVALUE12_.y + 310 / zoom, 100 / zoom, 60 / zoom, 255, 1)
  end
end
function renderGui3d()
  if isElement(blip) then
    if selfTarget.pos and getElementDimension(localPlayer) == 0 then
      if selfTarget.text == "ABY SPRZEDA\196\134 POJAZD KLIKNIJ" and getPedOccupiedVehicle(localPlayer) then
        dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / zoom, tocolor(25, 25, 25, 200))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 8 / zoom, _UPVALUE0_.y + 8 / zoom, 104 / zoom, 104 / zoom, 15 / zoom, tocolor(255, 196, 0, 200))
        dxDrawRoundedRectangle(_UPVALUE0_.x + 10 / zoom, _UPVALUE0_.y + 10 / zoom, 100 / zoom, 100 / zoom, 15 / zoom, tocolor(35, 35, 35, 255))
        dxDrawImage(_UPVALUE0_.x + 15 / zoom, _UPVALUE0_.y + 15 / zoom, 90 / zoom, 90 / zoom, texturesRender.vehicles_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("EXPORT " .. exports.ST_core:changeNameClient(getVehicleNameFromModel((getElementModel((getPedOccupiedVehicle(localPlayer)))))) .. "", _UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y - 70 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 40 / zoom, 250 / zoom, 2 / zoom, 2 / zoom, tocolor(255, 196, 0, 200))
        dxDrawText("WARTO\197\154\196\134: #00ad23" .. przecinek(costVehiclesExport) .. [[
 #ffffffPLN
USZKODZENIA: #fc0000]] .. przecinek((math.floor(math.abs(costVehiclesExport * (getElementHealth((getPedOccupiedVehicle(localPlayer))) / 1000) - costVehiclesExport)))) .. " #ffffffPLN", _UPVALUE0_.x + 125 / zoom, _UPVALUE0_.y + 35 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      end
      if getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) and getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) then
        dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 2 - _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 2, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200))
        dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200))
        dxDrawImage(getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - 25 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - 65 / zoom, 50 / zoom, 50 / zoom, texturesRender.finish_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        if math.floor(getDistanceBetweenPoints3D(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3], getElementPosition(localPlayer))) < 5 then
          dxDrawRoundedRectangle(getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - 86 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 29 / zoom, 172 / zoom, 57 / zoom, 10 / zoom, tocolor(selfTarget.color[1], selfTarget.color[2], selfTarget.color[3], 255))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - 85 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 30 / zoom, 170 / zoom, 55 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
          dxDrawText(selfTarget.text or "", getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 93 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200))
          dxDrawRoundedRectangle(getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - 10.6 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 58 / zoom, 20 / zoom, 20 / zoom, 5 / zoom, tocolor(70, 70, 70, 255))
          dxDrawText("H", getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) - _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + 138 / zoom, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200) + _UPVALUE1_ / 5, getScreenFromWorldPosition(selfTarget.pos[1], selfTarget.pos[2], selfTarget.pos[3] + 0.1, 200))
          if getKeyState("H") then
            if selfTarget.text == "ABY SCHOWA\196\134 POJAZD KLIKNIJ" then
              if getPedOccupiedVehicle(localPlayer) and getElementData(getPedOccupiedVehicle(localPlayer), "import_vehicle") then
                triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "enterMarkerMagazine", localPlayer)
                removeEventHandler("onClientRender", root, renderGui3d)
                if isElement(blip) then
                  destroyElement(blip)
                end
                selfTarget = {}
                for _FORV_10_, _FORV_11_ in pairs(texturesRender) do
                  if isElement(_FORV_11_) then
                    destroyElement(_FORV_11_)
                  end
                end
                textures = {}
              end
            elseif selfTarget.text == "ABY SPRZEDA\196\134 POJAZD KLIKNIJ" and getPedOccupiedVehicle(localPlayer) and getElementData(getPedOccupiedVehicle(localPlayer), "export_vehicle") then
              removeEventHandler("onClientRender", root, renderGui3d)
              triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "giveMoneyOrg", localPlayer, costVehiclesExport - math.floor(math.abs(costVehiclesExport * (getElementHealth((getPedOccupiedVehicle(localPlayer))) / 1000) - costVehiclesExport)))
              if isElement(blip) then
                destroyElement(blip)
              end
              selfTarget = {}
              for _FORV_13_, _FORV_14_ in pairs(texturesRender) do
                if isElement(_FORV_14_) then
                  destroyElement(_FORV_14_)
                end
              end
              textures = {}
              for _FORV_13_, _FORV_14_ in ipairs(show_info_organization) do
                if _FORV_14_.ulepszenieIE_teleportacja == 1 then
                  addEventHandler("onClientRender", root, window)
                  windows.teleport = true
                  showCursor(true)
                end
              end
            end
          end
        end
      end
    end
  elseif getElementDimension(localPlayer) ~= 0 then
    for _FORV_3_, _FORV_4_ in ipairs(table_vehicle_client) do
      if getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) and getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) and math.floor(getDistanceBetweenPoints3D(getElementPosition(_FORV_4_[2]))) < 20 then
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 106 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 14 / zoom, 212 / zoom, 77 / zoom, 10 / zoom, tocolor(infoOrganization.color[1], infoOrganization.color[2], infoOrganization.color[3], 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 105 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 15 / zoom, 210 / zoom, 75 / zoom, 10 / zoom, tocolor(30, 30, 30, 255))
        dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel((getElementModel(_FORV_4_[2])))), getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 35 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 60 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 50 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])))
        dxDrawRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 35 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 40 / zoom, 133 / zoom, 2 / zoom, tocolor(infoOrganization.color[1], infoOrganization.color[2], infoOrganization.color[3], 255))
        if _FORV_4_[4] then
          if costTuning then
            posXX = posXX + 0.09
            if _FORV_4_[4] == "Naprawa" then
              nameTuning = "naprawianie"
            elseif _FORV_4_[4] == "Gwintowane zawieszenie" then
              nameTuning = "GZ"
            else
              nameTuning = _FORV_4_[4]
            end
            dxDrawText(nameTuning, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 111 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 110 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 50 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])))
            dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 32.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 66 / zoom, 130 / zoom, 13 / zoom, 3 / zoom, tocolor(40, 40, 40, 255))
            dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 32.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 66 / zoom, posXX / zoom, 13 / zoom, 3 / zoom, tocolor(infoOrganization.color[1], infoOrganization.color[2], infoOrganization.color[3], 255))
            if posXX >= 130 / zoom then
              if _FORV_4_[4] == "Naprawa" then
                exports.st_gui:showPlayerNotification("Pomy\197\155lnie naprawiono pojazd", "success")
              else
                exports.st_gui:showPlayerNotification("Pomy\197\155lnie stuningowano pojazd", "success")
              end
              posXX = 0
              triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "tuningVehicleNew", _FORV_4_[4], costTuning, tuneVehicleId, localPlayer)
              costTuning = false
            end
          end
        else
          dxDrawText("KOSZT: #00b82e" .. przecinek(_FORV_4_[3]) .. " #ffffffPLN", getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 35 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 110 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 50 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])))
          dxDrawText("STAN: #ffbb00" .. math.floor(getElementHealth(_FORV_4_[2]) / 10) .. "#ffffff%", getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 35 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 150 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 50 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])))
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 99.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 22.5 / zoom, 60 / zoom, 60 / zoom, 10 / zoom, tocolor(45, 45, 45, 255))
        dxDrawImage(getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) - 99.5 / zoom, getScreenFromWorldPosition(getElementPosition(_FORV_4_[2])) + 22.5 / zoom, 60 / zoom, 60 / zoom, texturesRender.vehicles_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.tuning == true then
      for _FORV_6_, _FORV_7_ in ipairs(vehTuning) do
        if isMouseIn(windowPos1.x + 700 / zoom, windowPos1.y + 77.5 / zoom + 60 / zoom * (0 + 1 - 1), 140 / zoom, 40 / zoom) and windows.tuning == true then
          if costTuning then
            exports.st_gui:showPlayerNotification("Mo\197\188esz naprawia\196\135/tuningowa\196\135 jedn\196\133 rzecz na raz", "error")
            return
          end
          if getElementData(localPlayer, "player:moneyMNn") < _FORV_7_.cost then
            exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
            return
          end
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "takeMoney", localPlayer, _FORV_7_.cost)
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showGuiOrganization")
          setTimer(function()
            for _FORV_3_, _FORV_4_ in ipairs(show_vehicles_organization) do
              for _FORV_8_, _FORV_9_ in ipairs(table_vehicle_client) do
                if vehicleID == _FORV_4_.id and _FORV_9_[1] == _FORV_4_.id then
                  costVehicles = _FORV_4_.cost
                  if _FORV_4_.engine_health == 1000 then
                    costVehicles = costVehicles + 15000
                  end
                  if tonumber(_FORV_4_.us1) == 1 then
                    costVehicles = costVehicles + 25000
                  end
                  if tonumber(_FORV_4_.us2) == 1 then
                    costVehicles = costVehicles + 32000
                  end
                  if tonumber(_FORV_4_.us3) == 1 then
                    costVehicles = costVehicles + 36000
                  end
                  if tonumber(_FORV_4_.turbo) == 1 then
                    costVehicles = costVehicles + 37000
                  end
                  if tonumber(_FORV_4_.trakcja) == 1 then
                    costVehicles = costVehicles + 20000
                  end
                  if tonumber(_FORV_4_.silnik) == 1 then
                    costVehicles = costVehicles + 70000
                  end
                  if tonumber(_FORV_4_.gwint) == 1 then
                    costVehicles = costVehicles + 20000
                  end
                  table_vehicle_client[_FORV_8_][4] = _UPVALUE0_.name
                  tuneVehicleId = _FORV_4_.id
                  posXX = 5
                  costTuning = _UPVALUE0_.cost
                  if _FORV_4_.engine_health == 1000 then
                    naprawaActive = 1
                  elseif _FORV_4_.engine_health > 650 then
                    naprawaActive = 15
                  else
                    naprawaActive = 0
                  end
                  vehTuning = {
                    {
                      name = "Naprawa",
                      cost = 10000,
                      active = naprawaActive
                    },
                    {
                      name = "US1",
                      cost = 20000,
                      active = tonumber(_FORV_4_.us1)
                    },
                    {
                      name = "US2",
                      cost = 25000,
                      active = tonumber(_FORV_4_.us2)
                    },
                    {
                      name = "US3",
                      cost = 30000,
                      active = tonumber(_FORV_4_.us3)
                    },
                    {
                      name = "TURBO",
                      cost = 30000,
                      active = tonumber(_FORV_4_.turbo)
                    },
                    {
                      name = "Trakcja WRX03",
                      cost = 15000,
                      active = tonumber(_FORV_4_.trakcja)
                    },
                    {
                      name = "Silnik 3.0 V8",
                      cost = 60000,
                      active = tonumber(_FORV_4_.silnik)
                    },
                    {
                      name = "Gwintowane zawieszenie",
                      cost = 15000,
                      active = tonumber(_FORV_4_.gwint)
                    }
                  }
                  removeEventHandler("onClientRender", root, window)
                  windows.vehicle = false
                  windows.tuning = false
                  windows.background = false
                  showCursor(false)
                  for _FORV_13_, _FORV_14_ in pairs(textures) do
                    if isElement(_FORV_14_) then
                      destroyElement(_FORV_14_)
                    end
                  end
                  textures = {}
                end
              end
            end
          end, 300, 1)
        end
      end
    end
    if isMouseIn(_UPVALUE0_.x + 459 / zoom, _UPVALUE0_.y + 9 / zoom, 27 / zoom, 27 / zoom) and windows.markerENTER == true then
      removeEventHandler("onClientRender", root, window)
      windows.markerENTER = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h) and windows.markerENTER == true then
      for _FORV_5_, _FORV_6_ in ipairs(show_info_organization) do
        if _FORV_6_.import_export == 1 then
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
          fadeCamera(false)
          setTimer(function()
            if getPedOccupiedVehicle(localPlayer) then
              triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "enterExit", localPlayer, 859.98, 3977.98, 504.4, _UPVALUE0_.id)
            else
              triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "enterExit", localPlayer, 849.28, 3976.52, 505.5, _UPVALUE0_.id)
            end
          end, 1500, 1)
          removeEventHandler("onClientRender", root, window)
          windows.markerENTER = false
          showCursor(false)
          for _FORV_10_, _FORV_11_ in pairs(textures) do
            if isElement(_FORV_11_) then
              destroyElement(_FORV_11_)
            end
          end
          textures = {}
          setTimer(function()
            fadeCamera(true)
          end, 3000, 1)
          spawnVehicleInterior()
          if isElement(markerEXIT) then
            destroyElement(markerEXIT)
            markerEXIT = nil
          end
          for _FORV_10_, _FORV_11_ in ipairs(show_info_organization) do
            markerEXIT = createMarker(872.7, 3976.23, 503.5, "cylinder", 4, split(_FORV_11_.color, ",")[1], split(_FORV_11_.color, ",")[2], split(_FORV_11_.color, ",")[3], 255)
            setElementDimension(markerEXIT, _FORV_11_.id)
          end
          addEventHandler("onClientRender", root, renderGui3d)
          texturesRender = {
            vehicles_icon = dxCreateTexture("img/vehicles_icon.png"),
            finish_icon = dxCreateTexture(":ST_taximeter_job/img/finish_icon.png")
          }
        end
      end
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y + math.floor(55 / zoom), math.floor(180 / zoom), math.floor(60 / zoom)) and windows.vehicle == true then
      for _FORV_5_, _FORV_6_ in ipairs(show_vehicles_organization) do
        if _FORV_6_.id == vehicleID then
          if _FORV_6_.block == 1 then
            return
          end
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createCar", localPlayer, _FORV_6_.model, _FORV_6_.id)
          removeEventHandler("onClientRender", root, window)
          windows.vehicle = false
          windows.tuning = false
          windows.background = false
          showCursor(false)
          for _FORV_10_, _FORV_11_ in pairs(textures) do
            if isElement(_FORV_11_) then
              destroyElement(_FORV_11_)
            end
          end
          textures = {}
          costVehiclesExport = _FORV_6_.cost
          if _FORV_6_.engine_health == 1000 then
            costVehiclesExport = costVehiclesExport + 15000
          end
          if tonumber(_FORV_6_.us1) == 1 then
            costVehiclesExport = costVehiclesExport + 25000
          end
          if tonumber(_FORV_6_.us2) == 1 then
            costVehiclesExport = costVehiclesExport + 32000
          end
          if tonumber(_FORV_6_.us3) == 1 then
            costVehiclesExport = costVehiclesExport + 36000
          end
          if tonumber(_FORV_6_.turbo) == 1 then
            costVehiclesExport = costVehiclesExport + 37000
          end
          if tonumber(_FORV_6_.trakcja) == 1 then
            costVehiclesExport = costVehiclesExport + 20000
          end
          if tonumber(_FORV_6_.silnik) == 1 then
            costVehiclesExport = costVehiclesExport + 70000
          end
          if tonumber(_FORV_6_.gwint) == 1 then
            costVehiclesExport = costVehiclesExport + 20000
          end
        end
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
      windows.tuning = false
      windows.vehicle = true
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showVehiclesInterior")
      windows.vehicle = false
      windows.tuning = true
      setTimer(function()
        for _FORV_3_, _FORV_4_ in ipairs(show_vehicles_organization) do
          if vehicleID == _FORV_4_.id then
            if _FORV_4_.engine_health == 1000 then
              naprawaActive = 1
            elseif _FORV_4_.engine_health > 650 then
              naprawaActive = 15
            else
              naprawaActive = 0
            end
            vehTuning = {
              {
                name = "Naprawa",
                cost = 10000,
                active = naprawaActive
              },
              {
                name = "US1",
                cost = 20000,
                active = tonumber(_FORV_4_.us1)
              },
              {
                name = "US2",
                cost = 25000,
                active = tonumber(_FORV_4_.us2)
              },
              {
                name = "US3",
                cost = 30000,
                active = tonumber(_FORV_4_.us3)
              },
              {
                name = "TURBO",
                cost = 30000,
                active = tonumber(_FORV_4_.turbo)
              },
              {
                name = "Trakcja WRX03",
                cost = 15000,
                active = tonumber(_FORV_4_.trakcja)
              },
              {
                name = "Silnik 3.0 V8",
                cost = 60000,
                active = tonumber(_FORV_4_.silnik)
              },
              {
                name = "Gwintowane zawieszenie",
                cost = 15000,
                active = tonumber(_FORV_4_.gwint)
              }
            }
          end
        end
      end, 200, 1)
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 420 / zoom, 50 / zoom, 50 / zoom) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      windows.background = false
      windows.vehicles = false
      windows.tuning = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
    if isMouseIn(_UPVALUE0_.x + 20 / zoom, _UPVALUE0_.y + 310 / zoom, 100 / zoom, 60 / zoom) and windows.teleport == true then
      removeEventHandler("onClientRender", root, window)
      windows.teleport = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    elseif isMouseIn(_UPVALUE0_.x + _UPVALUE0_.w - 120 / zoom, _UPVALUE0_.y + 310 / zoom, 100 / zoom, 60 / zoom) and windows.teleport == true then
      removeEventHandler("onClientRender", root, window)
      windows.teleport = false
      for _FORV_5_, _FORV_6_ in ipairs(show_info_organization) do
        triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "tppos", localPlayer, (split(_FORV_6_.markerImport, ",")))
      end
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
    if windows.vehiclesComputer == true then
      for _FORV_7_, _FORV_8_ in ipairs(show_vehicles_organization) do
        if 0 + 1 > 3 then
        end
        if isMouseIn(windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom) and windows.vehiclesComputer == true then
          if _FORV_8_.block == 1 then
            return
          end
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "createCar", localPlayer, _FORV_8_.model, _FORV_8_.id)
          removeEventHandler("onClientRender", root, window)
          windows.vehiclesComputer = false
          windows.backgroundComputer = false
          showCursor(false)
          for _FORV_14_, _FORV_15_ in pairs(textures) do
            if isElement(_FORV_15_) then
              destroyElement(_FORV_15_)
            end
          end
          textures = {}
          for _FORV_14_, _FORV_15_ in pairs(vehicle3D) do
            if isElement(_FORV_15_) then
              destroyElement(_FORV_15_)
            end
          end
          for _FORV_14_, _FORV_15_ in pairs(myObject) do
            if isElement(_FORV_15_) then
              exports.ST_object_preview:destroyObjectPreview(_FORV_15_)
            end
          end
          costVehiclesExport = _FORV_8_.cost
          if _FORV_8_.engine_health == 1000 then
            costVehiclesExport = costVehiclesExport + 15000
          end
          if tonumber(_FORV_8_.us1) == 1 then
            costVehiclesExport = costVehiclesExport + 25000
          end
          if tonumber(_FORV_8_.us2) == 1 then
            costVehiclesExport = costVehiclesExport + 32000
          end
          if tonumber(_FORV_8_.us3) == 1 then
            costVehiclesExport = costVehiclesExport + 36000
          end
          if tonumber(_FORV_8_.turbo) == 1 then
            costVehiclesExport = costVehiclesExport + 37000
          end
          if tonumber(_FORV_8_.trakcja) == 1 then
            costVehiclesExport = costVehiclesExport + 20000
          end
          if tonumber(_FORV_8_.silnik) == 1 then
            costVehiclesExport = costVehiclesExport + 70000
          end
          if tonumber(_FORV_8_.gwint) == 1 then
            costVehiclesExport = costVehiclesExport + 20000
          end
        end
      end
    end
    if windows.upgradesComputer == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(windowPos1.x + 685 / zoom, windowPos1.y + 95 / zoom + 97 / zoom * (xY - 1), 150 / zoom, 50 / zoom) and (_FORV_6_.status == "0" or _FORV_6_.status == 0) then
          triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "upgrade", localPlayer, _FORV_6_.nameDatabase, _FORV_6_.price, getElementData(localPlayer, "player:sid"))
        end
      end
    end
    if isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 85 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
      windows.vehiclesComputer = true
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.mapComputer = false
      windows.logsComputer = false
      windows.settingsComputer = false
      for _FORV_7_, _FORV_8_ in ipairs(table_vehicle_client) do
        if 0 + 1 > 3 then
        end
        vehicle3D[_FORV_8_[1]] = createVehicle(getElementModel(_FORV_8_[2]), 0, 0, 0)
        setElementCollisionsEnabled(vehicle3D[_FORV_8_[1]], false)
        myObject[_FORV_8_[1]] = exports.ST_object_preview:createObjectPreview(vehicle3D[_FORV_8_[1]], -5, 0, 140, windowPos1.x + 261 / zoom * (1 - 1) + 115 / zoom, windowPos1.y + 243 / zoom * (1 + 1 - 1) + 95 / zoom, 195 / zoom, 195 / zoom, false, true)
        setVehicleColor(vehicle3D[_FORV_8_[1]], getVehicleColor(_FORV_8_[2]))
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 145 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_info_organization) do
        upgrades = {
          {
            name = "Teleportacja",
            description = "Po oddaniu pojazdu dostajesz mo\197\188liwo\197\155\196\135\nteleportacji do magazynu",
            price = 3000000,
            icon = textures.condition_icon,
            status = _FORV_7_.ulepszenieIE_teleportacja,
            nameDatabase = "ulepszenieIE_teleportacja"
          }
        }
      end
      windows.vehiclesComputer = false
      windows.upgradesComputer = true
      windows.rankingComputer = false
      windows.mapComputer = false
      windows.logsComputer = false
      windows.settingsComputer = false
      for _FORV_6_, _FORV_7_ in pairs(vehicle3D) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      for _FORV_6_, _FORV_7_ in pairs(myObject) do
        if isElement(_FORV_7_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_7_)
        end
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 205 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      windows.vehiclesComputer = false
      windows.upgradesComputer = false
      windows.rankingComputer = true
      windows.mapComputer = false
      windows.logsComputer = false
      windows.settingsComputer = false
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "rankingComputer", localPlayer, getElementData(localPlayer, "player:organization"))
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 265 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      kupilMape = false
      windows.vehiclesComputer = false
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.logsComputer = false
      windows.mapComputer = true
      windows.settingsComputer = false
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
    elseif isMouseIn(windowPos1.x + 385 / zoom, windowPos1.y + 340 / zoom, 150 / zoom, 50 / zoom) and windows.mapComputer == true then
      if kupilMape == false then
        triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "buyMap", localPlayer, 200000)
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 325 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      windows.vehiclesComputer = false
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.logsComputer = true
      windows.mapComputer = false
      windows.settingsComputer = false
      showLogsIE_table = {}
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showLogsIE", localPlayer)
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 385 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      selectInfoUsers_table = {}
      windows.vehiclesComputer = false
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.logsComputer = false
      windows.mapComputer = false
      windows.settingsComputer = true
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "showInfoUsers", localPlayer, getElementData(localPlayer, "player:sid"))
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
    elseif isMouseIn(windowPos1.x + 170 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom) and windows.settingsComputer == true then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "selectTypeMoneyIE", localPlayer, getElementData(localPlayer, "player:sid"), 0)
    elseif isMouseIn(windowPos1.x + 400 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom) and windows.settingsComputer == true then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "selectTypeMoneyIE", localPlayer, getElementData(localPlayer, "player:sid"), 1)
    elseif isMouseIn(windowPos1.x + 630 / zoom, windowPos1.y + 355 / zoom, 150 / zoom, 50 / zoom) and windows.settingsComputer == true then
      triggerServerEvent("evEwenciks_jasgfdhkhg", resourceRoot, "selectTypeMoneyIE", localPlayer, getElementData(localPlayer, "player:sid"), 50)
    elseif isMouseIn(windowPos1.x + 29 / zoom, windowPos1.y + 490 / zoom, 50 / zoom, 50 / zoom) and windows.backgroundComputer == true then
      removeEventHandler("onClientRender", root, window)
      windows.backgroundComputer = false
      windows.vehiclesComputer = false
      windows.upgradesComputer = false
      windows.rankingComputer = false
      windows.mapComputer = false
      windows.logsComputer = false
      windows.settingsComputer = false
      showCursor(false)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      for _FORV_5_, _FORV_6_ in pairs(vehicle3D) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      for _FORV_5_, _FORV_6_ in pairs(myObject) do
        if isElement(_FORV_6_) then
          exports.ST_object_preview:destroyObjectPreview(_FORV_6_)
        end
      end
    end
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.logsComputer == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.logsComputer == true then
    scrollDown()
  end
end)
function scrollDown()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp()
  if _UPVALUE0_ >= #showLogsIE_table then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
function renderRanking(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  if not shaderRanking then
    shaderRanking = dxCreateShader(":ST_ranking1/img/shader.fx")
  end
  if not rtRanking then
    rtRanking = dxCreateRenderTarget(750, 450, true)
  end
  dxSetRenderTarget(rtRanking, true)
  dxDrawRectangle(0, 0, 750, 450, tocolor(25, 25, 25, 255))
  dxDrawRectangle(40, 35, 680, 2, tocolor(255, 178, 0, 255))
  dxDrawText("NAJLEPSZE ORGANIZACJE #ffb200IMPORT / EXPORT", 700, 5, 50, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font18"), "center", "top", false, false, false, true, false)
  if _ARG_0_ then
    for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
      if _FORV_4_ <= 10 then
        dxDrawRoundedRectangle(60, 62 + 40 * (_FORV_4_ - 1), 665, 18, 5, tocolor(45, 45, 45, 255), 2)
        if _FORV_4_ == 1 then
          r, g, b = 255, 178, 0
          rt, gt, bt = 255, 178, 0
        elseif _FORV_4_ == 2 then
          r, g, b = 169, 166, 172
          rt, gt, bt = 169, 166, 172
        elseif _FORV_4_ == 3 then
          r, g, b = 185, 139, 95
          rt, gt, bt = 185, 139, 95
        else
          r, g, b = 70, 70, 70
          rt, gt, bt = 150, 150, 150
        end
        lastY = _FORV_5_[3] / _FORV_5_[5] * 630 + 15
        dxDrawRoundedRectangle(60, 62 + 40 * (_FORV_4_ - 1), 20 + lastY, 18, 5, tocolor(r, g, b, 255), 2)
        dxDrawText(_FORV_4_, 25, 55 + 40 * (_FORV_4_ - 1), 50, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("font18"), "right", "top", false, false, false, true, false)
        dxDrawText(_FORV_5_[2], 65, 40 + 40 * (_FORV_4_ - 1), 125, 2, tocolor(rt, gt, bt), 1, exports.ST_gui:getGUIFont("normal14"), "left", "top", false, false, false, true, false)
        dxDrawText(_FORV_5_[3] .. " EXP", 50, 61 + 40 * (_FORV_4_ - 1), 720, 2, tocolor(255, 255, 255), 1, exports.ST_gui:getGUIFont("font13"), "right", "top", false, false, false, true, false)
      end
    end
  end
  dxSetRenderTarget()
  dxSetShaderValue(shaderRanking, "gTexture", rtRanking)
  if obiectRanking and isElement(obiectRanking) then
    engineApplyShaderToWorldTexture(shaderRanking, "nf_blackbrd", obiectRanking)
  end
end
getResourceName(getThisResource(), true, 293046067)
return
