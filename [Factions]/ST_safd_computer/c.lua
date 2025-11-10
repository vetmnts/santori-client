tick = getTickCount()
show_logs_payment = {}
show_notification = {}
players = {}
playersWyjazdySelect = {}
windows = {
  background = false,
  payment = false,
  zgloszenia = false,
  online = false,
  wyjazdy = false
}
function window()
  dxUpdateScreenSource(screenSource, true)
  dxSetShaderValue(blurShader, "screenSource", screenSource)
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
  dxDrawImageSection(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, _UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, blurShader)
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 25 / _UPVALUE1_, tocolor(0, 0, 0, 190), false)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(40, 40, 40, 140), {
      tl = 25 / _UPVALUE1_,
      tr = true,
      bl = true,
      br = true
    })
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(100 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 8 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_, 8 / _UPVALUE1_, tocolor(40, 40, 40, 140), false)
  end
  dxDrawText("ZG\197\129OSZENIA", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYP\197\129ATY", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("ONLINE", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("WYJAZDY", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("STATYSTYKI ZG\197\129OSZE\197\131", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h) then
    dxDrawImage(_UPVALUE2_.x - math.floor(1 / _UPVALUE1_), _UPVALUE2_.y - math.floor(1 / _UPVALUE1_), _UPVALUE2_.w + math.floor(2 / _UPVALUE1_), _UPVALUE2_.h + math.floor(2 / _UPVALUE1_), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
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
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_logs_payment) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
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
    dxDrawText("ZG\197\129OSZENIA DO #b50000SAFD", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText("KLIKNIJ ABY PRZYJ\196\132\196\134 ZG\197\129OSZENIE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_ = 1, 10 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 57 / _UPVALUE1_ + 63 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 58 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(show_notification) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
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
        dxDrawText(_FORV_8_.pos1, _UPVALUE0_.x, _UPVALUE0_.y - 3 / _UPVALUE1_ + 126 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 675 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "right", "center", false, false, false, false, false)
      end
    end
    exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 695 / _UPVALUE1_, 170 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
  end
  if windows.online == true then
    xY = 0
    for _FORV_7_ = 1, 14 do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 49.4 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 44 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(15, 15, 15, 85), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(65, 65, 65, 130), {
      tl = true,
      tr = 25 / _UPVALUE1_,
      bl = true,
      br = true
    })
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    dxDrawText("AKTYWNI CZ\197\129ONKOWIE #b50000SAFD", _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    dxDrawText(#players .. " #009c12ONLINE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(players) do
      if _FORV_7_ >= k and _FORV_7_ <= n then
        xY = xY + 1
        rank = getElementData(_FORV_8_, "player:rank") or "B\197\130\196\133d"
        if rank == 17 then
          rank = "Fire Chief"
        elseif rank == 16 then
          rank = "Assistant Chief"
        elseif rank == 15 then
          rank = "Battalion Chief"
        elseif rank == 14 then
          rank = "Commander"
        elseif rank == 13 then
          rank = "Captain II"
        elseif rank == 12 then
          rank = "Captain I"
        elseif rank == 11 then
          rank = "Divisional Officer"
        elseif rank == 10 then
          rank = "Lieutenant II"
        elseif rank == 9 then
          rank = "Lieutenant I"
        elseif rank == 8 then
          rank = "Station Officer"
        elseif rank == 7 then
          rank = "Driver Engineer"
        elseif rank == 6 then
          rank = "Corporal II"
        elseif rank == 5 then
          rank = "Corporal I"
        elseif rank == 4 then
          rank = "Firefighter III"
        elseif rank == 3 then
          rank = "Firefighter II"
        elseif rank == 2 then
          rank = "Firefighter I"
        elseif rank == 1 then
          rank = "Probationary Firefighter"
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 49.4 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 44 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(50, 50, 50, 115), false)
        dxDrawText(getPlayerName(_FORV_8_) .. " (" .. secondsToClock(60 * getElementData(_FORV_8_, "player:workinjob")) .. ")", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
        dxDrawText(rank, _UPVALUE0_.x, _UPVALUE0_.y - 50 / _UPVALUE1_ + 98.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 680 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, false, false, false)
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
      if 1 <= _FORV_7_ and _FORV_7_ <= 7 then
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
    if 0 < string.lower(exports.ST_gui:getCustomEditboxText("pojazdWyjazdy")):len() then
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
      if _FORV_8_ >= k and _FORV_8_ <= n then
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
      removeEventHandler("onClientRender", root, tracking)
      destroyElement(blip)
      blip = nil
      setElementData(localPlayer, "player:przyjalzgloszenie", false)
    end
  end
end
setElementData(localPlayer, "player:przyjalzgloszenie", false)
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true and windows.zgloszenia == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_notification) do
        if _FORV_6_ >= k and _FORV_6_ <= n and isMouseIn(_UPVALUE1_.x + 155 / _UPVALUE0_, _UPVALUE1_.y + 57 / _UPVALUE0_ + 60 / _UPVALUE0_ * (0 + 1 - 1), _UPVALUE1_.w - 160 / _UPVALUE0_, 58 / _UPVALUE0_) and windows.zgloszenia == true then
          if getElementData(localPlayer, "player:przyjalzgloszenie") then
            exports.st_gui:showPlayerNotification("Ju\197\188 przyj\196\133\197\130e\197\155 zg\197\130oszenie, odczekaj chwil\196\153.", "error")
            return
          end
          createShaderBlur(false)
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          windows.background = false
          showCursor(false)
          windows.payment = false
          windows.zgloszenia = false
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
        if _FORV_5_ >= k and _FORV_5_ <= n then
          xY = xY + 1
          if isMouseIn(_UPVALUE1_.x + 627 / _UPVALUE0_, _UPVALUE1_.y + 170 / _UPVALUE0_ + 42 / _UPVALUE0_ * (xY - 1), 390 / _UPVALUE0_, 35 / _UPVALUE0_) and windows.wyjazdy == true then
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
        if 1 <= _FORV_5_ and _FORV_5_ <= 7 then
          xY = xY + 1
          if isMouseIn(_UPVALUE1_.x + 563 / _UPVALUE0_, _UPVALUE1_.y + 173 / _UPVALUE0_ + 88 / _UPVALUE0_ * (xY - 1), 15 / _UPVALUE0_, 15 / _UPVALUE0_) and windows.wyjazdy == true then
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
    if isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y + math.floor(50 / _UPVALUE0_), _UPVALUE1_.w - math.floor(905 / _UPVALUE0_), math.floor(50 / _UPVALUE0_)) and windows.background == true and windows.payment == false then
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
      triggerServerEvent("showPaymentSAFDComputer", localPlayer)
      windows.payment = true
      windows.zgloszenia = false
      windows.online = false
      windows.wyjazdy = false
      windows.statystyki = false
      k = 1
      n = 20
      m = 20
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y, _UPVALUE1_.w - math.floor(905 / _UPVALUE0_), math.floor(50 / _UPVALUE0_)) and windows.background == true and windows.zgloszenia == false then
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
      triggerServerEvent("showNotificationSAFDComputer", localPlayer)
      windows.payment = false
      windows.zgloszenia = true
      windows.online = false
      windows.wyjazdy = false
      windows.statystyki = false
      k = 1
      n = 10
      m = 10
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y + math.floor(100 / _UPVALUE0_), _UPVALUE1_.w - math.floor(905 / _UPVALUE0_), math.floor(50 / _UPVALUE0_)) and windows.background == true and windows.online == false then
      players = {}
      for _FORV_6_, _FORV_7_ in ipairs((getElementsByType("player"))) do
        if getElementData(_FORV_7_, "player:faction") == "SAFD" then
          table.insert(players, _FORV_7_)
        end
      end
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
      windows.payment = false
      windows.zgloszenia = false
      windows.online = true
      windows.wyjazdy = false
      windows.statystyki = false
      k = 1
      n = 14
      m = 14
    elseif isMouseIn(_UPVALUE1_.x + math.floor(870 / _UPVALUE0_), _UPVALUE1_.y + math.floor(695 / _UPVALUE0_), math.floor(170 / _UPVALUE0_), math.floor(50 / _UPVALUE0_)) and windows.background == true and windows.zgloszenia == true then
      triggerServerEvent("ev", resourceRoot, "deleteNotificationAll", localPlayer, "SAFD")
      triggerServerEvent("showNotificationSAFDComputer", localPlayer)
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y + 150 / _UPVALUE0_, _UPVALUE1_.w - 905 / _UPVALUE0_, 50 / _UPVALUE0_) and windows.background == true and windows.wyjazdy == false then
      players = {}
      for _FORV_6_, _FORV_7_ in ipairs((getElementsByType("player"))) do
        if getElementData(_FORV_7_, "player:faction") == "SAFD" then
          table.insert(players, {_FORV_7_, false})
        end
      end
      table.sort(players, function(_ARG_0_, _ARG_1_)
        return getPlayerName(_ARG_0_[1]):lower() < getPlayerName(_ARG_1_[1]):lower()
      end)
      k = 1
      n = 10
      m = 10
      wyjazdyTabela = {}
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.wyjazdy = true
      windows.statystyki = false
      triggerServerEvent("ev", resourceRoot, "pokazTabeleWyjazdy", localPlayer)
      exports.ST_gui:createCustomEditbox("pojazdWyjazdy", "Wpisz pojazd...", _UPVALUE1_.x + 632 / _UPVALUE0_, _UPVALUE1_.y + 660 / _UPVALUE0_, 380 / _UPVALUE0_, 50 / _UPVALUE0_, false, "", "", 1)
    elseif isMouseIn(_UPVALUE1_.x, _UPVALUE1_.y + math.floor(200 / _UPVALUE0_), _UPVALUE1_.w - math.floor(905 / _UPVALUE0_), math.floor(50 / _UPVALUE0_)) and windows.background == true and windows.statystyki == false then
      if getTickCount() - lastTickCount > 2000 then
        players = {}
        for _FORV_6_, _FORV_7_ in ipairs((getElementsByType("player"))) do
          if getElementData(_FORV_7_, "player:faction") == "SAFD" then
            table.insert(players, _FORV_7_)
          end
        end
        selectStatystykiZgloszen = "SAFD"
        exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
        triggerServerEvent("ev", resourceRoot, "pokazTabeleStatystyki", localPlayer, selectStatystykiZgloszen)
        windows.payment = false
        windows.zgloszenia = false
        windows.online = false
        windows.wyjazdy = false
        windows.statystyki = true
        k = 1
        n = 14
        m = 14
      end
    elseif isMouseIn(_UPVALUE1_.x + 975 / _UPVALUE0_, _UPVALUE1_.y + 10 / _UPVALUE0_, 80 / _UPVALUE0_, 30 / _UPVALUE0_) and windows.background == true and windows.statystyki == true then
      if getTickCount() - lastTickCount > 2000 then
        if selectStatystykiZgloszen == "SAPD" then
          selectStatystykiZgloszen = "SAFD"
        else
          selectStatystykiZgloszen = "SAPD"
        end
        lastTickCount = getTickCount()
        triggerServerEvent("ev", resourceRoot, "pokazTabeleStatystyki", localPlayer, selectStatystykiZgloszen)
      end
    elseif isMouseIn(_UPVALUE1_.x + 998 / _UPVALUE0_, _UPVALUE1_.y + 73 / _UPVALUE0_, 25 / _UPVALUE0_, 25 / _UPVALUE0_) and windows.background == true and windows.wyjazdy == true then
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
      end
    elseif isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h) and windows.background == true then
      createShaderBlur(false)
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      windows.background = false
      showCursor(false)
      windows.payment = false
      windows.zgloszenia = false
      windows.online = false
      windows.wyjazdy = false
      exports.ST_gui:destroyCustomEditbox("pojazdWyjazdy")
    end
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.online == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.zgloszenia == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.payment == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    elseif windows.wyjazdy == true then
      if n == m then
        return
      end
      k = k - 1
      n = n - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if windows.online == true then
      if n >= #players then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.zgloszenia == true then
      if n >= #show_notification then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.payment == true then
      if n >= #show_logs_payment then
        return
      end
      k = k + 1
      n = n + 1
    elseif windows.wyjazdy == true then
      if n >= #players then
        return
      end
      k = k + 1
      n = n + 1
    end
  end
