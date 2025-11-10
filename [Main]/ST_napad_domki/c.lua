itemsTable = {}
blipPojazduSapd = {}
timerPojazdu = {}
odcisk = {}
oddanie = {}
rzeczy_odlozone = {}
windows = {background = false, category = false}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 820 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    if windows.category == "zbierz \197\130up" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 69 / _UPVALUE1_, _UPVALUE0_.y + 149 / _UPVALUE1_, 302 / _UPVALUE1_, 302 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(255, 187, 0, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 70 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 300 / _UPVALUE1_, 300 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 251))
      dxDrawImage(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 300 / _UPVALUE1_, 300 / _UPVALUE1_, textures.bag, 0, 0, 0, tocolor(200, 200, 200, 255), false)
      dxDrawText("ZBIERZ \197\129UP", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y - 121 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      for _FORV_7_, _FORV_8_ in pairs(jewelry_table) do
        if data.selectedJewelry == _FORV_7_ then
          dxDrawImage(getCursorPosition() * _UPVALUE2_, getCursorPosition() * _UPVALUE3_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          dxDrawImage(_UPVALUE0_.x + _FORV_8_.pos[1], _UPVALUE0_.y + _FORV_8_.pos[2], 50 / _UPVALUE1_, 50 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
    end
    if windows.category == "wlamanie" then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 45 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 380 / _UPVALUE1_, 380 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 251))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 455 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 380 / _UPVALUE1_, 380 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 251))
      dxDrawText("wybierz prawid\197\130owy fragment odcisku palca, aby pasowa\197\130 do odcisku po prawej stronie", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y - 125 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
      dxDrawText("odciski do dopasowania #ffbf00" .. odcisk.postep .. "#ffffff/#ffbf003", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y - 13 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      dxDrawText("pozosta\197\130e pr\195\179by: #ffbf00" .. odcisk.proby .. "", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 868 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      for _FORV_9_ = 1, 9 do
        if 3 < 0 + 1 then
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(125 / _UPVALUE1_) * (1 - 1) + 55 / _UPVALUE1_, _UPVALUE0_.y + math.floor(125 / _UPVALUE1_) * (1 + 1 - 1) + 130 / _UPVALUE1_, 110 / _UPVALUE1_, 110 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(29, 29, 29, 250))
      end
      for _FORV_11_, _FORV_12_ in pairs(odcisk.tabela_fragmenty) do
        if 3 < 0 + 1 then
        end
        if _FORV_12_[6] then
        end
        dxDrawImageSection(_UPVALUE0_.x + math.floor(125 / _UPVALUE1_) * (1 - 1) + 65 / _UPVALUE1_, _UPVALUE0_.y + math.floor(125 / _UPVALUE1_) * (1 + 1 - 1) + 140 / _UPVALUE1_, 90 / _UPVALUE1_, 90 / _UPVALUE1_, _FORV_12_[2] / _UPVALUE1_, _FORV_12_[3] / _UPVALUE1_, _FORV_12_[4] / _UPVALUE1_, _FORV_12_[5] / _UPVALUE1_, tabelaOdciski[_FORV_12_[1]][2])
      end
      dxDrawImage(_UPVALUE0_.x + 475 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, 340 / _UPVALUE1_, 340 / _UPVALUE1_, odcisk.obrazGlowny, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if odcisk.ekranLadowania == true then
        odcisk.postepLadowania = odcisk.postepLadowania + 0.25
        dxDrawRoundedRectangle(_UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 400 / _UPVALUE1_, _UPVALUE0_.h - 400 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(255, 25, 25, 150), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 202 / _UPVALUE1_, _UPVALUE0_.y + 202 / _UPVALUE1_, _UPVALUE0_.w - 404 / _UPVALUE1_, _UPVALUE0_.h - 404 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(25, 25, 25, 240), false)
        dxDrawText("TRWA WERYFIKOWANIE", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        dxDrawText("#d12424" .. math.floor(odcisk.postepLadowania) .. "#ffffff%", _UPVALUE0_.x + 515 / _UPVALUE1_, _UPVALUE0_.y + 355 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(235, 235, 235, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 232 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, _UPVALUE0_.w - 464 / _UPVALUE1_, 40 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(20, 20, 20, 255), false)
        if 25 < (_UPVALUE0_.w - 464 / _UPVALUE1_) * tonumber(odcisk.postepLadowania) / tonumber(100) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 232 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, (_UPVALUE0_.w - 464 / _UPVALUE1_) * tonumber(odcisk.postepLadowania) / tonumber(100), 40 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(200, 40, 40, 255), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 232 / _UPVALUE1_, _UPVALUE0_.y + 305 / _UPVALUE1_, (_UPVALUE0_.w - 464 / _UPVALUE1_) * tonumber(7) / tonumber(100), 40 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(200, 40, 40, 255), false)
        end
        if odcisk.postepLadowania >= 100 then
          odcisk.postepLadowania = 100
          if not clickC then
            clickC = true
            setTimer(function()
              clickC = false
            end, 3500, 1)
            if odcisk.czyWybranoPrawidlowy then
              exports.st_gui:showPlayerNotification("Wybrany odcisk jest prawid\197\130owy", "success")
              odcisk.postep = odcisk.postep + 1
              if 3 <= odcisk.postep then
                closeGui()
                triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "postepWlamanie", {
                  odcisk.postep,
                  odcisk.proby
                }, true, true)
              else
                triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "postepWlamanie", {
                  odcisk.postep,
                  odcisk.proby
                }, true)
              end
              wylosujNoweFragmenty()
            else
              odcisk.proby = odcisk.proby - 1
              if 0 >= odcisk.proby then
                closeGui()
                triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "postepWlamanie", {
                  odcisk.postep,
                  odcisk.proby
                }, false, true)
                exports.st_gui:showPlayerNotification("Wszystkie pr\195\179by zosta\197\130y wykorzystane", "error")
              else
                triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "postepWlamanie", {
                  odcisk.postep,
                  odcisk.proby
                }, false)
                exports.st_gui:showPlayerNotification("Wybrano nieprawid\197\130owy odcisk\nPozosta\197\130e pr\195\179by: " .. odcisk.proby .. "", "error")
              end
            end
            odcisk.czyWybranoPrawidlowy = false
            odcisk.ekranLadowania = false
          end
        end
      end
    end
  end
  if windows.category == "DIALOG" then
    dxDrawRoundedRectangle(_UPVALUE4_.x - 1 / _UPVALUE1_, _UPVALUE4_.y - 1 / _UPVALUE1_, _UPVALUE4_.w + 2 / _UPVALUE1_, _UPVALUE4_.h + 2 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(255, 174, 0, 245))
    dxDrawRoundedRectangle(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h, 25 / _UPVALUE1_, tocolor(33, 33, 33, 255))
    dxDrawRoundedRectangle(_UPVALUE4_.x + 15 / _UPVALUE1_, _UPVALUE4_.y + 40 / _UPVALUE1_, _UPVALUE4_.w - 30 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 230))
    dxDrawText("DIALOG - ZNAJOMY LOMBARDZIASZ", _UPVALUE4_.x + 20 / _UPVALUE1_, _UPVALUE4_.y - 155 / _UPVALUE1_, _UPVALUE4_.x + 362 / _UPVALUE1_, _UPVALUE4_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dialogue = {
      {
        id = 1,
        text = "Mam rzeczy z napadu na domek!"
      },
      {
        id = 2,
        text = "Jednak si\196\153 rozmy\197\155li\197\130em, siema"
      }
    }
    xY = 0
    for _FORV_11_, _FORV_12_ in ipairs(dialogue) do
      xY = xY + 1
      if isMouseIn(_UPVALUE4_.x + 20 / _UPVALUE1_, _UPVALUE4_.y + 70 / _UPVALUE1_ + 115 / _UPVALUE1_ * (xY - 1), 420 / _UPVALUE1_, 50 / _UPVALUE1_) then
        dxDrawText(_FORV_12_.text, _UPVALUE4_.x + 75 / _UPVALUE1_, _UPVALUE4_.y - 15 / _UPVALUE1_ + 230 / _UPVALUE1_ * (xY - 1), _UPVALUE4_.x + 362 / _UPVALUE1_, _UPVALUE4_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE4_.x + 12.5 / _UPVALUE1_, _UPVALUE4_.y + 67.5 / _UPVALUE1_ + 115 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.chat_icon, 0, 0, 0, tocolor(255, 174, 0, 255), false)
      else
        dxDrawText(_FORV_12_.text, _UPVALUE4_.x + 75 / _UPVALUE1_, _UPVALUE4_.y - 15 / _UPVALUE1_ + 230 / _UPVALUE1_ * (xY - 1), _UPVALUE4_.x + 362 / _UPVALUE1_, _UPVALUE4_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawImage(_UPVALUE4_.x + 15 / _UPVALUE1_, _UPVALUE4_.y + 70 / _UPVALUE1_ + 115 / _UPVALUE1_ * (xY - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_, textures.chat_icon, 0, 0, 0, tocolor(255, 174, 0, 255), false)
      end
    end
  end
end
function getElementSpeed(_ARG_0_)
  return (getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2 + getElementVelocity(_ARG_0_) ^ 2) ^ 0.5 * 180
end
function windowRender()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h - 8 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 150))
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h - 12 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 220))
  dxDrawText("napad na domek id: #c9a31e" .. data.houseID, _UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y - 135 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
  dxDrawText("\197\129UP: #00ad23" .. przecinek(data.money) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 70 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  if oddanie.liczbaItemowWAucie then
    dxDrawText("rzeczy w busie: #ffbf00" .. oddanie.liczbaItemowWAucie .. "", _UPVALUE0_.x, _UPVALUE0_.y + 115 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  else
    dxDrawText("rzeczy w domku: #ffbf00" .. #data.itemsTable .. "", _UPVALUE0_.x, _UPVALUE0_.y + 115 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w - 10 / _UPVALUE1_, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
  end
  dxDrawText("" .. RGBToHex(getColorFromHalas(data.halas)) .. "\226\152\138", _UPVALUE0_.x + 11 / _UPVALUE1_, _UPVALUE0_.y + 68 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
  dxDrawText("HA\197\129AS: " .. RGBToHex(getColorFromHalas(data.halas)) .. "" .. string.format("%.1f", data.halas) .. "#ffffff%", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
  dxDrawText("#ffa200\226\154\160\239\184\142", _UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 111 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "left", "center", false, false, false, true, false)
  if data.ostrzezenia >= 3 then
    dxDrawText("OSTRZE\197\187ENIA: #ffbf00" .. data.ostrzezenia .. "#ffffff/#ffbf003", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
  else
    dxDrawText("OSTRZE\197\187ENIA: #ffbf00" .. data.ostrzezenia .. "#ffffff/#ffbf003", _UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
  end
  if getElementInterior(localPlayer) ~= 0 then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 74 / _UPVALUE1_, _UPVALUE0_.w - 200 / _UPVALUE1_, 16 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(45, 45, 45, 255))
    if 10 < (_UPVALUE0_.w - 200 / _UPVALUE1_) * tonumber(data.halas) / tonumber(100) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 74 / _UPVALUE1_, (_UPVALUE0_.w - 200 / _UPVALUE1_) * tonumber(data.halas) / tonumber(100), 16 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(getColorFromHalas(data.halas)), false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y + 74 / _UPVALUE1_, (_UPVALUE0_.w - 200 / _UPVALUE1_) * tonumber(4) / tonumber(100), 16 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(getColorFromHalas(data.halas)), false)
    end
    dxDrawRectangle(_UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_, 1 / _UPVALUE1_, 24 / _UPVALUE1_, tocolor(255, 255, 255, 255))
    dxDrawText("" .. RGBToHex(getColorFromHalas(data.halas)) .. "" .. string.format("%.1f", data.halas) .. "#ffffff%", _UPVALUE0_.x, _UPVALUE0_.y - 53 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font10"), "center", "center", false, false, false, true, false)
    if 0 < getElementSpeed(localPlayer) then
      if isPedDucked(localPlayer) then
      end
      if getControlState("walk") then
      end
      data.halas = data.halas + getElementSpeed(localPlayer) * (0.02 * 0.52 * 0.8)
      if data.halas > 90 and not timerHalas then
        timerHalas = true
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "dodajOstrzezenie")
        setTimer(function()
          timerHalas = false
        end, 2000, 1)
      end
      if data.halas > 100 then
        data.halas = 100
      end
    elseif windows.category == "zbierz \197\130up" then
    else
      data.halas = data.halas - 0.18
      if data.halas < 0 then
        data.halas = 0
      end
    end
  else
    dxDrawText(data.infoText, _UPVALUE0_.x, _UPVALUE0_.y - 25 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, false)
  end
  if 1 <= #data.itemsTable then
    for _FORV_14_, _FORV_15_ in ipairs(data.itemsTable) do
      if getDistanceBetweenPoints3D(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3], getElementPosition(localPlayer)) < 6 and getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4) and getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4) then
        if getDistanceBetweenPoints3D(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3], getElementPosition(localPlayer)) < 1.7 then
          dxDrawCircle(getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4))
          if getKeyState("R") and not clickC and not data.trzymaPrzedmiot then
            clickC = true
            setTimer(function()
              clickC = false
            end, 1500, 1)
            if isPedDucked(localPlayer) then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz kuca\196\135", "error")
              return
            end
            if _FORV_15_[2] == true then
              textures = {
                background = dxCreateTexture(":ST_gui/img/background2.png"),
                chain_icon = dxCreateTexture(":ST_napad_jubiler/img/chain_icon.png"),
                chain2_icon = dxCreateTexture(":ST_napad_jubiler/img/chain2_icon.png"),
                ring_icon = dxCreateTexture(":ST_napad_jubiler/img/ring_icon.png"),
                gold_icon = dxCreateTexture(":ST_napad_jubiler/img/gold_icon.png"),
                glass_case = dxCreateTexture(":ST_napad_jubiler/img/glass_case.png"),
                bag = dxCreateTexture(":ST_napad_jubiler/img/bag.png")
              }
              jewelry_table = {}
              for _FORV_27_ = 0, math.random(3, 5) do
                randomImg = math.random(1, #{
                  textures.chain_icon,
                  textures.ring_icon,
                  textures.gold_icon,
                  textures.chain2_icon
                })
                table.insert(jewelry_table, {
                  pos = {
                    math.random(80, 280),
                    (math.random(160, 280))
                  },
                  img = ({
                    textures.chain_icon,
                    textures.ring_icon,
                    textures.gold_icon,
                    textures.chain2_icon
                  })[randomImg],
                  done = false
                })
              end
              addEventHandler("onClientRender", root, window)
              addEventHandler("onClientClick", root, click)
              windows.background = true
              windows.category = "zbierz \197\130up"
              showCursor(true)
              idBag = {
                id = _FORV_15_[1],
                money = _FORV_15_[4]
              }
              triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiot", false, idBag)
            else
              runningBlock(localPlayer, true)
              data.trzymaPrzedmiot = {
                id = _FORV_15_[1],
                money = _FORV_15_[4]
              }
              triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiot", _FORV_15_[2], data.trzymaPrzedmiot)
            end
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4))
        dxDrawText("R", getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4) - _UPVALUE2_ / 4, getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4) + 162 / _UPVALUE1_, getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4) + _UPVALUE2_ / 4, getScreenFromWorldPosition(_FORV_15_[3][1], _FORV_15_[3][2], _FORV_15_[3][3] + 0.4))
      end
    end
  end
  if isElement(data.colVehicle) and (data.trzymaPrzedmiot or oddanie.pozycjaOddania) and 25 > getDistanceBetweenPoints3D(getElementPosition(data.colVehicle)) and getScreenFromWorldPosition(getElementPosition(data.colVehicle)) and getScreenFromWorldPosition(getElementPosition(data.colVehicle)) then
    if 1 > getDistanceBetweenPoints3D(getElementPosition(data.colVehicle)) then
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        if oddanie.pozycjaOddania then
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiotZBusa", localPlayer)
        elseif data.trzymaPrzedmiot then
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "odlozPrzedmiot", localPlayer, data.trzymaPrzedmiot)
          data.trzymaPrzedmiot = false
          runningBlock(localPlayer, false)
        end
      end
    end
    dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) - 83, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(data.colVehicle)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) - 85, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
    dxDrawText("" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(data.colVehicle)))) .. "m", getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + 2, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
    dxDrawText("#f2ff00" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(data.colVehicle)))) .. "m", getScreenFromWorldPosition(getElementPosition(data.colVehicle)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
    dxDrawCircle(getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(data.colVehicle)) - _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + 152 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(data.colVehicle)) + _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(data.colVehicle)))
  end
  if isElement(oddanie.ped) and not oddanie.pozycjaOddania and 25 > getDistanceBetweenPoints3D(getElementPosition(oddanie.ped)) and getScreenFromWorldPosition(getElementPosition(oddanie.ped)) and getScreenFromWorldPosition(getElementPosition(oddanie.ped)) then
    if 1 > getDistanceBetweenPoints3D(getElementPosition(oddanie.ped)) then
      dxDrawCircle(getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        textures = {
          chat_icon = dxCreateTexture(":ST_dealer/img/chat_icon.png")
        }
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientClick", root, click)
        windows.category = "DIALOG"
        showCursor(true)
      end
    end
    dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) - 83, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(getElementPosition(oddanie.ped)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) - 85, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
    dxDrawText("" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(oddanie.ped)))) .. "m", getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + 2, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
    dxDrawText("#f2ff00" .. math.floor((getDistanceBetweenPoints3D(getElementPosition(oddanie.ped)))) .. "m", getScreenFromWorldPosition(getElementPosition(oddanie.ped)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
    dxDrawCircle(getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
    dxDrawText("R", getScreenFromWorldPosition(getElementPosition(oddanie.ped)) - _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + 152 / _UPVALUE1_, getScreenFromWorldPosition(getElementPosition(oddanie.ped)) + _UPVALUE2_ / 4, getScreenFromWorldPosition(getElementPosition(oddanie.ped)))
  end
  if oddanie.pozycjaOddania and getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) and getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) then
    if 6 > getDistanceBetweenPoints3D(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3], getElementPosition(localPlayer)) then
      dxDrawCircle(getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
      if getKeyState("R") and not clickC then
        clickC = true
        setTimer(function()
          clickC = false
        end, 1500, 1)
        triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "odlozPrzedmiotKoniec", localPlayer)
      end
    end
    dxDrawText("\226\134\134", getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) - 83, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
    dxDrawText("\226\134\134", getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) - _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) - 85, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
    dxDrawText("" .. math.floor((getDistanceBetweenPoints3D(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3], getElementPosition(localPlayer)))) .. "m", getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + 2, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
    dxDrawText("#f2ff00" .. math.floor((getDistanceBetweenPoints3D(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3], getElementPosition(localPlayer)))) .. "m", getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) - _UPVALUE2_ / 5, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
    dxDrawCircle(getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
    dxDrawText("R", getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) - _UPVALUE2_ / 4, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + 152 / _UPVALUE1_, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2) + _UPVALUE2_ / 4, getScreenFromWorldPosition(oddanie.pozycjaOddania[1], oddanie.pozycjaOddania[2], oddanie.pozycjaOddania[3] + 0.2))
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if windows.category == "zbierz \197\130up" and _ARG_0_ == "left" then
    if _ARG_1_ == "down" then
      for _FORV_7_, _FORV_8_ in pairs(jewelry_table) do
        if isMouseIn(_UPVALUE0_.x + _FORV_8_.pos[1], _UPVALUE0_.y + _FORV_8_.pos[2], 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
          data.selectedJewelry = _FORV_7_
        end
      end
      if not data.selectedJewelry then
        return
      end
    elseif isMouseIn(_UPVALUE0_.x + 530 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 280 / _UPVALUE1_, 260 / _UPVALUE1_) then
      if data.selectedJewelry then
        jewelry_table[data.selectedJewelry].pos = {
          getCursorPosition() * _UPVALUE2_ - _UPVALUE0_.x,
          getCursorPosition() * _UPVALUE3_ - _UPVALUE0_.y
        }
        jewelry_table[data.selectedJewelry].done = true
        for _FORV_10_, _FORV_11_ in pairs(jewelry_table) do
          if _FORV_11_.done then
          end
        end
        if 0 + 1 >= tonumber(#jewelry_table) then
          exports.st_gui:showPlayerNotification("Zanie\197\155 \197\130up do pojazdu", "info")
          data.trzymaPrzedmiot = idBag
          triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiotSzafki", 1550, idBag)
          closeGui()
        end
        data.selectedJewelry = false
      end
    elseif data.selectedJewelry then
      jewelry_table[data.selectedJewelry].pos = {
        getCursorPosition() * _UPVALUE2_ - _UPVALUE0_.x,
        getCursorPosition() * _UPVALUE3_ - _UPVALUE0_.y
      }
      jewelry_table[data.selectedJewelry].done = false
      data.selectedJewelry = false
      for _FORV_10_, _FORV_11_ in pairs(jewelry_table) do
        if _FORV_11_.done then
        end
      end
      if 0 + 1 <= tonumber(#jewelry_table) then
        data.doneAllJewelry = false
      end
    end
  end
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.category == "DIALOG" then
      for _FORV_8_, _FORV_9_ in ipairs(dialogue) do
        if isMouseIn(_UPVALUE4_.x + 20 / _UPVALUE1_, _UPVALUE4_.y + 70 / _UPVALUE1_ + 115 / _UPVALUE1_ * (0 + 1 - 1), 450 / _UPVALUE1_, 50 / _UPVALUE1_) then
          if _FORV_9_.id == 1 then
            triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "dodajMiejsceDoOdnoszenia", pozycjeKoncowe.oddanie)
          elseif _FORV_9_.id == 2 then
            for _FORV_14_, _FORV_15_ in pairs(textures) do
              if isElement(_FORV_15_) then
                destroyElement(_FORV_15_)
              end
            end
            textures = {}
            windows.category = false
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientClick", root, click)
            showCursor(false)
          end
        end
      end
    end
    if windows.category == "wlamanie" then
      for _FORV_9_, _FORV_10_ in pairs(odcisk.tabela_fragmenty) do
        if 0 + 1 > 3 then
        end
        if isMouseIn(_UPVALUE0_.x + math.floor(125 / _UPVALUE1_) * (1 - 1) + 55 / _UPVALUE1_, _UPVALUE0_.y + math.floor(125 / _UPVALUE1_) * (1 + 1 - 1) + 130 / _UPVALUE1_, 110 / _UPVALUE1_, 110 / _UPVALUE1_) then
          if odcisk.ekranLadowania then
            return
          end
          odcisk.ekranLadowania = true
          odcisk.postepLadowania = 0
          odcisk.czyWybranoPrawidlowy = false
          if _FORV_10_[6] then
            odcisk.czyWybranoPrawidlowy = true
          end
        end
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "rozpoczynanieNapadu" then
    data = {}
    data.table_interiors = _ARG_2_
    data.enter_pos = _ARG_1_
    data.itemsTable = _ARG_4_
    data.houseID = _ARG_5_
    data.money = 0
    data.halas = 0
    data.ostrzezenia = 0
    data.infoText = "udaj si\196\153 do domu zaznaczonego na mapie"
    data.vehicle = _ARG_3_
    data.colVehicle = createColSphere(0, 0, 0, 1)
    attachElements(data.colVehicle, data.vehicle, 0, -3.8, 0)
    data.exitHouse = createMarker(data.table_interiors.exitPos[2], data.table_interiors.exitPos[3], data.table_interiors.exitPos[4] - 0.9, "cylinder", 0.9, 246, 255, 0, 255)
    setElementInterior(data.exitHouse, data.table_interiors.exitPos[1])
    data.blipHouse = createBlip(_ARG_1_[1], _ARG_1_[2], _ARG_1_[3], 41, 2, 0, 0, 0, 0, 0, 9999)
    for _FORV_10_, _FORV_11_ in ipairs(data.itemsTable) do
      if _FORV_11_[2] ~= true then
        itemsTable[_FORV_11_[1]] = createObject(_FORV_11_[2], _FORV_11_[3][1], _FORV_11_[3][2], _FORV_11_[3][3], 0, 0, _FORV_11_[3][4])
        setElementInterior(itemsTable[_FORV_11_[1]], data.table_interiors.exitPos[1])
      end
    end
    addEventHandler("onClientRender", root, windowRender)
  elseif _ARG_0_ == "usunPrzedmiotWszystkimClient" then
    if isElement(itemsTable[_ARG_1_]) then
      destroyElement(itemsTable[_ARG_1_])
    end
    removeById(data.itemsTable, _ARG_1_)
  elseif _ARG_0_ == "odswiezPotencjalnyLupClient" then
    data.money = _ARG_1_
  elseif _ARG_0_ == "odswiezOstrzezeniaClient" then
    data.ostrzezenia = _ARG_1_
  elseif _ARG_0_ == "stworzBlipSapd" then
    blipPojazduSapd[_ARG_1_] = createBlipAttachedTo(_ARG_1_, 32, 3, 255, 0, 0)
    timerPojazdu[_ARG_1_] = setTimer(function()
      if isElement(blipPojazduSapd[_UPVALUE0_]) then
        destroyElement(blipPojazduSapd[_UPVALUE0_])
      end
    end, 180000, 1)
  elseif _ARG_0_ == "ustawTextNaGorze" then
    data.infoText = _ARG_1_
  elseif _ARG_0_ == "otwieranieDrzwiClient" then
    odcisk = {}
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      odcisk1 = dxCreateTexture("img/odcisk1.png"),
      odcisk2 = dxCreateTexture("img/odcisk2.png"),
      odcisk3 = dxCreateTexture("img/odcisk3.png"),
      odcisk4 = dxCreateTexture("img/odcisk4.png"),
      odcisk5 = dxCreateTexture("img/odcisk5.png"),
      odcisk6 = dxCreateTexture("img/odcisk6.png"),
      odcisk7 = dxCreateTexture("img/odcisk7.png"),
      odcisk8 = dxCreateTexture("img/odcisk8.png"),
      odcisk9 = dxCreateTexture("img/odcisk9.png")
    }
    tabelaOdciski = {
      {
        1,
        textures.odcisk1
      },
      {
        2,
        textures.odcisk2
      },
      {
        3,
        textures.odcisk3
      },
      {
        4,
        textures.odcisk4
      },
      {
        5,
        textures.odcisk5
      },
      {
        6,
        textures.odcisk6
      },
      {
        7,
        textures.odcisk7
      },
      {
        8,
        textures.odcisk8
      }
    }
    odcisk.postep = 0
    odcisk.proby = 3
    wylosujNoweFragmenty()
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    windows.background = true
    windows.category = "wlamanie"
    showCursor(true)
  elseif _ARG_0_ == "dodajKoncowyPunktClient" then
    oddanie = {}
    pozycjeKoncowe = _ARG_1_
    if isElement(data.blipHouse) then
      destroyElement(data.blipHouse)
    end
    oddanie.ped = createPed(28, pozycjeKoncowe.ped[1], pozycjeKoncowe.ped[2], pozycjeKoncowe.ped[3], pozycjeKoncowe.ped[4])
    setElementFrozen(oddanie.ped, true)
    oddanie.blip = createBlip(pozycjeKoncowe.ped[1], pozycjeKoncowe.ped[2], pozycjeKoncowe.ped[3], 41, 2, 0, 0, 0, 0, 0, 9999)
  elseif _ARG_0_ == "dodajMiejsceDoOdnoszeniaClient" then
    oddanie.pozycjaOddania = _ARG_1_
    oddanie.liczbaItemowWAucie = _ARG_2_
    data.infoText = "przenie\197\155 rzeczy z busa w wyznaczone miejsce"
    if isEventHandlerAdded("onClientRender", root, window) then
      for _FORV_9_, _FORV_10_ in pairs(textures) do
        if isElement(_FORV_10_) then
          destroyElement(_FORV_10_)
        end
      end
      textures = {}
      windows.category = false
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      showCursor(false)
    end
  elseif _ARG_0_ == "odlozPrzedmiotKoniecClient" then
    oddanie.liczbaItemowWAucie = _ARG_3_
    rzeczy_odlozone[_ARG_1_[2]] = createObject(_ARG_2_, _ARG_1_[1], _ARG_1_[2], getGroundPosition(_ARG_1_[1], _ARG_1_[2], _ARG_1_[3]) + (_UPVALUE0_[_ARG_2_] or 0), 0, 0, math.random(0, 180))
    setElementCollisionsEnabled(rzeczy_odlozone[_ARG_1_[2]], false)
    if _ARG_4_ then
      endAll()
    end
  elseif _ARG_0_ == "testObj" then
    print("ta")
    data = {}
    data.itemsTable = _ARG_1_
    data.trzymaPrzedmiot = false
    for _FORV_9_, _FORV_10_ in ipairs(data.itemsTable) do
      if _FORV_10_[2] ~= true then
        itemsTable[_FORV_10_[1]] = createObject(_FORV_10_[2], _FORV_10_[3][1], _FORV_10_[3][2], _FORV_10_[3][3], 0, 0, _FORV_10_[3][4])
        setElementInterior(itemsTable[_FORV_10_[1]], 3)
      end
    end
    addEventHandler("onClientRender", root, remderXD)
  end
end)
function remderXD()
  if #data.itemsTable >= 1 then
    for _FORV_6_, _FORV_7_ in ipairs(data.itemsTable) do
      if getDistanceBetweenPoints3D(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3], getElementPosition(localPlayer)) < 6 and getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4) and getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4) then
        if getDistanceBetweenPoints3D(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3], getElementPosition(localPlayer)) < 1.7 then
          dxDrawCircle(getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4))
          if getKeyState("R") and not clickC and not data.trzymaPrzedmiot then
            clickC = true
            setTimer(function()
              clickC = false
            end, 1500, 1)
            if isPedDucked(localPlayer) then
              exports.st_gui:showPlayerNotification("Nie mo\197\188esz kuca\196\135", "error")
              return
            end
            if _FORV_7_[2] == true then
              textures = {
                background = dxCreateTexture(":ST_gui/img/background2.png"),
                chain_icon = dxCreateTexture(":ST_attack_org/img/chain_icon.png"),
                chain2_icon = dxCreateTexture(":ST_attack_org/img/chain2_icon.png"),
                ring_icon = dxCreateTexture(":ST_attack_org/img/ring_icon.png"),
                gold_icon = dxCreateTexture(":ST_attack_org/img/gold_icon.png"),
                glass_case = dxCreateTexture(":ST_attack_org/img/glass_case.png"),
                bag = dxCreateTexture(":ST_attack_org/img/bag.png")
              }
              jewelry_table = {}
              for _FORV_19_ = 0, math.random(3, 5) do
                randomImg = math.random(1, #{
                  textures.chain_icon,
                  textures.ring_icon,
                  textures.gold_icon,
                  textures.chain2_icon
                })
                table.insert(jewelry_table, {
                  pos = {
                    math.random(80, 280),
                    (math.random(160, 280))
                  },
                  img = ({
                    textures.chain_icon,
                    textures.ring_icon,
                    textures.gold_icon,
                    textures.chain2_icon
                  })[randomImg],
                  done = false
                })
              end
              addEventHandler("onClientRender", root, window)
              addEventHandler("onClientClick", root, click)
              windows.background = true
              windows.category = "zbierz \197\130up"
              showCursor(true)
              idBag = {
                id = _FORV_7_[1],
                money = _FORV_7_[4]
              }
              triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiot", false, idBag)
            else
              runningBlock(localPlayer, true)
              data.trzymaPrzedmiot = {
                id = _FORV_7_[1],
                money = _FORV_7_[4]
              }
              triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wezPrzedmiot", _FORV_7_[2], data.trzymaPrzedmiot)
            end
          end
        end
        dxDrawCircle(getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4))
        dxDrawText("R", getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4) - _UPVALUE1_ / 4, getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4) + 162 / _UPVALUE0_, getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4) + _UPVALUE1_ / 4, getScreenFromWorldPosition(_FORV_7_[3][1], _FORV_7_[3][2], _FORV_7_[3][3] + 0.4))
      end
    end
  end
