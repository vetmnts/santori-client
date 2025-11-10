screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 500 / zoom / 2,
  y = screenH / 2 - 530 / zoom / 2,
  w = 500 / zoom,
  h = 530 / zoom
}
mapPos = {
  x = math.floor(0 / zoom),
  y = math.floor(0 / zoom),
  w = screenW,
  h = screenH
}
buttonsPos1 = {
  x = 0,
  y = 0,
  w = 274 / zoom,
  h = 39 / zoom
}
buttonsPos = {
  x = math.floor(screenW / 2 + 80 / zoom / 2),
  y = math.floor(screenH / 2 + 70 / zoom / 2),
  w = math.floor(250 / zoom),
  h = math.floor(250 / zoom)
}
LOAD = {}
LOAD.alpha = 0
table_users = {}
windows = {
  main = false,
  loading = false,
  background = false,
  settings = false,
  pinEnter = false
}
animations = {
  background_y = -250,
  alphaALL = 0,
  alpha230 = 0
}
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _ARG_2_ >= mapPos.x and _ARG_2_ <= mapPos.x + mapPos.w and _ARG_3_ >= mapPos.y and _ARG_3_ <= mapPos.y + mapPos.h then
      _UPVALUE0_ = _ARG_2_ * _UPVALUE1_ + _UPVALUE2_
      _UPVALUE3_ = _ARG_3_ * _UPVALUE1_ - _UPVALUE4_
      _UPVALUE5_ = true
      _UPVALUE6_ = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
    _UPVALUE5_ = false
  end
end
function scrollBigMap(_ARG_0_)
  if _ARG_0_ == "mouse_wheel_down" then
    _UPVALUE0_ = math.min(_UPVALUE0_ + 0.3, 3.2)
  elseif _ARG_0_ == "mouse_wheel_up" then
    _UPVALUE0_ = math.max(0.5, _UPVALUE0_ - 0.3)
  end
