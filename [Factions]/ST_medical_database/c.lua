setElementPosition(createElement("text"), -2636.26, 547.22, 14.59)
setElementData(createElement("text"), "name", "Komputer #00c3ffmedyczny")
setElementPosition(createElement("text"), -2653.21, 652.13, 14.46)
setElementData(createElement("text"), "name", "Komputer #00c3ffmedyczny")
tick = getTickCount()
show_notes = {}
show_logs = {}
show_logs_payment = {}
show_notification = {}
windows = {
  background = false,
  notes = false,
  wanted = false,
  logs = false,
  payment = false,
  zgloszenia = false,
  online = false,
  search = false,
  selectUser = false,
  vehicles = false
}
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(50, 50, 50, 240), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(50, 50, 50, 240), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(50, 50, 50, 240), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(150 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(150 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(50, 50, 50, 240), false)
  end
  dxDrawText("NOTATKI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("POSZUKIWANI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("LOGI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYSZUKAJ", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h) then
    dxDrawImage(_UPVALUE2_.x - math.floor(1 / _UPVALUE1_), _UPVALUE2_.y - math.floor(1 / _UPVALUE1_), _UPVALUE2_.w + math.floor(2 / _UPVALUE1_), _UPVALUE2_.h + math.floor(2 / _UPVALUE1_), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.notes == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    xY = 0
    for _FORV_7_ = 1, 11 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 85), false)
    end
    dxDrawText("NOTOWANI", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("#ff9100" .. #show_notes .. " #c8c8c8notatek", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notes) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        if isMouseIn(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 100 / _UPVALUE1_, 60 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
          dxDrawText("USU\197\131", _UPVALUE0_.x + 1595 / _UPVALUE1_, _UPVALUE0_.y - 29 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
          dxDrawText("USU\197\131", _UPVALUE0_.x + 1595 / _UPVALUE1_, _UPVALUE0_.y - 29 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
        end
        if string.sub(_FORV_8_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          date = "Dzi\197\155 o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "Wczoraj o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "2 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "3 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "4 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "5 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        else
          date = "" .. string.sub(_FORV_8_.date, 1, 10) .. ""
        end
        dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 62 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        if _FORV_8_.faction == "SAPD" then
          dxDrawText("#e6e6e6Dodane przez #0015b8" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 540 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("#e6e6e6Dodane przez #00ffee" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 540 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        end
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      end
    end
  end
  if windows.wanted == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("POSZUKIWANI", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("#ff9100" .. #show_notes .. " #c8c8c8POSZUKIWANYCH", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 11 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 85), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notes) do
      if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        if string.sub(_FORV_8_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          date = "Dzi\197\155 o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "Wczoraj o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "2 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "3 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "4 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "5 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        else
          date = "" .. string.sub(_FORV_8_.date, 1, 10) .. ""
        end
        dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 62 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
        if _FORV_8_.faction == "SAPD" then
          dxDrawText("#e6e6e6Dodane przez #0015b8" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 675 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("#e6e6e6Dodane przez #00ffee" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 675 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        end
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      end
    end
  end
  if windows.logs == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("LOGI", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_logs) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= 20 then
        xY = xY + 1
        if string.sub(_FORV_8_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          date = "Dzi\197\155 o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "Wczoraj o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "2 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "3 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "4 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "5 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
        else
          date = "" .. string.sub(_FORV_8_.date, 1, 10) .. ""
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 52 / _UPVALUE1_ + 35 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 31 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        if _FORV_8_.type == "poszukiwany" then
          if _FORV_8_.type1 == "usunal" then
            dxDrawText(_FORV_8_.dodajacy .. " #fc0303usun\196\133\197\130 #c8c8c8poszukiwanego '" .. _FORV_8_.nick .. "' #" .. _FORV_8_.id .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          elseif _FORV_8_.type1 == "dodal" then
            dxDrawText(_FORV_8_.dodajacy .. " #03fc28doda\197\130 #c8c8c8poszukiwanego '" .. _FORV_8_.nick .. "'", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          end
        elseif _FORV_8_.type == "notatka" then
          if _FORV_8_.type1 == "usunal" then
            dxDrawText(_FORV_8_.dodajacy .. " #fc0303usun\196\133\197\130 #c8c8c8notowanego '" .. _FORV_8_.nick .. "' #" .. _FORV_8_.id .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          elseif _FORV_8_.type1 == "dodal" then
            dxDrawText(_FORV_8_.dodajacy .. " #03fc28doda\197\130 #c8c8c8notowanego '" .. _FORV_8_.nick .. "'", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          end
        end
        dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y - 71 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(675 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if windows.search == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("WYSZUKIWANIE GRACZA", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 535 / _UPVALUE1_, _UPVALUE0_.h - 400 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 240), false)
    dxDrawText("WPISZ #fcba03UID #e6e6e6LUB #fcba03NICK #e6e6e6OSOBY, KT\195\147R\196\132 CHCESZ\nWYSZUKA\196\134", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.selectUser == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    for _FORV_7_, _FORV_8_ in ipairs(info_users) do
      if string.sub(_FORV_8_.last_online, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
        date = "dzi\197\155 " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      elseif string.sub(_FORV_8_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
        date = "wczoraj " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      elseif string.sub(_FORV_8_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
        date = "2 dni - " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      elseif string.sub(_FORV_8_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
        date = "3 dni - " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      elseif string.sub(_FORV_8_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
        date = "4 dni - " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      elseif string.sub(_FORV_8_.last_online, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.last_online, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
        date = "5 dni - " .. string.sub(_FORV_8_.last_online, 12, 16) .. ""
      else
        date = "" .. string.sub(_FORV_8_.last_online, 1, 10) .. ""
      end
      dxDrawText("informacje o #fcba03" .. _FORV_8_.login .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      iP = 0
      if getPlayerFromName(_FORV_8_.login) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.id) then
        statusOnline = "#00b50fOnline"
      else
        statusOnline = "#d10007Offline #a3a3a3od " .. date
      end
      if avatarPlayer then
        dxDrawImage(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_, avatarPlayer, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText("" .. _FORV_8_.color_nickName .. "" .. _FORV_8_.login, _UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y - 25 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
      dxDrawText("UID: " .. _FORV_8_.color_nickName .. "" .. _FORV_8_.id, _UPVALUE0_.x + 285 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_27_, _FORV_28_ in ipairs({
        {name = "Status", arg2 = statusOnline},
        {
          name = "Pieni\196\133dze w bankomacie",
          arg2 = "#fcba03" .. przecinek(_FORV_8_.bank_money) .. " #ffffffPLN"
        },
        {
          name = "Pieni\196\133dze przy sobie",
          arg2 = "#fcba03" .. przecinek(moneyPlayer) .. " #ffffffPLN"
        },
        {
          name = "\197\129\196\133czny czas gry",
          arg2 = "#fcba03" .. secondsToClock(60 * _FORV_8_.hours)
        }
      }) do
        xY = xY + 1
        dxDrawText(_FORV_28_.name .. ": " .. _FORV_28_.arg2, _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 190 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      end
      if _FORV_8_.pjA == 1 then
        pjA = "#00b50fTAK"
      else
        pjA = "#d10007NIE"
      end
      if _FORV_8_.pjB == 1 then
        pjB = "#00b50fTAK"
      else
        pjB = "#d10007NIE"
      end
      if _FORV_8_.pjC == 1 then
        pjC = "#00b50fTAK"
      else
        pjC = "#d10007NIE"
      end
      if _FORV_8_.pjL == 1 then
        pjL = "#00b50fTAK"
      else
        pjL = "#d10007NIE"
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_, 300 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / _UPVALUE1_, _UPVALUE0_.y + 253 / _UPVALUE1_, 280 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
      dxDrawText("LICENCJE", _UPVALUE0_.x + 740 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_28_, _FORV_29_ in ipairs({
        {"KAT.A", pjA},
        {"KAT.B", pjB},
        {"KAT.C", pjC},
        {"KAT.L", pjL}
      }) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 260 / _UPVALUE1_ + 37 / _UPVALUE1_ * (xY - 1), 290 / _UPVALUE1_, 35 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
        dxDrawText(_FORV_29_[1], _UPVALUE0_.x + 743 / _UPVALUE1_, _UPVALUE0_.y + 353 / _UPVALUE1_ + 74 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_29_[2], _UPVALUE0_.x, _UPVALUE0_.y + 353 / _UPVALUE1_ + 74 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 650 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 870 / _UPVALUE1_, 315 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 460 / _UPVALUE1_, 855 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
    if isMouseIn(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 427 / _UPVALUE1_, 90 / _UPVALUE1_, 30 / _UPVALUE1_) then
      dxDrawText("#fcba03" .. typeInfoNotes[1], _UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 685 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("#fcba03" .. typeInfoNotes[1] .. " #ffffff- KLIKNIJ ABY ZMIENI\196\134 TYP", _UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 685 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 300 / _UPVALUE1_, 140 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
    colorNotes = {
      210,
      210,
      210
    }
    colorWanted = {
      210,
      210,
      210
    }
    if selectEditBox == "notatka" then
      colorNotes = {
        5,
        135,
        0
      }
    elseif selectEditBox == "poszukiwany" then
      colorWanted = {
        5,
        135,
        0
      }
    elseif avatarPlayer then
      dxDrawText("KONTO #00b803JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("KONTO #b80000NIE JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 150), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1400 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1400 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 150), false)
      dxDrawText("POJAZDY GRACZA", _UPVALUE0_.x + 1400 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 290 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
      dxDrawText("POJAZDY GRACZA", _UPVALUE0_.x + 1400 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, true, false)
    end
    if #infoNotesSelectUser == 0 then
      dxDrawText("GRACZ NIE POSIADA \197\187ADNYCH NOTATEK", _UPVALUE0_.x + 800 / _UPVALUE1_, _UPVALUE0_.y + 970 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(150, 150, 150, 100), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    end
    xY = 0
    i1 = 0
    for _FORV_7_, _FORV_8_ in ipairs(infoNotesSelectUser) do
      if _FORV_8_.typ == "poszukiwany" then
        iP = iP + 1
        powodPoszukiwanego = _FORV_8_.text
      end
      if _FORV_8_.typ == typeInfoNotes[2] then
        i1 = i1 + 1
        if i1 >= _UPVALUE7_ and i1 <= _UPVALUE8_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 171 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 855 / _UPVALUE1_, 60 / _UPVALUE1_, 8 / _UPVALUE1_, tocolor(30, 30, 30, 150), false)
          dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 770 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 485 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 28 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 513 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
          if _FORV_8_.faction == "SAPD" then
            dxDrawText("Dodane przez #0015b8" .. _FORV_8_.dodajacy, _UPVALUE0_.x + 205 / _UPVALUE1_, _UPVALUE0_.y + 825 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
          else
            dxDrawText("Dodane przez #00ffee" .. _FORV_8_.dodajacy, _UPVALUE0_.x + 205 / _UPVALUE1_, _UPVALUE0_.y + 825 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
          end
          if string.sub(_FORV_8_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
            date = "Dzi\197\155 o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "Wczoraj o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "2 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "3 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "4 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          elseif string.sub(_FORV_8_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "5 dni temu o " .. string.sub(_FORV_8_.date, 12, 16) .. ""
          else
            date = "" .. string.sub(_FORV_8_.date, 1, 10) .. ""
          end
          dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y + 797 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 655 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "right", "center", false, false, false, true, false)
        end
      end
    end
    dxDrawText("#fcba03" .. i1 .. " #c8c8c8WYSZUKA\197\131", _UPVALUE0_.x, _UPVALUE0_.y + 685 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 655 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    if iP >= 1 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 372 / _UPVALUE1_, 2 / _UPVALUE1_, 30 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 402 / _UPVALUE1_, 15 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
      dxDrawText("Status poszukiwanego: #d10007TAK", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText(powodPoszukiwanego, _UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 600 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("Status poszukiwanego: #00b50fNIE", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 580 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    end
  end
  if windows.vehicles == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    for _FORV_7_, _FORV_8_ in ipairs(info_users) do
      dxDrawText("POJAZDY GRACZA #fcba03" .. _FORV_8_.login, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("#fcba03" .. #vehicle_table .. " #ffffffpojazd\195\179w \197\130\196\133cznie", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(vehicle_table) do
      if _FORV_7_ >= _UPVALUE9_ and _FORV_7_ <= _UPVALUE10_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 49.4 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 44 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        dxDrawText(_FORV_8_.id, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        if getVehicleNameFromModel(_FORV_8_.model) == "Sabre" then
          if _FORV_8_.wariant == "1, 2" then
          end
        elseif exports.ST_core:changeNameClient("Sabre Turbo") == "BMW M2" and _FORV_8_.wariant == "2, 2" then
        end
        dxDrawText(exports.ST_core:changeNameClient("BMW M2 Cabrio"), _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
        dxDrawText("#fcba03" .. _FORV_8_.pojemnosc .. " " .. _FORV_8_.cylindry, _UPVALUE0_.x, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true and windows.notes == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_notes) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 920 / _UPVALUE2_, _UPVALUE3_.y + 61 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 100 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.notes == true then
          if _FORV_7_.faction ~= getElementData(localPlayer, "player:faction") then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz usun\196\133\196\135 tej notatki", "error")
            return
          end
          triggerServerEvent("ev", resourceRoot, "removeNotes", localPlayer, _FORV_7_.id, _FORV_7_.nick, "notatka")
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.notes == false then
      triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka")
      windows.notes = true
      windows.wanted = false
      windows.logs = false
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.search = false
      windows.selectUser = false
      windows.vehicles = false
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(50 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.wanted == false then
      triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "poszukiwany")
      windows.notes = false
      windows.wanted = true
      windows.logs = false
      windows.payment = false
      windows.zgloszenia = false
      windows.search = false
      windows.selectUser = false
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
      windows.online = false
      windows.vehicles = false
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(100 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.logs == false then
      triggerServerEvent("ev", resourceRoot, "selectLogsPoliceComputer", localPlayer)
      windows.notes = false
      windows.wanted = false
      windows.logs = true
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.search = false
      windows.selectUser = false
      windows.vehicles = false
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(150 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.search == false then
      windows.notes = false
      windows.wanted = false
      windows.logs = false
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.search = true
      windows.selectUser = false
      windows.vehicles = false
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
      exports.ST_gui:createCustomEditbox("notesNick", "UID / NICK", _UPVALUE3_.x + 470 / _UPVALUE2_, _UPVALUE3_.y + 360 / _UPVALUE2_, 250 / _UPVALUE2_, 50 / _UPVALUE2_, false, "", "", 1)
    elseif isMouseIn(_UPVALUE3_.x + 520 / _UPVALUE2_, _UPVALUE3_.y + 470 / _UPVALUE2_, 160 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.background == true and windows.search == true then
      if 1 > exports.ST_gui:getCustomEditboxText("notesNick"):len() then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 id / nick", "error")
        return
      end
      info_users = {}
      if isElement(shader) then
        destroyElement(shader)
        avatarPlayer = false
      end
      if isElement(avatars) then
        destroyElement(avatars)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("notesNick"))) then
        triggerServerEvent("ev", resourceRoot, "searchPlayer", localPlayer, true, tonumber((exports.ST_gui:getCustomEditboxText("notesNick"))))
      else
        triggerServerEvent("ev", resourceRoot, "searchPlayer", localPlayer, false, (exports.ST_gui:getCustomEditboxText("notesNick")))
      end
      selectEditBox = false
      vehicle_table = {}
    elseif isMouseIn(_UPVALUE3_.x + 175 / _UPVALUE2_, _UPVALUE3_.y + 427 / _UPVALUE2_, 90 / _UPVALUE2_, 30 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if typeInfoNotes[2] == "notatka" then
        typeInfoNotes = {"MANDATY", "mandat"}
      elseif typeInfoNotes[2] == "mandat" then
        typeInfoNotes = {"NOTATKI", "notatka"}
      end
    elseif isMouseIn(_UPVALUE3_.x + 735 / _UPVALUE2_, _UPVALUE3_.y + 65 / _UPVALUE2_, 290 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if selectEditBox == "notatka" then
        if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 notatk\196\153", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(info_users) do
          triggerServerEvent("ev", resourceRoot, "addNotes", localPlayer, _FORV_7_.id, _FORV_7_.login, exports.ST_gui:getCustomEditboxText("notesReason"), "notatka")
        end
        removeEventHandler("onClientRender", root, window)
        windows.background = false
        showCursor(false)
        windows.selectUser = false
        if isElement(shader) then
          destroyElement(shader)
        end
        if isElement(avatars) then
          destroyElement(avatars)
        end
        if isElement(hudMaskShader) then
          destroyElement(hudMaskShader)
        end
        if isElement(maska) then
          destroyElement(maska)
        end
        exports.ST_gui:destroyCustomEditbox("notesReason")
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        exports.ST_gui:destroyCustomEditbox("notesReason")
      else
        exports.ST_gui:destroyCustomEditbox("notesReason")
        selectEditBox = "notatka"
        exports.ST_gui:createCustomEditbox("notesReason", "Wpisz notatk\196\153", _UPVALUE3_.x + 510 / _UPVALUE2_, _UPVALUE3_.y + 6 / _UPVALUE2_, 530 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
      end
    elseif isMouseIn(_UPVALUE3_.x + 735 / _UPVALUE2_, _UPVALUE3_.y + 132.5 / _UPVALUE2_, 290 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(info_users) do
        triggerServerEvent("ev", resourceRoot, "showVehiclesUsers", localPlayer, _FORV_6_.id)
      end
      windows.selectUser = false
      windows.vehicles = true
    elseif isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      windows.background = false
      windows.notes = false
      showCursor(false)
      windows.wanted = false
      windows.selectWanded = false
      windows.logs = false
      windows.search = false
      windows.selectUser = false
      windows.vehicles = false
      if isElement(shader) then
        destroyElement(shader)
      end
      if isElement(avatars) then
        destroyElement(avatars)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "searchPlayerClient" then
    info_users = _ARG_1_
    infoNotesSelectUser = _ARG_2_
    windows.selectUser = true
    windows.search = false
    exports.ST_gui:destroyCustomEditbox("notesNick")
    typeInfoNotes = {"NOTATKI", "notatka"}
    moneyPlayer = _ARG_3_
  elseif _ARG_0_ == "downloadAvatarPlayer" then
    hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
    maska = dxCreateTexture(":ST_avatars/kolo.png")
    dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
    shader = dxCreateShader(":ST_avatars/masked.fx")
    avatars = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
    dxSetShaderValue(shader, "sMaskTexture", maska)
    dxSetShaderValue(shader, "sPicTexture", avatars)
    avatarPlayer = shader
  elseif _ARG_0_ == "showVehiclesUsersClient" then
    vehicle_table = _ARG_1_
  elseif _ARG_0_ == "showNotesClient" then
    show_notes = {}
    show_notes = _ARG_1_
  elseif _ARG_0_ == "showNotificationPoliceComputerClient" then
    show_notification = {}
    show_notification = _ARG_1_
  elseif _ARG_0_ == "selectLogsPoliceComputerClient" then
    show_logs = {}
    show_logs = _ARG_1_
  end
end)
addEventHandler("onClientMarkerHit", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == localPlayer and _ARG_1_ and (source == _UPVALUE0_ or source == _UPVALUE1_) and getElementData(localPlayer, "player:faction") == "SAFD" and getElementData(localPlayer, "player:factionMedic") then
    if getPedOccupiedVehicle(_ARG_0_) then
      return
    end
    textures = {
      cross = dxCreateTexture(":ST_gui/img/cross.png"),
      user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
    }
    addEventHandler("onClientRender", root, window)
    windows.background = true
    windows.notes = true
    windows.wanted = false
    showCursor(true)
    triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka")
    windows.logs = false
    windows.search = false
    windows.vehicles = false
  end
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.notes == true then
    scrollUp()
  elseif windows.wanted == true then
    scrollUp1()
  elseif windows.selectUser == true then
    scrollUp2()
  elseif windows.vehicles == true then
    scrollUp3()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.notes == true then
    scrollDown()
  elseif windows.wanted == true then
    scrollDown1()
  elseif windows.selectUser == true then
    scrollDown2()
  elseif windows.vehicles == true then
    scrollDown3()
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
  if _UPVALUE0_ >= #show_notes then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function scrollDown1()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp1()
  if _UPVALUE0_ >= #show_notes then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function scrollDown2()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp2()
  if _UPVALUE0_ >= #infoNotesSelectUser then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
end
function scrollDown3()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp3()
  if _UPVALUE0_ >= #vehicle_table then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
    return "00 godzin 00 minut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#fcba03" .. hours .. "#ffffff godzin #fcba03" .. mins .. "#ffffff minut"
  end
end
getResourceName(getThisResource(), true, 805749104)
return