end
function wylosujNoweFragmenty()
  odcisk.wylosowany = math.random(1, 9)
  odcisk.obrazGlowny = tabelaOdciski[odcisk.wylosowany][2]
  odcisk.tabela_fragmenty = {}
  table.insert(odcisk.tabela_fragmenty, {
    odcisk.wylosowany,
    tabela_fragmentyPozycje[math.random(1, 8)][1],
    tabela_fragmentyPozycje[math.random(1, 8)][2],
    tabela_fragmentyPozycje[math.random(1, 8)][3],
    tabela_fragmentyPozycje[math.random(1, 8)][4],
    true
  })
  for _FORV_8_ = 2, 9 do
    while math.random(1, 8) == odcisk.wylosowany do
    end
    table.insert(odcisk.tabela_fragmenty, {
      math.random(1, 8),
      tabela_fragmentyPozycje[math.random(1, 8)][1],
      tabela_fragmentyPozycje[math.random(1, 8)][2],
      tabela_fragmentyPozycje[math.random(1, 8)][3],
      tabela_fragmentyPozycje[math.random(1, 8)][4],
      false
    })
  end
  shuffleTable(odcisk.tabela_fragmenty)
end
function endAll()
  for _FORV_3_, _FORV_4_ in ipairs(data.itemsTable) do
    if isElement(itemsTable[_FORV_4_[1]]) then
      destroyElement(koszJob[_FORV_4_[1]])
    end
  end
  if isElement(data.exitHouse) then
    destroyElement(data.exitHouse)
  end
  if isElement(data.blipHouse) then
    destroyElement(data.blipHouse)
  end
  if isElement(data.colVehicle) then
    destroyElement(data.colVehicle)
  end
  if isElement(oddanie.blip) then
    destroyElement(oddanie.blip)
  end
  if isElement(oddanie.ped) then
    destroyElement(oddanie.ped)
  end
  removeEventHandler("onClientRender", root, windowRender)
  setTimer(function()
    for _FORV_3_, _FORV_4_ in pairs(rzeczy_odlozone) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
  end, 30000, 1)
  oddanie = {}
  odcisk = {}
  data = {}
end
function closeGui()
  for _FORV_3_, _FORV_4_ in pairs(textures) do
    if isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  textures = {}
  removeEventHandler("onClientRender", root, window)
  removeEventHandler("onClientClick", root, click)
  windows.background = false
  windows.category = false
  showCursor(false)
  odcisk = {}
end
addEventHandler("onClientMarkerHit", resourceRoot, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and source == data.exitHouse then
    triggerServerEvent("evEwenciks_74653tsfghdfs", resourceRoot, "wyjdzZDomku", data.enter_pos)
  end
end)
function renderBieganie()
  keys = getBoundKeys("forwards")
  for _FORV_3_, _FORV_4_ in pairs(keys) do
    if _FORV_4_ and blocked then
      setPedControlState(localPlayer, "walk", false)
    end
  end
end
function runningBlock(_ARG_0_, _ARG_1_)
  if _ARG_1_ then
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
    toggleControl("crouch", false)
    toggleControl("sprint", false)
    toggleControl("jump", false)
  else
    toggleControl("walk", true)
    toggleControl("crouch", true)
    toggleControl("sprint", true)
    toggleControl("jump", true)
    setPedControlState("walk", false)
    toggleControl("aim_weapon", false)
    toggleControl("fire", false)
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