end
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(mapPos.x + mapPos.w / 2 - (_UPVALUE0_ - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.x + mapPos.w / 2 + (_ARG_0_ - _UPVALUE0_) / _UPVALUE1_ * _UPVALUE2_, mapPos.x + mapPos.w / 2)), (math.max(mapPos.y + mapPos.h / 2 - (_ARG_1_ - _UPVALUE3_) / _UPVALUE1_ * _UPVALUE2_, math.min(mapPos.y + mapPos.h / 2 + (_UPVALUE3_ - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, mapPos.y + mapPos.h / 2)))
end
function window()
  if windows.background == true and getSoundFFTData(music, 2048, 1024) then
    for _FORV_4_ = 0, 1 do
      if not tonumber(math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_4_] or 1) * 100) or math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_4_] or 1) * 100 ~= math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_4_] or 1) * 100 then
      end
      dxDrawImage(windowPos.x + 158.5 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, 30 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, 180 / zoom + math.max(0, math.min(1, 20)) / zoom, 180 / zoom + math.max(0, math.min(1, 20)) / zoom, textures.logo, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
  if windows.main == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(windowPos.x - 2 / zoom, animations.background_y - 2 / zoom, windowPos.w + 4 / zoom, windowPos.h + 4 / zoom, 30 / zoom, tocolor(255, 187, 0, animations.alpha255), false)
    dxDrawImageSection(windowPos.x, animations.background_y, windowPos.w, windowPos.h, windowPos.x, animations.background_y, windowPos.w, windowPos.h, blurShader)
    dxDrawRoundedRectangle(windowPos.x, animations.background_y, windowPos.w, windowPos.h, 30 / zoom, tocolor(20, 20, 20, 170))
    if #table_users == 0 then
      dxDrawText("Nie posiadasz \197\188adnego konta na tym komputerze\n\nZmienia\197\130e\197\155/a\197\155 komputer, jeden z podzespo\197\130\195\179w\n twojego komputera lub po prostu\nprzeinstalowa\197\130e\197\155/a\197\155 system?\n\nNapisz apelacj\196\153 o odblokowanie konta\n na naszym forum\na na pewno ci pomo\197\188emy!", windowPos.x + 136 / zoom, windowPos.y + 111 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffa200Nie posiadasz \197\188adnego konta na tym komputerze\n\n#ffffffZmienia\197\130e\197\155/a\197\155 komputer, jeden z podzespo\197\130\195\179w\n twojego komputera lub po prostu\nprzeinstalowa\197\130e\197\155/a\197\155 system?\n\nNapisz apelacj\196\153 o odblokowanie konta\n na naszym forum\na na pewno ci pomo\197\188emy!", windowPos.x + 135 / zoom, windowPos.y + 110 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, true, false)
      if isMouseIn(windowPos.x + 125 / zoom, windowPos.y + 313 / zoom, windowPos.w - 250 / zoom, 50 / zoom) then
        dxDrawRoundedRectangle(windowPos.x + 125 / zoom, windowPos.y + 313 / zoom, windowPos.w - 250 / zoom, 50 / zoom, 20 / zoom, tocolor(29, 39, 89, animations.alphaALL))
        dxDrawImage(windowPos.x + 136 / zoom, windowPos.y + 321 / zoom, 35 / zoom, 35 / zoom, textures.discord_icon, 0, 0, 0, tocolor(200, 200, 200, animations.alphaALL), false)
        dxDrawText("Zaloguj przez discord", windowPos.x + 178 / zoom, windowPos.y + 476 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(170, 170, 170, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(windowPos.x + 125 / zoom, windowPos.y + 313 / zoom, windowPos.w - 250 / zoom, 50 / zoom, 20 / zoom, tocolor(37, 49, 110, animations.alphaALL))
        dxDrawImage(windowPos.x + 136 / zoom, windowPos.y + 321 / zoom, 35 / zoom, 35 / zoom, textures.discord_icon, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText("Zaloguj przez discord", windowPos.x + 178 / zoom, windowPos.y + 476 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, true, false)
      end
      if isMouseIn(windowPos.x + 80 / zoom, windowPos.y + 385 / zoom, 330 / zoom, 80 / zoom) then
        dxDrawText("Nie gra\197\130e\197\155 jeszcze u nas?\n#bf7a00Zarejestruj si\196\153!", windowPos.x + 135 / zoom, windowPos.y + 650 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(150, 150, 150, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light22"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("Nie gra\197\130e\197\155 jeszcze u nas?\n#ffa200Zarejestruj si\196\153!", windowPos.x + 135 / zoom, windowPos.y + 650 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light22"), "center", "center", false, false, false, true, false)
      end
    end
    for _FORV_7_, _FORV_8_ in ipairs(table_users) do
      if _FORV_7_ == 1 then
        dxDrawRoundedRectangle(windowPos.x + 90 / zoom, animations.background_y + 180 / zoom, windowPos.w - 180 / zoom, 45 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
        dxDrawRoundedRectangle(windowPos.x + 90 / zoom, animations.background_y + 235 / zoom, windowPos.w - 180 / zoom, 45 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
        dxDrawRoundedRectangle(windowPos.x + 90 / zoom, animations.background_y + 290 / zoom, windowPos.w - 180 / zoom, 45 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
        dxDrawRoundedRectangle(windowPos.x + 90 / zoom, animations.background_y + 345 / zoom, windowPos.w - 180 / zoom, 45 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
        if getSoundFFTData(music, 2048, 1024) then
          for _FORV_13_ = 0, 1 do
            if not tonumber(math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_13_] or 1) * 7) or math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_13_] or 1) * 7 ~= math.sqrt(getSoundFFTData(music, 2048, 1024)[_FORV_13_] or 1) * 7 then
            end
            dxDrawCircle(windowPos.x + 250 / zoom - math.max(0, math.min(1, 20)) / zoom, windowPos.y - 5 / zoom - math.max(0, math.min(1, 20)) / zoom, 73 / zoom, 0, 360, tocolor(30, 30, 30, animations.alphaALL))
            if animations.alphaALL > 80 then
              exports.ST_avatars:dxCreateAvatar(windowPos.x + 174 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, windowPos.y - 80 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, 150 / zoom + math.max(0, math.min(1, 20)) / zoom, 150 / zoom + math.max(0, math.min(1, 20)) / zoom)
            end
            dxDrawImage(windowPos.x + 172.5 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, windowPos.y - 81.5 / zoom - math.max(0, math.min(1, 20)) / 2 / zoom, 153 / zoom + math.max(0, math.min(1, 20)) / zoom, 153 / zoom + math.max(0, math.min(1, 20)) / zoom, textures.circle, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
          end
        end
        dxDrawText(_FORV_8_.login, windowPos.x + 137 / zoom, windowPos.y + 12 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal26"), "center", "center", false, false, false, true, false)
        dxDrawText(_FORV_8_.color_nickName .. "" .. _FORV_8_.login, windowPos.x + 135 / zoom, windowPos.y + 10 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal26"), "center", "center", false, false, false, true, false)
        dxDrawText("UID: " .. _FORV_8_.id .. "", windowPos.x + 137 / zoom, windowPos.y + 92 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, false, false)
        dxDrawText("UID: " .. _FORV_8_.id .. "", windowPos.x + 135 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal16"), "center", "center", false, false, false, false, false)
        dxDrawText("$", windowPos.x + 115 / zoom, windowPos.y + 210 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("bold22"), "left", "center", false, false, false, true, false)
        dxDrawText("$", windowPos.x + 113 / zoom, windowPos.y + 208 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("bold22"), "left", "center", false, false, false, true, false)
        dxDrawText("" .. przecinek(_FORV_8_.money + _FORV_8_.bank_money) .. " PLN", windowPos.x + 167 / zoom, windowPos.y + 207 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, true, false)
        dxDrawText("#009411" .. przecinek(_FORV_8_.money + _FORV_8_.bank_money) .. " #ffffffPLN", windowPos.x + 165 / zoom, windowPos.y + 205 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, true, false)
        dxDrawImage(windowPos.x + 101 / zoom, windowPos.y + 236 / zoom, 45 / zoom, 45 / zoom, textures.date, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText(_FORV_8_.registered, windowPos.x + 167 / zoom, windowPos.y + 317 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.registered, windowPos.x + 165 / zoom, windowPos.y + 315 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 100 / zoom, windowPos.y + 287.5 / zoom, 50 / zoom, 50 / zoom, textures.email, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText(maskEmail(_FORV_8_.email), windowPos.x + 167 / zoom, windowPos.y + 425 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawText(maskEmail(_FORV_8_.email), windowPos.x + 165 / zoom, windowPos.y + 423 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawImage(windowPos.x + 102 / zoom, windowPos.y + 345.5 / zoom, 45 / zoom, 45 / zoom, textures.time, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText(secondsToClock(60 * _FORV_8_.hours):gsub("#%x%x%x%x%x%x", ""), windowPos.x + 167 / zoom, windowPos.y + 535 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawText(secondsToClock(60 * _FORV_8_.hours), windowPos.x + 165 / zoom, windowPos.y + 533 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, true, false)
        if discord_connected then
          dxDrawText("Konto po\197\130\196\133czone z discordem", windowPos.x + 135 / zoom, windowPos.y + 780 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, false, false)
        else
          dxDrawText("Konto nie jest po\197\130\196\133czone z discordem", windowPos.x + 135 / zoom, windowPos.y + 780 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, false, false)
        end
        if isMouseIn(windowPos.x + 222 / zoom, windowPos.y + 410 / zoom, 50 / zoom, 50 / zoom) then
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = screenW * cxs, screenH * cys
            dxDrawText("Wejd\197\186 do gry", cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
            dxDrawText("Wejd\197\186 do gry", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, true, false, false)
          end
          dxDrawImage(windowPos.x + 222 / zoom, windowPos.y + 410 / zoom, 50 / zoom, 50 / zoom, textures.login, 0, 0, 0, tocolor(200, 200, 200, animations.alphaALL), false)
        else
          dxDrawImage(windowPos.x + 222 / zoom, windowPos.y + 410 / zoom, 50 / zoom, 50 / zoom, textures.login, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        end
      end
    end
    for _FORV_9_, _FORV_10_ in ipairs((getElementsByType("player"))) do
      table.insert({}, _FORV_10_)
    end
    dxDrawText("" .. #{} .. " graczy online", windowPos.x + 137 / zoom, windowPos.y + 914 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffa200" .. #{} .. " #ffffffgraczy #00eb00online", windowPos.x + 135 / zoom, windowPos.y + 912 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    if players24 then
      dxDrawText("" .. players24 .. " graczy online w ci\196\133gu 24h", windowPos.x + 137 / zoom, windowPos.y + 992 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffa200" .. players24 .. " #ffffffgraczy #00eb00online #ffffffw ci\196\133gu #ffa20024h", windowPos.x + 135 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    end
    dxDrawText("Teraz odtwarzane:\n" .. _UPVALUE0_, windowPos.x + 2 / zoom, windowPos.y + windowPos.h + 250 / zoom + 2 / zoom, windowPos.x + windowPos.w, windowPos.y + windowPos.h + 250 / zoom + 25 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "top", false, false, false, false, false)
    dxDrawText("Teraz odtwarzane:\n" .. _UPVALUE0_, windowPos.x, windowPos.y + windowPos.h + 250 / zoom, windowPos.x + windowPos.w, windowPos.y + windowPos.h + 250 / zoom + 25 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "top", false, false, false, false, false)
    for _FORV_18_ = 0, 4 - 1 do
      dxDrawRectangle(windowPos.x + windowPos.w / 2 - (4 * (20 / zoom) + (4 - 1) * (5 / zoom)) / 2 - 4 / zoom + _FORV_18_ * (20 / zoom + 5 / zoom), windowPos.y + windowPos.h + 250 / zoom - 60 / zoom + (50 / zoom - math.min(50 / zoom, math.sqrt((getSoundFFTData(music, 2048, 1024) or {})[_FORV_18_ * 4] or 0) * (50 / zoom) * 3)), 20 / zoom, math.min(50 / zoom, math.sqrt((getSoundFFTData(music, 2048, 1024) or {})[_FORV_18_ * 4] or 0) * (50 / zoom) * 3), tocolor(255, 187, 0, animations.alphaALL))
    end
  end
  if windows.settings == true then
    dxDrawImage(windowPos.x, animations.background_y, windowPos.w, windowPos.h, textures.background, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawText("USTAWIENIA", windowPos.x + math.floor(189 / zoom), windowPos.y - 38 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal21"), "center", "center", false, false, false, false, false)
    dxDrawText("USTAWIENIA", windowPos.x + math.floor(187 / zoom), windowPos.y - 40 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal21"), "center", "center", false, false, false, false, false)
    dxDrawText("Poka\197\188 liczb\196\153 logowa\197\132", windowPos.x + math.floor(57 / zoom), windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_users) do
      if _FORV_8_.settings_numbers_login == 1 then
        dxDrawImage(windowPos.x + 465 / zoom, windowPos.y + 126 / zoom, 35 / zoom, 35 / zoom, textures.check, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
      else
        dxDrawImage(windowPos.x + 465 / zoom, windowPos.y + 126 / zoom, 35 / zoom, 35 / zoom, textures.check_off, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
      end
      if _FORV_8_.settings_numbers_vehicles == 1 then
        dxDrawImage(windowPos.x + 465 / zoom, windowPos.y + 166 / zoom, 35 / zoom, 35 / zoom, textures.check, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
      else
        dxDrawImage(windowPos.x + 465 / zoom, windowPos.y + 166 / zoom, 35 / zoom, 35 / zoom, textures.check_off, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
      end
    end
    dxDrawText("Poka\197\188 liczb\196\153 pojazd\195\179w", windowPos.x + math.floor(57 / zoom), windowPos.y + 160 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
    if isMouseIn(windowPos.x + 230 / zoom, windowPos.y + 500 / zoom, 80 / zoom, 80 / zoom) then
      dxDrawImage(windowPos.x + 230 / zoom, windowPos.y + 500 / zoom, 80 / zoom, 80 / zoom, textures.back_arrow, 0, 0, 0, tocolor(204, 150, 0, animations.alphaALL))
    else
      dxDrawImage(windowPos.x + 230 / zoom, windowPos.y + 500 / zoom, 80 / zoom, 80 / zoom, textures.back_arrow, 0, 0, 0, tocolor(252, 186, 3, animations.alphaALL))
    end
    dxDrawText("#ffbc00WY\197\129\196\132CZENIE TYCH OPCJI MO\197\187E SKR\195\147CI\196\134 CZAS\n \197\129ADOWANIA TWOJEGO KONTA", windowPos.x + math.floor(187 / zoom), windowPos.y + 300 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, true, false)
  end
  if windows.loading == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(windowPos.x - 2 / zoom, animations.background_y - 2 / zoom, windowPos.w + 4 / zoom, windowPos.h + 4 / zoom, 30 / zoom, tocolor(255, 187, 0, animations.alpha255), false)
    dxDrawImageSection(windowPos.x, animations.background_y, windowPos.w, windowPos.h, windowPos.x, animations.background_y, windowPos.w, windowPos.h, blurShader)
    dxDrawRoundedRectangle(windowPos.x, animations.background_y, windowPos.w, windowPos.h, 30 / zoom, tocolor(20, 20, 20, 170))
    for _FORV_7_, _FORV_8_ in ipairs(table_users) do
      if _FORV_7_ == 1 then
        dxDrawCircle(windowPos.x + 250 / zoom, windowPos.y - 5 / zoom, 73 / zoom, 0, 360, tocolor(30, 30, 30, animations.alphaALL))
        if animations.alphaALL > 80 then
          exports.ST_avatars:dxCreateAvatar(windowPos.x + 174 / zoom, windowPos.y - 80 / zoom, 150 / zoom, 150 / zoom)
        end
        dxDrawImage(windowPos.x + 172.5 / zoom, windowPos.y - 81.5 / zoom, 153 / zoom, 153 / zoom, textures.circle, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText(_FORV_8_.color_nickName .. "" .. _FORV_8_.login, windowPos.x + 135 / zoom, windowPos.y + 10 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light26"), "center", "center", false, false, false, true, false)
        dxDrawText("UID: " .. _FORV_8_.id .. "", windowPos.x + 135 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, false, false)
      end
    end
    dxDrawImage(windowPos.x + 183 / zoom, windowPos.y + 190 / zoom, 130 / zoom, 130 / zoom, textures.loading, math.cos((interpolateBetween(-9, 0, 0, 0, 0, 0, (getTickCount() - tick) / 6500, "SineCurve"))) * 250, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
    dxDrawText(textLoading, windowPos.x + 135 / zoom, windowPos.y + 560 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    for _FORV_11_, _FORV_12_ in ipairs((getElementsByType("player"))) do
      table.insert({}, _FORV_12_)
    end
    dxDrawText("" .. #{} .. " graczy online", windowPos.x + 137 / zoom, windowPos.y + 914 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffa200" .. #{} .. " #ffffffgraczy #00eb00online", windowPos.x + 135 / zoom, windowPos.y + 912 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    if players24 then
      dxDrawText("" .. players24 .. " graczy online w ci\196\133gu 24h", windowPos.x + 137 / zoom, windowPos.y + 992 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffa200" .. players24 .. " #ffffffgraczy #00eb00online #ffffffw ci\196\133gu #ffa20024h", windowPos.x + 135 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.spawn == true then
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and _UPVALUE1_ then
      if not cursorX then
      else
      end
      _UPVALUE2_ = -(cursorX * screenW * _UPVALUE3_ - _UPVALUE4_)
      _UPVALUE5_ = cursorY * screenH * _UPVALUE3_ - _UPVALUE6_
      _UPVALUE2_ = math.max(-4000, math.min(4000, _UPVALUE2_))
      _UPVALUE5_ = math.max(-4000, math.min(4000, _UPVALUE5_))
    end
    dxDrawRectangle(0, 0, screenW, screenH, tocolor(10, 10, 10, 255))
    dxDrawImageSection(mapPos.x, mapPos.y, mapPos.w, mapPos.h, (4000 + _UPVALUE2_) * _UPVALUE7_ - mapPos.w / 2 * _UPVALUE3_, (4000 - _UPVALUE5_) * _UPVALUE7_ - mapPos.h / 2 * _UPVALUE3_, mapPos.w * _UPVALUE3_, mapPos.h * _UPVALUE3_, textures.map, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL))
    xY = 0
    for _FORV_13_, _FORV_14_ in ipairs(blips) do
      xY = xY + 1
      if isMouseIn(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(mapPos.y + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(38 / zoom), math.floor(38 / zoom), buttonsPos.h - math.floor(50 / zoom)) or isMouseIn(buttonsPos1.x + 28 / zoom, 28 / zoom + 75 / zoom * (xY - 1), 234 / zoom, 59 / zoom) then
        if _FORV_14_.dziala == true then
          dxDrawImage(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(mapPos.y + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(38 / zoom), math.floor(38 / zoom), textures.location_icon, 0, 0, 0, tocolor(255, 191, 0, animations.alphaALL))
        end
        dxDrawRoundedRectangle(buttonsPos1.x + 28 / zoom, 28 / zoom + 75 / zoom * (xY - 1), 234 / zoom, 59 / zoom, 15 / zoom, tocolor(255, 191, 0, animations.alphaALL), false)
        dxDrawRoundedRectangle(buttonsPos1.x + 30 / zoom, 30 / zoom + 75 / zoom * (xY - 1), 230 / zoom, 55 / zoom, 15 / zoom, tocolor(25, 25, 25, animations.alphaALL), false)
        dxDrawText(_FORV_14_.city, buttonsPos1.x + 45 / zoom, buttonsPos1.y - 105 / zoom + 150 / zoom * (xY - 1), buttonsPos1.x + 662 / zoom, buttonsPos1.y + 204 / zoom, tocolor(200, 200, 200, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbf00" .. getZoneName(_FORV_14_.pos[1], _FORV_14_.pos[2], _FORV_14_.pos[3], true) .. "#ffffff, #ffbf00" .. getZoneName(_FORV_14_.pos[1], _FORV_14_.pos[2], _FORV_14_.pos[3], false), buttonsPos1.x + 50 / zoom, buttonsPos1.y - 62 / zoom + 150 / zoom * (xY - 1), buttonsPos1.x + 662 / zoom, buttonsPos1.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(buttonsPos1.x + 37 / zoom, 45 / zoom + 75 / zoom * (xY - 1), 2 / zoom, 26 / zoom, tocolor(60, 60, 60, animations.alphaALL), false)
        dxDrawRectangle(buttonsPos1.x + 37 / zoom, 71 / zoom + 75 / zoom * (xY - 1), 10 / zoom, 2 / zoom, tocolor(60, 60, 60, animations.alphaALL), false)
      else
        if _FORV_14_.dziala == true then
          dxDrawImage(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(mapPos.y + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_14_.pos[1], _FORV_14_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(38 / zoom), math.floor(38 / zoom), textures.location_icon, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL))
        end
        dxDrawRoundedRectangle(buttonsPos1.x + 28 / zoom, 28 / zoom + 75 / zoom * (xY - 1), 234 / zoom, 59 / zoom, 15 / zoom, tocolor(60, 60, 60, animations.alphaALL), false)
        dxDrawRoundedRectangle(buttonsPos1.x + 30 / zoom, 30 / zoom + 75 / zoom * (xY - 1), 230 / zoom, 55 / zoom, 15 / zoom, tocolor(25, 25, 25, animations.alphaALL), false)
        dxDrawText(_FORV_14_.city, buttonsPos1.x + 45 / zoom, buttonsPos1.y - 105 / zoom + 150 / zoom * (xY - 1), buttonsPos1.x + 662 / zoom, buttonsPos1.y + 204 / zoom, tocolor(200, 200, 200, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawText("#ffbf00" .. getZoneName(_FORV_14_.pos[1], _FORV_14_.pos[2], _FORV_14_.pos[3], true) .. "#ffffff, #ffbf00" .. getZoneName(_FORV_14_.pos[1], _FORV_14_.pos[2], _FORV_14_.pos[3], false), buttonsPos1.x + 50 / zoom, buttonsPos1.y - 62 / zoom + 150 / zoom * (xY - 1), buttonsPos1.x + 662 / zoom, buttonsPos1.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal11"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(buttonsPos1.x + 37 / zoom, 45 / zoom + 75 / zoom * (xY - 1), 2 / zoom, 26 / zoom, tocolor(60, 60, 60, animations.alphaALL), false)
        dxDrawRectangle(buttonsPos1.x + 37 / zoom, 71 / zoom + 75 / zoom * (xY - 1), 10 / zoom, 2 / zoom, tocolor(60, 60, 60, animations.alphaALL), false)
      end
    end
  end
  if windows.register == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(windowPos.x - 2 / zoom, animations.background_y - 2 / zoom, windowPos.w + 4 / zoom, windowPos.h + 4 / zoom, 30 / zoom, tocolor(255, 187, 0, animations.alpha255), false)
    dxDrawImageSection(windowPos.x, animations.background_y, windowPos.w, windowPos.h, windowPos.x, animations.background_y, windowPos.w, windowPos.h, blurShader)
    dxDrawRoundedRectangle(windowPos.x, animations.background_y, windowPos.w, windowPos.h, 30 / zoom, tocolor(20, 20, 20, 170))
    dxDrawText("REJESTRACJA", windowPos.x + 138 / zoom, windowPos.y - 48 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, false, false)
    dxDrawText("REJESTRACJA", windowPos.x + 135 / zoom, windowPos.y - 50 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 150 / zoom, 450 / zoom, 50 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
    dxDrawRoundedRectangle(windowPos.x + 25 / zoom, windowPos.y + 260 / zoom, 450 / zoom, 50 / zoom, 15 / zoom, tocolor(255, 255, 255, 40))
    exports.ST_buttons:dxCreateButton("Zarejestruj", windowPos.x + 150 / zoom, windowPos.y + 370 / zoom, 200 / zoom, 60 / zoom, animations.alphaALL, 1)
    for _FORV_9_, _FORV_10_ in ipairs((getElementsByType("player"))) do
      table.insert({}, _FORV_10_)
    end
    dxDrawText("" .. #{} .. " graczy online", windowPos.x + 137 / zoom, windowPos.y + 914 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffa200" .. #{} .. " #ffffffgraczy #00eb00online", windowPos.x + 135 / zoom, windowPos.y + 912 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    if players24 then
      dxDrawText("" .. players24 .. " graczy online w ci\196\133gu 24h", windowPos.x + 137 / zoom, windowPos.y + 992 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffa200" .. players24 .. " #ffffffgraczy #00eb00online #ffffffw ci\196\133gu #ffa20024h", windowPos.x + 135 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    end
  end
  if windows.ban == true then
    dxDrawText("ZOSTA\197\129E\197\154 ZBANOWANY/A", windowPos.x + 189 / zoom, windowPos.y + 182 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("ZOSTA\197\129E\197\154 ZBANOWANY/A", windowPos.x + 187 / zoom, windowPos.y + 180 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    dxDrawText("Pow\195\179d: " .. getElementData(localPlayer, "ban:reason") .. [[

Nadawca: ]] .. getElementData(localPlayer, "ban:playerbannedby") .. [[

Ban do: ]] .. getElementData(localPlayer, "ban:date") .. "", windowPos.x + 189 / zoom, windowPos.y + 352 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, false, false)
    dxDrawText("Pow\195\179d: " .. getElementData(localPlayer, "ban:reason") .. [[

Nadawca: ]] .. getElementData(localPlayer, "ban:playerbannedby") .. [[

Ban do: ]] .. getElementData(localPlayer, "ban:date") .. "", windowPos.x + 187 / zoom, windowPos.y + 350 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "center", "center", false, false, false, false, false)
  end
  if windows.pinEnter == true then
    dxUpdateScreenSource(screenSource, true)
    dxSetShaderValue(blurShader, "screenSource", screenSource)
    dxDrawRoundedRectangle(windowPos.x - 2 / zoom, animations.background_y - 2 / zoom, windowPos.w + 4 / zoom, windowPos.h + 4 / zoom, 30 / zoom, tocolor(255, 187, 0, animations.alpha255), false)
    dxDrawImageSection(windowPos.x, animations.background_y, windowPos.w, windowPos.h, windowPos.x, animations.background_y, windowPos.w, windowPos.h, blurShader)
    dxDrawRoundedRectangle(windowPos.x, animations.background_y, windowPos.w, windowPos.h, 30 / zoom, tocolor(20, 20, 20, 170))
    for _FORV_7_, _FORV_8_ in ipairs(table_users) do
      if _FORV_7_ == 1 then
        dxDrawCircle(windowPos.x + 250 / zoom, windowPos.y - 5 / zoom, 73 / zoom, 0, 360, tocolor(30, 30, 30, animations.alphaALL))
        if animations.alphaALL > 80 then
          exports.ST_avatars:dxCreateAvatar(windowPos.x + 174 / zoom, windowPos.y - 80 / zoom, 150 / zoom, 150 / zoom)
        end
        dxDrawImage(windowPos.x + 172.5 / zoom, windowPos.y - 81.5 / zoom, 153 / zoom, 153 / zoom, textures.circle, 0, 0, 0, tocolor(255, 255, 255, animations.alphaALL), false)
        dxDrawText(_FORV_8_.color_nickName .. "" .. _FORV_8_.login, windowPos.x + 135 / zoom, windowPos.y + 10 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light26"), "center", "center", false, false, false, true, false)
        dxDrawText("UID: " .. _FORV_8_.id .. "", windowPos.x + 135 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light17"), "center", "center", false, false, false, false, false)
      end
    end
    dxDrawText("WPROWAD\197\185 PIN", windowPos.x + 135 / zoom, windowPos.y + 250 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    xX = 0
    for _FORV_7_, _FORV_8_ in ipairs(table_pinLogging) do
      xX = xX + 1
      if settings_pinLoggingNext == _FORV_7_ then
        dxDrawRoundedRectangle(windowPos.x + 108 / zoom + 60 / zoom * (xX - 1), windowPos.y + 255.5 / zoom, 49 / zoom, 49 / zoom, 15 / zoom, tocolor(255, 191, 0, animations.alphaALL))
      end
      dxDrawRoundedRectangle(windowPos.x + 110 / zoom + 60 / zoom * (xX - 1), windowPos.y + 257.5 / zoom, 45 / zoom, 45 / zoom, 15 / zoom, tocolor(40, 40, 40, animations.alphaALL))
      enteredPin1 = enteredPin .. tostring(num)
      if _FORV_7_ < #enteredPin1 - 2 then
        dxDrawText("*", windowPos.x + 126 / zoom + 60 / zoom * (xX - 1), windowPos.y + 374 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center")
      end
    end
    if discord_connected then
      dxDrawText("Konto po\197\130\196\133czone z discordem", windowPos.x + 135 / zoom, windowPos.y + 780 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, false, false)
    else
      dxDrawText("Konto nie jest po\197\130\196\133czone z discordem", windowPos.x + 135 / zoom, windowPos.y + 780 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("light15"), "center", "center", false, false, false, false, false)
    end
    for _FORV_9_, _FORV_10_ in ipairs((getElementsByType("player"))) do
      table.insert({}, _FORV_10_)
    end
    dxDrawText("" .. #{} .. " graczy online", windowPos.x + 137 / zoom, windowPos.y + 914 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    dxDrawText("#ffa200" .. #{} .. " #ffffffgraczy #00eb00online", windowPos.x + 135 / zoom, windowPos.y + 912 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    if players24 then
      dxDrawText("" .. players24 .. " graczy online w ci\196\133gu 24h", windowPos.x + 137 / zoom, windowPos.y + 992 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
      dxDrawText("#ffa200" .. players24 .. " #ffffffgraczy #00eb00online #ffffffw ci\196\133gu #ffa20024h", windowPos.x + 135 / zoom, windowPos.y + 990 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, animations.alphaALL), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if getElementData(localPlayer, "player:sid") then
    return
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.spawn == true then
      for _FORV_6_, _FORV_7_ in ipairs(blips) do
        if isMouseIn(math.max(mapPos.x + mapPos.w / 2 - mapPos.w / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.x + mapPos.w / 2 + mapPos.w / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_7_.pos[1], _FORV_7_.pos[2]))) - math.floor(38 / zoom) / 2, math.max(mapPos.y + mapPos.h / 2 - mapPos.h / 2 + math.floor(38 / zoom) / 2, math.min(mapPos.y + mapPos.h / 2 + mapPos.h / 2 - math.floor(38 / zoom) / 2, getMapFromWorldPosition(_FORV_7_.pos[1], _FORV_7_.pos[2]))) - math.floor(38 / zoom) / 2, math.floor(38 / zoom), math.floor(38 / zoom), buttonsPos.h - math.floor(50 / zoom)) or isMouseIn(buttonsPos1.x + 28 / zoom, 28 / zoom + 75 / zoom * (0 + 1 - 1), 234 / zoom, 59 / zoom) and windows.spawn == true then
          if zalogowany then
            return
          end
          zalogowany = true
          createAnimation(_UPVALUE0_, _FORV_7_.pos[1], "InOutQuad", 1000, function(_ARG_0_)
            _UPVALUE0_ = _ARG_0_
          end)
          createAnimation(_UPVALUE1_, _FORV_7_.pos[2], "InOutQuad", 1000, function(_ARG_0_)
            _UPVALUE0_ = _ARG_0_
          end)
          setTimer(function()
            createAnimation(_UPVALUE0_, 0.09, "InOutQuad", 2000, function(_ARG_0_)
              _UPVALUE0_ = _ARG_0_
            end)
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "log_discord", localPlayer, {
              _UPVALUE1_.pos[1],
              _UPVALUE1_.pos[2],
              _UPVALUE1_.pos[3] + 1,
              _UPVALUE1_.pos[4],
              _UPVALUE1_.pos[5],
              _UPVALUE1_.pos[6],
              _UPVALUE1_.pos[7]
            })
            setElementData(localPlayer, "player:organization:spawn", false)
            setTimer(function()
              showAll(_UPVALUE0_.pos[1], _UPVALUE0_.pos[2])
            end, 1000, 1)
          end, 1000, 1)
        end
      end
    end
    if isMouseIn(windowPos.x + 222 / zoom, windowPos.y + 410 / zoom, 50 / zoom, 50 / zoom) and windows.main == true then
      if #table_users == 0 then
      else
        for _FORV_5_, _FORV_6_ in ipairs(table_users) do
          if clickLogin then
            return
          end
          clickLogin = true
          createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
            animations.alphaALL = _ARG_0_
          end)
          tick = getTickCount()
          textLoading = "TRWA \197\129ADOWANIE KONTA"
          setTimer(function()
            windows.loading = true
            windows.main = false
            if _UPVALUE0_ == 1 then
              if isStringNormal(_UPVALUE1_.login) ~= true then
                return exports.st_gui:showPlayerNotification("Nick zawiera niedozwolone znaki", "error")
              end
              triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "login1", localPlayer, table_users)
            end
          end, 500, 1)
        end
      end
    elseif isMouseIn(windowPos.x + 80 / zoom, windowPos.y + 385 / zoom, 330 / zoom, 80 / zoom) and windows.main == true then
      if #table_users == 0 then
        createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
          animations.alphaALL = _ARG_0_
        end)
        setTimer(function()
          login_editobox = exports.ST_gui:createCustomEditbox("login:nick", "Nick", windowPos.x + 35 / zoom, windowPos.y + 150 / zoom, 430 / zoom, 50 / zoom, false, false, "", 1, {
            25,
            25,
            25,
            0,
            22,
            22,
            22,
            0
          })
          email_editbox = exports.ST_gui:createCustomEditbox("login:email", "Email     (wymagane by odzyska\196\135 konto)", windowPos.x + 35 / zoom, windowPos.y + 260 / zoom, 430 / zoom, 50 / zoom, false, false, "", 1, {
            25,
            25,
            25,
            0,
            22,
            22,
            22,
            0
          })
        end, 250, 1)
        setTimer(function()
          windows.main = false
          windows.register = true
        end, 500, 1)
      end
    elseif isMouseIn(windowPos.x + 125 / zoom, windowPos.y + 313 / zoom, windowPos.w - 250 / zoom, 50 / zoom) and windows.main == true then
    elseif isMouseIn(windowPos.x + 80 / zoom, windowPos.y + 385 / zoom, 330 / zoom, 80 / zoom) and windows.register == true then
      if 3 > exports.ST_gui:getCustomEditboxText("login:nick"):len() or exports.ST_gui:getCustomEditboxText("login:nick"):len() > 14 then
        exports.st_gui:showPlayerNotification("Nick powinien zawiera\196\135 od 3 do 14 znak\195\179w!", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("login:email"):len() < 5 or exports.ST_gui:getCustomEditboxText("login:email"):len() > 40 then
        exports.st_gui:showPlayerNotification("Podany email nie jest emailem!", "error")
        return
      end
      if isStringNormal((exports.ST_gui:getCustomEditboxText("login:nick"))) ~= true then
        return exports.st_gui:showPlayerNotification("Nick zawiera niedozwolone znaki", "error")
      end
      exports.ST_gui:destroyCustomEditbox("login:nick")
      exports.ST_gui:destroyCustomEditbox("login:email")
      tick = getTickCount()
      createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
        animations.alphaALL = _ARG_0_
      end)
      textLoading = "TRWA TWORZENIE KONTA"
      setTimer(function()
        windows.loading = true
        windows.register = false
      end, 500, 1)
      setTimer(function()
        triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "register", localPlayer, _UPVALUE0_, _UPVALUE1_)
      end, 2000, 1)
    elseif isMouseIn(windowPos.x + 465 / zoom, windowPos.y + 126 / zoom, 35 / zoom, 35 / zoom) and windows.settings == true then
      if click then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if _FORV_5_ == 1 then
          click = true
          if _FORV_6_.settings_numbers_login == 1 then
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "setSettings", localPlayer, "settings_numbers_login", 0)
          else
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "setSettings", localPlayer, "settings_numbers_login", 1)
          end
          tick = getTickCount()
          createAnimation(255, 0, "SineCurve", 200, function(_ARG_0_)
            animations.alphaALL = _ARG_0_
          end)
          textLoading = "\197\129ADOWANIE"
          setTimer(function()
            windows.loading = true
            windows.settings = false
          end, 100, 1)
        end
      end
    elseif isMouseIn(windowPos.x + 465 / zoom, windowPos.y + 166 / zoom, 35 / zoom, 35 / zoom) and windows.settings == true then
      if click then
        return
      end
      for _FORV_5_, _FORV_6_ in ipairs(table_users) do
        if _FORV_5_ == 1 then
          click = true
          if _FORV_6_.settings_numbers_vehicles == 1 then
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "setSettings", localPlayer, "settings_numbers_vehicles", 0)
          else
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "setSettings", localPlayer, "settings_numbers_vehicles", 1)
          end
          tick = getTickCount()
          createAnimation(255, 0, "SineCurve", 200, function(_ARG_0_)
            animations.alphaALL = _ARG_0_
          end)
          textLoading = "\197\129ADOWANIE"
          setTimer(function()
            windows.loading = true
            windows.settings = false
          end, 100, 1)
        end
      end
    elseif isMouseIn(windowPos.x + 230 / zoom, windowPos.y + 500 / zoom, 80 / zoom, 80 / zoom) and windows.settings == true then
      createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
        animations.alphaALL = _ARG_0_
      end)
      setTimer(function()
        windows.main = true
        windows.settings = false
      end, 500, 1)
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoUsersClient" then
    table_users = _ARG_1_
    discord_connected = _ARG_2_
    players24 = _ARG_3_
  elseif _ARG_0_ == "loginClient" then
    blips = {}
    createAnimation(255, 0, "SineCurve", 2000, function(_ARG_0_)
      animations.alphaALL = _ARG_0_
    end)
    if _ARG_2_ then
      dzialaPos = true
    else
      dzialaPos = false
    end
    if getElementData(localPlayer, "player:organization:spawn") then
      dzialaPosOrg = true
    else
      dzialaPosOrg = false
    end
    addEventHandler("onClientClick", root, moveBigMap)
    bindKey("mouse_wheel_up", "down", scrollBigMap)
    bindKey("mouse_wheel_down", "down", scrollBigMap)
    setTimer(function()
      blips = {
        {
          pos = {
            1708.08,
            1167.36,
            10.77,
            0,
            0
          },
          city = "SPAWN",
          dziala = true
        },
        {
          pos = {
            -1985.02,
            138.02,
            27.69,
            0,
            0
          },
          city = "SPAWN",
          dziala = true
        },
        {
          pos = {
            1284.72,
            -1331.63,
            13.55,
            0,
            0
          },
          city = "SPAWN",
          dziala = true
        },
        {
          pos = {
            681.48,
            -477.01,
            16.34,
            0,
            0
          },
          city = "SPAWN",
          dziala = true
        },
        {
          pos = {
            1602.49,
            -1559.06,
            14.18,
            0,
            0
          },
          city = "Przechowalnia",
          dziala = true
        },
        {
          pos = {
            1702.98,
            950.21,
            10.82,
            0,
            0
          },
          city = "Przechowalnia",
          dziala = true
        },
        {
          pos = {
            1481.03,
            -1743.26,
            13.55,
            0,
            0
          },
          city = "Urz\196\133d",
          dziala = true
        },
        {
          pos = {
            2563.26,
            -503.02,
            83.5,
            0,
            0
          },
          city = "G\195\179rnik",
          dziala = true
        },
        {
          pos = {
            78.8,
            -283.74,
            1.58,
            0,
            0
          },
          city = "Magazynier",
          dziala = true
        },
        {
          pos = {
            -1835.68,
            -109.73,
            5.65,
            0,
            0
          },
          city = "Kryptowaluty",
          dziala = true
        },
        {
          pos = {
            tonumber(_UPVALUE0_[1]),
            tonumber(_UPVALUE0_[2]),
            tonumber(_UPVALUE0_[3]),
            _UPVALUE0_[4],
            _UPVALUE0_[5],
            tonumber(_UPVALUE0_[6]),
            tonumber(_UPVALUE0_[7])
          },
          city = "Ostatnia pozycja",
          dziala = dzialaPos
        },
        {
          pos = {
            tonumber(_UPVALUE1_[1]),
            tonumber(_UPVALUE1_[2]),
            tonumber(_UPVALUE1_[3]),
            _UPVALUE1_[4],
            _UPVALUE1_[5]
          },
          city = "Organizacja",
          dziala = dzialaPosOrg
        }
      }
      for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE2_) do
        table.insert(blips, {
          pos = {
            _FORV_4_[2][1],
            _FORV_4_[2][2],
            _FORV_4_[2][3]
          },
          city = _FORV_4_[1],
          dziala = true
        })
      end
    end, 300, 1)
    setTimer(function()
      if _UPVALUE0_ then
        table.insert(blips, {
          pos = {
            2312.45,
            2448.12,
            10.82,
            0,
            0
          },
          city = "SAPD",
          dziala = true
        })
        table.insert(blips, {
          pos = {
            1329.51,
            1144.84,
            10.81,
            0,
            0
          },
          city = "SAFD",
          dziala = true
        })
      end
    end, 400, 1)
    setTimer(function()
      windows.main = false
      windows.register = false
      windows.spawn = true
      windows.loading = false
      windows.pinEnter = false
      removeEventHandler("onClientPreRender", root, camRender)
      if isElement(camera.object1) then
        destroyElement(camera.object1)
      end
      if isElement(camera.object2) then
        destroyElement(camera.object2)
      end
      if isTimer(changeCamera) then
        killTimer(changeCamera)
      end
      if isTimer(nextCameraTimer) then
        killTimer(nextCameraTimer)
      end
    end, 1000, 1)
  elseif _ARG_0_ == "registerClient" then
    createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
      animations.alphaALL = _ARG_0_
    end)
    if _ARG_1_ then
      triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "showInfoUsers_hgfdssghdhjdgdgfh", localPlayer)
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie si\196\153 zajestrowano", "success")
      setTimer(function()
        windows.main = true
        windows.register = false
        windows.loading = false
      end, 500, 1)
    else
      exports.st_gui:showPlayerNotification("Podany nick jest ju\197\188 zaj\196\153ty", "error")
      setTimer(function()
        windows.register = true
        windows.loading = false
        setTimer(function()
          login_editobox = exports.ST_gui:createCustomEditbox("login:nick", "Nick", windowPos.x + 35 / zoom, windowPos.y + 150 / zoom, 430 / zoom, 50 / zoom, false, false, "", 1, {
            25,
            25,
            25,
            0,
            22,
            22,
            22,
            0
          })
          email_editbox = exports.ST_gui:createCustomEditbox("login:email", "Email     (wymagane by odzyska\196\135 konto)", windowPos.x + 35 / zoom, windowPos.y + 260 / zoom, 430 / zoom, 50 / zoom, false, false, "", 1, {
            25,
            25,
            25,
            0,
            22,
            22,
            22,
            0
          })
        end, 250, 1)
      end, 500, 1)
    end
  elseif _ARG_0_ == "banClient" then
    createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
      animations.alphaALL = _ARG_0_
    end)
    setTimer(function()
      windows.main = false
      windows.loading = false
      windows.ban = true
    end, 500, 1)
  elseif _ARG_0_ == "loadSettingsEnd" then
    setTimer(function()
      createAnimation(255, 0, "SineCurve", 1000, function(_ARG_0_)
        animations.alphaALL = _ARG_0_
      end)
      setTimer(function()
        windows.settings = true
        windows.register = false
        windows.loading = false
        click = false
      end, 500, 1)
    end, 500, 1)
  elseif _ARG_0_ == "checkAccountDiscord_gfsadgs_client" then
    windows.main = true
    windows.loading = false
    click = false
    if _ARG_1_ == false then
      exports.st_gui:showPlayerNotification("Nie znaleziono konta z twoim discordID", "error")
    end
  elseif _ARG_0_ == "login1Client" then
    if _ARG_2_ == 0 then
      table_users = _ARG_1_
      if getDiscordRichPresenceUserID() == "" then
      end
      triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "login", localPlayer, table_users, false, "brak")
    else
      addEventHandler("onClientKey", root, key)
      enteredPin = ""
      wrongPin = 1
      settings_pinLoggingNext = 1
      table_pinLogging = {
        0,
        0,
        0,
        0,
        0
      }
      setTimer(function()
        setTimer(function()
          createAnimation(255, 0, "SineCurve", 500, function(_ARG_0_)
            animations.alphaALL = _ARG_0_
          end)
        end, 500, 1)
      end, 250, 1)
      setTimer(function()
        windows.main = false
        windows.register = false
        windows.spawn = false
        windows.loading = false
        windows.pinEnter = true
      end, 1000, 1)
    end
  elseif _ARG_0_ == "wrongPin" then
    addEventHandler("onClientKey", root, key)
    enteredPin = ""
    settings_pinLoggingNext = 1
    table_pinLogging = {
      0,
      0,
      0,
      0,
      0
    }
    windows.loading = false
    windows.pinEnter = true
    wrongPin = wrongPin + 1
    if wrongPin > 3 then
      for _FORV_9_, _FORV_10_ in ipairs(table_users) do
        if _FORV_9_ == 1 then
          triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "kick", localPlayer, _FORV_10_.login)
        end
      end
    end
  end
end)
addEventHandler("onClientResourceStart", resourceRoot, function()
  if getElementData(localPlayer, "player:sid") then
    return
  end
  music = playSound(_UPVALUE0_[math.random(1, 7)][1], true)
  _UPVALUE1_ = _UPVALUE0_[math.random(1, 7)][2]
  setSoundVolume(music, 0.5)
  textures = {
    circle = dxCreateTexture("img/circle.png"),
    wallet = dxCreateTexture("img/wallet.png"),
    date = dxCreateTexture("img/date.png"),
    email = dxCreateTexture("img/email.png"),
    login = dxCreateTexture("img/login.png"),
    location_icon = dxCreateTexture("img/location_icon.png"),
    loading = dxCreateTexture(":ST_download/loading.png"),
    map = dxCreateTexture(":ST_radar/images/map/map.png"),
    logo = dxCreateTexture(":ST_gui/img/logo.png"),
    discord_icon = dxCreateTexture("img/discord_icon.png"),
    time = dxCreateTexture("img/time.png")
  }
  dxSetTextureEdge(textures.map, "border", tocolor(10, 10, 10, 255))
  table_users = {}
  if getDiscordRichPresenceUserID() == "" then
  end
  triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "showInfoUsers_hgfdssghdhjdgdgfh", localPlayer, "brak")
  addEventHandler("onClientPreRender", root, camRender)
  nextCameraTimer = setTimer(nextCamera, 10000, 0)
  nextCamera(true)
  setFarClipDistance(4000)
  setPlayerHudComponentVisible("area_name", false)
  setTimer(function()
    createAnimation(-550, windowPos.y, "InOutQuad", 1000, function(_ARG_0_)
      animations.background_y = _ARG_0_
    end)
    setTimer(function()
      createAnimation(0, 255, "InOutQuad", 1000, function(_ARG_0_)
        animations.alphaALL = _ARG_0_
      end)
    end, 500, 1)
    createShaderBlur(true)
    addEventHandler("onClientRender", root, window)
    setPlayerHudComponentVisible("radar", false)
    triggerEvent("radar:onClientHudComponent", localPlayer, "radar", false)
    setPlayerHudComponentVisible("ammo", false)
    setPlayerHudComponentVisible("armour", false)
    setPlayerHudComponentVisible("clock", false)
    setPlayerHudComponentVisible("health", false)
    setPlayerHudComponentVisible("money", false)
    setPlayerHudComponentVisible("vehicle_name", false)
    setPlayerHudComponentVisible("weapon", false)
    setPlayerHudComponentVisible("breath", false)
    setPlayerHudComponentVisible("wanted", false)
    windows.background = true
    showCursor(true)
    windows.main = true
    if not alpha then
      createAnimation(LOAD.alpha, 255, "InQuad", 1000, function(_ARG_0_)
        LOAD.alpha = _ARG_0_
      end)
    else
      LOAD.alpha = alpha
    end
  end, 500, 1)
end)
function showAll(_ARG_0_, _ARG_1_)
  setPlayerHudComponentVisible("all", false)
  removeEventHandler("onClientClick", root, moveBigMap)
  unbindKey("mouse_wheel_up")
  unbindKey("mouse_wheel_down")
  createAnimation(255, 0, "InOutQuad", 1000, function(_ARG_0_)
    animations.alphaALL = _ARG_0_
  end)
  addEventHandler("onClientPreRender", root, updateCameraPosition)
  attachCameraToPlayer(_ARG_0_, _ARG_1_)
  setTimer(function()
    windows.spawn = false
    windows.main = false
    windows.register = false
    windows.login = false
    windows.regulations = false
    windows.background = false
    removeEventHandler("onClientRender", root, window)
    createShaderBlur(false)
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    guiSetInputMode("no_binds_when_editing")
    showCursor(false)
  end, 900, 1)
  setTimer(function()
    showChat(true)
    setElementData(localPlayer, "notshowhud", false)
    removeEventHandler("onClientPreRender", root, updateCameraPosition)
    setCameraTarget(localPlayer)
    setPlayerHudComponentVisible("radar", true)
    triggerEvent("radar:onClientHudComponent", localPlayer, "radar", true)
    triggerServerEvent("setPlayerInPrizon", localPlayer, localPlayer)
    stopSound(music)
    for _FORV_3_, _FORV_4_ in ipairs(table_users) do
      if tonumber(split(_FORV_4_.crosshair, ", ")[1]) == 0 then
        exports.ST_crosshair:switchCrosshair(0, 1)
      else
        exports.ST_crosshair:switchCrosshair(tonumber(split(_FORV_4_.crosshair, ", ")[1]), tonumber(split(_FORV_4_.crosshair, ", ")[2]))
      end
      exports.ST_gui:setPosNoti(_FORV_4_.settings_oldhud)
      exports.ST_hud:enableHud(true, _FORV_4_.settings_oldhud, _FORV_4_.settings_cpu, _FORV_4_.settings_fps, _FORV_4_.settings_ping, _FORV_4_.settings_packet)
      if _FORV_4_.shader_veh == 1 then
        exports.ST_shader_veh:enableShader(_FORV_4_.shader_veh)
      end
      if _FORV_4_.settings_neon == 1 then
        exports.ST_neons:switchNeons(true)
      else
        exports.ST_neons:switchNeons(false)
      end
      if _FORV_4_.settings_3dtext == 1 then
        exports.ST_3Dtext:switch3dText(true)
      else
        exports.ST_3Dtext:switch3dText(false)
      end
      if _FORV_4_.settings_customPaintjob == 1 then
        exports.ST_custom_paintjob:switchPaintJob(_FORV_4_.settings_customPaintjob)
      end
      if _FORV_4_.settings_customWheels == 1 then
        exports.ST_wheels_system:switchWheels(_FORV_4_.settings_customWheels)
      end
      if _FORV_4_.settings_engineSound == 1 then
        exports.bengines:toggleEngines(_FORV_4_.settings_engineSound)
      end
      exports.ST_speedmeter:switchSpeedMeter(_FORV_4_.settings_liczniki)
      exports.ST_ads:onOffAds(_FORV_4_.settings_ads)
      exports.ST_ads:switchAds(_FORV_4_.settings_normalAds)
      exports.ST_nametags:enableNametags(_FORV_4_.settings_nametags, _FORV_4_.settings_showNametag)
      setFPSLimit(_FORV_4_.fps_limit)
      triggerEvent("voiceSetVolume", localPlayer, localPlayer, _FORV_4_.voice_volume)
      if not discord_connected then
        addEventHandler("onClientRender", root, discordConnectRender)
      end
    end
  end, 4000, 1)
end
function discordConnectRender()
  dxDrawText("PO\197\129\196\132CZ KONTO Z NASZYM DISCORDEM\nABY ZACHOWA\196\134 DOST\196\152P DO KONTA", _UPVALUE0_.x + 2 / zoom, _UPVALUE0_.y - 93 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
  dxDrawText("#b80000PO\197\129\196\132CZ KONTO Z NASZYM DISCORDEM\nABY ZACHOWA\196\134 DOST\196\152P DO KONTA", _UPVALUE0_.x, _UPVALUE0_.y - 95 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
  dxDrawText("https://discord.gg/santori", _UPVALUE0_.x + 2 / zoom, _UPVALUE0_.y + 32 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
  dxDrawText("#ffbf00https://discord.gg/santori", _UPVALUE0_.x, _UPVALUE0_.y + 30 / zoom, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal20"), "center", "center", false, false, false, true, false)
end
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
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
function isStringNormal(_ARG_0_)
  if _ARG_0_ and tostring(_ARG_0_) and _UPVALUE0_ then
    for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
      if _FORV_5_ and string.find(_ARG_0_, _FORV_5_) then
        return false
      end
    end
    return true
  end
end
function attachCameraToPlayer(_ARG_0_, _ARG_1_)
  setCameraMatrix(_ARG_0_, _ARG_1_, getElementPosition(localPlayer) + _UPVALUE0_, _ARG_0_, _ARG_1_, getElementPosition(localPlayer))
end
function updateCameraPosition()
  setCameraMatrix(interpolateBetween(getCameraMatrix()), interpolateBetween(getCameraMatrix()), interpolateBetween(getCameraMatrix()), getElementPosition(localPlayer))
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_1_ and tonumber(_ARG_0_) and #enteredPin < 5 then
    enteredPin = enteredPin .. tostring((tonumber(_ARG_0_)))
    settings_pinLoggingNext = #enteredPin + 1
    if #enteredPin == 5 then
      tick = getTickCount()
      createAnimation(255, 0, "SineCurve", 500, function(_ARG_0_)
        animations.alphaALL = _ARG_0_
      end)
      textLoading = "TRWA \197\129ADOWANIE KONTA"
      setTimer(function()
        windows.loading = true
        windows.main = false
        windows.pinEnter = false
        for _FORV_3_, _FORV_4_ in ipairs(table_users) do
          if _FORV_3_ == 1 then
            if isStringNormal(_FORV_4_.login) ~= true then
              return exports.st_gui:showPlayerNotification("Nick zawiera niedozwolone znaki", "error")
            end
            removeEventHandler("onClientKey", root, key)
            if getDiscordRichPresenceUserID() == "" then
            end
            triggerServerEvent("evEwenciks_kfe4hgf", resourceRoot, "login", localPlayer, table_users, tonumber(enteredPin), "brak")
          end
        end
      end, 250, 1)
    end
  end
end
camera = {}
function camRender()
  if camera.moov == 1 then
    setCameraMatrix(getElementPosition(camera.object1))
  end
end
function smoothMoveCamera(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_, _ARG_12_)
  if camera.moov == 1 then
    return false
  end
  camera.object1 = createObject(1337, _ARG_0_, _ARG_1_, _ARG_2_)
  camera.object2 = createObject(1337, _ARG_3_, _ARG_4_, _ARG_5_)
  setElementAlpha(camera.object1, 0)
  setElementAlpha(camera.object2, 0)
  setObjectScale(camera.object1, 0.01)
  setObjectScale(camera.object2, 0.01)
  moveObject(camera.object1, _ARG_12_, _ARG_6_, _ARG_7_, _ARG_8_, 0, 0, 0, "OutQuad")
  moveObject(camera.object2, _ARG_12_, _ARG_9_, _ARG_10_, _ARG_11_, 0, 0, 0, "OutQuad")
  camera.moov = 1
  return true
end
function nextCamera(_ARG_0_)
  if _ARG_0_ then
    repeat
    until math.random(1, #_UPVALUE0_) ~= _UPVALUE0_.actual
    _UPVALUE0_.actual = math.random(1, #_UPVALUE0_)
    changeCamera = nil
    camera.moov = 0
    if isElement(camera.object1) then
      destroyElement(camera.object1)
    end
    if isElement(camera.object2) then
      destroyElement(camera.object2)
    end
    smoothMoveCamera(unpack(_UPVALUE0_[_UPVALUE0_.actual]))
    fadeCamera(true)
  else
    fadeCamera(false)
    changeCamera = setTimer(function()
      repeat
      until math.random(1, #_UPVALUE0_) ~= _UPVALUE0_.actual
      _UPVALUE0_.actual = math.random(1, #_UPVALUE0_)
      changeCamera = nil
      camera.moov = 0
      if isElement(camera.object1) then
        destroyElement(camera.object1)
      end
      if isElement(camera.object2) then
        destroyElement(camera.object2)
      end
      smoothMoveCamera(unpack(_UPVALUE0_[_UPVALUE0_.actual]))
      fadeCamera(true)
    end, 1000, 1)
  end
end
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(screenW, screenH, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", screenW, screenH)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 4)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", windowPos.x / screenW, windowPos.y / screenH)
    dxSetShaderValue(blurShader, "rectSize", windowPos.w / screenW, windowPos.h / screenH)
    dxSetShaderValue(blurShader, "radiusUV", 30 / zoom / windowPos.w, 30 / zoom / windowPos.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "#ffbf000 #f0f0f0godzin"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbf00" .. przecinek(hours) .. " #f0f0f0godzin"
  end
end
function maskEmail(_ARG_0_)
  if not _ARG_0_:match("([^@]+)@(.+)") or not _ARG_0_:match("([^@]+)@(.+)") then
    return _ARG_0_
  end
  for _FORV_8_ = 1, #_ARG_0_:match("([^@]+)@(.+)") do
    if _FORV_8_ == 1 or _FORV_8_ == #_ARG_0_:match("([^@]+)@(.+)") then
    else
    end
  end
  return (("" .. _ARG_0_:match("([^@]+)@(.+)"):sub(_FORV_8_, _FORV_8_)) .. "*") .. "@" .. _ARG_0_:match("([^@]+)@(.+)")
end
getResourceName(getThisResource(), true, 483665510)
return
