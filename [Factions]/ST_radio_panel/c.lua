tabela_prezenterzy = {}
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x - 2 / _UPVALUE1_, _UPVALUE0_.y - 2 / _UPVALUE1_, _UPVALUE0_.w + 4 / _UPVALUE1_, _UPVALUE0_.h + 4 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - 905 / _UPVALUE1_, 50 / _UPVALUE1_) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(40, 40, 40, 240), false)
  end
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + math.floor(50 / _UPVALUE1_), _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 8 / _UPVALUE1_, tocolor(40, 40, 40, 240), false)
  end
  dxDrawText("INFORMACJE", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  dxDrawText("CZ\197\129ONKOWIE", _UPVALUE0_.x - 215 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, false, false)
  if isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h) then
    dxDrawImage(_UPVALUE2_.x - math.floor(1 / _UPVALUE1_), _UPVALUE2_.y - math.floor(1 / _UPVALUE1_), _UPVALUE2_.w + math.floor(2 / _UPVALUE1_), _UPVALUE2_.h + math.floor(2 / _UPVALUE1_), textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  else
    dxDrawImage(_UPVALUE2_.x, _UPVALUE2_.y, _UPVALUE2_.w, _UPVALUE2_.h, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
  end
  if _UPVALUE3_.main == true then
    dxDrawText("RADIO", _UPVALUE0_.x + 800 / _UPVALUE1_, _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
    dxDrawText("ILO\197\154\196\134 PREZENTER\195\147W:", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText(#tabela_prezenterzy .. "", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 40 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("PRZEPROWADZONE AUDYCJE:", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("\197\129\196\132CZNY CZAS AUDYCJI:", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("OST. AUDYCJA:", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("WYP\197\129ATA:", _UPVALUE0_.x + 350 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(tabela_prezenterzy) do
      if _FORV_8_[1] == getElementData(localPlayer, "player:sid") then
        dxDrawText(_FORV_8_[5] .. "", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
        dxDrawText(secondsToClock(60 * _FORV_8_[3]) .. "", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 240 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
        if string.sub(_FORV_8_[6], 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          last_online = "Dzi\197\155 o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "Wczoraj o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "2 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "3 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "4 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "5 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        else
          last_online = "" .. string.sub(_FORV_8_[6], 1, 10) .. ""
        end
        dxDrawText(last_online .. "", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
        dxDrawText("#009411" .. przecinek(_FORV_8_[7] * 4000) .. " #c8c8c8PLN", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("Wyp\197\130a\196\135", _UPVALUE0_.x + 500 / _UPVALUE1_, _UPVALUE0_.y + 360 / _UPVALUE1_, 170 / _UPVALUE1_, 49 / _UPVALUE1_, 255, 1)
      end
    end
  end
  if _UPVALUE3_.users == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y + math.floor(690 / _UPVALUE1_), _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(690 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    xY = 0
    dxDrawText("NICK", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("AUDYCJE", _UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("CZAS", _UPVALUE0_.x + 630 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("ost. audycja", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 675 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "right", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Dodaj", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 695 / _UPVALUE1_, 170 / _UPVALUE1_, 49 / _UPVALUE1_, 255, 1)
    for _FORV_7_, _FORV_8_ in ipairs(tabela_prezenterzy) do
      if _FORV_7_ >= _UPVALUE4_ and _FORV_7_ <= _UPVALUE5_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        end
        if string.sub(_FORV_8_[6], 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          last_online = "Dzi\197\155 o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "Wczoraj o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "2 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "3 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "4 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        elseif string.sub(_FORV_8_[6], 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_[6], 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "5 dni temu o " .. string.sub(_FORV_8_[6], 12, 16) .. ""
        else
          last_online = "" .. string.sub(_FORV_8_[6], 1, 10) .. ""
        end
        dxDrawText(_FORV_8_[2], _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_[5], _UPVALUE0_.x + 440 / _UPVALUE1_, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        dxDrawText(secondsToClock(60 * _FORV_8_[3]), _UPVALUE0_.x + 630 / _UPVALUE1_, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, true, false)
        dxDrawText(last_online, _UPVALUE0_.x, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 665 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "right", "center", false, false, false, false, false)
        if isMouseIn(_UPVALUE0_.x + 1030 / _UPVALUE1_, _UPVALUE0_.y + 58 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), 10 / _UPVALUE1_, 10 / _UPVALUE1_) then
          dxDrawImage(_UPVALUE0_.x + 1030 / _UPVALUE1_, _UPVALUE0_.y + 58 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), 10 / _UPVALUE1_, 10 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        else
          dxDrawImage(_UPVALUE0_.x + 1030 / _UPVALUE1_, _UPVALUE0_.y + 58 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), 10 / _UPVALUE1_, 10 / _UPVALUE1_, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        end
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.background == true and _UPVALUE0_.users == true then
      for _FORV_6_, _FORV_7_ in ipairs(tabela_prezenterzy) do
        if _FORV_6_ >= _UPVALUE1_ and _FORV_6_ <= _UPVALUE2_ and isMouseIn(_UPVALUE4_.x + 1030 / _UPVALUE3_, _UPVALUE4_.y + 58 / _UPVALUE3_ + 48.8 / _UPVALUE3_ * (0 + 1 - 1), 10 / _UPVALUE3_, 10 / _UPVALUE3_) and _UPVALUE0_.users == true and _UPVALUE0_.background == true then
          triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "removeUserOrganization", _FORV_7_[1])
          for _FORV_12_, _FORV_13_ in pairs(textures) do
            if isElement(_FORV_13_) then
              destroyElement(_FORV_13_)
            end
          end
          textures = {}
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          removeEventHandler("onClientClick", root, click)
          _UPVALUE0_.background = false
          _UPVALUE0_.main = false
          _UPVALUE0_.users = false
          showCursor(false)
          exports.ST_gui:destroyCustomEditbox("addUser")
          tabela_prezenterzy = {}
        end
      end
    end
    if isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w - 905 / _UPVALUE3_, 50 / _UPVALUE3_) and _UPVALUE0_.background == true and _UPVALUE0_.main == false then
      _UPVALUE0_.users = false
      _UPVALUE0_.main = true
      exports.ST_gui:destroyCustomEditbox("addUser")
    elseif isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y + 50 / _UPVALUE3_, _UPVALUE4_.w - 900 / _UPVALUE3_, 50 / _UPVALUE3_) and _UPVALUE0_.background == true and _UPVALUE0_.users == false then
      _UPVALUE0_.users = true
      _UPVALUE0_.main = false
      exports.ST_gui:createCustomEditbox("addUser", "Wprowad\197\186 UID", _UPVALUE4_.x + 650 / _UPVALUE3_, _UPVALUE4_.y + 695 / _UPVALUE3_, 200 / _UPVALUE3_, 50 / _UPVALUE3_, false, "", "", 1)
    elseif isMouseIn(_UPVALUE4_.x + 870 / _UPVALUE3_, _UPVALUE4_.y + 695 / _UPVALUE3_, 170 / _UPVALUE3_, 49 / _UPVALUE3_) and _UPVALUE0_.background == true and _UPVALUE0_.users == true then
      player_uid_add = exports.ST_gui:getCustomEditboxText("addUser")
      if 1 > player_uid_add:len() then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 UID", "error")
        return
      end
      triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "addUserOrganization", player_uid_add, organizationName)
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.background = false
      _UPVALUE0_.main = false
      _UPVALUE0_.users = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("addUser")
      tabela_prezenterzy = {}
    elseif isMouseIn(_UPVALUE4_.x + 500 / _UPVALUE3_, _UPVALUE4_.y + 360 / _UPVALUE3_, 170 / _UPVALUE3_, 49 / _UPVALUE3_) and _UPVALUE0_.background == true and _UPVALUE0_.main == true then
      triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "wyplata")
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.background = false
      _UPVALUE0_.main = false
      _UPVALUE0_.users = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("addUser")
      tabela_prezenterzy = {}
    elseif isMouseIn(_UPVALUE5_.x, _UPVALUE5_.y, _UPVALUE5_.w, _UPVALUE5_.h) and _UPVALUE0_.background == true then
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      removeEventHandler("onClientClick", root, click)
      _UPVALUE0_.background = false
      _UPVALUE0_.main = false
      _UPVALUE0_.users = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("addUser")
      tabela_prezenterzy = {}
    end
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_)
  if _ARG_0_ == "showGui" then
    for _FORV_13_, _FORV_14_ in pairs(_ARG_1_) do
      for _FORV_18_, _FORV_19_ in pairs(_ARG_2_) do
        if _FORV_14_.id == _FORV_19_.uid then
          login = _FORV_14_.login
          time = _FORV_19_.time
          audycje = _FORV_19_.audycje
          aktywna_audycja = _FORV_19_.aktywna_audycja
          time_wyplata = _FORV_19_.time_wyplata
        end
      end
      if _FORV_14_.id == getElementData(localPlayer, "player:sid") then
        jestPrezenterem = true
      end
      table.insert(tabela_prezenterzy, {
        _FORV_14_.id,
        login,
        time,
        false,
        audycje,
        aktywna_audycja,
        time_wyplata
      })
      table.sort(tabela_prezenterzy, function(_ARG_0_, _ARG_1_)
        return _ARG_0_[3] > _ARG_1_[3]
      end)
    end
    if jestPrezenterem and _UPVALUE0_.background == false then
      textures = {
        cross = dxCreateTexture(":ST_gui/img/cross.png")
      }
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientKey", root, key)
      addEventHandler("onClientClick", root, click)
      _UPVALUE0_.background = true
      _UPVALUE0_.users = true
      _UPVALUE0_.main = false
      showCursor(true)
      exports.ST_gui:createCustomEditbox("addUser", "Wprowad\197\186 UID", _UPVALUE1_.x + 650 / _UPVALUE2_, _UPVALUE1_.y + 695 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "", "", 1)
    end
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.users == true then
      if _UPVALUE1_ == _UPVALUE2_ then
        return
      end
      _UPVALUE3_ = _UPVALUE3_ - 1
      _UPVALUE1_ = _UPVALUE1_ - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" and _UPVALUE0_.users == true then
    if _UPVALUE1_ >= #tabela_prezenterzy then
      return
    end
    _UPVALUE3_ = _UPVALUE3_ + 1
    _UPVALUE1_ = _UPVALUE1_ + 1
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
    return "#ffbf000 #f0f0f0godzin #ffbf000 #f0f0f0minut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#ffbf00" .. przecinek(hours) .. " #f0f0f0godzin #ffbf00" .. mins .. " #f0f0f0minut"
  end
end
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
