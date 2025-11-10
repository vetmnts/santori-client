show_statistic = {}
select_user = {}
pay_user = {}
tick = getTickCount()
windows = {
  background = false,
  main = false,
  users = false,
  selectUser = false
}
function window()
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 10 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
  if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w - math.floor(905 / _UPVALUE1_), math.floor(50 / _UPVALUE1_)) then
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
  if windows.main == true then
    dxDrawText("FRAKCJA", _UPVALUE0_.x + math.floor(800 / _UPVALUE1_), _UPVALUE0_.y - 110 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font35"), "center", "center", false, false, false, false, false)
    dxDrawText("NAZWA:", _UPVALUE0_.x + math.floor(390 / _UPVALUE1_), _UPVALUE0_.y + math.floor(40 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText(organizationName, _UPVALUE0_.x + math.floor(670 / _UPVALUE1_), _UPVALUE0_.y + math.floor(40 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText("ILO\197\154\196\134 OS\195\147B:", _UPVALUE0_.x + math.floor(390 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
    dxDrawText(#show_statistic .. " / 50", _UPVALUE0_.x + math.floor(670 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
  end
  if windows.users == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y, _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(700 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + math.floor(145 / _UPVALUE1_), _UPVALUE0_.y + math.floor(690 / _UPVALUE1_), _UPVALUE0_.w - math.floor(145 / _UPVALUE1_), _UPVALUE0_.h - math.floor(690 / _UPVALUE1_), 10 / _UPVALUE1_, tocolor(35, 35, 35, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 145 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 1045 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(60, 60, 60, 240), false)
    xY = 0
    dxDrawText("NICK", _UPVALUE0_.x + 160 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("AKTYWNY", _UPVALUE0_.x + 400 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("RANGA", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("CZAS NA S\197\129U\197\187BIE", _UPVALUE0_.x, _UPVALUE0_.y - 148 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(675 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "right", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("Dodaj", _UPVALUE0_.x + math.floor(870 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255)
    for _FORV_7_, _FORV_8_ in ipairs(show_statistic) do
      if _FORV_7_ >= _UPVALUE3_ and _FORV_7_ <= _UPVALUE4_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 155 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 160 / _UPVALUE1_, 45 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        end
        if getElementData(localPlayer, "player:faction") == "SAPD" then
          if _FORV_8_.rank == 17 then
          elseif "Chief of Police" == 16 then
          elseif "Assistant Chief of Police" == 15 then
          elseif "Deputy Chief" == 14 then
          elseif "Commander" == 13 then
          elseif "Captain II" == 12 then
          elseif "Captain I" == 11 then
          elseif "Lieutenant" == 10 then
          elseif "Detective III" == 9 then
          elseif "Detective II" == 8 then
          elseif "Detective I" == 7 then
          elseif "Sergeant II" == 6 then
          elseif "Sergeant I" == 5 then
          elseif "Police Officer III+I" == 4 then
          elseif "Police Officer III" == 3 then
          elseif "Police Officer II" == 2 then
          elseif "Police Officer I" == 1 then
          end
          dxDrawText("Cadet", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        elseif getElementData(localPlayer, "player:faction") == "SAFD" then
          if "Cadet" == 17 then
          elseif "Fire Chief" == 16 then
          elseif "Assistant Chief" == 15 then
          elseif "Battalion Chief" == 14 then
          elseif "Commander" == 13 then
          elseif "Captain II" == 12 then
          elseif "Captain I" == 11 then
          elseif "Divisional Officer" == 10 then
          elseif "Lieutenant II" == 9 then
          elseif "Lieutenant I" == 8 then
          elseif "Station Officer" == 7 then
          elseif "Driver Engineer" == 6 then
          elseif "Corporal II" == 5 then
          elseif "Corporal I" == 4 then
          elseif "Firefighter III" == 3 then
          elseif "Firefighter II" == 2 then
          elseif "Firefighter I" == 1 then
          end
          dxDrawText("Probationary Firefighter", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        end
        if string.sub(_FORV_8_.aktywny, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          last_online = "Dzi\197\155 o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "Wczoraj o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "2 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "3 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "4 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          last_online = "5 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        else
          last_online = "" .. string.sub(_FORV_8_.aktywny, 1, 10) .. ""
        end
        if _FORV_8_.medyk == 1 then
          dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(0, 195, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        else
          dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + math.floor(160 / _UPVALUE1_), _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        end
        dxDrawText(last_online, _UPVALUE0_.x + 400 / _UPVALUE1_, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal16"), "left", "center", false, false, false, false, false)
        for _FORV_28_, _FORV_29_ in ipairs(users_table) do
          if _FORV_29_[1] == _FORV_8_.sid then
            dxDrawText(secondsToClock(60 * _FORV_29_[2]), _UPVALUE0_.x, _UPVALUE0_.y - 49 / _UPVALUE1_ + 48.8 / _UPVALUE1_ * 2 * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + math.floor(675 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "right", "center", false, false, false, false, false)
          end
        end
      end
    end
  end
  if windows.selectUser == true then
    dxDrawRectangle(_UPVALUE0_.x + math.floor(150 / _UPVALUE1_), _UPVALUE0_.y + math.floor(690 / _UPVALUE1_), _UPVALUE0_.w - math.floor(150 / _UPVALUE1_), _UPVALUE0_.h - math.floor(690 / _UPVALUE1_), tocolor(35, 35, 35, 230), false)
    exports.ST_buttons:dxCreateButton("Awansuj", _UPVALUE0_.x + math.floor(870 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255, 1)
    exports.ST_buttons:dxCreateButton("Degraduj", _UPVALUE0_.x + math.floor(670 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255, 1)
    exports.ST_buttons:dxCreateButton("Wyrzu\196\135", _UPVALUE0_.x + math.floor(470 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255, 1)
    for _FORV_7_, _FORV_8_ in ipairs(select_user) do
      if getElementData(localPlayer, "player:faction") == "SAFD" then
        if _FORV_8_.medyk == 1 then
          exports.ST_buttons:dxCreateButton("Usu\197\132 medyka", _UPVALUE0_.x + math.floor(270 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255, 1)
        else
          exports.ST_buttons:dxCreateButton("Nadaj medyka", _UPVALUE0_.x + math.floor(270 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(170 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), 255, 1)
        end
      end
      if getElementData(localPlayer, "player:faction") == "SAPD" then
        if _FORV_8_.rank == 17 then
        elseif "Chief of Police" == 16 then
        elseif "Assistant Chief of Police" == 15 then
        elseif "Deputy Chief" == 14 then
        elseif "Commander" == 13 then
        elseif "Captain II" == 12 then
        elseif "Captain I" == 11 then
        elseif "Lieutenant" == 10 then
        elseif "Detective III" == 9 then
        elseif "Detective II" == 8 then
        elseif "Detective I" == 7 then
        elseif "Sergeant II" == 6 then
        elseif "Sergeant I" == 5 then
        elseif "Police Officer III+I" == 4 then
        elseif "Police Officer III" == 3 then
        elseif "Police Officer II" == 2 then
        elseif "Police Officer I" == 1 then
        end
        dxDrawText("Cadet", _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      elseif getElementData(localPlayer, "player:faction") == "SAFD" then
        if "Cadet" == 17 then
        elseif "Fire Chief" == 16 then
        elseif "Assistant Chief" == 15 then
        elseif "Battalion Chief" == 14 then
        elseif "Commander" == 13 then
        elseif "Captain II" == 12 then
        elseif "Captain I" == 11 then
        elseif "Divisional Officer" == 10 then
        elseif "Lieutenant II" == 9 then
        elseif "Lieutenant I" == 8 then
        elseif "Station Officer" == 7 then
        elseif "Driver Engineer" == 6 then
        elseif "Corporal II" == 5 then
        elseif "Corporal I" == 4 then
        elseif "Firefighter III" == 3 then
        elseif "Firefighter II" == 2 then
        elseif "Firefighter I" == 1 then
        end
        dxDrawText("Probationary Firefighter", _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      elseif getElementData(localPlayer, "player:faction") == "FBI" then
        if "Probationary Firefighter" == 17 then
        elseif "Director" == 16 then
        elseif "Deputy Director" == 15 then
        elseif "Chief of Staff and Special Counsel to the Director" == 14 then
        elseif "Deputy Chief of Staff" == 13 then
        elseif "Associate Deputy Director" == 12 then
        elseif "Executive Assistant Director" == 11 then
        elseif "Associate Executive Assistant Director" == 10 then
        elseif "Assistant Director" == 9 then
        elseif "Deputy Assistant Director" == 8 then
        elseif "Special Agent In Charge" == 7 then
        elseif "Assistant Special Agent In Charge" == 6 then
        elseif "Supervisory Special Agent" == 5 then
        elseif "Senior Special Agent" == 4 then
        elseif "Special Agent" == 3 then
        elseif "Agent Trainee" == 2 then
        elseif "Trainee" == 1 then
        end
        dxDrawText("Zawieszony", _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      end
      dxDrawText("INFORMACJE O U\197\187YTKOWNIKU", _UPVALUE0_.x + math.floor(790 / _UPVALUE1_), _UPVALUE0_.y - math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light24"), "center", "center", false, false, false, false, false)
      dxDrawText("NICK:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(40 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(40 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText("RANGA:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(140 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText("PRZYJ\196\152TY:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(240 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.actived, _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(240 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText("AKTYWNY:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(340 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.aktywny, _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(340 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      for _FORV_13_, _FORV_14_ in ipairs(pay_user) do
        if string.sub(_FORV_14_.date, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          date = "Dzi\197\155 o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        elseif string.sub(_FORV_14_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_14_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "Wczoraj o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        elseif string.sub(_FORV_14_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_14_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "2 dni temu o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        elseif string.sub(_FORV_14_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_14_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "3 dni temu o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        elseif string.sub(_FORV_14_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_14_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "4 dni temu o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        elseif string.sub(_FORV_14_.date, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_14_.date, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "5 dni temu o " .. string.sub(_FORV_14_.date, 12, 16) .. ""
        else
          date = "" .. string.sub(_FORV_14_.date, 1, 10) .. ""
        end
        dxDrawText("OSTATNIA WYP\197\129ATA:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(440 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light17"), "left", "center", false, false, false, false, false)
        dxDrawText("#ff9100" .. przecinek(_FORV_14_.pay) .. " #c8c8c8PLN za #ff9100" .. secondsToClock(60 * _FORV_14_.hours) .. " #c8c8c8 - " .. date, _UPVALUE0_.x + 600 / _UPVALUE1_, _UPVALUE0_.y + 440 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light16"), "left", "center", false, false, false, true, false)
      end
      if getElementData(localPlayer, "player:faction") == "SAFD" then
        dxDrawText("MEDYK:", _UPVALUE0_.x + math.floor(360 / _UPVALUE1_), _UPVALUE0_.y + math.floor(540 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
        if _FORV_8_.medyk == 1 then
          medyk = "TAK"
        else
          medyk = "NIE"
        end
        dxDrawText(medyk, _UPVALUE0_.x + math.floor(600 / _UPVALUE1_), _UPVALUE0_.y + math.floor(540 / _UPVALUE1_), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light22"), "left", "center", false, false, false, false, false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.background == true and windows.users == true then
      for _FORV_6_, _FORV_7_ in ipairs(show_statistic) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 155 / _UPVALUE2_, _UPVALUE3_.y + 55 / _UPVALUE2_ + 48.8 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE3_.w - 160 / _UPVALUE2_, 45 / _UPVALUE2_) and windows.users == true and windows.selectUser == false then
          triggerServerEvent("selectUserFaction", localPlayer, _FORV_7_.sid)
          windows.selectUser = true
          windows.main = false
          windows.users = false
          exports.ST_gui:destroyCustomEditbox("addUser")
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y, _UPVALUE3_.w - math.floor(905 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.main == false then
      windows.users = false
      windows.main = true
      windows.selectUser = false
      triggerServerEvent("showGuiFractionsPanel", localPlayer)
      exports.ST_gui:destroyCustomEditbox("addUser")
    elseif isMouseIn(_UPVALUE3_.x, _UPVALUE3_.y + math.floor(50 / _UPVALUE2_), _UPVALUE3_.w - math.floor(900 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.users == false then
      windows.users = true
      windows.main = false
      windows.selectUser = false
      triggerServerEvent("showGuiFractionsPanel", localPlayer)
      exports.ST_gui:createCustomEditbox("addUser", "Wprowad\197\186 UID", _UPVALUE3_.x + math.floor(650 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(200 / _UPVALUE2_), math.floor(50 / _UPVALUE2_), false, "")
    elseif isMouseIn(_UPVALUE3_.x + math.floor(870 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(170 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.users == true then
      player_uid_add = exports.ST_gui:getCustomEditboxText("addUser")
      if 1 > player_uid_add:len() then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 UID", "error")
        return
      end
      triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "addUserOrganization", player_uid_add, organizationName)
      triggerServerEvent("showGuiFractionsPanel", localPlayer)
    elseif isMouseIn(_UPVALUE3_.x + math.floor(870 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(170 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(select_user) do
        triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "advanceUserOrganization", _FORV_6_.sid)
        triggerServerEvent("selectUserFaction", localPlayer, _FORV_6_.sid)
      end
    elseif isMouseIn(_UPVALUE3_.x + math.floor(670 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(170 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(select_user) do
        triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "degradeUserOrganization", _FORV_6_.sid)
        triggerServerEvent("selectUserFaction", localPlayer, _FORV_6_.sid)
      end
    elseif isMouseIn(_UPVALUE3_.x + math.floor(470 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(170 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(select_user) do
        triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "removeUserOrganization", _FORV_6_.sid)
      end
      triggerServerEvent("showGuiFractionsPanel", localPlayer)
      windows.main = false
      windows.selectUser = false
      windows.users = true
      exports.ST_gui:createCustomEditbox("addUser", "Wprowad\197\186 UID", _UPVALUE3_.x + math.floor(650 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(200 / _UPVALUE2_), math.floor(50 / _UPVALUE2_), false, "")
    elseif isMouseIn(_UPVALUE3_.x + math.floor(270 / _UPVALUE2_), _UPVALUE3_.y + math.floor(695 / _UPVALUE2_), math.floor(170 / _UPVALUE2_), math.floor(50 / _UPVALUE2_)) and windows.background == true and windows.selectUser == true then
      for _FORV_5_, _FORV_6_ in ipairs(select_user) do
        if _FORV_6_.medyk == 0 then
          triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "setMedyk", _FORV_6_.sid, true)
        else
          triggerServerEvent("evEwenciks_iuydfgb", resourceRoot, "setMedyk", _FORV_6_.sid, false)
        end
        triggerServerEvent("selectUserFaction", localPlayer, _FORV_6_.sid)
      end
    elseif isMouseIn(_UPVALUE4_.x, _UPVALUE4_.y, _UPVALUE4_.w, _UPVALUE4_.h) and windows.background == true then
      removeEventHandler("onClientRender", root, window)
      windows.background = false
      windows.main = false
      windows.users = false
      windows.selectUser = false
      showCursor(false)
      exports.ST_gui:destroyCustomEditbox("addUser")
    end
  end
end)
addEvent("showGuiFaction", true)
addEventHandler("showGuiFaction", resourceRoot, function(_ARG_0_, _ARG_1_)
  organizationName = _ARG_0_
  textures = {
    cross = dxCreateTexture(":ST_gui/img/cross.png")
  }
  addEventHandler("onClientRender", root, window)
  triggerServerEvent("showGuiFractionsPanel", localPlayer)
  windows.background = true
  windows.main = false
  windows.users = true
  windows.selectUser = false
  showCursor(true)
  exports.ST_gui:createCustomEditbox("addUser", "Wprowad\197\186 UID", _UPVALUE0_.x + math.floor(650 / _UPVALUE1_), _UPVALUE0_.y + math.floor(695 / _UPVALUE1_), math.floor(200 / _UPVALUE1_), math.floor(50 / _UPVALUE1_), false, "")
end)
users_table = {}
addEvent("showGuiFractionsPanelClient", true)
addEventHandler("showGuiFractionsPanelClient", root, function(_ARG_0_, _ARG_1_)
  show_statistic = _ARG_0_
  for _FORV_5_, _FORV_6_ in ipairs(_ARG_1_) do
    table.insert(users_table, {
      _FORV_6_.id,
      _FORV_6_.worker
    })
  end
end)
addEvent("selectUserFactionClient", true)
addEventHandler("selectUserFactionClient", root, function(_ARG_0_, _ARG_1_)
  select_user = _ARG_0_
  pay_user = _ARG_1_
end)
bindKey("mouse_wheel_down", "both", function()
  if windows.users == true then
    scrollUp2()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.users == true then
    scrollDown2()
  end
end)
function scrollDown2()
  if _UPVALUE0_ == _UPVALUE1_ then
    return
  end
  _UPVALUE2_ = _UPVALUE2_ - 1
  _UPVALUE0_ = _UPVALUE0_ - 1
end
function scrollUp2()
  if _UPVALUE0_ >= #show_statistic then
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
    return "00h 00m"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "" .. hours .. "h " .. mins .. "m"
  end
end
getResourceName(getThisResource(), true, 21005044)
return
