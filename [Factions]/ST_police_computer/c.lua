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
  vehicles = false,
  licencje = false,
  wyjazdy = false,
  searchVeh = false,
  selectVeh = false
}
function window()
  dxUpdateScreenSource(screenSource, true)
  dxSetShaderValue(blurShader, "screenSource", screenSource)
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
  dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / _UPVALUE1_, tocolor(0, 0, 0, 190), false)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), {
      tl = 25 / _UPVALUE1_,
      tr = true,
      bl = true,
      br = true
    })
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(150 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(150 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(200 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(200 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(250 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(250 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(300 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(300 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 400 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 400 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 500 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 14 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  dxDrawText("ONLINE", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("POSZUKIWANI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("LOGI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYP\197\129ATY", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("ZG\197\129OSZENIA", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("NOTATKI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYSZUKAJ", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("LICENCJE", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYJAZDY", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("POJAZDY", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 750 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("STATYSTYKI", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 850 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h) then
    dxDrawImage(_UPVALUE2_.x - math.floor(1 / _UPVALUE1_), _UPVALUE2_.y - math.floor(1 / _UPVALUE1_), _UPVALUE2_.w + math.floor(2 / _UPVALUE1_), _UPVALUE2_.h + math.floor(2 / _UPVALUE1_), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if windows.notes == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    xY = 0
    for _FORV_7_ = 1, 11 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    if isMouseIn(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 1 / _UPVALUE1_, 240 / _UPVALUE1_, 45 / _UPVALUE1_) then
      dxDrawText("NOTOWANI - #fcba03" .. selectTypeNotes, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 155), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("NOTOWANI - #fcba03" .. selectTypeNotes, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("#ff9100" .. #show_notes .. " #c8c8c8notatek", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notes) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
        exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
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
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    if isMouseIn(_UPVALUE0_.x + 150 / _UPVALUE1_, _UPVALUE0_.y + 1 / _UPVALUE1_, 240 / _UPVALUE1_, 45 / _UPVALUE1_) then
      dxDrawText("POSZUKIWANI - #fcba03" .. selectTypeWanted, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 155), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("POSZUKIWANI - #fcba03" .. selectTypeWanted, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("#ff9100" .. #show_notes .. " #c8c8c8POSZUKIWANYCH", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 11 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 80), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notes) do
      if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
        exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), 120 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
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
          dxDrawText("#e6e6e6Dodane przez #0015b8" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 550 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("#e6e6e6Dodane przez #00ffee" .. _FORV_8_.dodajacy .. "  #e6e6e6|  #dbdbdb" .. date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 550 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        end
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      end
    end
  end
  if windows.logs == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
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
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 52 / _UPVALUE1_ + 35 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 31 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
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
        elseif _FORV_8_.type == "licencja" then
          if _FORV_8_.type1 == "usunal" then
            dxDrawText(_FORV_8_.dodajacy .. " #fc0303usun\196\133\197\130 #c8c8c8licencj\196\153 graczowi '" .. _FORV_8_.nick .. "' #" .. _FORV_8_.id .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          elseif _FORV_8_.type1 == "dodal" then
            dxDrawText(_FORV_8_.dodajacy .. " #03fc28nada\197\130 #c8c8c8licencj\196\153 graczowi '" .. _FORV_8_.nick .. "'", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          end
        elseif _FORV_8_.type == "notatka pojazd" then
          if _FORV_8_.type1 == "usunal" then
            dxDrawText(_FORV_8_.dodajacy .. " #fc0303usun\196\133\197\130 #c8c8c8notowanego '" .. _FORV_8_.nick .. "' #" .. _FORV_8_.id .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          elseif _FORV_8_.type1 == "dodal" then
            dxDrawText(_FORV_8_.dodajacy .. " #03fc28doda\197\130 #c8c8c8notowanego '" .. _FORV_8_.nick .. "'", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          end
        elseif _FORV_8_.type == "poszukiwany pojazd" then
          if _FORV_8_.type1 == "usunal" then
            dxDrawText(_FORV_8_.dodajacy .. " #fc0303usun\196\133\197\130 #c8c8c8poszukiwanego '" .. _FORV_8_.nick .. "' #" .. _FORV_8_.id .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          elseif _FORV_8_.type1 == "dodal" then
            dxDrawText(_FORV_8_.dodajacy .. " #03fc28doda\197\130 #c8c8c8poszukiwanego '" .. _FORV_8_.nick .. "'", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          end
        end
        dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y - 71 / _UPVALUE1_ + 70 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(675 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if windows.payment == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("WYP\197\129ATY", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    if wyplatyWlaczone then
      dxDrawText("WYP\197\129ATY #00c800W\197\129\196\132CZONE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("WYP\197\129ATY #c80000WY\197\129\196\132CZONE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("WYP\197\129A\196\134 WSZYSTKIM", _UPVALUE0_.x + 450 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 220 / _UPVALUE1_, 40 / _UPVALUE1_, 255, 1)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_logs_payment) do
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
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 52 / _UPVALUE1_ + 35 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 31 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
        dxDrawText("#ff9100" .. _FORV_8_.nick .. " #c8c8c8wyp\197\130aci\197\130 #ff9100" .. przecinek(_FORV_8_.pay) .. " #c8c8c8PLN za #ff9100" .. secondsToClock(60 * _FORV_8_.hours) .. "", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - math.floor(71 / _UPVALUE1_) + math.floor(70 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
        dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y - 71 / _UPVALUE1_ + math.floor(70 / _UPVALUE1_) * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(675 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if windows.zgloszenia == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y + 690 / _UPVALUE1_, _UPVALUE0_.w - 145 / _UPVALUE1_, _UPVALUE0_.h - 690 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = true,
      bl = true,
      br = 25 / _UPVALUE1_
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("ZG\197\129OSZENIA DO #0303fcSAPD", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("KLIKNIJ ABY PRZYJ\196\132\196\134 ZG\197\129OSZENIE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 10 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notification) do
      if _FORV_7_ >= _UPVALUE7_ and _FORV_7_ <= _UPVALUE8_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 135), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
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
        dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y - 55 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 675 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 3 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 695 / _UPVALUE1_, 100 / _UPVALUE1_, 60 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 695 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(26, 26, 26, 255), false)
      dxDrawText("USU\197\131", _UPVALUE0_.x + 1595 / _UPVALUE1_, _UPVALUE0_.y + 1240 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 695 / _UPVALUE1_, 120 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawText("USU\197\131", _UPVALUE0_.x + 1595 / _UPVALUE1_, _UPVALUE0_.y + 1240 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.online == true then
    xY = 0
    for _FORV_7_ = 1, 14 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 49.4 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 44 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    for _FORV_9_, _FORV_10_ in ipairs((getElementsByType("player"))) do
      if getElementData(_FORV_10_, "player:faction") == "SAPD" then
        table.insert({}, _FORV_10_)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("AKTYWNI CZ\197\129ONKOWIE #0303fcSAPD", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText(#{} .. " #009c12ONLINE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_9_, _FORV_10_ in ipairs({}) do
      if _FORV_9_ >= _UPVALUE9_ and _FORV_9_ <= _UPVALUE10_ then
        xY = xY + 1
        rank = getElementData(_FORV_10_, "player:rank") or "B\197\130\196\133d"
        if rank == 17 then
          rank = "Chief of Police"
        elseif rank == 16 then
          rank = "Assistant Chief of Police"
        elseif rank == 15 then
          rank = "Deputy Chief"
        elseif rank == 14 then
          rank = "Commander"
        elseif rank == 13 then
          rank = "Captain II"
        elseif rank == 12 then
          rank = "Captain I"
        elseif rank == 11 then
          rank = "Lieutenant"
        elseif rank == 10 then
          rank = "Detective III"
        elseif rank == 9 then
          rank = "Detective II"
        elseif rank == 8 then
          rank = "Detective I"
        elseif rank == 7 then
          rank = "Sergeant II"
        elseif rank == 6 then
          rank = "Sergeant I"
        elseif rank == 5 then
          rank = "Police Officer III+I"
        elseif rank == 4 then
          rank = "Police Officer III"
        elseif rank == 3 then
          rank = "Police Officer II"
        elseif rank == 2 then
          rank = "Police Officer I"
        elseif rank == 1 then
          rank = "Cadet"
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 49.4 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 44 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
        dxDrawText(getPlayerName(_FORV_10_) .. " (" .. secondsToClock(60 * getElementData(_FORV_10_, "player:workinjob")) .. ")", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
        dxDrawText(rank, _UPVALUE0_.x, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
      end
    end
  end
  if windows.search == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("WYSZUKIWANIE GRACZA", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 535 / _UPVALUE1_, _UPVALUE0_.h - 400 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
    dxDrawText("WPISZ #fcba03UID #e6e6e6LUB #fcba03NICK #e6e6e6OSOBY, KT\195\147R\196\132 CHCESZ\nWYSZUKA\196\134", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(100, 100, 100, 20), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(130, 130, 130, 20), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.selectUser == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
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
        dxDrawText(_FORV_28_.name .. ": " .. _FORV_28_.arg2, _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 190 / _UPVALUE1_ + 76 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
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
      dxDrawRoundedRectangle(_UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_, 300 / _UPVALUE1_, 200 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 740 / _UPVALUE1_, _UPVALUE0_.y + 253 / _UPVALUE1_, 280 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 150), false)
      dxDrawText("LICENCJE", _UPVALUE0_.x + 740 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      xY = 0
      for _FORV_28_, _FORV_29_ in ipairs({
        {"KAT.A", pjA},
        {"KAT.B", pjB},
        {"KAT.C", pjC},
        {"KAT.L", pjL}
      }) do
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 260 / _UPVALUE1_ + 37 / _UPVALUE1_ * (xY - 1), 290 / _UPVALUE1_, 35 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(5, 5, 5, 100), false)
        dxDrawText(_FORV_29_[1], _UPVALUE0_.x + 743 / _UPVALUE1_, _UPVALUE0_.y + 353 / _UPVALUE1_ + 74 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText(_FORV_29_[2], _UPVALUE0_.x, _UPVALUE0_.y + 353 / _UPVALUE1_ + 74 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 650 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 420 / _UPVALUE1_, 870 / _UPVALUE1_, 315 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 460 / _UPVALUE1_, 855 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 150), false)
    if isMouseIn(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 427 / _UPVALUE1_, 90 / _UPVALUE1_, 30 / _UPVALUE1_) then
      dxDrawText("#fcba03" .. typeInfoNotes[1], _UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 685 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("#fcba03" .. typeInfoNotes[1] .. " #ffffff- KLIKNIJ ABY ZMIENI\196\134 TYP", _UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 685 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 730 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 300 / _UPVALUE1_, 140 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
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
    colorLicence = {
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
    elseif selectEditBox == "licencja" then
      colorLicence = {
        5,
        135,
        0
      }
    elseif avatarPlayer then
      dxDrawText("KONTO #00b803JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("KONTO #b80000NIE JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1250 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(10, 10, 10, 100), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1250 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
      dxDrawText([[
DODAJ DO
POSZUKIWANYCH]], _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorWanted[1], colorWanted[2], colorWanted[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(10, 10, 10, 100), false)
      dxDrawText([[
DODAJ DO
POSZUKIWANYCH]], _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorWanted[1], colorWanted[2], colorWanted[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
      dxDrawText("POJAZDY GRACZA", _UPVALUE0_.x + 1250 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(10, 10, 10, 100), false)
      dxDrawText("POJAZDY GRACZA", _UPVALUE0_.x + 1250 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    if #infoNotesSelectUser == 0 then
      dxDrawText("GRACZ NIE POSIADA \197\187ADNYCH NOTATEK", _UPVALUE0_.x + 800 / _UPVALUE1_, _UPVALUE0_.y + 970 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(150, 150, 150, 100), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    end
    xY = 0
    i1 = 0
    iL = 0
    for _FORV_7_, _FORV_8_ in ipairs(infoNotesSelectUser) do
      if _FORV_8_.typ == "poszukiwany" then
        iP = iP + 1
        powodPoszukiwanego = _FORV_8_.text
      end
      if _FORV_8_.typ == "licencja" then
        iL = iL + 1
        licencjaNotatka = _FORV_8_.text
      end
      if _FORV_8_.typ == typeInfoNotes[2] then
        i1 = i1 + 1
        if i1 >= _UPVALUE11_ and i1 <= _UPVALUE12_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 171 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 855 / _UPVALUE1_, 60 / _UPVALUE1_, 8 / _UPVALUE1_, tocolor(5, 5, 5, 100), false)
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
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 372 / _UPVALUE1_, 2 / _UPVALUE1_, 30 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(150, 150, 150, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 402 / _UPVALUE1_, 15 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(150, 150, 150, 150), false)
      dxDrawText("Status poszukiwanego: #d10007TAK", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText(powodPoszukiwanego, _UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 600 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("Status poszukiwanego: #00b50fNIE", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 563 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    end
    if iL >= 1 then
      dxDrawText("Licencja na bro\197\132: #00b50fTAK #bfbfbf( " .. licencjaNotatka .. " )", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
        dxDrawText("USU\197\131 LICENCJ\196\152", _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(10, 10, 10, 100), false)
        dxDrawText("USU\197\131 LICENCJ\196\152", _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      end
    else
      dxDrawText("Licencja na bro\197\132: #bfbfbfNIE", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      if isMouseIn(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
        dxDrawText("NADAJ LICENCJ\196\152", _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorLicence[1], colorLicence[2], colorLicence[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 880 / _UPVALUE1_, _UPVALUE0_.y + 132.5 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(10, 10, 10, 100), false)
        dxDrawText("NADAJ LICENCJ\196\152", _UPVALUE0_.x + 1540 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorLicence[1], colorLicence[2], colorLicence[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
      end
    end
  end
  if windows.vehicles == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    for _FORV_7_, _FORV_8_ in ipairs(info_users) do
      dxDrawText("POJAZDY GRACZA #fcba03" .. _FORV_8_.login, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("#fcba03" .. #vehicle_table .. " #ffffffpojazd\195\179w \197\130\196\133cznie", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(vehicle_table) do
      if _FORV_7_ >= _UPVALUE13_ and _FORV_7_ <= _UPVALUE14_ then
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
  if windows.licencje == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("LICENCJE NA BRO\197\131", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("#ff9100" .. #show_notes .. " #c8c8c8\197\129\196\132CZNYCH LICENCJI", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 11 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notes) do
      if _FORV_7_ >= _UPVALUE5_ and _FORV_7_ <= _UPVALUE6_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
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
  if windows.wyjazdy == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("WYJAZDY", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_, 435 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 107 / _UPVALUE1_, 415 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 255), false)
    dxDrawText("AKTYWNE WYJAZDY", _UPVALUE0_.x + 172 / _UPVALUE1_, _UPVALUE0_.y - 28 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 7 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), 415 / _UPVALUE1_, 75 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 80), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(wyjazdyTabela) do
      if _FORV_7_ >= _UPVALUE15_ and _FORV_7_ <= _UPVALUE16_ then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), 415 / _UPVALUE1_, 75 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(45, 45, 45, 155), false)
        dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 176 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(_UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 138 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 34 / _UPVALUE1_, tocolor(70, 70, 70, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 180 / _UPVALUE1_, _UPVALUE0_.y + 172 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(70, 70, 70, 255), false)
        dxDrawText(_FORV_8_.pojazd, _UPVALUE0_.x + 203 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_ + 176 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 563 / _UPVALUE1_, _UPVALUE0_.y + 173 / _UPVALUE1_ + 88 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 15 / _UPVALUE1_) then
          dxDrawText("\226\156\152", _UPVALUE0_.x + 565 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 176 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 0, 0, 150), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("\226\156\152", _UPVALUE0_.x + 565 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 176 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(250, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        end
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 607 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_, 430 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 617 / _UPVALUE1_, _UPVALUE0_.y + 107 / _UPVALUE1_, 410 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 255), false)
    dxDrawText("DODAJ WYJAZD", _UPVALUE0_.x + 619 / _UPVALUE1_, _UPVALUE0_.y - 28 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
    if string.lower(exports.ST_gui:getCustomEditboxText("pojazdWyjazdy")):len() > 0 then
      if isMouseIn(_UPVALUE0_.x + 998 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 998 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(60, 60, 60, 110), false)
        dxDrawText("+", _UPVALUE0_.x + 1005 / _UPVALUE1_, _UPVALUE0_.y - 28 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 255, 200, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 998 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_, 25 / _UPVALUE1_, 25 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(60, 60, 60, 160), false)
        dxDrawText("+", _UPVALUE0_.x + 1005 / _UPVALUE1_, _UPVALUE0_.y - 28 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 255, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 617 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_, 410 / _UPVALUE1_, 475 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 90), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 627 / _UPVALUE1_, _UPVALUE0_.y + 157 / _UPVALUE1_, 390 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 170), false)
    dxDrawText("WYBIERZ CZ\197\129ONK\195\147W", _UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_8_ = 1, 10 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 627 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 42 / _UPVALUE1_ * (xY - 1), 390 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(5, 5, 5, 60), false)
    end
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(players) do
      if _FORV_8_ >= _UPVALUE3_ and _FORV_8_ <= _UPVALUE4_ then
        xY = xY + 1
        if _FORV_9_[2] then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 625 / _UPVALUE1_, _UPVALUE0_.y + 168 / _UPVALUE1_ + 42 / _UPVALUE1_ * (xY - 1), 394 / _UPVALUE1_, 39 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(60, 60, 60, 130), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 627 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 42 / _UPVALUE1_ * (xY - 1), 390 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
          dxDrawText(getPlayerName(_FORV_9_[1]), _UPVALUE0_.x + 637 / _UPVALUE1_, _UPVALUE0_.y + 172 / _UPVALUE1_ + 84 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 627 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 42 / _UPVALUE1_ * (xY - 1), 390 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
          dxDrawText(getPlayerName(_FORV_9_[1]), _UPVALUE0_.x + 637 / _UPVALUE1_, _UPVALUE0_.y + 172 / _UPVALUE1_ + 84 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        end
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 617 / _UPVALUE1_, _UPVALUE0_.y + 610 / _UPVALUE1_, 410 / _UPVALUE1_, 113 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 90), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 627 / _UPVALUE1_, _UPVALUE0_.y + 645 / _UPVALUE1_, 390 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 170), false)
    dxDrawText("WPISZ NAZW\196\152 POJAZDU", _UPVALUE0_.x + 629 / _UPVALUE1_, _UPVALUE0_.y + 1055 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
  end
  if windows.searchVeh == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("WYSZUKAJ POJAZD", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 535 / _UPVALUE1_, _UPVALUE0_.h - 400 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(100, 100, 100, 45), false)
    dxDrawText("WPISZ #fcba03ID #e6e6e6POJAZDU, KT\195\147REGO CHCESZ\nWYSZUKA\196\134", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(100, 100, 100, 20), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 520 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 160 / _UPVALUE1_, 60 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(130, 130, 130, 20), false)
      dxDrawText("WYSZUKAJ", _UPVALUE0_.x + 835 / _UPVALUE1_, _UPVALUE0_.y + 800 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "center", "center", false, false, false, false, false)
    end
  end
  if windows.selectVeh == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 156 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_, 405 / _UPVALUE1_, 370 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(100, 100, 100, 45))
    dxDrawText("INFORMACJE", _UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y - 42 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_, 390 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 571 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_, 473 / _UPVALUE1_, 370 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(100, 100, 100, 45))
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
    end
    if isMouseIn(_UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1280 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(5, 5, 5, 100), false)
      dxDrawText("WPISZ NOTATK\196\152", _UPVALUE0_.x + 1280 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorNotes[1], colorNotes[2], colorNotes[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    if isMouseIn(_UPVALUE0_.x + 895 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 895 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 100), false)
      dxDrawText([[
DODAJ DO
POSZUKIWANYCH]], _UPVALUE0_.x + 1570 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorWanted[1], colorWanted[2], colorWanted[3], 225), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 895 / _UPVALUE1_, _UPVALUE0_.y + 65 / _UPVALUE1_, 140 / _UPVALUE1_, 62.5 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(5, 5, 5, 100), false)
      dxDrawText([[
DODAJ DO
POSZUKIWANYCH]], _UPVALUE0_.x + 1570 / _UPVALUE1_, _UPVALUE0_.y - 7 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(colorWanted[1], colorWanted[2], colorWanted[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "center", "center", false, false, false, true, false)
    end
    for _FORV_15_, _FORV_16_ in ipairs(vehicle_info) do
      dxDrawText("POJAZD ID #fcba03" .. _FORV_16_.id .. "", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      if _FORV_16_.plateText == "" then
      else
      end
      if string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) <= string.sub(_FORV_16_.przeglad, 1, 10) then
      else
      end
      nitroText = "#8c0000NIE"
      for _FORV_26_, _FORV_27_ in ipairs(split(_FORV_16_.tuning, ",")) do
        if _FORV_27_ == "1010" then
          nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. _FORV_16_.nitro .. "#e6e6e6/#ffbb00" .. _FORV_16_.butlaN .. "#e6e6e6L )"
        end
      end
      brakeText = "#ffbb00" .. _FORV_16_.hamulce
      if _FORV_16_.hamulce == "Brak" then
        brakeText = "#c8c8c8Brak"
      end
      xY = 0
      for _FORV_26_, _FORV_27_ in ipairs({
        {
          "ID",
          "#ffbb00" .. _FORV_16_.id .. ""
        },
        {
          "PRZEBIEG",
          "#ffbb00" .. _FORV_16_.mileage .. " KM"
        },
        {
          "OSTATNI KIEROWCA",
          "#ffbb00" .. (string.gsub(_FORV_16_.driver, "#%x%x%x%x%x%x", "") or "Brak") .. ""
        },
        {
          "UID W\197\129A\197\154CICIELA",
          "#ffbb00" .. _FORV_16_.ownedPlayer .. ""
        },
        {
          "SILNIK",
          "" .. _FORV_16_.pojemnosc .. " " .. _FORV_16_.cylindry .. " " .. _FORV_16_.engineType .. ""
        },
        {
          "REJESTRACJA",
          "" .. ("#ffbb00" .. _FORV_16_.plateText .. "") .. ""
        },
        {
          "PRZEGL\196\132D",
          "#c40000niewa\197\188ny"
        }
      }) do
        xY = xY + 1
        dxDrawText(_FORV_27_[1], _UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 45 / _UPVALUE1_ + 78 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_27_[2], _UPVALUE0_.x, _UPVALUE0_.y + 45 / _UPVALUE1_ + 78 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 190 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 156 / _UPVALUE1_, _UPVALUE0_.y + 437 / _UPVALUE1_, 887 / _UPVALUE1_, 305 / _UPVALUE1_, 17 / _UPVALUE1_, tocolor(100, 100, 100, 45))
    dxDrawText("NOTATKI", _UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 715 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 163 / _UPVALUE1_, _UPVALUE0_.y + 475 / _UPVALUE1_, 872 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    xY = 0
    i1 = 0
    iL = 0
    iP = 0
    for _FORV_15_, _FORV_16_ in ipairs(infoNotesSelectVeh) do
      if _FORV_16_.typ == "poszukiwany pojazd" then
        iP = iP + 1
        powodPoszukiwanego = _FORV_16_.text
      end
      if _FORV_16_.typ == "notatka pojazd" then
        i1 = i1 + 1
        if i1 >= _UPVALUE11_ and i1 <= _UPVALUE12_ then
          xY = xY + 1
          dxDrawRoundedRectangle(_UPVALUE0_.x + 164 / _UPVALUE1_, _UPVALUE0_.y + 483 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 870 / _UPVALUE1_, 60 / _UPVALUE1_, 12 / _UPVALUE1_, tocolor(5, 5, 5, 100), false)
          dxDrawText(_FORV_16_.text, _UPVALUE0_.x + 185 / _UPVALUE1_, _UPVALUE0_.y + 792 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 498 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 28 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
          dxDrawRoundedRectangle(_UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 526 / _UPVALUE1_ + 65 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(50, 50, 50, 150), false)
          if _FORV_16_.faction == "SAPD" then
            dxDrawText("Dodane przez #0015b8" .. _FORV_16_.dodajacy, _UPVALUE0_.x + 195 / _UPVALUE1_, _UPVALUE0_.y + 845 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
          else
            dxDrawText("Dodane przez #00ffee" .. _FORV_16_.dodajacy, _UPVALUE0_.x + 195 / _UPVALUE1_, _UPVALUE0_.y + 845 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal12"), "left", "center", false, false, false, true, false)
          end
          if string.sub(_FORV_16_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
            date = "Dzi\197\155 o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          elseif string.sub(_FORV_16_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_16_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "Wczoraj o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          elseif string.sub(_FORV_16_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_16_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "2 dni temu o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          elseif string.sub(_FORV_16_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_16_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "3 dni temu o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          elseif string.sub(_FORV_16_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_16_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "4 dni temu o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          elseif string.sub(_FORV_16_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_16_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
            date = "5 dni temu o " .. string.sub(_FORV_16_.date, 12, 16) .. ""
          else
            date = "" .. string.sub(_FORV_16_.date, 1, 10) .. ""
          end
          dxDrawText(date, _UPVALUE0_.x, _UPVALUE0_.y + 820 / _UPVALUE1_ + 130 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 660 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "right", "center", false, false, false, true, false)
        end
      end
    end
    if iP >= 1 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 387 / _UPVALUE1_, 2 / _UPVALUE1_, 30 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(150, 150, 150, 150), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 165 / _UPVALUE1_, _UPVALUE0_.y + 417 / _UPVALUE1_, 15 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(150, 150, 150, 150), false)
      dxDrawText("Status poszukiwanego: #d10007TAK", _UPVALUE0_.x + 175 / _UPVALUE1_, _UPVALUE0_.y + 573 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      dxDrawText(powodPoszukiwanego, _UPVALUE0_.x + 190 / _UPVALUE1_, _UPVALUE0_.y + 622 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    else
      dxDrawText("Status poszukiwanego: #00b50fNIE", _UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 589 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("#fcba03" .. i1 .. " #c8c8c8WYSZUKA\197\131", _UPVALUE0_.x, _UPVALUE0_.y + 715 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 665 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
  end
  if windows.statystyki == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("STATYSTYKI PRZYJ\196\152TYCH ZG\197\129OSZE\197\131", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    if isMouseIn(_UPVALUE0_.x + 975 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_, 80 / _UPVALUE1_, 30 / _UPVALUE1_) then
      if selectStatystykiZgloszen == "SAFD" then
        dxDrawText("#c90d00SAFD", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 155), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      else
        dxDrawText("#0015b8SAPD", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 155), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      end
    elseif selectStatystykiZgloszen == "SAFD" then
      dxDrawText("#c90d00SAFD", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("#0015b8SAPD", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 670 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_14_ = 1, 4 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_ + 218 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 65 / _UPVALUE1_, 200 / _UPVALUE1_, 70 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 70), false)
      dxDrawText(({
        "DZISIAJ",
        "TYDZIE\197\131",
        "MIESI\196\132C",
        "ROK"
      })[_FORV_14_], _UPVALUE0_.x + 180 / _UPVALUE1_ + 218 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 70 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(180, 180, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "top", false, false, false, true)
      dxDrawText(({
        statystyki_counters.day,
        statystyki_counters.week,
        statystyki_counters.month,
        statystyki_counters.year
      })[_FORV_14_], _UPVALUE0_.x + 436 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 85 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) - 5 / _UPVALUE1_ + 218 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255), 1.1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "top", false, false, false, true)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.w - 190 / _UPVALUE1_, _UPVALUE0_.h - 170 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 70), false)
    for _FORV_24_ = 0, 9 do
      for _FORV_32_, _FORV_33_ in ipairs(statystyki_chart) do
        if _FORV_33_.d == string.format("%04d-%02d-%02d", getRealTime(getRealTime().timestamp - _FORV_24_ * 86400).year + 1900, getRealTime(getRealTime().timestamp - _FORV_24_ * 86400).month + 1, getRealTime(getRealTime().timestamp - _FORV_24_ * 86400).monthday) then
          break
        end
      end
      if 1 < _FORV_33_.t then
      end
    end
    for _FORV_24_ = 0, _FORV_33_.t do
      dxDrawLine(_UPVALUE0_.x + 170 / _UPVALUE1_ + 45 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) * (_FORV_24_ / _FORV_33_.t), _UPVALUE0_.x + 170 / _UPVALUE1_ + (_UPVALUE0_.w - 190 / _UPVALUE1_) - 15 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) * (_FORV_24_ / _FORV_33_.t), tocolor(60, 60, 60, 180))
      dxDrawText(tostring(_FORV_24_), _UPVALUE0_.x + 170 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) * (_FORV_24_ / _FORV_33_.t) - 6 / _UPVALUE1_, _UPVALUE0_.x + 170 / _UPVALUE1_ + 40 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) * (_FORV_24_ / _FORV_33_.t), tocolor(170, 170, 170), 0.7 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true)
    end
    for _FORV_25_ = 9, 0, -1 do
      for _FORV_33_, _FORV_34_ in ipairs(statystyki_chart) do
        if _FORV_34_.d == string.format("%04d-%02d-%02d", getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).year + 1900, getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).month + 1, getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).monthday) then
          break
        end
      end
      if _FORV_34_.t == 0 then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10), _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) - 20 / _UPVALUE1_, (_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10 - 5 / _UPVALUE1_, _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) + 20 / _UPVALUE1_, 4 / _UPVALUE1_, tocolor(120, 120, 120, 190), false)
        dxDrawText(_FORV_34_.t, _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10), _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) - 24 / _UPVALUE1_, _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10) + (_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10 - 5 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) - 24 / _UPVALUE1_, tocolor(255, 255, 255), 0.7 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "bottom", false, false, false, true)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10), _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_), (_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10 - 5 / _UPVALUE1_, _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_), 4 / _UPVALUE1_, tocolor(255, 175, 0, 230), false)
        dxDrawText(_FORV_34_.t, _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10), _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_) - 14 / _UPVALUE1_, _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10) + (_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10 - 5 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ - _FORV_34_.t / _FORV_33_.t * (_UPVALUE0_.h - 170 / _UPVALUE1_ - 70 / _UPVALUE1_), tocolor(255, 255, 255), 0.7 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "center", "bottom", false, false, false, true)
      end
      dxDrawText(string.sub(string.format("%04d-%02d-%02d", getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).year + 1900, getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).month + 1, getRealTime(getRealTime().timestamp - _FORV_25_ * 86400).monthday), 6), _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10), _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_) - 30 / _UPVALUE1_ + 3 / _UPVALUE1_, _UPVALUE0_.x + 170 / _UPVALUE1_ + 50 / _UPVALUE1_ + (9 - _FORV_25_) * ((_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10) + (_UPVALUE0_.w - 190 / _UPVALUE1_ - 65 / _UPVALUE1_) / 10 - 5 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_ + (_UPVALUE0_.h - 170 / _UPVALUE1_), tocolor(200, 200, 200), 0.6 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "top", false, false, false, true)
    end
  end
end
function tracking()
  if posTracking and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
    dxDrawText("ZG\197\129OSZENIE" .. zgloszenieGracz, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 43, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("ZG\197\129OSZENIE#ffffff" .. zgloszenieGracz, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 45, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
    if math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) < 5 and isElement(blip) then
      destroyElement(blip)
      blip = nil
      removeEventHandler("onClientRender", root, tracking)
      setElementData(localPlayer, "player:przyjalzgloszenie", false)
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true and windows.notes == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_notes) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 920 / _UPVALUE2_, _UPVALUE3_.y + 61 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 100 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.notes == true then
          if selectTypeNotes == "GRACZE" then
            triggerServerEvent("ev", resourceRoot, "removeNotes", localPlayer, _FORV_7_.id, _FORV_7_.nick, "notatka")
          elseif selectTypeNotes == "POJAZDY" then
            triggerServerEvent("ev", resourceRoot, "removeNotes", localPlayer, _FORV_7_.id, _FORV_7_.nick, "notatka pojazd")
          end
        end
      end
    end
    if windows.background == true and windows.wanted == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_notes) do
        if _FORV_6_ >= _UPVALUE4_ and _FORV_6_ <= _UPVALUE5_ and isMouseIn(_UPVALUE3_.x + 920 / _UPVALUE2_, _UPVALUE3_.y + 61 / _UPVALUE2_ + 63 / _UPVALUE2_ * (0 + 1 - 1), 100 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.wanted == true then
          if selectTypeWanted == "GRACZE" then
            triggerServerEvent("ev", resourceRoot, "removeNotes", localPlayer, _FORV_7_.id, _FORV_7_.nick, "poszukiwany")
          elseif selectTypeWanted == "POJAZDY" then
            triggerServerEvent("ev", resourceRoot, "removeNotes", localPlayer, _FORV_7_.id, _FORV_7_.nick, "poszukiwany pojazd")
          end
        end
      end
    end
    if windows.background == true and windows.zgloszenia == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_notification) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 155 / _UPVALUE2_, _UPVALUE3_.y + 57 / _UPVALUE2_ + math.floor(50 / _UPVALUE2_) * (0 + 1 - 1), _UPVALUE3_.w - 160 / _UPVALUE2_, 58 / _UPVALUE2_) and windows.zgloszenia == true then
          if getElementData(localPlayer, "player:przyjalzgloszenie") then
            exports.st_gui:showPlayerNotification("Ju\197\188 przyj\196\133\197\130e\197\155 zg\197\130oszenie, odczekaj chwil\196\153.", "error")
            return
          end
          createShaderBlur(false)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          for _FORV_12_, _FORV_13_ in pairs(textures) do
            if isElement(_FORV_13_) then
              destroyElement(_FORV_13_)
            end
          end
          textures = {}
          windows.background = false
          windows.notes = false
          showCursor(false)
          windows.wanted = false
          windows.logs = false
          windows.payment = false
          windows.zgloszenia = false
          exports.ST_gui:destroyCustomEditbox("notesNick")
          exports.ST_gui:destroyCustomEditbox("notesReason")
          blip = createBlip(split(_FORV_7_.pos, ", ")[1], split(_FORV_7_.pos, ", ")[2], split(_FORV_7_.pos, ", ")[3], 41)
          triggerServerEvent("ev", resourceRoot, "deleteNotification", localPlayer, _FORV_7_.id)
          setElementData(localPlayer, "player:przyjalzgloszenie", true)
          addEventHandler("onClientRender", root, tracking)
          posTracking = {
            split(_FORV_7_.pos, ", ")[1],
            split(_FORV_7_.pos, ", ")[2],
            split(_FORV_7_.pos, ", ")[3]
          }
        end
      end
    end
    if windows.background == true and windows.wyjazdy == true then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(players) do
        if _FORV_5_ >= _UPVALUE0_ and _FORV_5_ <= _UPVALUE1_ then
          xY = xY + 1
          if isMouseIn(_UPVALUE3_.x + 627 / _UPVALUE2_, _UPVALUE3_.y + 170 / _UPVALUE2_ + 42 / _UPVALUE2_ * (xY - 1), 390 / _UPVALUE2_, 35 / _UPVALUE2_) and windows.wyjazdy == true then
            if _FORV_6_[2] == true then
              table.remove(players, _FORV_5_)
              table.insert(players, {
                _FORV_6_[1],
                false
              })
            else
              table.remove(players, _FORV_5_)
              table.insert(players, {
                _FORV_6_[1],
                true
              })
            end
            table.sort(players, function(_ARG_0_, _ARG_1_)
              return getPlayerName(_ARG_0_[1]):lower() < getPlayerName(_ARG_1_[1]):lower()
            end)
          end
        end
      end
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(wyjazdyTabela) do
        if _FORV_5_ >= _UPVALUE6_ and _FORV_5_ <= _UPVALUE7_ then
          xY = xY + 1
          if isMouseIn(_UPVALUE3_.x + 563 / _UPVALUE2_, _UPVALUE3_.y + 173 / _UPVALUE2_ + 88 / _UPVALUE2_ * (xY - 1), 15 / _UPVALUE2_, 15 / _UPVALUE2_) and windows.wyjazdy == true then
            print(_FORV_6_.id)
            triggerServerEvent("ev", resourceRoot, "usunWyjazd", localPlayer, _FORV_6_.id)
            exports.st_gui:showPlayerNotification("Zako\197\132czono wyjazd", "info")
            exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
            createShaderBlur(false)
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientKey", root, key)
            windows.background = false
            showCursor(false)
            windows.payment = false
            windows.zgloszenia = false
            windows.online = false
            windows.wyjazdy = false
            windows.statystyki = false
          end
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + 450 / _UPVALUE2_, _UPVALUE3_.y + 5 / _UPVALUE2_, 220 / _UPVALUE2_, 40 / _UPVALUE2_) and windows.background == true and windows.payment == true then
      if getElementData(localPlayer, "player:rank") >= 17 then
        triggerServerEvent("ev", resourceRoot, "wyplacWszystkim", localPlayer)
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.online == false then
      if getTickCount() - lastTickCount > 1000 then
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = true
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.selectVeh = false
        windows.searchVeh = false
        windows.statystyki = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(50 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.wanted == false then
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "poszukiwany")
        windows.notes = false
        selectTypeWanted = "GRACZE"
        windows.wanted = true
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.search = false
        windows.selectUser = false
        windows.selectVeh = false
        windows.searchVeh = false
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        windows.online = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x + 150 / _UPVALUE2_, _UPVALUE3_.y + 1 / _UPVALUE2_, 240 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.background == true and windows.wanted == true then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE4_ = 1
        _UPVALUE5_ = 11
        _UPVALUE8_ = 11
        if selectTypeWanted == "GRACZE" then
          selectTypeWanted = "POJAZDY"
          triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "poszukiwany pojazd")
        elseif selectTypeWanted == "POJAZDY" then
          selectTypeWanted = "GRACZE"
          triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "poszukiwany")
        end
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(100 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.logs == false then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE0_ = 1
        _UPVALUE1_ = 11
        _UPVALUE9_ = 11
        triggerServerEvent("selectLogsPoliceComputer", localPlayer)
        windows.notes = false
        windows.wanted = false
        windows.logs = true
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(150 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.payment == false then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE0_ = 1
        _UPVALUE1_ = 11
        _UPVALUE9_ = 11
        triggerServerEvent("showPaymentPoliceComputer", localPlayer)
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = true
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(200 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.zgloszenia == false then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE0_ = 1
        _UPVALUE1_ = 11
        _UPVALUE9_ = 11
        triggerServerEvent("ev", resourceRoot, "showNotificationPoliceComputer", localPlayer)
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = true
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(250 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.notes == false then
      if getTickCount() - lastTickCount > 5000 then
        triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka")
        _UPVALUE0_ = 1
        _UPVALUE1_ = 11
        _UPVALUE9_ = 11
        windows.notes = true
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        selectTypeNotes = "GRACZE"
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x + 150 / _UPVALUE2_, _UPVALUE3_.y + 1 / _UPVALUE2_, 240 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.background == true and windows.notes == true then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE0_ = 1
        _UPVALUE1_ = 11
        _UPVALUE9_ = 11
        if selectTypeNotes == "GRACZE" then
          selectTypeNotes = "POJAZDY"
          triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka pojazd")
        elseif selectTypeNotes == "POJAZDY" then
          selectTypeNotes = "GRACZE"
          triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka")
        end
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(300 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.search == false then
      if getTickCount() - lastTickCount > 1000 then
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = true
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        _UPVALUE10_ = 1
        _UPVALUE11_ = 4
        _UPVALUE12_ = 4
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        exports.ST_gui:createCustomEditbox("notesNick", "UID / NICK", _UPVALUE3_.x + 470 / _UPVALUE2_, _UPVALUE3_.y + 360 / _UPVALUE2_, 250 / _UPVALUE2_, 50 / _UPVALUE2_, false, "", "", 1)
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(350 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.licencje == false then
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "licencja")
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = true
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(400 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.wyjazdy == false then
      if getTickCount() - lastTickCount > 1000 then
        players = {}
        for _FORV_6_, _FORV_7_ in ipairs((getElementsByType("player"))) do
          if getElementData(_FORV_7_, "player:faction") == "SAPD" then
            table.insert(players, {_FORV_7_, false})
          end
        end
        table.sort(players, function(_ARG_0_, _ARG_1_)
          return getPlayerName(_ARG_0_[1]):lower() < getPlayerName(_ARG_1_[1]):lower()
        end)
        _UPVALUE0_ = 1
        _UPVALUE1_ = 10
        _UPVALUE9_ = 10
        wyjazdyTabela = {}
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        triggerServerEvent("ev", resourceRoot, "pokazTabeleWyjazdy", localPlayer)
        exports.ST_gui:createCustomEditbox("pojazdWyjazdy", "Wpisz pojazd...", _UPVALUE3_.x + 632 / _UPVALUE2_, _UPVALUE3_.y + 660 / _UPVALUE2_, 380 / _UPVALUE2_, 50 / _UPVALUE2_, false, "", "", 1)
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = true
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = false
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(450 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.searchVeh == false then
      if getTickCount() - lastTickCount > 1000 then
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = false
        windows.selectVeh = false
        windows.searchVeh = true
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        infoNotesSelectVeh = {}
        _UPVALUE10_ = 1
        _UPVALUE11_ = 4
        _UPVALUE12_ = 4
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        exports.ST_gui:createCustomEditbox("searchVeh", "ID POJAZDU", _UPVALUE3_.x + 470 / _UPVALUE2_, _UPVALUE3_.y + 360 / _UPVALUE2_, 250 / _UPVALUE2_, 50 / _UPVALUE2_, false, "", "", 1)
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(500 / _UPVALUE2_), _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.statystyki == false then
      if getTickCount() - lastTickCount > 1000 then
        windows.notes = false
        windows.wanted = false
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.search = false
        windows.selectUser = false
        windows.vehicles = false
        windows.licencje = false
        windows.wyjazdy = false
        windows.statystyki = true
        windows.selectVeh = false
        windows.searchVeh = false
        selectStatystykiZgloszen = "SAPD"
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        exports.ST_gui:destroyCustomEditbox("searchVeh")
        exports.ST_gui:destroyCustomEditbox("notesNick")
        exports.ST_gui:destroyCustomEditbox("notesReason")
        lastTickCount = getTickCount()
        triggerServerEvent("ev", resourceRoot, "pokazTabeleStatystyki", localPlayer, selectStatystykiZgloszen)
      end
    elseif isMouseIn(_UPVALUE3_.x + 975 / _UPVALUE2_, _UPVALUE3_.y + 10 / _UPVALUE2_, 80 / _UPVALUE2_, 30 / _UPVALUE2_) and windows.background == true and windows.statystyki == true then
      if getTickCount() - lastTickCount > 1000 then
        if selectStatystykiZgloszen == "SAPD" then
          selectStatystykiZgloszen = "SAFD"
        else
          selectStatystykiZgloszen = "SAPD"
        end
        lastTickCount = getTickCount()
        triggerServerEvent("ev", resourceRoot, "pokazTabeleStatystyki", localPlayer, selectStatystykiZgloszen)
      end
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
    elseif isMouseIn(_UPVALUE3_.x + 520 / _UPVALUE2_, _UPVALUE3_.y + 470 / _UPVALUE2_, 160 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.background == true and windows.searchVeh == true then
      if 1 > exports.ST_gui:getCustomEditboxText("searchVeh"):len() then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 id", "error")
        return
      end
      vehicle_info = {}
      selectEditBox = false
      if tonumber((exports.ST_gui:getCustomEditboxText("searchVeh"))) then
        triggerServerEvent("ev", resourceRoot, "searchVehicle", localPlayer, (exports.ST_gui:getCustomEditboxText("searchVeh")))
      end
    elseif isMouseIn(_UPVALUE3_.x + 735 / _UPVALUE2_, _UPVALUE3_.y + 65 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectVeh == true then
      if selectEditBox == "notatka" then
        if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 notatk\196\153", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(vehicle_info) do
          triggerServerEvent("ev", resourceRoot, "addNotesVehicle", localPlayer, _FORV_7_.id, "" .. exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_7_.model), _FORV_7_.custom_model) .. " - " .. _FORV_7_.id .. "", exports.ST_gui:getCustomEditboxText("notesReason"), "notatka pojazd")
        end
        createShaderBlur(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        windows.background = false
        showCursor(false)
        windows.selectVeh = false
        exports.ST_gui:destroyCustomEditbox("notesReason")
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        exports.ST_gui:destroyCustomEditbox("notesReason")
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
      else
        exports.ST_gui:destroyCustomEditbox("notesReason")
        selectEditBox = "notatka"
        exports.ST_gui:createCustomEditbox("notesReason", "Wpisz notatk\196\153", _UPVALUE3_.x + 510 / _UPVALUE2_, _UPVALUE3_.y + 6 / _UPVALUE2_, 530 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
      end
    elseif isMouseIn(_UPVALUE3_.x + 880 / _UPVALUE2_, _UPVALUE3_.y + 65 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectVeh == true then
      if selectEditBox == "poszukiwany" then
        if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 pow\195\179d", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(vehicle_info) do
          triggerServerEvent("ev", resourceRoot, "addNotesVehicle", localPlayer, _FORV_7_.id, "" .. exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_7_.model), _FORV_7_.custom_model) .. " - " .. _FORV_7_.id .. "", exports.ST_gui:getCustomEditboxText("notesReason"), "poszukiwany pojazd")
        end
        createShaderBlur(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        windows.background = false
        showCursor(false)
        windows.selectVeh = false
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        exports.ST_gui:destroyCustomEditbox("notesReason")
        if isElement(vehicle3D) then
          destroyElement(vehicle3D)
        end
      else
        exports.ST_gui:destroyCustomEditbox("notesReason")
        selectEditBox = "poszukiwany"
        exports.ST_gui:createCustomEditbox("notesReason", "Wpisz pow\195\179d poszukiwania", _UPVALUE3_.x + 510 / _UPVALUE2_, _UPVALUE3_.y + 6 / _UPVALUE2_, 530 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
      end
    elseif isMouseIn(_UPVALUE3_.x + 175 / _UPVALUE2_, _UPVALUE3_.y + 427 / _UPVALUE2_, 90 / _UPVALUE2_, 30 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if typeInfoNotes[2] == "notatka" then
        typeInfoNotes = {"MANDATY", "mandat"}
      elseif typeInfoNotes[2] == "jail" then
        typeInfoNotes = {"NOTATKI", "notatka"}
      elseif typeInfoNotes[2] == "mandat" then
        typeInfoNotes = {"JAILE", "jail"}
      end
    elseif isMouseIn(_UPVALUE3_.x + 735 / _UPVALUE2_, _UPVALUE3_.y + 65 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if selectEditBox == "notatka" then
        if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 notatk\196\153", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(info_users) do
          triggerServerEvent("ev", resourceRoot, "addNotes", localPlayer, _FORV_7_.id, _FORV_7_.login, exports.ST_gui:getCustomEditboxText("notesReason"), "notatka")
        end
        createShaderBlur(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
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
    elseif isMouseIn(_UPVALUE3_.x + 880 / _UPVALUE2_, _UPVALUE3_.y + 65 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if selectEditBox == "poszukiwany" then
        if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 pow\195\179d", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(info_users) do
          triggerServerEvent("ev", resourceRoot, "addNotes", localPlayer, _FORV_7_.id, _FORV_7_.login, exports.ST_gui:getCustomEditboxText("notesReason"), "poszukiwany")
        end
        createShaderBlur(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
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
        for _FORV_6_, _FORV_7_ in pairs(textures) do
          if isElement(_FORV_7_) then
            destroyElement(_FORV_7_)
          end
        end
        textures = {}
        exports.ST_gui:destroyCustomEditbox("notesReason")
      else
        exports.ST_gui:destroyCustomEditbox("notesReason")
        selectEditBox = "poszukiwany"
        exports.ST_gui:createCustomEditbox("notesReason", "Wpisz pow\195\179d poszukiwania", _UPVALUE3_.x + 510 / _UPVALUE2_, _UPVALUE3_.y + 6 / _UPVALUE2_, 530 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
      end
    elseif isMouseIn(_UPVALUE3_.x + 880 / _UPVALUE2_, _UPVALUE3_.y + 132.5 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      if getElementData(localPlayer, "player:rank") >= 11 then
        for _FORV_6_, _FORV_7_ in ipairs(info_users) do
          if 1 <= iL then
            triggerServerEvent("ev", resourceRoot, "licencjaBron", localPlayer, _FORV_7_.id, _FORV_7_.login, "", "licencja", false)
            createShaderBlur(false)
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientKey", root, key)
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
            for _FORV_11_, _FORV_12_ in pairs(textures) do
              if isElement(_FORV_12_) then
                destroyElement(_FORV_12_)
              end
            end
            textures = {}
            exports.ST_gui:destroyCustomEditbox("notesReason")
          elseif selectEditBox == "licencja" then
            if 1 > exports.ST_gui:getCustomEditboxText("notesReason"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 rodzaj broni", "error")
              return
            end
            triggerServerEvent("ev", resourceRoot, "licencjaBron", localPlayer, _FORV_7_.id, _FORV_7_.login, exports.ST_gui:getCustomEditboxText("notesReason"), "licencja", true)
            exports.ST_gui:destroyCustomEditbox("notesReason")
            createShaderBlur(false)
            removeEventHandler("onClientRender", root, window)
            removeEventHandler("onClientKey", root, key)
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
            for _FORV_12_, _FORV_13_ in pairs(textures) do
              if isElement(_FORV_13_) then
                destroyElement(_FORV_13_)
              end
            end
            textures = {}
            exports.ST_gui:destroyCustomEditbox("notesReason")
          else
            exports.ST_gui:destroyCustomEditbox("notesReason")
            selectEditBox = "licencja"
            exports.ST_gui:createCustomEditbox("notesReason", "Wpisz rodzaj broni", _UPVALUE3_.x + 510 / _UPVALUE2_, _UPVALUE3_.y + 6 / _UPVALUE2_, 530 / _UPVALUE2_, 40 / _UPVALUE2_, false, "", "", 1)
          end
        end
      else
        exports.st_gui:showPlayerNotification("Nie posiadasz uprawnie\197\132", "error")
      end
    elseif isMouseIn(_UPVALUE3_.x + 735 / _UPVALUE2_, _UPVALUE3_.y + 132.5 / _UPVALUE2_, 140 / _UPVALUE2_, 62.5 / _UPVALUE2_) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(info_users) do
        triggerServerEvent("ev", resourceRoot, "showVehiclesUsers", localPlayer, _FORV_6_.id)
      end
      windows.selectUser = false
      windows.vehicles = true
    elseif isMouseIn(_UPVALUE3_.x + 920 / _UPVALUE2_, _UPVALUE3_.y + 695 / _UPVALUE2_, 100 / _UPVALUE2_, 60 / _UPVALUE2_) and windows.background == true and windows.zgloszenia == true then
      triggerServerEvent("ev", resourceRoot, "deleteNotificationAll", localPlayer, "SAPD")
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie usuni\196\153to wszystkie zg\197\130oszenia", "success")
    elseif isMouseIn(_UPVALUE3_.x + 998 / _UPVALUE2_, _UPVALUE3_.y + 73 / _UPVALUE2_, 25 / _UPVALUE2_, 25 / _UPVALUE2_) and windows.background == true and windows.wyjazdy == true then
      if 0 < string.lower(exports.ST_gui:getCustomEditboxText("pojazdWyjazdy")):len() then
        for _FORV_7_, _FORV_8_ in ipairs(players) do
          if _FORV_8_[2] == true then
            table.insert({}, getPlayerName(_FORV_8_[1]))
          end
        end
        if #{} <= 0 then
          exports.st_gui:showPlayerNotification("Nie wybrano sk\197\130adu", "info")
          return
        end
        if 4 < #{} then
          exports.st_gui:showPlayerNotification("Wybrano za du\197\188o graczy", "info")
          return
        end
        exports.st_gui:showPlayerNotification("Zg\197\130oszono wyjazd", "info")
        triggerServerEvent("ev", resourceRoot, "dodajTabeleWyjazdy", localPlayer, table.concat({}, ", "), (string.lower(exports.ST_gui:getCustomEditboxText("pojazdWyjazdy"))))
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        createShaderBlur(false)
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        windows.background = false
        showCursor(false)
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.wyjazdy = false
        windows.statystyki = false
      end
    elseif isMouseIn(_UPVALUE13_.x, _UPVALUE13_.y, _UPVALUE13_.w, _UPVALUE13_.h) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.background = false
      windows.notes = false
      showCursor(false)
      windows.wanted = false
      windows.logs = false
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.search = false
      windows.selectUser = false
      windows.vehicles = false
      windows.wyjazdy = false
      windows.selectVeh = false
      windows.searchVeh = false
      windows.statystyki = false
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
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
      exports.ST_gui:destroyCustomEditbox("searchVeh")
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
      exports.ST_gui:destroyCustomEditbox("notesNick")
      exports.ST_gui:destroyCustomEditbox("notesReason")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
    end
  end
end)
bindKey("k", "down", function()
  if getElementData(localPlayer, "player:faction") == "SAPD" then
    if windows.background == false then
      if not lastTickCount then
        lastTickCount = 2000
      end
      if 2000 < getTickCount() - lastTickCount then
        textures = {
          cross = dxCreateTexture(":ST_gui/img/cross.png"),
          user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png")
        }
        createShaderBlur(true)
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientKey", root, key)
        windows.background = true
        windows.notes = false
        windows.wanted = false
        showCursor(true)
        triggerServerEvent("ev", resourceRoot, "showNotes", localPlayer, "notatka")
        windows.logs = false
        windows.payment = false
        windows.zgloszenia = false
        windows.online = true
        windows.search = false
        windows.vehicles = false
        windows.licencje = false
        windows.selectVeh = false
        windows.searchVeh = false
        windows.statystyki = false
        lastTickCount = getTickCount()
      end
    else
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.background = false
      windows.notes = false
      showCursor(false)
      windows.wanted = false
      windows.selectWanded = false
      windows.logs = false
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.search = false
      windows.selectUser = false
      windows.vehicles = false
      windows.licencje = false
      windows.wyjazdy = false
      windows.selectVeh = false
      windows.searchVeh = false
      windows.statystyki = false
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
      for _FORV_3_, _FORV_4_ in pairs(textures) do
        if isElement(_FORV_4_) then
          destroyElement(_FORV_4_)
        end
      end
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
      textures = {}
      exports.ST_gui:destroyCustomEditbox("searchVeh")
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
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
  elseif _ARG_0_ == "nickPlayerNotification" then
    if _ARG_2_ then
      zgloszenieGracz = " - " .. getPlayerName(_ARG_1_) .. ""
    else
      zgloszenieGracz = " - offline"
    end
  elseif _ARG_0_ == "pokazWyjazdyTabelaClient" then
    wyjazdyTabela = _ARG_1_
  elseif _ARG_0_ == "searchVehicleClient" then
    vehicle_info = _ARG_1_
    windows.selectVeh = true
    windows.searchVeh = false
    infoNotesSelectVeh = {}
    infoNotesSelectVeh = _ARG_2_
    exports.ST_gui:destroyCustomEditbox("searchVeh")
    for _FORV_8_, _FORV_9_ in ipairs(_ARG_1_) do
      vehicles3D(_FORV_9_.model, _FORV_9_.wariant, _FORV_9_.color, _FORV_9_.tuning, _FORV_9_.custom_model)
    end
  elseif _ARG_0_ == "pokazTabeleStatystykiClient" then
    statystyki_counters = _ARG_1_ or counters
    statystyki_chart = _ARG_2_ or {}
  end
end)
statystyki_counters = {
  day = 0,
  week = 0,
  month = 0,
  year = 0
}
statystyki_chart = {}
addEvent("selectLogsPoliceComputerClient", true)
addEventHandler("selectLogsPoliceComputerClient", root, function(_ARG_0_)
  show_logs = {}
  show_logs = _ARG_0_
end)
addEvent("showPaymentPoliceComputerClient", true)
addEventHandler("showPaymentPoliceComputerClient", root, function(_ARG_0_, _ARG_1_)
  show_logs_payment = {}
  show_logs_payment = _ARG_0_
  wyplatyWlaczone = _ARG_1_
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.notes == true or windows.wyjazdy == true then
      scrollDown()
      scrollDown4()
    elseif windows.wanted == true or windows.licencje == true then
      scrollDown1()
    elseif windows.selectUser == true then
      scrollDown2()
    elseif windows.vehicles == true then
      scrollDown3()
    elseif windows.selectVeh == true then
      scrollDown5()
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if windows.notes == true or windows.wyjazdy == true then
      scrollUp()
      scrollUp4()
    elseif windows.wanted == true or windows.licencje == true then
      scrollUp1()
    elseif windows.selectUser == true then
      scrollUp2()
    elseif windows.vehicles == true then
      scrollUp3()
    elseif windows.selectVeh == true then
      scrollUp5()
    end
  end
end
function scrollDown()
  if windows.wyjazdy == true and not isMouseIn(_UPVALUE0_.x + 617 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_, 410 / _UPVALUE1_, 475 / _UPVALUE1_) then
    return
  end
  if _UPVALUE2_ == _UPVALUE3_ then
    return
  end
  _UPVALUE4_ = _UPVALUE4_ - 1
  _UPVALUE2_ = _UPVALUE2_ - 1
end
function scrollUp()
  if windows.wyjazdy == true then
    if not isMouseIn(_UPVALUE0_.x + 617 / _UPVALUE1_, _UPVALUE0_.y + 122 / _UPVALUE1_, 410 / _UPVALUE1_, 475 / _UPVALUE1_) then
      return
    end
    if _UPVALUE2_ >= #players then
      return
    end
  elseif _UPVALUE2_ >= #show_notes then
    return
  end
  _UPVALUE3_ = _UPVALUE3_ + 1
  _UPVALUE2_ = _UPVALUE2_ + 1
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
function scrollDown4()
  if not isMouseIn(_UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_, 435 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_) then
    return
  end
  if _UPVALUE2_ == _UPVALUE3_ then
    return
  end
  _UPVALUE4_ = _UPVALUE4_ - 1
  _UPVALUE2_ = _UPVALUE2_ - 1
end
function scrollUp4()
  if not isMouseIn(_UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y + 61 / _UPVALUE1_, 435 / _UPVALUE1_, _UPVALUE0_.h - 75 / _UPVALUE1_) then
    return
  end
  if _UPVALUE2_ >= #wyjazdyTabela then
    return
  end
  _UPVALUE3_ = _UPVALUE3_ + 1
  _UPVALUE2_ = _UPVALUE2_ + 1
end
function scrollDown5()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp5()
  if _UPVALUE0_ >= #infoNotesSelectVeh then
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
function createShaderBlur(_ARG_0_)
  if _ARG_0_ == true then
    screenSource = dxCreateScreenSource(_UPVALUE0_, _UPVALUE1_, true)
    blurShader = dxCreateShader(":ST_blurUI/liquidGlass.fx")
    dxSetShaderValue(blurShader, "screenSize", _UPVALUE0_, _UPVALUE1_)
    dxSetShaderValue(blurShader, "opacity", 1)
    dxSetShaderValue(blurShader, "blurStrength", 2.6)
    dxSetShaderValue(blurShader, "tintColor", 0, 0, 0)
    dxSetShaderValue(blurShader, "tintAlpha", 0.05)
    dxSetShaderValue(blurShader, "rectLT", _UPVALUE3_.x / _UPVALUE0_, _UPVALUE3_.y / _UPVALUE1_)
    dxSetShaderValue(blurShader, "rectSize", _UPVALUE3_.w / _UPVALUE0_, _UPVALUE3_.h / _UPVALUE1_)
    dxSetShaderValue(blurShader, "radiusUV", 25 / _UPVALUE2_ / _UPVALUE3_.w, 25 / _UPVALUE2_ / _UPVALUE3_.h)
  else
    if isElement(blurShader) then
      destroyElement(blurShader)
    end
    if isElement(screenSource) then
      destroyElement(screenSource)
    end
  end
end
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  _ARG_6_ = _ARG_6_ or {}
  dxDrawRectangle(_ARG_0_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))), _ARG_1_ + math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))), _ARG_2_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_3_ - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) - math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))), _ARG_5_)
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_, _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl))) > 0 then
    dxDrawRectangle(_ARG_0_, _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_5_)
  end
  if math.max((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr), ((function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br))) > 0 then
    dxDrawRectangle(_ARG_0_ + _ARG_2_ - math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), math.max((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), ((function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br))), _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr) - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_5_)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tl), 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.tr) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), _ARG_1_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.tr), 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.bl) > 0 then
    dxDrawCircle(_ARG_0_ + (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.bl), 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  end
  if (function(_ARG_0_)
    if _ARG_0_ == nil or _ARG_0_ == true then
      return _UPVALUE0_
    elseif _ARG_0_ == false or _ARG_0_ == 0 then
      return 0
    else
      return _ARG_0_
    end
  end)(_ARG_6_.br) > 0 then
    dxDrawCircle(_ARG_0_ + _ARG_2_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), _ARG_1_ + _ARG_3_ - (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), (function(_ARG_0_)
      if _ARG_0_ == nil or _ARG_0_ == true then
        return _UPVALUE0_
      elseif _ARG_0_ == false or _ARG_0_ == 0 then
        return 0
      else
        return _ARG_0_
      end
    end)(_ARG_6_.br), 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  end
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
function vehicles3D(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if isElement(myObject) then
    exports.ST_object_preview:destroyObjectPreview(myObject)
  end
  if isElement(vehicle3D) then
    destroyElement(vehicle3D)
  end
  vehicle3D = createVehicle(_ARG_0_, 0, 0, 50)
  if _ARG_4_ ~= 0 and exports.ST_custom_cars:isCustomModID(_ARG_4_) then
    setElementData(vehicle3D, "vehicle:customID", _ARG_4_)
  end
  setElementCollisionsEnabled(vehicle3D, false)
  myObject = exports.ST_object_preview:createObjectPreview(vehicle3D, -5, 0, 140, _UPVALUE0_.x + 571 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_, 473 / _UPVALUE1_, 360 / _UPVALUE1_, false, true)
  setVehicleColor(vehicle3D, split(_ARG_2_, ",")[1], split(_ARG_2_, ",")[2], split(_ARG_2_, ",")[3], split(_ARG_2_, ",")[4], split(_ARG_2_, ",")[5], split(_ARG_2_, ",")[6], split(_ARG_2_, ",")[7], split(_ARG_2_, ",")[8], split(_ARG_2_, ",")[9], split(_ARG_2_, ",")[10], split(_ARG_2_, ",")[11], split(_ARG_2_, ",")[12])
  for _FORV_9_, _FORV_10_ in ipairs(split(_ARG_3_, ",")) do
    addVehicleUpgrade(vehicle3D, _FORV_10_)
  end
  setVehicleVariant(vehicle3D, split(_ARG_1_, ",")[1], split(_ARG_1_, ",")[2])
end
getResourceName(getThisResource(), true, 310292434)
return
