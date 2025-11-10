event = {}
function window()
  if event.wlaczNaliczanie and getTickCount() - tick > 1000 then
    tick = getTickCount()
    event.time = event.time + 1
    event.timeEnd = event.timeEnd - 1
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  if event.sprawdzGraczy == true then
    dxDrawText("SQUID GAME", _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(191, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
  else
    dxDrawText("SQUID GAME", _UPVALUE0_.x, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 135, 32, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
  end
  dxDrawText("liczba graczy: #fcba03" .. event.liczba_graczy, _UPVALUE0_.x, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(250, 250, 250, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  dxDrawText("CZAS: #ffbf00" .. secondsToClock(event.time) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 100 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  dxDrawText("KONIEC: #ffbf00" .. secondsToClock(event.timeEnd) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  for _FORV_9_, _FORV_10_ in ipairs(event.lista_graczy or {}) do
    if isElement(_FORV_10_) then
      table.insert({}, {
        plr = _FORV_10_,
        dist = math.abs(6848.33 - getElementPosition(_FORV_10_))
      })
    end
  end
  table.sort({}, function(_ARG_0_, _ARG_1_)
    return _ARG_0_.dist < _ARG_1_.dist
  end)
  for _FORV_9_ = 1, math.min(5, #{}) do
    dxDrawText("#fcba03" .. _FORV_9_ .. "#ffffff. #e0e0e0" .. getPlayerName(({})[_FORV_9_].plr) .. " #fcba03" .. string.format("%.2f", ({})[_FORV_9_].dist) .. "#ffffffm", _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + _FORV_9_ * 18 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "top", false, false, true, true)
  end
  if lasersActive then
    for _FORV_18_ = 1, _UPVALUE4_ do
      for _FORV_24_ = 1, _UPVALUE5_ do
        if _FORV_24_ < math.ceil(_UPVALUE5_ / 2) then
        end
        dxDrawLine3D(834.96, 6853.88, 482.25, 834.96 + math.cos((math.rad(-11.7 + (_FORV_24_ - (_UPVALUE5_ + 1) / 2) * 10 + 12))) * _UPVALUE6_ * math.cos((math.rad(-90 + math.sin(getTickCount() * _UPVALUE2_) * _UPVALUE3_ + (_FORV_18_ - (_UPVALUE4_ + 1) / 2) * 20))), 6853.88 + math.cos((math.rad(-11.7 + (_FORV_24_ - (_UPVALUE5_ + 1) / 2) * 10 + 12))) * _UPVALUE6_ * math.sin((math.rad(-90 + math.sin(getTickCount() * _UPVALUE2_) * _UPVALUE3_ + (_FORV_18_ - (_UPVALUE4_ + 1) / 2) * 20))), 482.25 + math.sin((math.rad(-11.7 + (_FORV_24_ - (_UPVALUE5_ + 1) / 2) * 10 + 12))) * _UPVALUE6_, tocolor(255, 0, 0, 200), 2)
      end
    end
  end
  if event.laserNamierzanieGraczy == true then
    for _FORV_12_, _FORV_13_ in ipairs(graczeDoZabicia) do
      if isElement(_FORV_13_) then
        dxDrawLine3D(834.96, 6853.88, 482.25, getElementPosition(_FORV_13_))
      end
    end
  end
  if event.graczWygral == false then
    if 6848.33 < getElementPosition(localPlayer) then
      event.graczWygral = true
      triggerServerEvent("ev", resourceRoot, "wygrywaEvent", localPlayer, event.time)
    end
    if event.sprawdzGraczy == true then
      if (getElementVelocity(localPlayer) ^ 2 + getElementVelocity(localPlayer) ^ 2 + getElementVelocity(localPlayer) ^ 2) ^ 0.5 * 180 > _UPVALUE7_ then
        if not _UPVALUE8_ then
          _UPVALUE8_ = setTimer(function()
            if (getElementVelocity(localPlayer) ^ 2 + getElementVelocity(localPlayer) ^ 2 + getElementVelocity(localPlayer) ^ 2) ^ 0.5 * 180 > _UPVALUE0_ and event.jestWEvencie then
              event.jestWEvencie = false
              triggerServerEvent("ev", resourceRoot, "zabijGracza", localPlayer)
            end
            _UPVALUE1_ = nil
          end, _UPVALUE9_, 1)
        end
      elseif _UPVALUE8_ then
        killTimer(_UPVALUE8_)
        _UPVALUE8_ = nil
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGuiEvent" then
    event = {}
    lasersActive = false
    event.laserNamierzanieGraczy = false
    tick = false
    event.wlaczNaliczanie = false
    addEventHandler("onClientRender", root, window)
    event.jestWEvencie = true
    event.lista_graczy = _ARG_1_
    event.liczba_graczy = tonumber(#_ARG_1_)
    event.time = 0
    event.timeEnd = _ARG_2_
    event.graczWygral = false
  elseif _ARG_0_ == "odtwarzajPiosenke" then
    graczeDoZabicia = {}
    event.sprawdzGraczy = false
    lasersActive = false
    event.piosenka = playSound("sound/muzyczka.mp3")
    if _ARG_1_ == 2 then
      predkosc = 2.15
    elseif _ARG_1_ == 3 then
      predkosc = 1.6
    elseif _ARG_1_ == 4 then
      predkosc = 1.2
    elseif _ARG_1_ == 5 then
      predkosc = 1
    elseif _ARG_1_ == 6 then
      predkosc = 0.85
    end
    setSoundSpeed(event.piosenka, predkosc)
    event.laserNamierzanieGraczy = false
  elseif _ARG_0_ == "odtwarzajNamierzanie" then
    setTimer(function()
      event.sprawdzGraczy = true
      lasersActive = true
    end, 500, 1)
    event.namierzanie = playSound("sound/namierzanie.mp3")
    setTimer(function()
      event.laserNamierzanieGraczy = true
    end, 700, 1)
  elseif _ARG_0_ == "drzwiekStrzalu" then
    playSound("sound/strzal.mp3")
  elseif _ARG_0_ == "dodajGraczyDoZabicia" then
    table.insert(graczeDoZabicia, _ARG_1_)
  elseif _ARG_0_ == "rozpocznijNaliczanieCzasu" then
    tick = getTickCount()
    event.wlaczNaliczanie = true
  elseif _ARG_0_ == "zakonczEvent" then
    event = {}
    graczeDoZabicia = {}
    tick = false
    event.wlaczNaliczanie = false
    event.jestWEvencie = false
    removeEventHandler("onClientRender", root, window)
  elseif _ARG_0_ == "zakonczylEvent" then
    event.graczWygral = true
    if isTimer(_UPVALUE0_) then
      killTimer(_UPVALUE0_)
    end
  elseif _ARG_0_ == "odswiezGraczy" then
    event.lista_graczy = _ARG_1_
    event.liczba_graczy = tonumber(#_ARG_1_)
  end
end)
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
