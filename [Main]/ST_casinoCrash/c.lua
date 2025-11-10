function window()
  if _UPVALUE0_.main == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x - 1 / _UPVALUE2_, _UPVALUE1_.y - 1 / _UPVALUE2_, _UPVALUE1_.w + 2 / _UPVALUE2_, _UPVALUE1_.h + 2 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(255, 187, 0, 240), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, 25 / _UPVALUE2_, tocolor(20, 20, 20, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, 55 / _UPVALUE2_, 25 / _UPVALUE2_, tocolor(13, 13, 13, 255), false)
    if isMouseIn(_UPVALUE1_.x + _UPVALUE1_.w - 42 / _UPVALUE2_, _UPVALUE1_.y + 15 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 43 / _UPVALUE2_, _UPVALUE1_.y + 15 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + _UPVALUE1_.w - 42 / _UPVALUE2_, _UPVALUE1_.y + 16 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      if 0 < math.floor(_FORV_8_.profit_casino) then
        dxDrawText("ZYSK Z KASYNA: #03b500+" .. przecinek(math.floor(_FORV_8_.profit_casino)) .. " PLN", _UPVALUE1_.x + 18 / _UPVALUE2_, _UPVALUE1_.y - 590 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("STRATA NA KASYNIE: #b50000" .. przecinek(math.floor(_FORV_8_.profit_casino)) .. " PLN", _UPVALUE1_.x + 18 / _UPVALUE2_, _UPVALUE1_.y - 590 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      end
    end
    if _UPVALUE3_.obstawil then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 555 / _UPVALUE2_, 690 / _UPVALUE2_, 74 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(100, 208, 100, 60), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 22 / _UPVALUE2_, _UPVALUE1_.y + 557 / _UPVALUE2_, 686 / _UPVALUE2_, 70 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(16, 16, 16, 255), false)
      if _UPVALUE3_.losowanie and _UPVALUE3_.crashLoading == false or _UPVALUE3_.crashLoading then
        moneyLos = 0
        for _FORV_7_, _FORV_8_ in pairs(_UPVALUE4_) do
          if _UPVALUE4_[_FORV_7_][1] == getPlayerName(localPlayer) then
            if _UPVALUE4_[_FORV_7_][3] then
              moneyLos = _UPVALUE4_[_FORV_7_][2]
              crashLos = _UPVALUE4_[_FORV_7_][3]
            else
              moneyLos = _UPVALUE4_[_FORV_7_][2] * (_UPVALUE3_.crashLoading / 1000)
              crashLos = _UPVALUE3_.crashLoading
            end
            if _UPVALUE4_[_FORV_7_][3] then
              dxDrawText("wygrywasz", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 504 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, true, true, true, false)
              dxDrawText("#00ff04x" .. string.format("%.2f", _UPVALUE4_[_FORV_7_][3] / 1000), _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, true, true, true, false)
              dxDrawText("#00ff04+" .. przecinek(math.floor(_UPVALUE4_[_FORV_7_][2] - _UPVALUE4_[_FORV_7_][2] / (_UPVALUE4_[_FORV_7_][3] / 1000))) .. "  PLN", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 564 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
            elseif _UPVALUE3_.losowanie == false and _UPVALUE3_.odliczanie == false then
              dxDrawText("x" .. string.format("%.2f", crashLos / 1000), _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, true, true, true, false)
              dxDrawText("#e60000PRZEGRYWASZ", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 504 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, true, true, true, false)
              dxDrawText("#e60000-" .. przecinek(_UPVALUE4_[_FORV_7_][2]) .. "  PLN", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 564 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
            elseif _UPVALUE3_.losowanie and _UPVALUE3_.obstawil then
              if isMouseIn(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 555 / _UPVALUE2_, 690 / _UPVALUE2_, 74 / _UPVALUE2_) then
                dxDrawRoundedRectangle(_UPVALUE1_.x + 22 / _UPVALUE2_, _UPVALUE1_.y + 557 / _UPVALUE2_, 686 / _UPVALUE2_, 70 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(16, 56, 16, 55), false)
                dxDrawText("ZGARNIJ", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 504 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, true, true, true, false)
                dxDrawText("#00ff04" .. przecinek(math.floor(moneyLos)) .. " PLN", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 564 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, true, true, true, false)
                dxDrawText("#00ad03x" .. string.format("%.2f", crashLos / 1000), _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, true, true, true, false)
                dxDrawText("KLIKNIJ, ABY ZAROBI\196\134\n#00ff04+" .. przecinek(math.floor(moneyLos - _UPVALUE4_[_FORV_7_][2])) .. " PLN", _UPVALUE1_.x - 160 / _UPVALUE2_, _UPVALUE1_.y + 538 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, true, true, true, false)
              else
                dxDrawText("ZGARNIJ", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 504 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, true, true, true, false)
                dxDrawText("#00ff04" .. przecinek(math.floor(moneyLos)) .. " PLN", _UPVALUE1_.x + 150 / _UPVALUE2_, _UPVALUE1_.y + 564 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, true, true, true, false)
                dxDrawText("#00ad03x" .. string.format("%.2f", crashLos / 1000), _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, true, true, true, false)
                dxDrawText("KLIKNIJ, ABY ZAROBI\196\134\n#00ff04+" .. przecinek(math.floor(moneyLos - _UPVALUE4_[_FORV_7_][2])) .. " PLN", _UPVALUE1_.x - 160 / _UPVALUE2_, _UPVALUE1_.y + 538 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 200), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, true, true, true, false)
              end
            else
              dxDrawText("POSTAWIONA KWOTA: #009411" .. przecinek(math.floor(_UPVALUE3_.kwota / 1.0103)) .. " PLN", _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, true, true, true, false)
            end
          end
        end
      end
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 555 / _UPVALUE2_, 690 / _UPVALUE2_, 74 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 50), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 568.5 / _UPVALUE2_, 195 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
      dxDrawText(przecinek(_UPVALUE3_.kwota) .. " PLN", _UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font18"), "left", "center", true)
      for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE3_.addMoney) do
        if isMouseIn(_UPVALUE1_.x + 230 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 568.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 230 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 568.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(21, 21, 21, 255), false)
          dxDrawText(_FORV_9_[1], _UPVALUE1_.x - 592 / _UPVALUE2_ + 104 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 230 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 568.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
          dxDrawText(_FORV_9_[1], _UPVALUE1_.x - 592 / _UPVALUE2_ + 104 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 539 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
        end
      end
      if _UPVALUE3_.kwota == 0 then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 648 / _UPVALUE2_, _UPVALUE1_.y + 567.5 / _UPVALUE2_, 52 / _UPVALUE2_, 49 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(70, 70, 70, 255), false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 649 / _UPVALUE2_, _UPVALUE1_.y + 568.5 / _UPVALUE2_, 50 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
        dxDrawText("\226\156\148\239\184\143", _UPVALUE1_.x + 249 / _UPVALUE2_, _UPVALUE1_.y + 538 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "center", "center", true)
      elseif isMouseIn(_UPVALUE1_.x + 648 / _UPVALUE2_, _UPVALUE1_.y + 567.5 / _UPVALUE2_, 52 / _UPVALUE2_, 49 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 648 / _UPVALUE2_, _UPVALUE1_.y + 567.5 / _UPVALUE2_, 52 / _UPVALUE2_, 49 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(70, 255, 70, 180), false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 649 / _UPVALUE2_, _UPVALUE1_.y + 568.5 / _UPVALUE2_, 50 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(19, 19, 19, 255), false)
        dxDrawText("\226\156\148\239\184\143", _UPVALUE1_.x + 249 / _UPVALUE2_, _UPVALUE1_.y + 538 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(0, 200, 0, 180), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "center", "center", true)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = _UPVALUE5_ * cxs, _UPVALUE6_ * cys
          dxDrawText("Postaw", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
          dxDrawText("Postaw", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 648 / _UPVALUE2_, _UPVALUE1_.y + 567.5 / _UPVALUE2_, 52 / _UPVALUE2_, 49 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(70, 255, 70, 255), false)
        dxDrawRoundedRectangle(_UPVALUE1_.x + 649 / _UPVALUE2_, _UPVALUE1_.y + 568.5 / _UPVALUE2_, 50 / _UPVALUE2_, 47 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(25, 25, 25, 255), false)
        dxDrawText("\226\156\148\239\184\143", _UPVALUE1_.x + 249 / _UPVALUE2_, _UPVALUE1_.y + 538 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(0, 200, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "center", "center", true)
      end
    end
    for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE3_.historyCrash) do
      if 1 <= _FORV_8_ and _FORV_8_ <= 12 then
        if _FORV_9_ <= 111 then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 25 / _UPVALUE2_ + 57 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 513 / _UPVALUE2_, 50 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(100, 0, 0, 200), false)
        elseif 112 <= _FORV_9_ and _FORV_9_ <= 179 then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 25 / _UPVALUE2_ + 57 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 513 / _UPVALUE2_, 50 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(0, 131, 255, 200), false)
        elseif 180 <= _FORV_9_ and _FORV_9_ <= 210 then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 25 / _UPVALUE2_ + 57 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 513 / _UPVALUE2_, 50 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(0, 150, 18, 200), false)
        elseif 211 <= _FORV_9_ and _FORV_9_ <= 300 then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 25 / _UPVALUE2_ + 57 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 513 / _UPVALUE2_, 50 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(123, 0, 161, 200), false)
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 25 / _UPVALUE2_ + 57 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 513 / _UPVALUE2_, 50 / _UPVALUE2_, 30 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(196, 168, 53, 200), false)
        end
        dxDrawText("x" .. string.format("%.2f", _FORV_9_ / 100), _UPVALUE1_.x - 999 / _UPVALUE2_ + 114 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.y + 410 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 220), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "center", "center", true)
      end
    end
    if _UPVALUE3_.odliczanie then
      odliczaniepasek = interpolateBetween(690 / _UPVALUE2_, 0, 0, 35 / _UPVALUE2_, 0, 0, (getTickCount() - kolejnelosowaniestart) / (kolejnelosowanie - kolejnelosowaniestart), "OutQuad")
      dxDrawRoundedRectangle(_UPVALUE1_.x + 18 / _UPVALUE2_, _UPVALUE1_.y + 68 / _UPVALUE2_, odliczaniepasek / _UPVALUE2_, 434 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(252, 165, 3, 230), false)
      dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, 686 / _UPVALUE2_, 430 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(17, 17, 17, 255))
      dxDrawText("start za", _UPVALUE1_.x - 370 / _UPVALUE2_, _UPVALUE1_.y - 170 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, true, true, true, false)
      dxDrawText("#ffbf00" .. string.format("%.2f", (kolejnelosowanie - getTickCount()) / 1000) .. "#ffffffs", _UPVALUE1_.x - 370 / _UPVALUE2_, _UPVALUE1_.y - 75 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, true, true, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 20 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, 690 / _UPVALUE2_, 430 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 50))
      if _UPVALUE3_.crashTime then
        dxDrawText("#ff3232x" .. string.format("%.2f", _UPVALUE3_.crashLoading / 1000), _UPVALUE1_.x - 370 / _UPVALUE2_, _UPVALUE1_.y - 160 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
      else
        dxDrawText("#ffbf00x" .. string.format("%.2f", _UPVALUE3_.crashLoading / 1000), _UPVALUE1_.x - 370 / _UPVALUE2_, _UPVALUE1_.y - 160 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, true, false)
      end
      if _UPVALUE3_.losowanie then
        if _UPVALUE3_.crashLoading > 3000 then
          table.remove(_UPVALUE3_.dataHistory, #_UPVALUE3_.dataHistory)
        end
        table.insert(_UPVALUE3_.dataHistory, 568 / _UPVALUE2_ * (math.min(_UPVALUE3_.crashLoading, 3000) / 3000))
      end
      if 10 < #_UPVALUE3_.dataHistory then
        for _FORV_13_ = 2, #_UPVALUE3_.dataHistory do
          if _UPVALUE3_.crashTime then
            dxDrawLine(_UPVALUE1_.x + 70 / _UPVALUE2_ - 620 / _UPVALUE2_ / (#_UPVALUE3_.dataHistory - 1) / _UPVALUE2_, _UPVALUE1_.y + 665 / _UPVALUE2_ - _UPVALUE3_.dataHistory[_FORV_13_ - 1], _UPVALUE1_.x + 70 / _UPVALUE2_, _UPVALUE1_.y + 665 / _UPVALUE2_ - _UPVALUE3_.dataHistory[_FORV_13_], tocolor(255, 50, 50, 255), 4 / _UPVALUE2_)
          else
            dxDrawLine(_UPVALUE1_.x + 70 / _UPVALUE2_ - 620 / _UPVALUE2_ / (#_UPVALUE3_.dataHistory - 1) / _UPVALUE2_, _UPVALUE1_.y + 665 / _UPVALUE2_ - _UPVALUE3_.dataHistory[_FORV_13_ - 1], _UPVALUE1_.x + 70 / _UPVALUE2_, _UPVALUE1_.y + 665 / _UPVALUE2_ - _UPVALUE3_.dataHistory[_FORV_13_], tocolor(39, 255, 36, 255), 4 / _UPVALUE2_)
          end
        end
      else
        dxDrawLine(_UPVALUE1_.x + 65 / _UPVALUE2_, _UPVALUE1_.y + 450 / _UPVALUE2_, _UPVALUE1_.x + 400 / _UPVALUE2_, _UPVALUE1_.y + 450 / _UPVALUE2_, tocolor(39, 255, 36, 200), 4 / _UPVALUE2_)
      end
    end
    for _FORV_8_ = 0, 4 do
      dxDrawLine(_UPVALUE1_.x + 67 / _UPVALUE2_, _UPVALUE1_.y + (478 - _FORV_8_ * 95) / _UPVALUE2_, _UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + (478 - _FORV_8_ * 95) / _UPVALUE2_, tocolor(60, 60, 60, 40), 2 / _UPVALUE2_)
    end
    dxDrawText("x3.0", _UPVALUE1_.x, _UPVALUE1_.y - 450 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 1040 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal13"), "right", "center", true)
    dxDrawText("x2.5", _UPVALUE1_.x, _UPVALUE1_.y - 265 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 1040 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal13"), "right", "center", true)
    dxDrawText("x2.0", _UPVALUE1_.x, _UPVALUE1_.y - 75 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 1040 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal13"), "right", "center", true)
    dxDrawText("x1.5", _UPVALUE1_.x, _UPVALUE1_.y + 115 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 1040 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal13"), "right", "center", true)
    dxDrawText("x1.0", _UPVALUE1_.x, _UPVALUE1_.y + 305 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w - 1040 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal13"), "right", "center", true)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 725 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, 355 / _UPVALUE2_, 560 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 50))
    dxDrawRoundedRectangle(_UPVALUE1_.x + 725 / _UPVALUE2_, _UPVALUE1_.y + 70 / _UPVALUE2_, 355 / _UPVALUE2_, 50 / _UPVALUE2_, 20 / _UPVALUE2_, tocolor(0, 0, 0, 50))
    dxDrawImage(_UPVALUE1_.x + 735 / _UPVALUE2_, _UPVALUE1_.y + 80 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.members_icon, 0, 0, 0, tocolor(240, 240, 240, 255), false)
    dxDrawText(#_UPVALUE4_, _UPVALUE1_.x + 775 / _UPVALUE2_, _UPVALUE1_.y - 455 / _UPVALUE2_, _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    for _FORV_10_, _FORV_11_ in pairs(_UPVALUE4_) do
      if 1 <= _FORV_10_ and _FORV_10_ <= 9 then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 345 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(35, 35, 35, 50), false)
        if _UPVALUE4_[_FORV_10_][3] then
          crashLos = _UPVALUE4_[_FORV_10_][3]
        else
          crashLos = _UPVALUE3_.crashLoading
        end
        if _UPVALUE4_[_FORV_10_][3] then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 345 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(35, 100, 35, 50), false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 880 / _UPVALUE2_, _UPVALUE1_.y + 135 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 45 / _UPVALUE2_, 25 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(0, 255, 4, 100), false)
          dxDrawText("x" .. string.format("%.2f", _UPVALUE4_[_FORV_10_][3] / 1000), _UPVALUE1_.x + 705 / _UPVALUE2_, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
          dxDrawText("#00ff04+" .. przecinek(math.floor(_UPVALUE4_[_FORV_10_][2] - _UPVALUE4_[_FORV_10_][2] / (_UPVALUE4_[_FORV_10_][3] / 1000))) .. "  PLN", _UPVALUE1_.x, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 40 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        elseif _UPVALUE3_.losowanie == false and _UPVALUE3_.odliczanie == false then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 345 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(100, 35, 35, 50), false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 880 / _UPVALUE2_, _UPVALUE1_.y + 135 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 45 / _UPVALUE2_, 25 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(255, 5, 5, 100), false)
          dxDrawText("x" .. string.format("%.2f", crashLos / 1000), _UPVALUE1_.x + 705 / _UPVALUE2_, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
          dxDrawText("#e60000-" .. przecinek(_UPVALUE4_[_FORV_10_][2]) .. "  PLN", _UPVALUE1_.x, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 40 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 125 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 345 / _UPVALUE2_, 45 / _UPVALUE2_, 18 / _UPVALUE2_, tocolor(35, 35, 35, 50), false)
          dxDrawRoundedRectangle(_UPVALUE1_.x + 880 / _UPVALUE2_, _UPVALUE1_.y + 135 / _UPVALUE2_ + 56 / _UPVALUE2_ * (0 + 1 - 1), 45 / _UPVALUE2_, 25 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(50, 50, 50, 50), false)
          dxDrawText("?", _UPVALUE1_.x + 705 / _UPVALUE2_, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, false, false, false)
          dxDrawText("#00ad11" .. przecinek(_UPVALUE4_[_FORV_10_][2]) .. "  PLN", _UPVALUE1_.x, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w - 40 / _UPVALUE2_, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(220, 220, 220, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        end
        dxDrawText(_UPVALUE4_[_FORV_10_][1], _UPVALUE1_.x + 745 / _UPVALUE2_, _UPVALUE1_.y - 351 / _UPVALUE2_ + 112 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE1_.x + _UPVALUE1_.w, _UPVALUE1_.y + _UPVALUE1_.h, tocolor(240, 240, 240, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.main == true then
      for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE1_.addMoney) do
        if isMouseIn(_UPVALUE3_.x + 230 / _UPVALUE2_ + 52 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE3_.y + 568.5 / _UPVALUE2_, 47 / _UPVALUE2_, 47 / _UPVALUE2_) and _UPVALUE1_.obstawil == false then
          if _FORV_9_[1] == "clear" then
            _UPVALUE1_.kwota = 0
          elseif _FORV_9_[1] == "1/2" then
            _UPVALUE1_.kwota = math.floor(_UPVALUE1_.kwota / 2)
          elseif _FORV_9_[1] == "x2" then
            _UPVALUE1_.kwota = math.floor(_UPVALUE1_.kwota * 2)
          elseif _FORV_9_[1] == "MAX" then
            if getElementData(localPlayer, "player:moneyMNn") > 1500000 then
              _UPVALUE1_.kwota = 1500000
            else
              _UPVALUE1_.kwota = getElementData(localPlayer, "player:moneyMNn")
            end
          else
            _UPVALUE1_.kwota = _UPVALUE1_.kwota + _FORV_9_[2]
          end
        end
      end
    end
    if _UPVALUE1_.obstawil then
      if isMouseIn(_UPVALUE3_.x + 20 / _UPVALUE2_, _UPVALUE3_.y + 555 / _UPVALUE2_, 690 / _UPVALUE2_, 74 / _UPVALUE2_) and _UPVALUE0_.main == true and _UPVALUE1_.losowanie then
        if _UPVALUE1_.crashLoading < 1001 then
          return
        end
        triggerServerEvent("evEwenciks_qrewjrts", resourceRoot, "crashStop", localPlayer, _UPVALUE1_.crashLoading)
      end
    elseif isMouseIn(_UPVALUE3_.x + 648 / _UPVALUE2_, _UPVALUE3_.y + 567.5 / _UPVALUE2_, 52 / _UPVALUE2_, 49 / _UPVALUE2_) and _UPVALUE0_.main == true and _UPVALUE1_.losowanie == false and _UPVALUE1_.odliczanie then
      if tonumber(_UPVALUE1_.kwota) == 0 then
        return
      end
      if getElementData(localPlayer, "player:moneyMNn") < tonumber(_UPVALUE1_.kwota) then
        exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
        return
      end
      if 1500000 < tonumber(_UPVALUE1_.kwota) then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz obstawi\196\135 wi\196\153cej", "error")
        return
      end
      _UPVALUE1_.obstawil = true
      triggerServerEvent("evEwenciks_qrewjrts", resourceRoot, "obstawianieServer", localPlayer, math.floor(_UPVALUE1_.kwota))
    end
    if isMouseIn(_UPVALUE3_.x + _UPVALUE3_.w - 42 / _UPVALUE2_, _UPVALUE3_.y + 15 / _UPVALUE2_, 27 / _UPVALUE2_, 27 / _UPVALUE2_) and _UPVALUE0_.main == true then
      showCursor(false)
      _UPVALUE0_.main = false
      for _FORV_7_, _FORV_8_ in pairs(textures) do
        if isElement(_FORV_8_) then
          destroyElement(_FORV_8_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showGui" then
    if _UPVALUE0_.main == true then
      return
    end
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientClick", root, click)
    _UPVALUE0_.main = true
    showCursor(true)
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      members_icon = dxCreateTexture(":ST_organization_panel/img/members_icon.png")
    }
    _UPVALUE1_.addMoney = {
      {"clear"},
      {"1k", 1000},
      {"10k", 10000},
      {"100k", 100000},
      {"1kk", 1000000},
      {"1/2"},
      {"x2"},
      {"MAX"}
    }
    table_statistics = _ARG_2_
    _UPVALUE1_.historyCrash = _ARG_1_
    _UPVALUE1_.kwota = 0
  elseif _ARG_0_ == "losowanie" then
    _UPVALUE1_.odliczanie = false
    _UPVALUE2_ = _ARG_1_
    _UPVALUE1_.losowanie = true
    _UPVALUE1_.crashLoading = 1000
    _UPVALUE1_.dataHistory = {}
    if isTimer(timer) then
      killTimer(timer)
    end
    timer = setTimer(function()
      _UPVALUE0_.crashLoading = _UPVALUE0_.crashLoading + 10.35
    end, 100, _UPVALUE2_)
  elseif _ARG_0_ == "reloadHistory" then
    _UPVALUE1_.losowanie = false
    if isTimer(timer) then
      killTimer(timer)
    end
    _UPVALUE1_.crashLoading = 1000 + _UPVALUE2_ * 10
    _UPVALUE1_.crashTime = true
    setTimer(function()
      _UPVALUE0_.historyCrash = _UPVALUE1_
    end, 1000, 1)
  elseif _ARG_0_ == "crashStopClient" then
    for _FORV_8_, _FORV_9_ in pairs(_UPVALUE3_) do
      if _UPVALUE3_[_FORV_8_][1] == getPlayerName(_ARG_1_) then
        _UPVALUE3_[_FORV_8_][2] = math.floor(_UPVALUE3_[_FORV_8_][2] * (_ARG_2_ / 1000))
        _UPVALUE3_[_FORV_8_][3] = _ARG_2_
      end
    end
  elseif _ARG_0_ == "odliczanieClient" then
    _UPVALUE1_.obstawil = false
    kolejnelosowaniestart = getTickCount()
    kolejnelosowanie = getTickCount() + 15000
    _UPVALUE1_.odliczanie = true
    _UPVALUE1_.crashTime = false
    _UPVALUE3_ = {}
  elseif _ARG_0_ == "obstawianieClient" then
    table.insert(_UPVALUE3_, {
      "" .. getPlayerName(_ARG_1_) .. "",
      math.floor(_ARG_2_),
      false
    })
    table.sort(_UPVALUE3_, function(_ARG_0_, _ARG_1_)
      return _ARG_0_[2] > _ARG_1_[2]
    end)
  elseif _ARG_0_ == "updateProfit" then
    table_statistics = _ARG_1_
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
getResourceName(getThisResource(), true, 280045852)
return