end
bindKey("k", "down", function()
  if getElementData(localPlayer, "player:faction") == "SAFD" then
    if windows.background == false then
      triggerServerEvent("showNotificationSAFDComputer", localPlayer)
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      createShaderBlur(true)
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      windows.background = true
      lastTickCount = getTickCount()
      showCursor(true)
      windows.payment = false
      windows.zgloszenia = true
      windows.online = false
      windows.wyjazdy = false
      windows.statystyki = false
      k = 1
      n = 10
      m = 10
    else
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
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showPaymentSAFDComputerClient" then
    show_logs_payment = {}
    show_logs_payment = _ARG_1_
    wyplatyWlaczone = _ARG_2_
  elseif _ARG_0_ == "showNotificationSAFDComputerClient" then
    show_notification = _ARG_1_
  elseif _ARG_0_ == "nickPlayerNotification" then
    if _ARG_2_ then
      zgloszenieGracz = " - " .. getPlayerName(_ARG_1_) .. ""
    else
      zgloszenieGracz = " - offline"
    end
  elseif _ARG_0_ == "pokazWyjazdyTabelaClient" then
    wyjazdyTabela = _ARG_1_
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
    return "00h 00m"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ff9100" .. hours .. "#c8c8c8h #ff9100" .. mins .. "#c8c8c8m"
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
getResourceName(getThisResource(), true, 808264878)
return
