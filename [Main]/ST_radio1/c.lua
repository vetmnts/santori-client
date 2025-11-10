k = 1
n = 6
m = 6
function isUrlBlocked(_ARG_0_)
  for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_) do
    if string.sub(_ARG_0_:match("^%s*(.-)%s*$"), 1, 17) == string.sub(_FORV_6_, 1, 17) then
      return true
    end
  end
  return false
end
function window()
  if _UPVALUE0_.background == true then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 9 / _UPVALUE2_, _UPVALUE1_.y + 5 / _UPVALUE2_, _UPVALUE1_.w - 18 / _UPVALUE2_, _UPVALUE1_.h - 10 / _UPVALUE2_, 35 / _UPVALUE2_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w, _UPVALUE1_.h, textures.background, 0, 0, 0, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 62 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    if _UPVALUE0_.category == "radio" then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 29 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 112 / _UPVALUE2_, 37 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(255, 187, 0, 150))
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 29 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 112 / _UPVALUE2_, 37 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(50, 50, 50, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 19 / _UPVALUE2_, 110 / _UPVALUE2_, 35 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(15, 15, 15, 255))
    dxDrawText("RADIO", _UPVALUE1_.x - 190 / _UPVALUE2_, _UPVALUE1_.y - 126 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
    if _UPVALUE0_.category == "prezenterzy" then
      dxDrawRoundedRectangle(_UPVALUE1_.x + 159 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 112 / _UPVALUE2_, 37 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(255, 187, 0, 150))
    else
      dxDrawRoundedRectangle(_UPVALUE1_.x + 159 / _UPVALUE2_, _UPVALUE1_.y + 18 / _UPVALUE2_, 112 / _UPVALUE2_, 37 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(50, 50, 50, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE1_.x + 160 / _UPVALUE2_, _UPVALUE1_.y + 19 / _UPVALUE2_, 110 / _UPVALUE2_, 35 / _UPVALUE2_, 10 / _UPVALUE2_, tocolor(15, 15, 15, 255))
    dxDrawText("PREZENTERZY", _UPVALUE1_.x + 70 / _UPVALUE2_, _UPVALUE1_.y - 126 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
  end
  if _UPVALUE0_.category == "prezenterzy" then
    if jestPrezenterem == true then
      if jestAudycja then
        if isMouseIn(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(15, 15, 15, 255))
          dxDrawRoundedRectangle(_UPVALUE1_.x + 817.5 / _UPVALUE2_, _UPVALUE1_.y + 30.5 / _UPVALUE2_, 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(200, 200, 200, 230))
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
            dxDrawText("Zako\197\132cz audycj\196\153", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            dxDrawText("Zako\197\132cz audycj\196\153", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(20, 20, 20, 255))
          dxDrawRoundedRectangle(_UPVALUE1_.x + 817.5 / _UPVALUE2_, _UPVALUE1_.y + 30.5 / _UPVALUE2_, 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 230))
        end
        if isMouseIn(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(15, 15, 15, 255))
          dxDrawImage(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 25.5 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.promote_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
            dxDrawText("Og\197\130o\197\155 audycj\196\153", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            dxDrawText("Og\197\130o\197\155 audycj\196\153", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(20, 20, 20, 255))
          dxDrawImage(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 25.5 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.promote_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      elseif isMouseIn(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(15, 15, 15, 255))
        dxDrawImage(_UPVALUE1_.x + 812.5 / _UPVALUE2_, _UPVALUE1_.y + 25.5 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.play_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        if isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
          dxDrawText("Rozpocznij audycj\196\153", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          dxDrawText("Rozpocznij audycj\196\153", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(20, 20, 20, 255))
        dxDrawImage(_UPVALUE1_.x + 812.5 / _UPVALUE2_, _UPVALUE1_.y + 25.5 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.play_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE5_) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 76 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 805 / _UPVALUE2_, 63 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 230))
        if _UPVALUE5_[_FORV_7_][4] ~= false then
          dxDrawImage(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 83 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 50 / _UPVALUE2_, 50 / _UPVALUE2_, _UPVALUE5_[_FORV_7_][4], 0, 0, 0, tocolor(220, 220, 220, 255), false)
        else
          dxDrawImage(_UPVALUE1_.x + 40 / _UPVALUE2_, _UPVALUE1_.y + 83 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 50 / _UPVALUE2_, 50 / _UPVALUE2_, textures.user_icon, 0, 0, 0, tocolor(220, 220, 220, 255), false)
        end
        dxDrawRectangle(_UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 90 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 1 / _UPVALUE2_, 32 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawRectangle(_UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y + 122 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawText(_FORV_8_[2], _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y - 13 / _UPVALUE2_ + 138 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(230, 230, 230, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
        dxDrawText("\197\129\196\133czny czas audycji: " .. secondsToClock(60 * _FORV_8_[3]), _UPVALUE1_.x + 120 / _UPVALUE2_, _UPVALUE1_.y + 43 / _UPVALUE2_ + 138 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font12"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(_UPVALUE1_.x + 825 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 1 / _UPVALUE2_, 32 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawRectangle(_UPVALUE1_.x + 811 / _UPVALUE2_, _UPVALUE1_.y + 124 / _UPVALUE2_ + 69 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 255))
        dxDrawText("Przeprowadzone audycje ", _UPVALUE1_.x, _UPVALUE1_.y - 11 / _UPVALUE2_ + 138 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 455 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font14"), "right", "center", false, false, false, true, false)
        dxDrawText("#ffbf00" .. _FORV_8_[5], _UPVALUE1_.x, _UPVALUE1_.y + 43 / _UPVALUE2_ + 138 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_ + 440 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawScrollBar(#_UPVALUE5_, _UPVALUE1_.x + 845 / _UPVALUE2_, _UPVALUE1_.y + 83 / _UPVALUE2_, 6 / _UPVALUE2_, 460 / _UPVALUE2_, m, k)
  end
  if _UPVALUE0_.category == "radio" then
    dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 462 / _UPVALUE2_, 820 / _UPVALUE2_, 3 / _UPVALUE2_, 2 / _UPVALUE2_, tocolor(255, 187, 0, 230))
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(stations) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 75 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 820 / _UPVALUE2_, 60 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(35, 35, 35, 230))
        dxDrawRoundedRectangle(_UPVALUE1_.x + 32.5 / _UPVALUE2_, _UPVALUE1_.y + 77.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_, 15 / _UPVALUE2_, tocolor(30, 30, 30, 230))
        if _FORV_8_.name == "Radio SANTORI" then
          if jestAudycja then
            dxDrawText(_FORV_8_.name .. " - #f2f2f2trwa audycja prowadzona przez #ffbf00" .. jestAudycja, _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y - 17 / _UPVALUE2_ + 128 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          else
            dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y - 17 / _UPVALUE2_ + 128 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          end
        else
          dxDrawText(_FORV_8_.name, _UPVALUE1_.x + 100 / _UPVALUE2_, _UPVALUE1_.y - 17 / _UPVALUE2_ + 128 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
        end
        for _FORV_14_, _FORV_15_ in ipairs(imgStations) do
          if _FORV_7_ <= 5 then
            if _FORV_15_.name == _FORV_8_.name then
              dxDrawImage(_UPVALUE1_.x + 31 / _UPVALUE2_, _UPVALUE1_.y + 77.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_, _FORV_15_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
            end
          else
            dxDrawImage(_UPVALUE1_.x + 31 / _UPVALUE2_, _UPVALUE1_.y + 77.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_, textures.yt_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        if odtwarzane == _FORV_8_.name then
          dxDrawRectangle(_UPVALUE1_.x + 93 / _UPVALUE2_, _UPVALUE1_.y + 95 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 1 / _UPVALUE2_, 27 / _UPVALUE2_, tocolor(60, 60, 60, 230))
          dxDrawRectangle(_UPVALUE1_.x + 93 / _UPVALUE2_, _UPVALUE1_.y + 122 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 10 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 230))
          dxDrawText("Teraz odtwarzane " .. typOdtwarzania, _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y + 37 / _UPVALUE2_ + 128 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light13"), "left", "center", false, false, false, false, false)
        end
        if getPedOccupiedVehicle(localPlayer) and getElementData(getPedOccupiedVehicle(localPlayer), "stereo:url") == _FORV_8_.url and odtwarzane ~= _FORV_8_.name then
          dxDrawRectangle(_UPVALUE1_.x + 93 / _UPVALUE2_, _UPVALUE1_.y + 95 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 1 / _UPVALUE2_, 27 / _UPVALUE2_, tocolor(60, 60, 60, 230))
          dxDrawRectangle(_UPVALUE1_.x + 93 / _UPVALUE2_, _UPVALUE1_.y + 122 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 10 / _UPVALUE2_, 1 / _UPVALUE2_, tocolor(60, 60, 60, 230))
          dxDrawText("Teraz odtwarzane na stereo", _UPVALUE1_.x + 110 / _UPVALUE2_, _UPVALUE1_.y + 37 / _UPVALUE2_ + 128 / _UPVALUE2_ * (xY - 1), _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("light13"), "left", "center", false, false, false, false, false)
        end
        if odtwarzane == _FORV_8_.name and typOdtwarzania == "lokalnie" then
          if isMouseIn(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_) then
            dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
            dxDrawRoundedRectangle(_UPVALUE1_.x + 777.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(200, 200, 200, 230))
            if isCursorShowing() then
              cxs, cys = getCursorPosition()
              cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
              dxDrawText("Zatrzymaj", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              dxDrawText("Zatrzymaj", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            end
          else
            dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
            dxDrawRoundedRectangle(_UPVALUE1_.x + 777.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 230))
          end
        elseif isMouseIn(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
          dxDrawImage(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.play_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
            dxDrawText("Pu\197\155\196\135 lokalnie", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            dxDrawText("Pu\197\155\196\135 lokalnie", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 770 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
          dxDrawImage(_UPVALUE1_.x + 772.5 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.play_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        if odtwarzane == _FORV_8_.name and typOdtwarzania == "w poje\197\186dzie" then
          if isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
            dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
            dxDrawRoundedRectangle(_UPVALUE1_.x + 737.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(200, 200, 200, 230))
            if isCursorShowing() then
              cxs, cys = getCursorPosition()
              cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
              dxDrawText("Zatrzymaj", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              dxDrawText("Zatrzymaj", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            end
          else
            dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
            dxDrawRoundedRectangle(_UPVALUE1_.x + 737.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 230))
          end
        elseif isMouseIn(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
          dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
          dxDrawImage(_UPVALUE1_.x + 733 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.vehicle_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
          if isCursorShowing() then
            cxs, cys = getCursorPosition()
            cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
            dxDrawText("Pu\197\155\196\135 w poje\197\186dzie", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            dxDrawText("Pu\197\155\196\135 w poje\197\186dzie", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE1_.x + 730 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
          dxDrawImage(_UPVALUE1_.x + 733 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
        if getPedOccupiedVehicle(localPlayer) then
          if getElementData(getPedOccupiedVehicle(localPlayer), "stereo:url") == _FORV_8_.url then
            if isMouseIn(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
              dxDrawRoundedRectangle(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
              dxDrawRoundedRectangle(_UPVALUE1_.x + 697.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(200, 200, 200, 230))
              if isCursorShowing() then
                cxs, cys = getCursorPosition()
                cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
                dxDrawText("Zatrzymaj", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
                dxDrawText("Zatrzymaj", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              end
            else
              dxDrawRoundedRectangle(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
              dxDrawRoundedRectangle(_UPVALUE1_.x + 697.5 / _UPVALUE2_, _UPVALUE1_.y + 99.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(255, 255, 255, 230))
            end
          elseif isMouseIn(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
            dxDrawRoundedRectangle(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(25, 25, 25, 230))
            dxDrawImage(_UPVALUE1_.x + 693 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.stereo_icon, 0, 0, 0, tocolor(200, 200, 200, 255), false)
            if isCursorShowing() then
              cxs, cys = getCursorPosition()
              cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
              dxDrawText("Pu\197\155\196\135 na stereo w poje\197\186dzie", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              dxDrawText("Pu\197\155\196\135 na stereo w poje\197\186dzie", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            end
          else
            dxDrawRoundedRectangle(_UPVALUE1_.x + 690 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
            dxDrawImage(_UPVALUE1_.x + 693 / _UPVALUE2_, _UPVALUE1_.y + 94.5 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 25 / _UPVALUE2_, 25 / _UPVALUE2_, textures.stereo_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        if _FORV_8_.user then
          if isMouseIn(_UPVALUE1_.x + 809 / _UPVALUE2_, _UPVALUE1_.y + 91 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_) then
            dxDrawImage(_UPVALUE1_.x + 809 / _UPVALUE2_, _UPVALUE1_.y + 91 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 30 / _UPVALUE2_, 30 / _UPVALUE2_, textures.delete_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
            if isCursorShowing() then
              cxs, cys = getCursorPosition()
              cxs, cys = _UPVALUE3_ * cxs, _UPVALUE4_ * cys
              dxDrawText("Usu\197\132 utw\195\179r", cxs + 14 / _UPVALUE2_, cys + 34 / _UPVALUE2_, cxs, cys, tocolor(0, 0, 0, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              dxDrawText("Usu\197\132 utw\195\179r", cxs + 13 / _UPVALUE2_, cys + 33 / _UPVALUE2_, cxs, cys, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
            end
          else
            dxDrawImage(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 92 / _UPVALUE2_ + 64 / _UPVALUE2_ * (xY - 1), 28 / _UPVALUE2_, 28 / _UPVALUE2_, textures.delete_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
      end
    end
    if odtwarzane then
      dxDrawText("" .. odtwarzane .. "", _UPVALUE1_.x, _UPVALUE1_.y + 785 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 490 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, false, false)
      if isMouseIn(_UPVALUE1_.x + 820 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 820 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
        dxDrawText("+", _UPVALUE1_.x, _UPVALUE1_.y + 866 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 483 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 820 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(30, 30, 30, 230))
        dxDrawText("+", _UPVALUE1_.x, _UPVALUE1_.y + 866 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 483 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      end
      if isMouseIn(_UPVALUE1_.x + 660 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_) then
        dxDrawRoundedRectangle(_UPVALUE1_.x + 660 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(28, 28, 28, 230))
        dxDrawText("-", _UPVALUE1_.x, _UPVALUE1_.y + 866 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 320 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(200, 200, 200, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      else
        dxDrawRoundedRectangle(_UPVALUE1_.x + 660 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 35 / _UPVALUE2_, 35 / _UPVALUE2_, 5 / _UPVALUE2_, tocolor(30, 30, 30, 230))
        dxDrawText("-", _UPVALUE1_.x, _UPVALUE1_.y + 866 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_ + 320 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      end
      if typOdtwarzania == "w poje\197\186dzie" then
        if radio_vehicle and isElement(radio_vehicle) then
          dxDrawText("" .. tonumber(string.format("%.2f", getSoundVolume(radio_vehicle))) * 100 .. "%", _UPVALUE1_.x + 1150 / _UPVALUE2_, _UPVALUE1_.y + 865 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
        end
      elseif typOdtwarzania == "lokalnie" and radio and isElement(radio) then
        dxDrawText("" .. tonumber(string.format("%.2f", getSoundVolume(radio))) * 100 .. "%", _UPVALUE1_.x + 1150 / _UPVALUE2_, _UPVALUE1_.y + 865 / _UPVALUE2_, _UPVALUE1_.x + 362 / _UPVALUE2_, _UPVALUE1_.y + 204 / _UPVALUE2_, tocolor(255, 255, 255, 255), 1 / _UPVALUE2_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
      end
    end
    exports.ST_buttons:dxCreateButton("DODAJ", _UPVALUE1_.x + 290 / _UPVALUE2_, _UPVALUE1_.y + 470 / _UPVALUE2_, 160 / _UPVALUE2_, 40 / _UPVALUE2_, 255, 1)
    if isMouseIn(_UPVALUE1_.x + 809 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 34 / _UPVALUE2_, 34 / _UPVALUE2_) then
      dxDrawImage(_UPVALUE1_.x + 809 / _UPVALUE2_, _UPVALUE1_.y + 23 / _UPVALUE2_, 34 / _UPVALUE2_, 34 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(_UPVALUE1_.x + 810 / _UPVALUE2_, _UPVALUE1_.y + 24 / _UPVALUE2_, 32 / _UPVALUE2_, 32 / _UPVALUE2_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
  end
end
function onRadioPanel()
  if _UPVALUE0_.background == true then
    exports.ST_gui:destroyCustomEditbox("sound:name")
    exports.ST_gui:destroyCustomEditbox("sound:url")
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientKey", root, key)
    removeEventHandler("onClientClick", root, click)
    _UPVALUE0_.category = false
    _UPVALUE0_.background = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
    showCursor(false)
  else
    lastTickCount = getTickCount()
    textures = {
      background = dxCreateTexture(":ST_gui/img/background2.png"),
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      santoriRadio = dxCreateTexture("img/santoriRadio.png"),
      rmfmaxlogo = dxCreateTexture("img/rmfmaxlogo.png"),
      rmflogo = dxCreateTexture("img/rmflogo.png"),
      eskalogo = dxCreateTexture("img/eskalogo.png"),
      voxfmlogo = dxCreateTexture("img/voxfmlogo.png"),
      play_icon = dxCreateTexture("img/play_icon.png"),
      delete_icon = dxCreateTexture("img/delete_icon.png"),
      vehicle_icon = dxCreateTexture("img/vehicle_icon.png"),
      yt_icon = dxCreateTexture("img/yt_icon.png"),
      stereo_icon = dxCreateTexture("img/stereo_icon.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
      promote_icon = dxCreateTexture(":ST_dashboard/img/promote_icon.png")
    }
    imgStations = {
      {
        name = "Radio SANTORI",
        img = textures.santoriRadio
      },
      {
        name = "RMF MAXXX. Hity #naMAXXXa",
        img = textures.rmfmaxlogo
      },
      {
        name = "Radio RMF FM - Najlepsza Muzyka",
        img = textures.rmflogo
      },
      {
        name = "Radio ESKA: Hity na czasie!",
        img = textures.eskalogo
      },
      {
        name = "Radio VOX FM: W rytmie hit\195\179w",
        img = textures.voxfmlogo
      }
    }
    addEventHandler("onClientRender", root, window)
    addEventHandler("onClientKey", root, key)
    addEventHandler("onClientClick", root, click)
    _UPVALUE0_.category = "radio"
    _UPVALUE0_.background = true
    exports.ST_gui:createCustomEditbox("sound:name", "Nazwa utworu", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 470 / _UPVALUE2_, 250 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
    exports.ST_gui:createCustomEditbox("sound:url", "URL utworu (https://stereo.santori.xyz)", _UPVALUE1_.x + 30 / _UPVALUE2_, _UPVALUE1_.y + 515 / _UPVALUE2_, 420 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
    showCursor(true, false)
    stations = {
      {
        name = "Radio SANTORI",
        url = "https://s3.slotex.pl/shoutcast/7626/listen.pls"
      },
      {
        name = "RMF MAXXX. Hity #naMAXXXa",
        url = "http://www.miastomuzyki.pl/n/rmfmaxxx.pls"
      },
      {
        name = "Radio RMF FM - Najlepsza Muzyka",
        url = "http://217.74.72.11:8000/rmf_fm"
      },
      {
        name = "Radio ESKA: Hity na czasie!",
        url = "http://www.radio.pionier.net.pl/stream.pls?radio=eskawarszawamp3"
      },
      {
        name = "Radio VOX FM: W rytmie hit\195\179w",
        url = "http://pldm.ml/radio?url=https://www.eskago.pl/radio/vox-fm"
      }
    }
    triggerServerEvent("ev", resourceRoot, "showInfoRadio", localPlayer, getElementData(localPlayer, "player:sid"))
  end
end
addCommandHandler("radio", onRadioPanel)
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.category == "radio" then
      for _FORV_6_, _FORV_7_ in ipairs(stations) do
        if _FORV_6_ >= k and _FORV_6_ <= n then
          if isMouseIn(_UPVALUE2_.x + 770 / _UPVALUE1_, _UPVALUE2_.y + 92 / _UPVALUE1_ + 64 / _UPVALUE1_ * (0 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
            if odtwarzane == _FORV_7_.name and typOdtwarzania == "lokalnie" then
              if radio and isElement(radio) then
                stopSound(radio)
                odtwarzane = false
                typOdtwarzania = false
              end
            else
              if radio and isElement(radio) then
                stopSound(radio)
              end
              if radio_vehicle and isElement(radio_vehicle) then
                stopSound(radio_vehicle)
              end
              radio = playSound(_FORV_7_.url, true, true)
              if radio and isElement(radio) then
                setSoundVolume(radio, _UPVALUE3_)
              end
              odtwarzane = _FORV_7_.name
              typOdtwarzania = "lokalnie"
            end
          elseif isMouseIn(_UPVALUE2_.x + 730 / _UPVALUE1_, _UPVALUE2_.y + 92 / _UPVALUE1_ + 64 / _UPVALUE1_ * (0 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
            if not getPedOccupiedVehicle(localPlayer) then
              return
            end
            if getPedOccupiedVehicleSeat(localPlayer) ~= 0 then
              return
            end
            if odtwarzane == _FORV_7_.name and typOdtwarzania == "w poje\197\186dzie" then
              triggerServerEvent("ev", resourceRoot, "onRadioVeh", localPlayer, getPedOccupiedVehicle(localPlayer), "off")
              odtwarzane = false
              typOdtwarzania = false
            else
              if radio and isElement(radio) then
                stopSound(radio)
              end
              triggerServerEvent("ev", resourceRoot, "onRadioVeh", localPlayer, getPedOccupiedVehicle(localPlayer), _FORV_7_.url, _FORV_7_.name)
              odtwarzane = _FORV_7_.name
              typOdtwarzania = "w poje\197\186dzie"
            end
          elseif isMouseIn(_UPVALUE2_.x + 690 / _UPVALUE1_, _UPVALUE2_.y + 92 / _UPVALUE1_ + 64 / _UPVALUE1_ * (0 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
            if not getPedOccupiedVehicle(localPlayer) then
              return
            end
            if not isUrlBlocked(_FORV_7_.url) then
              return
            end
            if getPedOccupiedVehicleSeat(localPlayer) ~= 0 then
              return
            end
            if getElementData(getPedOccupiedVehicle(localPlayer), "stereo:url") == _FORV_7_.url then
              triggerServerEvent("ev", resourceRoot, "stereo", localPlayer, false)
            else
              if not getElementData(localPlayer, "player:premium") then
                exports.st_gui:showPlayerNotification("Nie posiadasz premium", "error")
                return
              end
              if getElementData(localPlayer, "mute:player") then
                exports.st_gui:showPlayerNotification("Jeste\197\155 zmutowany", "error")
                return
              end
              if not getVehicleUpgradeOnSlot(getPedOccupiedVehicle(localPlayer), 10) == 1086 then
                exports.st_gui:showPlayerNotification("Najpierw zamontuj stereo", "error")
                return
              end
              triggerServerEvent("ev", resourceRoot, "stereo", localPlayer, true, _FORV_7_.url)
            end
          elseif isMouseIn(_UPVALUE2_.x + 809 / _UPVALUE1_, _UPVALUE2_.y + 91 / _UPVALUE1_ + 64 / _UPVALUE1_ * (0 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_) and _FORV_7_.user then
            triggerServerEvent("ev", resourceRoot, "deleteMusic", localPlayer, _FORV_7_.id)
            triggerServerEvent("ev", resourceRoot, "showInfoRadio", localPlayer, getElementData(localPlayer, "player:sid"))
            exports.st_gui:showPlayerNotification("Usuni\196\153to utw\195\179r " .. _FORV_7_.name .. "", "info")
          end
        end
      end
    end
    if isMouseIn(_UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 19 / _UPVALUE1_, 110 / _UPVALUE1_, 35 / _UPVALUE1_) and _UPVALUE0_.background == true then
      exports.ST_gui:destroyCustomEditbox("sound:name")
      exports.ST_gui:destroyCustomEditbox("sound:url")
      _UPVALUE0_.category = "radio"
      exports.ST_gui:createCustomEditbox("sound:name", "Nazwa utworu", _UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 470 / _UPVALUE1_, 250 / _UPVALUE1_, 40 / _UPVALUE1_, false, "", "", 1)
      exports.ST_gui:createCustomEditbox("sound:url", "URL utworu (https://stereo.santori.xyz)", _UPVALUE2_.x + 30 / _UPVALUE1_, _UPVALUE2_.y + 515 / _UPVALUE1_, 420 / _UPVALUE1_, 40 / _UPVALUE1_, false, "", "", 1)
      k = 1
      n = 6
      m = 6
    elseif isMouseIn(_UPVALUE2_.x + 160 / _UPVALUE1_, _UPVALUE2_.y + 19 / _UPVALUE1_, 110 / _UPVALUE1_, 35 / _UPVALUE1_) and _UPVALUE0_.background == true then
      exports.ST_gui:destroyCustomEditbox("sound:name")
      exports.ST_gui:destroyCustomEditbox("sound:url")
      _UPVALUE0_.category = "prezenterzy"
      k = 1
      n = 7
      m = 7
      jestPrezenterem = false
      _UPVALUE4_ = {}
      if not refreshAvatars then
        avatar_table = {}
        triggerServerEvent("ev", resourceRoot, "pokazPrezenterow", localPlayer, true)
      else
        triggerServerEvent("ev", resourceRoot, "pokazPrezenterow", localPlayer)
      end
      refreshAvatars = true
    elseif isMouseIn(_UPVALUE2_.x + 809 / _UPVALUE1_, _UPVALUE2_.y + 23 / _UPVALUE1_, 34 / _UPVALUE1_, 34 / _UPVALUE1_) and _UPVALUE0_.category == "radio" then
      exports.ST_gui:destroyCustomEditbox("sound:name")
      exports.ST_gui:destroyCustomEditbox("sound:url")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.main = false
      _UPVALUE0_.background = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      showCursor(false)
    elseif isMouseIn(_UPVALUE2_.x + 290 / _UPVALUE1_, _UPVALUE2_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 40 / _UPVALUE1_) and _UPVALUE0_.category == "radio" then
      if not lastTickCount then
        lastTickCount = 10000
      end
      if 10000 < getTickCount() - lastTickCount then
        if 1 > exports.ST_gui:getCustomEditboxText("sound:name"):len() then
          exports.st_gui:showPlayerNotification("Wpisz nazw\196\153", "error")
          return
        end
        if exports.ST_gui:getCustomEditboxText("sound:url"):len() < 5 then
          exports.st_gui:showPlayerNotification("Wpisz url", "error")
          return
        end
        if #stations >= 15 then
          exports.st_gui:showPlayerNotification("Mo\197\188esz doda\196\135 maksymalnie 10 w\197\130asnych utwor\195\179w", "error")
          return
        end
        if not isUrlBlocked((exports.ST_gui:getCustomEditboxText("sound:url"))) then
          return
        end
        triggerServerEvent("ev", resourceRoot, "addMusic", localPlayer, exports.ST_gui:getCustomEditboxText("sound:name"), exports.ST_gui:getCustomEditboxText("sound:url"), getElementData(localPlayer, "player:sid"))
        triggerServerEvent("ev", resourceRoot, "showInfoRadio", localPlayer, getElementData(localPlayer, "player:sid"))
        exports.st_gui:showPlayerNotification("Dodano utw\195\179r " .. exports.ST_gui:getCustomEditboxText("sound:name") .. "", "success")
        lastTickCount = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj 10 sekund przed dodaniem nowego utworu", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + 660 / _UPVALUE1_, _UPVALUE2_.y + 515 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and _UPVALUE0_.category == "radio" then
      if typOdtwarzania == "lokalnie" then
        if 0 >= getSoundVolume(radio) then
          return
        end
        setSoundVolume(radio, tonumber(string.format("%.2f", getSoundVolume(radio) - 0.1)))
        _UPVALUE3_ = getSoundVolume(radio) - 0.1
      elseif typOdtwarzania == "w poje\197\186dzie" then
        if not getPedOccupiedVehicle(localPlayer) then
          return
        end
        if 0 >= getSoundVolume(radio_vehicle) then
          return
        end
        triggerServerEvent("ev", resourceRoot, "volumeRadioVeh", localPlayer, getPedOccupiedVehicle(localPlayer), odtwarzane, getSoundVolume(radio_vehicle) - 0.1)
      end
    elseif isMouseIn(_UPVALUE2_.x + 820 / _UPVALUE1_, _UPVALUE2_.y + 515 / _UPVALUE1_, 35 / _UPVALUE1_, 35 / _UPVALUE1_) and _UPVALUE0_.category == "radio" then
      if typOdtwarzania == "lokalnie" then
        if 1 <= getSoundVolume(radio) then
          return
        end
        setSoundVolume(radio, tonumber(string.format("%.2f", getSoundVolume(radio) + 0.1)))
        _UPVALUE3_ = getSoundVolume(radio) + 0.1
      elseif typOdtwarzania == "w poje\197\186dzie" then
        if not getPedOccupiedVehicle(localPlayer) then
          return
        end
        if 1 <= getSoundVolume(radio_vehicle) then
          return
        end
        triggerServerEvent("ev", resourceRoot, "volumeRadioVeh", localPlayer, getPedOccupiedVehicle(localPlayer), odtwarzane, getSoundVolume(radio_vehicle) + 0.1)
      end
    elseif isMouseIn(_UPVALUE2_.x + 810 / _UPVALUE1_, _UPVALUE2_.y + 23 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) and _UPVALUE0_.category == "prezenterzy" then
      if jestPrezenterem == true then
        if jestAudycja then
          if jestAudycja == getPlayerName(localPlayer) then
            _UPVALUE4_ = {}
            removeEventHandler("onClientRender", root, windowRender)
            triggerServerEvent("ev", resourceRoot, "wlaczWylaczAudycje", localPlayer, false)
          else
            exports.st_gui:showPlayerNotification("To nie ty prowadzisz audycj\196\153", "error")
          end
        else
          addEventHandler("onClientRender", root, windowRender)
          tick = getTickCount()
          triggerServerEvent("ev", resourceRoot, "wlaczWylaczAudycje", localPlayer, true)
        end
      end
    elseif isMouseIn(_UPVALUE2_.x + 770 / _UPVALUE1_, _UPVALUE2_.y + 23 / _UPVALUE1_, 30 / _UPVALUE1_, 30 / _UPVALUE1_) and _UPVALUE0_.category == "prezenterzy" then
      if not lastTickCountOgloszenie then
        lastTickCountOgloszenie = 120000
      end
      if getTickCount() - lastTickCountOgloszenie > 120000 and jestPrezenterem == true and jestAudycja then
        if jestAudycja == getPlayerName(localPlayer) then
          triggerServerEvent("ev", resourceRoot, "oglosAudycje", localPlayer)
        else
          exports.st_gui:showPlayerNotification("To nie ty prowadzisz audycj\196\153", "error")
        end
      else
      end
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoRadioClient" then
    if _ARG_1_ then
      stations = {
        {
          name = "Radio SANTORI",
          url = "https://s3.slotex.pl/shoutcast/7626/listen.pls",
          img = textures.santoriRadio
        },
        {
          name = "RMF MAXXX. Hity #naMAXXXa",
          url = "http://www.miastomuzyki.pl/n/rmfmaxxx.pls",
          img = textures.rmfmaxlogo
        },
        {
          name = "Radio RMF FM - Najlepsza Muzyka",
          url = "http://217.74.72.11:8000/rmf_fm",
          img = textures.rmflogo
        },
        {
          name = "Radio ESKA: Hity na czasie!",
          url = " http://pldm.ml/radio?url=https://www.eskago.pl/radio/eska-warszawa",
          img = textures.eskalogo
        },
        {
          name = "Radio VOX FM: W rytmie hit\195\179w",
          url = "http://pldm.ml/radio?url=https://www.eskago.pl/radio/vox-fm",
          img = textures.voxfmlogo
        }
      }
      for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
        table.insert(stations, {
          name = _FORV_10_.name,
          url = _FORV_10_.url,
          user = true,
          id = _FORV_10_.id
        })
      end
    end
    jestAudycja = _ARG_2_
  elseif _ARG_0_ == "onRadioVehClient" then
    if radio_vehicle and isElement(radio_vehicle) then
      stopSound(radio_vehicle)
    end
    odtwarzane_veh = _ARG_2_
    if not panelEnabled then
      panelEnabled = true
      addEventHandler("onClientRender", root, dxDrawTextRadioVeh)
      wylaczanie = setTimer(function()
        if panelEnabled then
          removeEventHandler("onClientRender", root, dxDrawTextRadioVeh)
          panelEnabled = false
          if _UPVALUE0_ == "Radio wy\197\130\196\133czone" then
            odtwarzane_veh = false
          end
        end
      end, 2000, 1)
    else
      killTimer(wylaczanie)
      wylaczanie = setTimer(function()
        if panelEnabled then
          removeEventHandler("onClientRender", root, dxDrawTextRadioVeh)
          panelEnabled = false
          if _UPVALUE0_ == "Radio wy\197\130\196\133czone" then
            odtwarzane_veh = false
          end
        end
      end, 2000, 1)
    end
    if _ARG_2_ == "Radio wy\197\130\196\133czone" then
      return
    end
    radio_vehicle = playSound(_ARG_1_)
    setSoundVolume(radio_vehicle, _ARG_3_)
  elseif _ARG_0_ == "volumeRadioVehClient" then
    if radio_vehicle and isElement(radio_vehicle) then
      setSoundVolume(radio_vehicle, _ARG_2_)
    end
    odtwarzane_veh = "" .. _ARG_1_ .. " (VOLUME: " .. tonumber(string.format("%.2f", getSoundVolume(radio_vehicle))) * 100 .. "%)"
    if not panelEnabled then
      panelEnabled = true
      addEventHandler("onClientRender", root, dxDrawTextRadioVeh)
      wylaczanie = setTimer(function()
        if panelEnabled then
          removeEventHandler("onClientRender", root, dxDrawTextRadioVeh)
          panelEnabled = false
        end
      end, 2000, 1)
    else
      killTimer(wylaczanie)
      wylaczanie = setTimer(function()
        if panelEnabled then
          removeEventHandler("onClientRender", root, dxDrawTextRadioVeh)
          panelEnabled = false
        end
      end, 2000, 1)
    end
  elseif _ARG_0_ == "pokazPrezenterowClient" then
    for _FORV_9_, _FORV_10_ in pairs(_ARG_1_) do
      for _FORV_14_, _FORV_15_ in pairs(_ARG_2_) do
        if _FORV_10_.id == _FORV_15_.uid then
          login = _FORV_10_.login
          time = _FORV_15_.time
          audycje = _FORV_15_.audycje
        end
      end
      if _FORV_10_.id == getElementData(localPlayer, "player:sid") then
        jestPrezenterem = true
      end
      table.insert(_UPVALUE0_, {
        _FORV_10_.id,
        login,
        time,
        false,
        audycje
      })
      table.sort(_UPVALUE0_, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[3] > _ARG_1_[3]
      end)
      if avatar_table then
        for _FORV_14_, _FORV_15_ in pairs(avatar_table) do
          for _FORV_19_, _FORV_20_ in ipairs(_UPVALUE0_) do
            if _FORV_15_[1] == _FORV_20_[1] then
              _UPVALUE0_[_FORV_19_][4] = _FORV_15_[2]
            end
          end
        end
      end
    end
  elseif _ARG_0_ == "downloadAvatar" then
    if isElement(hudMaskShader) then
      destroyElement(hudMaskShader)
    end
    if isElement(maska) then
      destroyElement(maska)
    end
    hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
    maska = dxCreateTexture(":ST_avatars/kolo.png")
    dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE0_) do
      if _UPVALUE0_[_FORV_9_][1] == _ARG_2_ then
        shader = dxCreateShader(":ST_avatars/masked.fx")
        avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
        dxSetShaderValue(shader, "sMaskTexture", maska)
        dxSetShaderValue(shader, "sPicTexture", avatars)
        _UPVALUE0_[_FORV_9_][4] = shader
        table.insert(avatar_table, {_ARG_2_, shader})
      end
    end
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.category == "radio" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif _UPVALUE0_.category == "prezenterzy" then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if _UPVALUE0_.category == "radio" then
      if n >= #stations then
        return
      end
      k = k + 1
      n = n + 1
    elseif _UPVALUE0_.category == "prezenterzy" then
      if n >= #_UPVALUE1_ then
        return
      end
      k = k + 1
      n = n + 1
    end
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
function dxDrawTextRadioVeh()
  dxDrawText(odtwarzane_veh, _UPVALUE0_ + 1, _UPVALUE1_ / 10 + 1, 0, 0, tocolor(0, 0, 0, 255), 1, exports.ST_gui:getGUIFont("normal23"), "center")
  dxDrawText(odtwarzane_veh, _UPVALUE0_, _UPVALUE1_ / 10, 0, 0, tocolor(255, 162, 0, 255), 1, exports.ST_gui:getGUIFont("normal23"), "center")
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
addEventHandler("onClientVehicleEnter", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer then
    if radio_vehicle and isElement(radio_vehicle) then
      stopSound(radio_vehicle)
    end
    if radio and isElement(radio) then
      return
    end
    if not getElementData(source, "vehicle:radioURL") then
      return
    end
    if getElementData(source, "vehicle:radioURL") then
      radio_vehicle = playSound(getElementData(source, "vehicle:radioURL"))
      setSoundVolume(radio_vehicle, getElementData(source, "pojazdy:aktualneRadioVolume"))
    end
  end
end)
addEventHandler("onClientVehicleStartExit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and radio_vehicle and isElement(radio_vehicle) then
    stopSound(radio_vehicle)
    if radio and isElement(radio) then
      return
    end
    odtwarzane = false
    typOdtwarzania = false
  end
end)
addEventHandler("onClientElementDataChange", root, function(_ARG_0_, _ARG_1_)
  if getElementType(source) ~= "vehicle" then
    return
  end
  if _ARG_0_ ~= "stereo:url" then
    return
  end
  if getElementData(source, _ARG_0_) then
    _UPVALUE0_[source] = playSound3D(getElementData(source, "stereo:url"), 0, 0, 0, true)
    setSoundVolume(_UPVALUE0_[source], 0.2)
    setSoundEffectEnabled(_UPVALUE0_[source], "compressor", true)
    setSoundMaxDistance(_UPVALUE0_[source], 50)
    setElementDimension(_UPVALUE0_[source], getElementDimension(source))
    setElementInterior(_UPVALUE0_[source], getElementInterior(source))
    attachElements(_UPVALUE0_[source], source)
  elseif isElement(_UPVALUE0_[source]) then
    stopSound(_UPVALUE0_[source])
  end
end)
addEventHandler("onClientElementStreamIn", root, function()
  if getElementType(source) ~= "vehicle" then
    return
  end
  if not _UPVALUE0_[source] and getElementData(source, "stereo:url") then
    _UPVALUE0_[source] = playSound3D(getElementData(source, "stereo:url"), 0, 0, 0)
    setSoundVolume(_UPVALUE0_[source], 0.2)
    setSoundEffectEnabled(_UPVALUE0_[source], "compressor", true)
    setSoundMaxDistance(_UPVALUE0_[source], 35)
    setElementDimension(_UPVALUE0_[source], getElementDimension(source))
    setElementInterior(_UPVALUE0_[source], getElementInterior(source))
    attachElements(_UPVALUE0_[source], source)
  end
end)
addEventHandler("onClientElementDestroy", root, function()
  if getElementType(source) ~= "vehicle" then
    return
  end
  if getElementData(source, "stereo:url") then
    if not _UPVALUE0_[source] then
      return
    end
    stopSound(_UPVALUE0_[source])
  end
end)
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "#ffbf000 #f0f0f0godzin #ffbf000 #f0f0f0minut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbf00" .. przecinek(hours) .. " #f0f0f0godzin #ffbf00" .. mins .. " #f0f0f0minut"
  end
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(20, 20, 20, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / _UPVALUE0_, tocolor(255, 187, 0, 255))
  end
end
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function windowRender()
  if getTickCount() - tick > 60000 then
    tick = getTickCount()
    triggerServerEvent("ev", resourceRoot, "dodajMinute", localPlayer)
  end
end
getResourceName(getThisResource(), true, 848769767)
return
