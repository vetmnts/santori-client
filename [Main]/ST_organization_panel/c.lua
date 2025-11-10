lastTickCount = getTickCount()
blipsPlayers = {}
table_vehiclesText = "#8f8f8fUKRYTE"
table_usersText = "#8f8f8fUKRYTE"
function window()
  if _UPVALUE2_.background == true then
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x - 1 / _UPVALUE1_, _UPVALUE0_.y - 1 / _UPVALUE1_, _UPVALUE0_.w + 2 / _UPVALUE1_, _UPVALUE0_.h + 2 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y, 215 / _UPVALUE1_, _UPVALUE0_.h, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 4 / _UPVALUE1_, _UPVALUE0_.h, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y + 68 / _UPVALUE1_ * (xY - 1), 210 / _UPVALUE1_, 67.5 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y + 68 / _UPVALUE1_ * (xY - 1), 210 / _UPVALUE1_, 67.5 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 150), false)
        dxDrawImage(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y - 130 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(_UPVALUE0_.x + 10 / _UPVALUE1_, _UPVALUE0_.y + 10 / _UPVALUE1_ + 68 / _UPVALUE1_ * (xY - 1), 50 / _UPVALUE1_, 50 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.text, _UPVALUE0_.x + 80 / _UPVALUE1_, _UPVALUE0_.y - 130 / _UPVALUE1_ + 136 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
      end
    end
  end
  if _UPVALUE2_.category == "INFORMACJE" then
    dxDrawText("Level organizacji", _UPVALUE0_.x + 1810 / _UPVALUE1_, _UPVALUE0_.y - 135 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 899 / _UPVALUE1_, _UPVALUE0_.y + 59 / _UPVALUE1_, 372 / _UPVALUE1_, 37 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 900 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 370 / _UPVALUE1_, 35 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      if 366 * _FORV_8_.exp / 2000 / _UPVALUE1_ > 15 / _UPVALUE1_ then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 902 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 366 * _FORV_8_.exp / 2000 / _UPVALUE1_, 31 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 902 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 15 / _UPVALUE1_, 31 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
      end
      dxDrawText(_FORV_8_.level, _UPVALUE0_.x + 909 / _UPVALUE1_, _UPVALUE0_.y - 43 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.level, _UPVALUE0_.x + 907 / _UPVALUE1_, _UPVALUE0_.y - 45 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.exp .. " / 2000", _UPVALUE0_.x + 1812 / _UPVALUE1_, _UPVALUE0_.y - 43 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.exp .. " / 2000", _UPVALUE0_.x + 1810 / _UPVALUE1_, _UPVALUE0_.y - 45 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.level + 1, _UPVALUE0_.x, _UPVALUE0_.y - 43 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 901 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.level + 1, _UPVALUE0_.x, _UPVALUE0_.y - 45 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 899 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 885 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Pojazdy", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(table_vehiclesText, _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.members_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Cz\197\130onkowie", _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(table_usersText, _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 885 / _UPVALUE1_, _UPVALUE0_.y + 330 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Fundusze", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 480 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText("#00ad23" .. przecinek(_FORV_8_.kasa), _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 555 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 325 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.death_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Zab\195\179jstwa", _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 480 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(przecinek(_FORV_8_.kille), _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 555 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 250 / _UPVALUE1_, _UPVALUE0_.y + 560 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.organization_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Organizacja", _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 950 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.nazwa, _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 1020 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 250 / _UPVALUE1_, _UPVALUE0_.y + 700 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.message_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Wiadomo\197\155\196\135 od lidera", _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 1210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.wiadomosc, _UPVALUE0_.x + 335 / _UPVALUE1_, _UPVALUE0_.y + 1290 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
      dxDrawImage(_UPVALUE0_.x + 885 / _UPVALUE1_, _UPVALUE0_.y + 560 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.lider_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Za\197\130o\197\188yciel", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 950 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.zalozyciel, _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 1020 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 885 / _UPVALUE1_, _UPVALUE0_.y + 700 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, textures.create_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("Za\197\130o\197\188enie organizacji", _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 1210 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.utworzona, _UPVALUE0_.x + 960 / _UPVALUE1_, _UPVALUE0_.y + 1290 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, false, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 249 / _UPVALUE1_, _UPVALUE0_.y + 59 / _UPVALUE1_, 622 / _UPVALUE1_, 472 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 166, 0, 50), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 250 / _UPVALUE1_, _UPVALUE0_.y + 60 / _UPVALUE1_, 620 / _UPVALUE1_, 470 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    dxDrawText("Historia salda organizacji", _UPVALUE0_.x + 765 / _UPVALUE1_, _UPVALUE0_.y - 135 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, false, false)
    if 0 < #_UPVALUE4_ then
      for _FORV_11_, _FORV_12_ in pairs(_UPVALUE4_) do
        dxDrawLine(({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + 63 / _UPVALUE1_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h - 15 / _UPVALUE1_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).w - 71 / _UPVALUE1_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h - 15 / _UPVALUE1_, tocolor(150, 150, 150, 255), 1)
        dxDrawLine(({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).w / (#_UPVALUE4_ + 1) * _FORV_11_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + 15 / _UPVALUE1_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).w / (#_UPVALUE4_ + 1) * _FORV_11_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + 25 / _UPVALUE1_ + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h, tocolor(150, 150, 150, 255), 1)
      end
      for _FORV_11_, _FORV_12_ in pairs(_UPVALUE4_) do
        if _FORV_11_ == 1 then
        else
          dxDrawLine(({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).x + ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).w / (#_UPVALUE4_ + 1) * (_FORV_11_ - 1), ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).y + ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).h - 15 / _UPVALUE1_, ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).x + ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).w / (#_UPVALUE4_ + 1) * _FORV_11_, ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).y + ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
            x = _UPVALUE0_.x + 280 / _UPVALUE1_,
            y = _UPVALUE0_.y + 60 / _UPVALUE1_,
            w = _UPVALUE0_.w - 680 / _UPVALUE1_,
            h = _UPVALUE0_.h - 430 / _UPVALUE1_
          }).h - 15 / _UPVALUE1_, tocolor(255, 166, 0, 255), 2)
        end
        if not ({
          [_FORV_12_.totalmoney] = {
            y = ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).y + ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h - 15 / _UPVALUE1_
          }
        })[_FORV_12_.totalmoney] then
          for _FORV_18_, _FORV_19_ in pairs({
            [_FORV_12_.totalmoney] = {
              y = ({
                x = _UPVALUE0_.x + 280 / _UPVALUE1_,
                y = _UPVALUE0_.y + 60 / _UPVALUE1_,
                w = _UPVALUE0_.w - 680 / _UPVALUE1_,
                h = _UPVALUE0_.h - 430 / _UPVALUE1_
              }).y + ({
                x = _UPVALUE0_.x + 280 / _UPVALUE1_,
                y = _UPVALUE0_.y + 60 / _UPVALUE1_,
                w = _UPVALUE0_.w - 680 / _UPVALUE1_,
                h = _UPVALUE0_.h - 430 / _UPVALUE1_
              }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
                x = _UPVALUE0_.x + 280 / _UPVALUE1_,
                y = _UPVALUE0_.y + 60 / _UPVALUE1_,
                w = _UPVALUE0_.w - 680 / _UPVALUE1_,
                h = _UPVALUE0_.h - 430 / _UPVALUE1_
              }).h - 15 / _UPVALUE1_
            }
          }) do
            if 25 >= math.abs(_FORV_19_.y - (({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).y + ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h)) then
              break
            end
          end
          if false then
            dxDrawText(przecinek(_FORV_12_.totalmoney), ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).x, ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).y + ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h - 10 / _UPVALUE1_, ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).x + 50 / _UPVALUE1_, ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).y + ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h + 30 / _UPVALUE1_ - _FORV_12_.totalmoney / earnDiagram.maxEarn * ({
              x = _UPVALUE0_.x + 280 / _UPVALUE1_,
              y = _UPVALUE0_.y + 60 / _UPVALUE1_,
              w = _UPVALUE0_.w - 680 / _UPVALUE1_,
              h = _UPVALUE0_.h - 430 / _UPVALUE1_
            }).h - 15 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font12"), "right", "center", false, false, true)
          end
        end
        dxDrawText(_FORV_12_.day, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).w / (#_UPVALUE4_ + 1) * _FORV_11_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h + 35 / _UPVALUE1_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).x + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).w / (#_UPVALUE4_ + 1) * _FORV_11_, ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).y + ({
          x = _UPVALUE0_.x + 280 / _UPVALUE1_,
          y = _UPVALUE0_.y + 60 / _UPVALUE1_,
          w = _UPVALUE0_.w - 680 / _UPVALUE1_,
          h = _UPVALUE0_.h - 430 / _UPVALUE1_
        }).h, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "top", false, false, true)
      end
    else
      dxDrawText("Twoja organizacja nie ma podgl\196\133du do wykresu zarobk\195\179w", ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).x + ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).w / 2 - 90 / _UPVALUE1_, ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).y, ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).x + ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).w / 2, ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).y + ({
        x = _UPVALUE0_.x + 280 / _UPVALUE1_,
        y = _UPVALUE0_.y + 60 / _UPVALUE1_,
        w = _UPVALUE0_.w - 680 / _UPVALUE1_,
        h = _UPVALUE0_.h - 430 / _UPVALUE1_
      }).h, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, true)
    end
  end
  if _UPVALUE2_.category == "CZ\197\129ONKOWIE" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 1 / _UPVALUE1_, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.members_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("CZ\197\129ONKOWIE", _UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 750 / _UPVALUE1_, _UPVALUE0_.w - 210 / _UPVALUE1_, 65 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    if isMouseIn(_UPVALUE0_.x + 1100 / _UPVALUE1_, _UPVALUE0_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1098 / _UPVALUE1_, _UPVALUE0_.y + 9 / _UPVALUE1_, 184 / _UPVALUE1_, 54 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1100 / _UPVALUE1_, _UPVALUE0_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 0, 0, 255))
      dxDrawText("OPU\197\154\196\134 ORGANIZACJ\196\152", _UPVALUE0_.x + 2018 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1098 / _UPVALUE1_, _UPVALUE0_.y + 9 / _UPVALUE1_, 184 / _UPVALUE1_, 54 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1100 / _UPVALUE1_, _UPVALUE0_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 0, 0, 255))
      dxDrawText("OPU\197\154\196\134 ORGANIZACJ\196\152", _UPVALUE0_.x + 2018 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    end
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE5_) do
      if _FORV_7_ >= kScroll and _FORV_7_ <= nScroll then
        xY = xY + 1
        for _FORV_14_, _FORV_15_ in ipairs(_UPVALUE3_) do
          rank = _FORV_8_.rank
          if rank == 5 then
            rank = _FORV_15_.rank5
          elseif rank == 4 then
            rank = _FORV_15_.rank4
          elseif rank == 3 then
            rank = _FORV_15_.rank3
          elseif rank == 2 then
            rank = _FORV_15_.rank2
          elseif rank == 1 then
            rank = _FORV_15_.rank1
          end
        end
        if string.sub(_FORV_8_.aktywny, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
          date = "Dzi\197\155 o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "Wczoraj o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "2 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "3 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "4 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        elseif string.sub(_FORV_8_.aktywny, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_FORV_8_.aktywny, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
          date = "5 dni temu o " .. string.sub(_FORV_8_.aktywny, 12, 16) .. ""
        else
          date = "" .. string.sub(_FORV_8_.aktywny, 1, 10) .. ""
        end
        if isMouseIn(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 75 / _UPVALUE1_ * (xY - 1), 1065 / _UPVALUE1_, 70 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 75 / _UPVALUE1_ * (xY - 1), 1065 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(31, 31, 31, 250), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 75 / _UPVALUE1_ * (xY - 1), 1065 / _UPVALUE1_, 70 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
        end
        dxDrawImage(_UPVALUE0_.x + 227 / _UPVALUE1_, _UPVALUE0_.y + 78.5 / _UPVALUE1_ + 75 / _UPVALUE1_ * (xY - 1), 65 / _UPVALUE1_, 65 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.login, _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 15 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
        dxDrawText([[
#e8e8e8W organizacji od:
#a8a8a8]] .. string.sub(_FORV_8_.dolaczyl, 1, 10) .. "", _UPVALUE0_.x, _UPVALUE0_.y + 22 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 920 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, true, false)
        dxDrawText("Ranga", _UPVALUE0_.x + 600 / _UPVALUE1_, _UPVALUE0_.y - 10 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(rank, _UPVALUE0_.x + 600 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        dxDrawText("ZDOBYTY EXP", _UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y - 10 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText("#ffbb00" .. _FORV_8_.exp, _UPVALUE0_.x + 750 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        if getPlayerFromName(_FORV_8_.login) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.uid) then
          dxDrawText("#b5b5b5Online: #00910ateraz", _UPVALUE0_.x + 298 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("#b5b5b5Online: #999999" .. date .. "", _UPVALUE0_.x + 298 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 150 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        end
      end
    end
    liczbaOrgRank1 = 0
    liczbaOrgRank2 = 0
    liczbaOrgRank3 = 0
    liczbaOrgRank4 = 0
    liczbaOrgRank5 = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE5_) do
      if _FORV_8_.rank == 1 then
        liczbaOrgRank1 = liczbaOrgRank1 + 1
      end
      if _FORV_8_.rank == 2 then
        liczbaOrgRank2 = liczbaOrgRank2 + 1
      end
      if _FORV_8_.rank == 3 then
        liczbaOrgRank3 = liczbaOrgRank3 + 1
      end
      if _FORV_8_.rank == 4 then
        liczbaOrgRank4 = liczbaOrgRank4 + 1
      end
      if _FORV_8_.rank == 5 then
        liczbaOrgRank5 = liczbaOrgRank5 + 1
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 985 / _UPVALUE1_, _UPVALUE0_.y + 759 / _UPVALUE1_, 300 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    if 0 < exports.ST_gui:getCustomEditboxText("addUsers"):len() then
      if isMouseIn(_UPVALUE0_.x + 1239 / _UPVALUE1_, _UPVALUE0_.y + 759 / _UPVALUE1_, 46 / _UPVALUE1_, 46 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1239 / _UPVALUE1_, _UPVALUE0_.y + 759 / _UPVALUE1_, 46 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1245 / _UPVALUE1_, _UPVALUE0_.y + 1362 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1239 / _UPVALUE1_, _UPVALUE0_.y + 759 / _UPVALUE1_, 46 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1245 / _UPVALUE1_, _UPVALUE0_.y + 1362 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1239 / _UPVALUE1_, _UPVALUE0_.y + 759 / _UPVALUE1_, 46 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 1245 / _UPVALUE1_, _UPVALUE0_.y + 1362 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE3_) do
      dxDrawText("" .. _FORV_9_.rank1 .. " -#ffbb00 " .. liczbaOrgRank1, _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 1330 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. _FORV_9_.rank2 .. " -#ffbb00 " .. liczbaOrgRank2, _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 1390 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. _FORV_9_.rank3 .. " -#ffbb00 " .. liczbaOrgRank3, _UPVALUE0_.x + 395 / _UPVALUE1_, _UPVALUE0_.y + 1330 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. _FORV_9_.rank4 .. " -#ffbb00 " .. liczbaOrgRank4, _UPVALUE0_.x + 395 / _UPVALUE1_, _UPVALUE0_.y + 1390 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("" .. _FORV_9_.rank5 .. " -#ffbb00 " .. liczbaOrgRank5, _UPVALUE0_.x + 555 / _UPVALUE1_, _UPVALUE0_.y + 1330 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#ffbb00WSZYSCY -#ffffff " .. liczbaOrgRank1 + liczbaOrgRank2 + liczbaOrgRank3 + liczbaOrgRank4 + liczbaOrgRank5 .. "", _UPVALUE0_.x + 555 / _UPVALUE1_, _UPVALUE0_.y + 1390 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
    end
  end
  if _UPVALUE2_.category == "CZ\197\129ONEK" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y + 750 / _UPVALUE1_, _UPVALUE0_.w - 210 / _UPVALUE1_, 65 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.members_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in pairs(_UPVALUE5_) do
      if selectUser == _FORV_8_.uid then
        dxDrawText("CZ\197\129ONEK #fcba03" .. _FORV_8_.login, _UPVALUE0_.x + 300 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
        dxDrawText("" .. _FORV_8_.login, _UPVALUE0_.x + 345 / _UPVALUE1_, _UPVALUE0_.y + 0 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
        dxDrawText("UID: " .. _FORV_8_.uid, _UPVALUE0_.x + 345 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        if getPlayerFromName(_FORV_8_.login) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.uid) then
          statusOnline = "#00b50fOnline"
        else
          statusOnline = "#d10007Offline #a3a3a3od " .. dateName(_FORV_8_.aktywny)
        end
        for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE3_) do
          rank = _FORV_8_.rank
          if rank == 5 then
            rank = _FORV_13_.rank5
          elseif rank == 4 then
            rank = _FORV_13_.rank4
          elseif rank == 3 then
            rank = _FORV_13_.rank3
          elseif rank == 2 then
            rank = _FORV_13_.rank2
          elseif rank == 1 then
            rank = _FORV_13_.rank1
          end
        end
        xY = 0
        for _FORV_13_, _FORV_14_ in ipairs({
          {name = "Status:", arg2 = statusOnline},
          {
            name = "Ranga:",
            arg2 = "#fcba03" .. rank
          },
          {
            name = "Dodany/a:",
            arg2 = "#fcba03" .. _FORV_8_.dolaczyl .. "#ffffff"
          },
          {
            name = "Zdobyty EXP:",
            arg2 = "#fcba03" .. _FORV_8_.exp .. "#ffffff"
          },
          {
            name = "Zarobek import/export:",
            arg2 = "#00ad23" .. przecinek(_FORV_8_.zarobek_import) .. " #e6e6e6PLN"
          },
          {
            name = "Wp\197\130acone pieni\196\133dze do organizacji:",
            arg2 = "#00ad23" .. przecinek(_FORV_8_.wplacil) .. " #e6e6e6PLN"
          }
        }) do
          xY = xY + 1
          dxDrawText(_FORV_14_.name .. " " .. _FORV_14_.arg2, _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 210 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
        end
        exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 905 / _UPVALUE1_, _UPVALUE0_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_, 255, 1)
        exports.ST_buttons:dxCreateButton("DEGRADUJ", _UPVALUE0_.x + 1035 / _UPVALUE1_, _UPVALUE0_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_, 255, 1)
        exports.ST_buttons:dxCreateButton("AWANSUJ", _UPVALUE0_.x + 1165 / _UPVALUE1_, _UPVALUE0_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_, 255, 1)
      end
    end
  end
  if _UPVALUE2_.category == "POJAZDY" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("POJAZDY", _UPVALUE0_.x + 300 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 224 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_, 1067 / _UPVALUE1_, 52 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(50, 50, 50, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_, 1065 / _UPVALUE1_, 50 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 255), false)
    dxDrawText("ID", _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 4 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("MODEL", _UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 4 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("UID W\197\129A\197\154CICIELA", _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 4 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, false, false)
    dxDrawText("LOKALIZACJA", _UPVALUE0_.x, _UPVALUE0_.y + 4 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 880 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE6_) do
      if _FORV_7_ >= kScroll and _FORV_7_ <= nScroll then
        xY = xY + 1
        if tonumber(_FORV_8_.parking) == 1 then
          location = "#71de8ePrzechowalnia pojazd\195\179w"
        elseif _FORV_8_.police == 1 then
          location = "#f58989Parking policyjny"
        else
          for _FORV_14_, _FORV_15_ in ipairs(getElementsByType("vehicle")) do
            if getElementData(_FORV_15_, "vehicle:id") == _FORV_8_.id then
              location = getZoneName(getElementPosition(_FORV_15_)) .. ", " .. getZoneName(getElementPosition(_FORV_15_))
            end
          end
        end
        dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 45 / _UPVALUE1_ * (xY - 1), 1065 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
        dxDrawText(_FORV_8_.id, _UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
        dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_8_.model), _FORV_8_.custom_model), _UPVALUE0_.x + 320 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_8_.ownedPlayer, _UPVALUE0_.x + 680 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
        dxDrawText(location, _UPVALUE0_.x, _UPVALUE0_.y + 110 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 880 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 1251 / _UPVALUE1_, _UPVALUE0_.y + 137.5 / _UPVALUE1_ + 45 / _UPVALUE1_ * (xY - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 1251 / _UPVALUE1_, _UPVALUE0_.y + 137.5 / _UPVALUE1_ + 45 / _UPVALUE1_ * (xY - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(20, 20, 20, 250), false)
          dxDrawText("#8f0000\226\156\150", _UPVALUE0_.x + 1257 / _UPVALUE1_, _UPVALUE0_.y + 106 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(170, 170, 170, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
          if isCursorShowing() then
            dxDrawText("Wypisz pojazd", _UPVALUE7_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Wypisz pojazd", _UPVALUE7_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 1251 / _UPVALUE1_, _UPVALUE0_.y + 137.5 / _UPVALUE1_ + 45 / _UPVALUE1_ * (xY - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(25, 25, 25, 250), false)
          dxDrawText("#ff0000\226\156\150", _UPVALUE0_.x + 1257 / _UPVALUE1_, _UPVALUE0_.y + 106 / _UPVALUE1_ + 90 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
        end
      end
    end
  end
  if _UPVALUE2_.category == "FUNDUSZE" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 1 / _UPVALUE1_, tocolor(55, 55, 55, 250), false)
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.funds_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      if getElementData(localPlayer, "org:przestepcza") then
        dxDrawText("FUNDUSZE - #00ad23" .. przecinek(_FORV_8_.kasa) .. " #e6e6e6PLN", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 155 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, true, false)
        dxDrawText("Brudne pieni\196\133dze - #00ad23" .. przecinek(_FORV_8_.kasa_brudna) .. " #e6e6e6PLN", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 100 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("FUNDUSZE - #00ad23" .. przecinek(_FORV_8_.kasa) .. " #e6e6e6PLN", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      end
    end
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    if isMouseIn(_UPVALUE0_.x + 935 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 935 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(18, 18, 18, 255))
      dxDrawText("+", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y - 126 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
      if isCursorShowing() then
        dxDrawText("Wp\197\130a\196\135 got\195\179wk\196\153", _UPVALUE7_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
        dxDrawText("Wp\197\130a\196\135 got\195\179wk\196\153", _UPVALUE7_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 935 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
      dxDrawText("+", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y - 126 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 230, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 985 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 250 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    if isMouseIn(_UPVALUE0_.x + 1240 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1240 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(18, 18, 18, 255))
      dxDrawText("-", _UPVALUE0_.x + 1256 / _UPVALUE1_, _UPVALUE0_.y - 126 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
      if isCursorShowing() then
        dxDrawText("Wyp\197\130a\196\135 got\195\179wk\196\153", _UPVALUE7_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
        dxDrawText("Wyp\197\130a\196\135 got\195\179wk\196\153", _UPVALUE7_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1240 / _UPVALUE1_, _UPVALUE0_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
      dxDrawText("-", _UPVALUE0_.x + 1256 / _UPVALUE1_, _UPVALUE0_.y - 126 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE9_) do
      if _FORV_7_ >= kScroll and _FORV_7_ <= nScroll then
        xY = xY + 1
        if _FORV_8_.typ == "Wplata" then
        elseif "Wp\197\130ata" == "Wyplata" then
        elseif "Wyp\197\130ata" == "Przejecie strefy" then
        elseif "Przej\196\153cie strefy" == "Sprzedaz pojazdu" then
        elseif "Sprzeda\197\188 pojazdu" == "Wplyw z bisnesu" then
        elseif "Wp\197\130yw z bisnesu" == "Wplyw (brudne)" then
        end
        if "Wp\197\130yw (brudne)" == "Wp\197\130ata" then
        elseif "Wp\197\130yw (brudne)" == "Wyp\197\130ata" then
        elseif "Wp\197\130yw (brudne)" == "Przej\196\153cie strefy" then
        elseif "Wp\197\130yw (brudne)" == "Sprzeda\197\188 pojazdu" then
        elseif "Wp\197\130yw (brudne)" == "Wp\197\130yw z bisnesu" then
        elseif "Wp\197\130yw (brudne)" == "Wp\197\130yw (brudne)" then
        elseif "Wp\197\130yw (brudne)" == "Zasilenie z brudnych" then
        end
        dxDrawText(_FORV_8_.nick, _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
        dxDrawText("Wp\197\130yw (brudne)", _UPVALUE0_.x + 1060 / _UPVALUE1_, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "center", "center", false, false, false, false, false)
        dxDrawText("#820000" .. przecinek("#007311+" .. przecinek("#03fc28+" .. przecinek("#03fc28+" .. przecinek("#03fc28+" .. przecinek("#fc0303" .. przecinek("#03fc28+" .. przecinek(_FORV_8_.ile) .. " PLN") .. " PLN") .. " PLN") .. " PLN") .. " PLN") .. " PLN") .. " PLN", _UPVALUE0_.x, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 680 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
        dxDrawText(dateName(_FORV_8_.data), _UPVALUE0_.x, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 920 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if _UPVALUE2_.category == "LIDER" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.lider_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("LIDER", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_, 660 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("WIADOMO\197\154\196\134 OD LIDERA", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 23 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, 640 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 430 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 620 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    if exports.ST_gui:getCustomEditboxText("message"):len() > 0 then
      if isMouseIn(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 270 / _UPVALUE1_, 660 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("ZMIANA NAZWY ORGANIZACJI - #00ad235,000,000 #e6e6e6PLN", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 380 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 640 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 430 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 620 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 430 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 620 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    if exports.ST_gui:getCustomEditboxText("changeName"):len() > 0 then
      if isMouseIn(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 530 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 530 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 1000 / _UPVALUE1_, _UPVALUE0_.y + 340 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 1007 / _UPVALUE1_, _UPVALUE0_.y + 530 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 660 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("KOMENDY", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 740 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, 640 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    dxDrawText("#ffbb00/ustawspawn #ffffff- ustawia spawn organizacji", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 840 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, true, false)
    for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE3_) do
      if _FORV_10_.import_export == 1 then
        dxDrawText("#ffbb00/ustawmarker #ffffff- ustawia marker magazynu import / export", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 940 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal18"), "left", "center", false, false, false, true, false)
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 630 / _UPVALUE1_, 660 / _UPVALUE1_, 150 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("USU\197\131 ORGANIZACJ\196\152", _UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 1100 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 420 / _UPVALUE1_, _UPVALUE0_.y + 670 / _UPVALUE1_, 640 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    if isMouseIn(_UPVALUE0_.x + 638 / _UPVALUE1_, _UPVALUE0_.y + 688 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 638 / _UPVALUE1_, _UPVALUE0_.y + 688 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 690 / _UPVALUE1_, 200 / _UPVALUE1_, 70 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 0, 0, 255))
      dxDrawText("USU\197\131", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 1255 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 638 / _UPVALUE1_, _UPVALUE0_.y + 688 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 690 / _UPVALUE1_, 200 / _UPVALUE1_, 70 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(80, 0, 0, 255))
      dxDrawText("USU\197\131", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 1255 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    end
  end
  if _UPVALUE2_.category == "KOLORY" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.colors_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KOLORY ORGANIZACJI", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawText("KOSZT: #00ad23200,000 #e6e6e6PLN", _UPVALUE0_.x, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 910 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 298 / _UPVALUE1_, _UPVALUE0_.y + 118 / _UPVALUE1_, 904 / _UPVALUE1_, 184 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 300 / _UPVALUE1_, _UPVALUE0_.y + 120 / _UPVALUE1_, 900 / _UPVALUE1_, 180 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("PRZYK\197\129ADOWE KOLORY", _UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 310 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 880 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE10_) do
      xY = xY + 1
      if isMouseIn(_UPVALUE0_.x + 315 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 200 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 315 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 200 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(_FORV_8_[2], _FORV_8_[3], _FORV_8_[4], 150), false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 315 / _UPVALUE1_ + 80 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.y + 200 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(_FORV_8_[2], _FORV_8_[3], _FORV_8_[4], 250), false)
      end
    end
    if exports.ST_gui:getCustomEditboxText("RGB1"):len() > 0 and exports.ST_gui:getCustomEditboxText("RGB2"):len() > 0 and exports.ST_gui:getCustomEditboxText("RGB3"):len() > 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) <= 255 then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 498 / _UPVALUE1_, _UPVALUE0_.y + 448 / _UPVALUE1_, 504 / _UPVALUE1_, 184 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(exports.ST_gui:getCustomEditboxText("RGB1"), exports.ST_gui:getCustomEditboxText("RGB2"), exports.ST_gui:getCustomEditboxText("RGB3"), 255))
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 498 / _UPVALUE1_, _UPVALUE0_.y + 448 / _UPVALUE1_, 504 / _UPVALUE1_, 184 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 255))
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / _UPVALUE1_, _UPVALUE0_.y + 450 / _UPVALUE1_, 500 / _UPVALUE1_, 180 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("KOLOR RGB", _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 740 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 490 / _UPVALUE1_, 480 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 600 / _UPVALUE1_, _UPVALUE0_.y + 535 / _UPVALUE1_, 300 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 602 / _UPVALUE1_, _UPVALUE0_.y + 537 / _UPVALUE1_, 80 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(27, 27, 27, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 684 / _UPVALUE1_, _UPVALUE0_.y + 537 / _UPVALUE1_, 80 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(27, 27, 27, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 766 / _UPVALUE1_, _UPVALUE0_.y + 537 / _UPVALUE1_, 80 / _UPVALUE1_, 46 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(27, 27, 27, 255))
    if exports.ST_gui:getCustomEditboxText("RGB1"):len() > 0 and exports.ST_gui:getCustomEditboxText("RGB2"):len() > 0 and exports.ST_gui:getCustomEditboxText("RGB3"):len() > 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) >= 0 and tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) <= 255 and tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) <= 255 then
      if isMouseIn(_UPVALUE0_.x + 850 / _UPVALUE1_, _UPVALUE0_.y + 535 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 850 / _UPVALUE1_, _UPVALUE0_.y + 535 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 858 / _UPVALUE1_, _UPVALUE0_.y + 917 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 850 / _UPVALUE1_, _UPVALUE0_.y + 535 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
        dxDrawText("\226\156\148", _UPVALUE0_.x + 858 / _UPVALUE1_, _UPVALUE0_.y + 917 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 850 / _UPVALUE1_, _UPVALUE0_.y + 535 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 858 / _UPVALUE1_, _UPVALUE0_.y + 917 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(50, 50, 50, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
  end
  if _UPVALUE2_.category == "RANGI" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.rank_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("RANGI", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 498 / _UPVALUE1_, _UPVALUE0_.y + 158 / _UPVALUE1_, 504 / _UPVALUE1_, 474 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(60, 60, 60, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 500 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_, 500 / _UPVALUE1_, 470 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 255))
    dxDrawText("ZMIANA NAZWY RANG", _UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 161 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 510 / _UPVALUE1_, _UPVALUE0_.y + 200 / _UPVALUE1_, 480 / _UPVALUE1_, 2 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 255))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 350 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawText("RANGA 1", _UPVALUE0_.x, _UPVALUE0_.y + 310 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 250 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 230 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 350 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawText("RANGA 2", _UPVALUE0_.x, _UPVALUE0_.y + 470 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 250 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 310 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 350 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawText("RANGA 3", _UPVALUE0_.x, _UPVALUE0_.y + 630 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 250 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 630 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 390 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 630 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 350 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawText("RANGA 4", _UPVALUE0_.x, _UPVALUE0_.y + 790 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 250 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 790 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 470 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 790 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 640 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, 350 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(22, 22, 22, 255))
    dxDrawText("RANGA 5", _UPVALUE0_.x, _UPVALUE0_.y + 950 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 250 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, false, false)
    if isMouseIn(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) then
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(15, 15, 15, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 950 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 200, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    else
      dxDrawRoundedRectangle(_UPVALUE0_.x + 940 / _UPVALUE1_, _UPVALUE0_.y + 550 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(19, 19, 19, 255))
      dxDrawText("\226\156\148", _UPVALUE0_.x + 948 / _UPVALUE1_, _UPVALUE0_.y + 950 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 255, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
    end
  end
  if _UPVALUE2_.category == "ULEPSZENIA" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("ULEPSZENIA", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 122 / _UPVALUE1_ * (xY - 1), 1057 / _UPVALUE1_, 112 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 122 / _UPVALUE1_ * (xY - 1), 1055 / _UPVALUE1_, 110 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 235 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 122 / _UPVALUE1_ * (xY - 1), 102 / _UPVALUE1_, 102 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 345 / _UPVALUE1_, _UPVALUE0_.y - 5 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 345 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawText([[
KOSZT:
#00ad23]] .. przecinek(_FORV_8_.cost) .. " #e6e6e6PLN", _UPVALUE0_.x + 1450 / _UPVALUE1_, _UPVALUE0_.y + 30 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawText("LEVEL: #ffbb00" .. _FORV_8_.level .. "", _UPVALUE0_.x + 1450 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 245 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 122 / _UPVALUE1_ * (xY - 1), 80 / _UPVALUE1_, 80 / _UPVALUE1_, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_8_.status == 0 then
        exports.ST_buttons:dxCreateButton("Zakup", _UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 105 / _UPVALUE1_ + 122 / _UPVALUE1_ * (xY - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
      elseif _FORV_8_.status == 1 then
        dxDrawText("Zakupiono #00ff00\226\156\148", _UPVALUE0_.x, _UPVALUE0_.y + 70 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 900 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      elseif _FORV_8_.status == 2 then
        dxDrawText("Niedost\196\153pne #ff0000\226\156\150", _UPVALUE0_.x, _UPVALUE0_.y + 70 / _UPVALUE1_ + 244 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 900 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if _UPVALUE2_.category == "KONOPIE" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.weed_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("KONOPIE", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    xY = 0
    limitOsoba = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE11_) do
      if getElementData(localPlayer, "player:sid") == _FORV_8_.uid then
        limitOsoba = limitOsoba + 1
      end
      if _FORV_7_ >= kScroll and _FORV_7_ <= nScroll then
        xY = xY + 1
        dxDrawRoundedRectangle(_UPVALUE0_.x + 225 / _UPVALUE1_, _UPVALUE0_.y + 76 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 1065 / _UPVALUE1_, 74 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(35, 35, 35, 250), false)
        dxDrawCircle(_UPVALUE0_.x + 265 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 30 / _UPVALUE1_, 0, 360, tocolor(60, 60, 60, 255))
        dxDrawCircle(_UPVALUE0_.x + 265 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 30 / _UPVALUE1_, 270, 270 + _FORV_8_.dojrzale * 3.6, tocolor(0, 255, 0, 255))
        dxDrawCircle(_UPVALUE0_.x + 265 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 26 / _UPVALUE1_, 0, 360, tocolor(35, 35, 35, 255))
        dxDrawText(_FORV_8_.dojrzale .. "%", _UPVALUE0_.x + 168 / _UPVALUE1_, _UPVALUE0_.y + 27 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        dxDrawText("SADZONKA #00a822" .. _FORV_8_.type .. " #ffffff| ID: #ffbf00" .. _FORV_8_.id .. "#ffffff", _UPVALUE0_.x + 390 / _UPVALUE1_, _UPVALUE0_.y - 15 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawCircle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 30 / _UPVALUE1_, 0, 360, tocolor(60, 60, 60, 255))
        dxDrawCircle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 30 / _UPVALUE1_, 270, 270 + _FORV_8_.water * 3.6, tocolor(3, 111, 252, 255))
        dxDrawCircle(_UPVALUE0_.x + 340 / _UPVALUE1_, _UPVALUE0_.y + 113 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 26 / _UPVALUE1_, 0, 360, tocolor(35, 35, 35, 255))
        dxDrawText(_FORV_8_.water .. "%", _UPVALUE0_.x + 318 / _UPVALUE1_, _UPVALUE0_.y + 27 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "center", "center", false, false, false, false, false)
        dxDrawText("UID sadz\196\133cego: #ffbb00" .. _FORV_8_.uid, _UPVALUE0_.x + 405 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawRectangle(_UPVALUE0_.x + 382 / _UPVALUE1_, _UPVALUE0_.y + 93 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 1 / _UPVALUE1_, 35 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawRectangle(_UPVALUE0_.x + 382 / _UPVALUE1_, _UPVALUE0_.y + 128 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(60, 60, 60, 255))
        dxDrawText("LOKALIZACJA", _UPVALUE0_.x + 650 / _UPVALUE1_, _UPVALUE0_.y - 10 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        dxDrawText(getZoneName(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], true) .. ", " .. getZoneName(_FORV_8_.pos[1], _FORV_8_.pos[2], _FORV_8_.pos[3], false), _UPVALUE0_.x + 650 / _UPVALUE1_, _UPVALUE0_.y + 55 / _UPVALUE1_ + 164 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("PRZE\197\129ADUJ", _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 125 / _UPVALUE1_, 29 / _UPVALUE1_, 255, 1)
        exports.ST_buttons:dxCreateButton("USU\197\131", _UPVALUE0_.x + 1155 / _UPVALUE1_, _UPVALUE0_.y + 116 / _UPVALUE1_ + 82 / _UPVALUE1_ * (xY - 1), 125 / _UPVALUE1_, 29 / _UPVALUE1_, 255, 1)
      end
    end
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      if getElementData(localPlayer, "org:przestepcza") then
        limitWeed_user = 8
      else
        limitWeed_user = 5
      end
      if _FORV_8_.ulepszenie_limitkonopii == 1 then
        limitWeed_user = limitWeed_user + 3
      end
      dxDrawRectangle(_UPVALUE0_.x + 890 / _UPVALUE1_, _UPVALUE0_.y + 23 / _UPVALUE1_, 1 / _UPVALUE1_, 26 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawRectangle(_UPVALUE0_.x + 875 / _UPVALUE1_, _UPVALUE0_.y + 48 / _UPVALUE1_, 16 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawText("LIMIT NA OSOB\196\152", _UPVALUE0_.x, _UPVALUE0_.y - 155 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 520 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("#ffbb00" .. limitOsoba .. " #e6e6e6/ #ffbb00" .. limitWeed_user, _UPVALUE0_.x, _UPVALUE0_.y - 105 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 510 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
      dxDrawRectangle(_UPVALUE0_.x + 1082 / _UPVALUE1_, _UPVALUE0_.y + 23 / _UPVALUE1_, 1 / _UPVALUE1_, 26 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawRectangle(_UPVALUE0_.x + 1067 / _UPVALUE1_, _UPVALUE0_.y + 48 / _UPVALUE1_, 16 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(80, 80, 80, 255))
      dxDrawText("LIMIT NA ORGANIZACJ\196\152", _UPVALUE0_.x, _UPVALUE0_.y - 155 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 710 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("#ffbb00" .. #_UPVALUE11_ .. " #e6e6e6/ #ffbb00" .. 100, _UPVALUE0_.x, _UPVALUE0_.y - 105 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 700 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
    end
    exports.ST_buttons:dxCreateButton("LOGI", _UPVALUE0_.x + 1100 / _UPVALUE1_, _UPVALUE0_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
  end
  if _UPVALUE2_.category == "LOGI KONOPII" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.weed_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("LOGI KONOPII", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE12_) do
      xY = xY + 1
      if _FORV_8_.type == "SAPD" then
        dxDrawText("Funkcjonariusz " .. _FORV_8_.nick .. " usun\196\133\197\130 konopie gracza o UID: " .. _FORV_8_.uid2 .. "", _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
      else
        dxDrawText("[" .. _FORV_8_.uid .. "] " .. _FORV_8_.nick .. " zebra\197\130 konopie gracza o UID: " .. _FORV_8_.uid2 .. "", _UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, false, false)
      end
      dxDrawText(dateName(_FORV_8_.date), _UPVALUE0_.x, _UPVALUE0_.y - 30 / _UPVALUE1_ + 67 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 930 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("light18"), "right", "center", false, false, false, false, false)
    end
  end
  if _UPVALUE2_.category == "DILERZY" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("DILERZY", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE13_) do
      xY = xY + 1
      if _FORV_8_.buy == true then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1057 / _UPVALUE1_, 167 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1055 / _UPVALUE1_, 165 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 135 / _UPVALUE1_, 135 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
        dxDrawImage(_UPVALUE0_.x + 260 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 95 / _UPVALUE1_, 95 / _UPVALUE1_, textures.dealer_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("DILER " .. _FORV_8_.id, _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        if _FORV_8_.status == 0 then
          exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffWOLNY #00ff00\226\156\148", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        elseif _FORV_8_.status == 1 then
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("zaraz si\196\153 odezw\196\153 i podwieziesz mi towar", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("ZAKO\197\131CZ", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        elseif _FORV_8_.status == 2 then
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("#ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "#ffffff podwieziesz mi #ffbb00" .. split(_FORV_8_.drugs, ",")[1] .. " #ffffffw ilo\197\155ci #ffbb00" .. split(_FORV_8_.drugs, ",")[2] .. "#ffffffg?", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("ZAKO\197\131CZ", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("POKA\197\187 GPS", _UPVALUE0_.x + 711 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 42 / _UPVALUE1_, 255, 1)
        elseif _FORV_8_.status == 3 then
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("#ffbb00" .. split(_FORV_8_.nick, ",")[1] .. " #ffffffczekam na ciebie - #ffbb00" .. split(_FORV_8_.drugs, ",")[1] .. " #ffbb00" .. split(_FORV_8_.drugs, ",")[2] .. "#ffffffg", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("ZAKO\197\131CZ", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        elseif _FORV_8_.status == 4 then
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("za nied\197\130ugo si\196\153 odezw\196\153 i podjedziesz po hajs", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("ZAKO\197\131CZ", _UPVALUE0_.x + 1110 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        elseif _FORV_8_.status == 5 then
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("#ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "#ffffff mam dla ciebie hajs - #00ad23" .. przecinek(_FORV_8_.money) .. " #ffffffPLN", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("POKA\197\187 GPS", _UPVALUE0_.x + 711 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 42 / _UPVALUE1_, 255, 1)
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        elseif _FORV_8_.status == 6 then
          dxDrawText("STATUS:  #ffffffZAJ\196\152TY #ff0000\226\156\150", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("PRACUJE DLA:  #ffbb00" .. split(_FORV_8_.nick, ",")[1] .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText("WIADOMO\197\154\196\134 OD DILERA", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(220, 220, 220, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("#ffbb00" .. split(_FORV_8_.nick, ",")[1] .. " #ffffffczekam na ciebie z hajsem - #00ad23" .. przecinek(_FORV_8_.money) .. " #ffffffPLN", _UPVALUE0_.x + 1200 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "center", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("POKA\197\187 GPS", _UPVALUE0_.x + 711 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 140 / _UPVALUE1_, 42 / _UPVALUE1_, 255, 1)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1057 / _UPVALUE1_, 167 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1055 / _UPVALUE1_, 165 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 135 / _UPVALUE1_, 135 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(23, 23, 23, 255), false)
        dxDrawImage(_UPVALUE0_.x + 260 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 95 / _UPVALUE1_, 95 / _UPVALUE1_, textures.dealer_icon, 0, 0, 0, tocolor(255, 255, 255, 150), false)
        dxDrawText("DILER " .. _FORV_8_.id, _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, false, false)
        dxDrawText("WYMAGANY LEVEL:  #ffbb00" .. _FORV_8_.level .. "", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        dxDrawText("KOSZT: #00ad235,000,000 #ffffffPLN", _UPVALUE0_.x + 385 / _UPVALUE1_, _UPVALUE0_.y + 170 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 180), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
        exports.ST_buttons:dxCreateButton("ZATRUDNIJ", _UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
      end
    end
  end
  if _UPVALUE2_.category == "NAPADY" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("NAPADY", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE14_) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1057 / _UPVALUE1_, 167 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1055 / _UPVALUE1_, 165 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
      dxDrawRoundedRectangle(_UPVALUE0_.x + 240 / _UPVALUE1_, _UPVALUE0_.y + 95 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 135 / _UPVALUE1_, 135 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(25, 25, 25, 255), false)
      if isElement(_FORV_8_.img) then
        dxDrawImage(_UPVALUE0_.x + 260 / _UPVALUE1_, _UPVALUE0_.y + 115 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 95 / _UPVALUE1_, 95 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
      dxDrawText(_FORV_8_.name, _UPVALUE0_.x + 397 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "left", "center", false, false, false, false, false)
      dxDrawRectangle(_UPVALUE0_.x + 387 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 99 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 387 / _UPVALUE1_, _UPVALUE0_.y + 140 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 387 / _UPVALUE1_, _UPVALUE0_.y + 173 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawRectangle(_UPVALUE0_.x + 387 / _UPVALUE1_, _UPVALUE0_.y + 207 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      dxDrawText("Wykonane napady: #ffbb00" .. _FORV_8_.wykonane, _UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 83 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      if _FORV_8_.name == "Napad na jubilera" then
        dxDrawText("Zarobek z napad\195\179w: #00ad23- #cdcdcd", _UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 148 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      else
        dxDrawText("Zarobek z napad\195\179w: #00ad23" .. przecinek(_FORV_8_.zarobek) .. " #cdcdcdPLN", _UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 148 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      end
      dxDrawText("Liczba graczy: #ffbb00" .. _FORV_8_.gracze[1] .. "#cdcdcd-#ffbb00" .. _FORV_8_.gracze[2] .. "", _UPVALUE0_.x + 410 / _UPVALUE1_, _UPVALUE0_.y + 213 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
      dxDrawText("Wymagania", _UPVALUE0_.x + 685 / _UPVALUE1_, _UPVALUE0_.y + 20 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
      if _FORV_8_.name == "Napad na domek" then
        dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 34 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 142 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      elseif _FORV_8_.name == "Napad na jubilera" then
        dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 65 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 142 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 173 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
      elseif _FORV_8_.name == "Napad na bank" then
        if getElementData(localPlayer, "org:przestepcza") then
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 99 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 142 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 173 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 207 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        else
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 110 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 2 / _UPVALUE1_, 34 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
          dxDrawRectangle(_UPVALUE0_.x + 675 / _UPVALUE1_, _UPVALUE0_.y + 142 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 15 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        end
      end
      xY1 = 0
      for _FORV_14_, _FORV_15_ in ipairs(_FORV_8_.wymagania) do
        xY1 = xY1 + 1
        if _FORV_15_[3] >= _FORV_15_[2] then
          dxDrawText("#20e859\226\156\148\239\184\143 #cdcdcd" .. _FORV_15_[1] .. ":  #20e859" .. _FORV_15_[3] .. "#cdcdcd/#ffbb00" .. _FORV_15_[2], _UPVALUE0_.x + 700 / _UPVALUE1_, _UPVALUE0_.y + 83 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1) + 60 / _UPVALUE1_ * (xY1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("#d41717\226\156\151 #cdcdcd" .. _FORV_15_[1] .. ":  #bd2d2d" .. _FORV_15_[3] .. "#cdcdcd/#ffbb00" .. _FORV_15_[2], _UPVALUE0_.x + 700 / _UPVALUE1_, _UPVALUE0_.y + 83 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1) + 60 / _UPVALUE1_ * (xY1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
        end
      end
      if _FORV_8_.block then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 1057 / _UPVALUE1_, 167 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(18, 18, 18, 200), false)
        dxDrawText("DOST\196\152PNE W CRIME", _UPVALUE0_.x, _UPVALUE0_.y + 135 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 880 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(255, 150, 150, 100), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, false, false)
      elseif (tonumber(_FORV_8_.czas) or 0) - getRealTime().timestamp <= 0 then
        exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE0_.x + 1070 / _UPVALUE1_, _UPVALUE0_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_, 255, 1)
      else
        dxDrawText("Dost\196\153pne za: #ffbb00" .. string.format("%02d:%02d:%02d", math.floor(math.max(0, (tonumber(_FORV_8_.czas) or 0) - getRealTime().timestamp) / 3600), math.floor(math.max(0, (tonumber(_FORV_8_.czas) or 0) - getRealTime().timestamp) % 3600 / 60), math.max(0, (tonumber(_FORV_8_.czas) or 0) - getRealTime().timestamp) % 60), _UPVALUE0_.x, _UPVALUE0_.y + 135 / _UPVALUE1_ + 366 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 880 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(205, 205, 205, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      end
    end
  end
  if _UPVALUE2_.category == "WYB\195\147R GRACZY NAPAD" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.bandit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("WYBIERZ GRACZY", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 460 / _UPVALUE1_, _UPVALUE0_.y + 130 / _UPVALUE1_, _UPVALUE0_.w - 710 / _UPVALUE1_, 550 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, _UPVALUE0_.w - 730 / _UPVALUE1_, 3 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
    dxDrawText("WYBIERZ GRACZY DO NAPADU", _UPVALUE0_.x + 1143 / _UPVALUE1_, _UPVALUE0_.y + 117 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
    xY = 0
    for _FORV_8_, _FORV_9_ in ipairs(players_organization) do
      xY = xY + 1
      if _FORV_9_[2] == true then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 479 / _UPVALUE1_, _UPVALUE0_.y + 193 / _UPVALUE1_ + 53 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 748 / _UPVALUE1_, 47 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(255, 187, 0, 250), false)
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 480 / _UPVALUE1_, _UPVALUE0_.y + 194 / _UPVALUE1_ + 53 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 750 / _UPVALUE1_, 45 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 253), false)
      dxDrawText(getPlayerName(_FORV_9_[1]), _UPVALUE0_.x + 495 / _UPVALUE1_, _UPVALUE0_.y + 235 / _UPVALUE1_ + 106 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal20"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("Gracze: " .. 0 + 1 .. " / " .. iloscOsobNapad, _UPVALUE0_.x + 1143 / _UPVALUE1_, _UPVALUE0_.y + 1205 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ROZPOCZNIJ", _UPVALUE0_.x + 650 / _UPVALUE1_, _UPVALUE0_.y + 725 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_, 255, 1)
  end
  if _UPVALUE2_.category == "Pralnie" then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, _UPVALUE0_.w - 210 / _UPVALUE1_, 70 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(40, 40, 40, 250), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawRoundedRectangle(_UPVALUE0_.x + 210 / _UPVALUE1_, _UPVALUE0_.y, 7 / _UPVALUE1_, _UPVALUE0_.h, 2 / _UPVALUE1_, tocolor(split(_FORV_8_.color, ", ")[1], split(_FORV_8_.color, ", ")[2], split(_FORV_8_.color, ", ")[3], 255), false)
    end
    dxDrawImage(_UPVALUE0_.x + 230 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, 60 / _UPVALUE1_, 60 / _UPVALUE1_, textures.money_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    for _FORV_7_, _FORV_8_ in ipairs(_UPVALUE3_) do
      dxDrawText("Brudne pieni\196\133dze #00ad23" .. przecinek(_FORV_8_.kasa_brudna) .. " #e6e6e6PLN", _UPVALUE0_.x + 305 / _UPVALUE1_, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
    end
    if pralniaAktywna == true then
      dxDrawText("Prze\197\130adowanie za: #ffbf00" .. secondsToClock(czas_przeladowanie_pralnia / 1000) .. "", _UPVALUE0_.x, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 910 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
    else
      dxDrawText("#8c0000Niektywne", _UPVALUE0_.x, _UPVALUE0_.y - 127 / _UPVALUE1_, _UPVALUE0_.x + 362 / _UPVALUE1_ + 910 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "right", "center", false, false, false, true, false)
    end
    for _FORV_9_, _FORV_10_ in ipairs(pralnie_tabela) do
      if 0 + 1 > 2 then
      end
      if tonumber(_FORV_10_.status) == 0 then
        dxDrawRoundedRectangle(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 520 / _UPVALUE1_, 230 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
        dxDrawImage(_UPVALUE0_.x + 238 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 93 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.info_icon, 0, 0, 0, tocolor(255, 187, 0, 200), false)
        dxDrawText(_FORV_10_.name, _UPVALUE0_.x + 275 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 17 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
        dxDrawText("Limit: #00ad23" .. przecinek(_FORV_10_.limit) .. " #e6e6e6 / #ffbf0024#c8c8c8h", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 115 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawText("Zysk: #ffbf00" .. _FORV_10_.zysk .. "#c8c8c8%", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 185 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawText("Czas: #00ad23" .. przecinek(_FORV_10_.moneyTime) .. " #e6e6e6PLN / #ffbf001#e6e6e6h", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 255 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 200), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        if lacznieWyprane_pralnia >= _FORV_10_.wymaganiaWyprane then
          dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 239 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 344 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 255), {
            tl = true,
            tr = 3 / _UPVALUE1_,
            bl = true,
            br = 3 / _UPVALUE1_
          })
          dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 240 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 342 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 255), {
            tl = true,
            tr = 3 / _UPVALUE1_,
            bl = true,
            br = 3 / _UPVALUE1_
          })
          dxDrawText("Koszt", _UPVALUE0_.x + 255 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
          dxDrawText("#00ad23" .. przecinek(_FORV_10_.koszt) .. " #e6e6e6PLN", _UPVALUE0_.x + 245 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1) + 205 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
          dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 589 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 152 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 255), {
            tl = 3 / _UPVALUE1_,
            tr = true,
            bl = 3 / _UPVALUE1_,
            br = true
          })
          dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 590 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 255), {
            tl = 3 / _UPVALUE1_,
            tr = true,
            bl = 3 / _UPVALUE1_,
            br = true
          })
          dxDrawText("ZAKUP", _UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 635 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 239 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 502 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 255))
          if 502 / _FORV_10_.wymaganiaWyprane * lacznieWyprane_pralnia / _UPVALUE1_ < 50 / _UPVALUE1_ then
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 239 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 502 / _FORV_10_.wymaganiaWyprane * lacznieWyprane_pralnia / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(179, 255, 0, 80))
          end
          dxDrawText("" .. przecinek(lacznieWyprane_pralnia) .. " PLN / " .. przecinek(_FORV_10_.wymaganiaWyprane) .. " PLN", _UPVALUE0_.x + 617 / _UPVALUE1_ + 1064 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 352 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
          dxDrawText("#00ad23" .. przecinek(lacznieWyprane_pralnia) .. " #e6e6e6PLN / #ffbf00" .. przecinek(_FORV_10_.wymaganiaWyprane) .. " #e6e6e6PLN", _UPVALUE0_.x + 615 / _UPVALUE1_ + 1064 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
        end
      else
        dxDrawRoundedRectangle(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 229 / _UPVALUE1_, _UPVALUE0_.y + 79 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 522 / _UPVALUE1_, 232 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(60, 60, 60, 255), false)
        dxDrawRoundedRectangle(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 230 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 520 / _UPVALUE1_, 230 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(30, 30, 30, 255), false)
        if isMouseIn(_UPVALUE0_.x + 238 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 92 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_) then
          if isCursorShowing() then
            dxDrawText("Zysk: " .. _FORV_10_.zysk .. [[
%
Czas: ]] .. przecinek(_FORV_10_.moneyTime) .. " PLN /1h", _UPVALUE7_ * getCursorPosition() + 14 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 34 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(0, 0, 0, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, false, false)
            dxDrawText("Zysk: #ffbf00" .. _FORV_10_.zysk .. [[
#c8c8c8%
Czas: #00ad23]] .. przecinek(_FORV_10_.moneyTime) .. " #c8c8c8PLN /1h", _UPVALUE7_ * getCursorPosition() + 13 / _UPVALUE1_, _UPVALUE8_ * getCursorPosition() + 33 / _UPVALUE1_, _UPVALUE7_ * getCursorPosition(), _UPVALUE8_ * getCursorPosition(), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "right", "center", false, false, true, true, false)
          end
          dxDrawImage(_UPVALUE0_.x + 238 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 93 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.info_icon, 0, 0, 0, tocolor(255, 187, 0, 200), false)
        else
          dxDrawImage(_UPVALUE0_.x + 238 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 93 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.info_icon, 0, 0, 0, tocolor(255, 187, 0, 255), false)
        end
        dxDrawText(_FORV_10_.name, _UPVALUE0_.x + 275 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 17 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
        dxDrawText("Limit: #00ad23" .. przecinek(_FORV_10_.limitDB) .. " #e6e6e6/ #00ad23" .. przecinek(_FORV_10_.limit) .. " #e6e6e6/24h", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 115 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        dxDrawText("Wyprane \197\130\196\133cznie: #00ad23" .. przecinek(_FORV_10_.wypraneAll) .. " #e6e6e6PLN", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 185 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        if isMouseIn(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 240 / _UPVALUE1_, _UPVALUE0_.y + 220 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 250 / _UPVALUE1_, 15 / _UPVALUE1_) then
          dxDrawText("Do wyp\197\130aty: #00ad23" .. przecinek(_FORV_10_.money_wyprane) .. " #e6e6e6PLN", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 255 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 155), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        else
          dxDrawText("Do wyp\197\130aty: #00ad23" .. przecinek(_FORV_10_.money_wyprane) .. " #e6e6e6PLN", _UPVALUE0_.x + 245 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1), _UPVALUE0_.y + 255 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        end
        dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 239 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 344 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 255), {
          tl = true,
          tr = 3 / _UPVALUE1_,
          bl = true,
          br = 3 / _UPVALUE1_
        })
        dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 240 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 342 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 255), {
          tl = true,
          tr = 3 / _UPVALUE1_,
          bl = true,
          br = 3 / _UPVALUE1_
        })
        dxDrawText("#00ad23" .. przecinek(_FORV_10_.money) .. " #e6e6e6PLN", _UPVALUE0_.x + 245 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_ + 532 / _UPVALUE1_ * (1 - 1) + 205 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "right", "center", false, false, false, true, false)
        dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 589 / _UPVALUE1_, _UPVALUE0_.y + 249 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 152 / _UPVALUE1_, 52 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(50, 50, 50, 255), {
          tl = 3 / _UPVALUE1_,
          tr = true,
          bl = 3 / _UPVALUE1_,
          br = true
        })
        dxDrawRoundedRectangle_(_UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 590 / _UPVALUE1_, _UPVALUE0_.y + 250 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 255), {
          tl = 3 / _UPVALUE1_,
          tr = true,
          bl = 3 / _UPVALUE1_,
          br = true
        })
        dxDrawText("WP\197\129A\196\134", _UPVALUE0_.x + 532 / _UPVALUE1_ * (1 - 1) + 635 / _UPVALUE1_, _UPVALUE0_.y + 350 / _UPVALUE1_ + 484 / _UPVALUE1_ * (1 + 1 - 1), _UPVALUE0_.x + 362 / _UPVALUE1_, _UPVALUE0_.y + 204 / _UPVALUE1_, tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _UPVALUE0_.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if isMouseIn(_UPVALUE2_.x, _UPVALUE2_.y + 68 / _UPVALUE1_ * (0 + 1 - 1), 210 / _UPVALUE1_, 67.5 / _UPVALUE1_) and _UPVALUE0_.background == true then
          exports.ST_gui:destroyCustomEditbox("addUsers")
          exports.ST_gui:destroyCustomEditbox("funds")
          exports.ST_gui:destroyCustomEditbox("message")
          exports.ST_gui:destroyCustomEditbox("changeName")
          exports.ST_gui:destroyCustomEditbox("RGB1")
          exports.ST_gui:destroyCustomEditbox("RGB2")
          exports.ST_gui:destroyCustomEditbox("RGB3")
          exports.ST_gui:destroyCustomEditbox("rank1")
          exports.ST_gui:destroyCustomEditbox("rank2")
          exports.ST_gui:destroyCustomEditbox("rank3")
          exports.ST_gui:destroyCustomEditbox("rank4")
          exports.ST_gui:destroyCustomEditbox("rank5")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_1")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_2")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_3")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_4")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_5")
          exports.ST_gui:destroyCustomEditbox("money_pralnia_6")
          _UPVALUE0_.category = _FORV_7_.text
          if _UPVALUE0_.category == "CZ\197\129ONKOWIE" then
            if not czlonkowieZaladowane then
              czlonkowieZaladowane = true
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showUsersOrg", localPlayer)
              setTimer(function()
              end, 1800000, 1)
            end
            exports.ST_gui:createCustomEditbox("addUsers", "Wpisz nick aby doda\196\135", _UPVALUE2_.x + 985 / _UPVALUE1_, _UPVALUE2_.y + 759 / _UPVALUE1_, 250 / _UPVALUE1_, 46 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
            kScroll = 1
            nScroll = 9
            mScroll = 9
          elseif _UPVALUE0_.category == "POJAZDY" then
            if #_UPVALUE3_ == 0 then
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showVehicleOrg", localPlayer)
            end
            kScroll = 1
            nScroll = 15
            mScroll = 15
          elseif _UPVALUE0_.category == "FUNDUSZE" then
            if #_UPVALUE4_ == 0 then
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showFundsOrg", localPlayer)
            end
            exports.ST_gui:createCustomEditbox("funds", "Wpisz kwot\196\153", _UPVALUE2_.x + 987 / _UPVALUE1_, _UPVALUE2_.y + 15 / _UPVALUE1_, 200 / _UPVALUE1_, 45 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
            kScroll = 1
            nScroll = 22
            mScroll = 22
          elseif _UPVALUE0_.category == "LIDER" then
            exports.ST_gui:createCustomEditbox("message", "Wprowad\197\186 wiadomo\197\155\196\135 dla cz\197\130onk\195\179w twojej organizacji", _UPVALUE2_.x + 430 / _UPVALUE1_, _UPVALUE2_.y + 160 / _UPVALUE1_, 550 / _UPVALUE1_, 50 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
            exports.ST_gui:createCustomEditbox("changeName", "Wprowad\197\186 now\196\133 nazw\196\153", _UPVALUE2_.x + 430 / _UPVALUE1_, _UPVALUE2_.y + 340 / _UPVALUE1_, 550 / _UPVALUE1_, 50 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
          elseif _UPVALUE0_.category == "KOLORY" then
            exports.ST_gui:createCustomEditbox("RGB1", "R", _UPVALUE2_.x + 602 / _UPVALUE1_, _UPVALUE2_.y + 537 / _UPVALUE1_, 50 / _UPVALUE1_, 46 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
            exports.ST_gui:createCustomEditbox("RGB2", "G", _UPVALUE2_.x + 684 / _UPVALUE1_, _UPVALUE2_.y + 537 / _UPVALUE1_, 50 / _UPVALUE1_, 46 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
            exports.ST_gui:createCustomEditbox("RGB3", "B", _UPVALUE2_.x + 766 / _UPVALUE1_, _UPVALUE2_.y + 537 / _UPVALUE1_, 50 / _UPVALUE1_, 46 / _UPVALUE1_, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
          elseif _UPVALUE0_.category == "RANGI" then
            for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE5_) do
              exports.ST_gui:createCustomEditbox("rank1", "Ranga 1", _UPVALUE2_.x + 645 / _UPVALUE1_, _UPVALUE2_.y + 230 / _UPVALUE1_, 200 / _UPVALUE1_, 50 / _UPVALUE1_, false, "" .. _FORV_13_.rank1 .. "", "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
              exports.ST_gui:createCustomEditbox("rank2", "Ranga 2", _UPVALUE2_.x + 645 / _UPVALUE1_, _UPVALUE2_.y + 310 / _UPVALUE1_, 200 / _UPVALUE1_, 50 / _UPVALUE1_, false, "" .. _FORV_13_.rank2 .. "", "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
              exports.ST_gui:createCustomEditbox("rank3", "Ranga 3", _UPVALUE2_.x + 645 / _UPVALUE1_, _UPVALUE2_.y + 390 / _UPVALUE1_, 200 / _UPVALUE1_, 50 / _UPVALUE1_, false, "" .. _FORV_13_.rank3 .. "", "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
              exports.ST_gui:createCustomEditbox("rank4", "Ranga 4", _UPVALUE2_.x + 645 / _UPVALUE1_, _UPVALUE2_.y + 470 / _UPVALUE1_, 200 / _UPVALUE1_, 50 / _UPVALUE1_, false, "" .. _FORV_13_.rank4 .. "", "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
              exports.ST_gui:createCustomEditbox("rank5", "Ranga 5", _UPVALUE2_.x + 645 / _UPVALUE1_, _UPVALUE2_.y + 550 / _UPVALUE1_, 200 / _UPVALUE1_, 50 / _UPVALUE1_, false, "" .. _FORV_13_.rank5 .. "", "", 1, {
                25,
                25,
                25,
                0,
                22,
                22,
                22,
                0
              })
            end
          elseif _UPVALUE0_.category == "KONOPIE" then
            if #_UPVALUE6_ == 0 then
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "tableWeed", localPlayer)
            end
            kScroll = 1
            nScroll = 9
            mScroll = 9
          elseif _UPVALUE0_.category == "DILERZY" then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "tableDealer", localPlayer)
          elseif _UPVALUE0_.category == "NAPADY" then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "tableNapady", localPlayer)
          elseif _UPVALUE0_.category == "Pralnie" then
            lacznieWyprane_pralnia = 1
            pralnie_tabela = {
              {
                name = "Pralnia",
                zysk = 40,
                moneyTime = 3000000,
                limit = 10000000,
                koszt = 2500000,
                wymaganiaWyprane = 1,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              },
              {
                name = "Myjnia",
                zysk = 50,
                moneyTime = 3330000,
                limit = 20000000,
                koszt = 4000000,
                wymaganiaWyprane = 20000000,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              },
              {
                name = "Sklep spo\197\188ywczy",
                zysk = 60,
                moneyTime = 3750000,
                limit = 40000000,
                koszt = 6000000,
                wymaganiaWyprane = 60000000,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              },
              {
                name = "Restauracja",
                zysk = 70,
                moneyTime = 4285000,
                limit = 60000000,
                koszt = 8000000,
                wymaganiaWyprane = 120000000,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              },
              {
                name = "Klub",
                zysk = 80,
                moneyTime = 5000000,
                limit = 80000000,
                koszt = 10000000,
                wymaganiaWyprane = 250000000,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              },
              {
                name = "Rafineria",
                zysk = 90,
                moneyTime = 6000000,
                limit = 100000000,
                koszt = 12000000,
                wymaganiaWyprane = 500000000,
                status = 0,
                money_wyprane = 0,
                money = 0,
                limitDB = 0,
                wypraneAll = 0
              }
            }
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showBusiness", localPlayer, idOrganization)
          end
        end
      end
    end
    if _UPVALUE0_.category == "Pralnie" then
      for _FORV_7_, _FORV_8_ in ipairs(pralnie_tabela) do
        if 0 + 1 > 2 then
        end
        if isMouseIn(_UPVALUE2_.x + 532 / _UPVALUE1_ * (1 - 1) + 590 / _UPVALUE1_, _UPVALUE2_.y + 250 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_) then
          if tonumber(_FORV_8_.status) == 0 then
            if lacznieWyprane_pralnia >= _FORV_8_.wymaganiaWyprane then
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "buyBusiness", localPlayer, _FORV_7_)
            end
          elseif _FORV_7_ == 1 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_1"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_1"), _FORV_7_)
          elseif _FORV_7_ == 2 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_2"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_2"), _FORV_7_)
          elseif _FORV_7_ == 3 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_3"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_3"), _FORV_7_)
          elseif _FORV_7_ == 4 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_4"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_4"), _FORV_7_)
          elseif _FORV_7_ == 5 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_5"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_5"), _FORV_7_)
          elseif _FORV_7_ == 6 then
            if 1 > exports.ST_gui:getCustomEditboxText("money_pralnia_6"):len() then
              exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153", "error")
              return
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addMoneyBusiness", localPlayer, exports.ST_gui:getCustomEditboxText("money_pralnia_6"), _FORV_7_)
          end
        elseif isMouseIn(_UPVALUE2_.x + 532 / _UPVALUE1_ * (1 - 1) + 240 / _UPVALUE1_, _UPVALUE2_.y + 220 / _UPVALUE1_ + 242 / _UPVALUE1_ * (1 + 1 - 1), 250 / _UPVALUE1_, 15 / _UPVALUE1_) then
          if _FORV_7_ == 1 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          elseif _FORV_7_ == 2 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          elseif _FORV_7_ == 3 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          elseif _FORV_7_ == 4 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          elseif _FORV_7_ == 5 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          elseif _FORV_7_ == 6 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "withdrawMoneyBusiness", localPlayer, _FORV_7_)
          end
        end
      end
    end
    if _UPVALUE0_.category == "ULEPSZENIA" then
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        if isMouseIn(_UPVALUE2_.x + 1070 / _UPVALUE1_, _UPVALUE2_.y + 105 / _UPVALUE1_ + 122 / _UPVALUE1_ * (0 + 1 - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_) then
          if blockFunds then
            return
          end
          if _FORV_7_.status == 0 then
            for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE5_) do
              if _FORV_13_.level < _FORV_7_.level then
                exports.st_gui:showPlayerNotification("Level w twojej organizacji jest za niski", "error")
                return
              end
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "improvement", localPlayer, _FORV_7_.name, _FORV_7_.cost)
          end
        end
      end
    end
    if _UPVALUE0_.category == "KOLORY" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE7_) do
        if isMouseIn(_UPVALUE2_.x + 315 / _UPVALUE1_ + 80 / _UPVALUE1_ * (0 + 1 - 1), _UPVALUE2_.y + 200 / _UPVALUE1_, 70 / _UPVALUE1_, 70 / _UPVALUE1_) then
          if blockFunds then
            return
          end
          if getTickCount() - lastTickCount > 1000 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeColor", localPlayer, _FORV_7_[2], _FORV_7_[3], _FORV_7_[4])
            blockFunds = true
            lastTickCount = getTickCount()
          end
        end
      end
    end
    if _UPVALUE0_.category == "POJAZDY" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE3_) do
        if _FORV_6_ >= kScroll and _FORV_6_ <= nScroll and isMouseIn(_UPVALUE2_.x + 1251 / _UPVALUE1_, _UPVALUE2_.y + 137.5 / _UPVALUE1_ + 45 / _UPVALUE1_ * (0 + 1 - 1), 35 / _UPVALUE1_, 35 / _UPVALUE1_) then
          if blockFunds then
            return
          end
          if getTickCount() - lastTickCount > 1000 then
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "deleteVehOrg", localPlayer, _FORV_7_.id)
            blockFunds = true
            lastTickCount = getTickCount()
          end
        end
      end
    end
    if _UPVALUE0_.category == "CZ\197\129ONKOWIE" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE8_) do
        if _FORV_6_ >= kScroll and _FORV_6_ <= nScroll and isMouseIn(_UPVALUE2_.x + 225 / _UPVALUE1_, _UPVALUE2_.y + 76 / _UPVALUE1_ + 75 / _UPVALUE1_ * (0 + 1 - 1), 1065 / _UPVALUE1_, 70 / _UPVALUE1_) and getTickCount() - lastTickCount > 1000 then
          _UPVALUE0_.category = "CZ\197\129ONEK"
          selectUser = _FORV_7_.uid
          exports.ST_gui:destroyCustomEditbox("addUsers")
          lastTickCount = getTickCount()
        end
      end
    end
    if _UPVALUE0_.category == "KONOPIE" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE6_) do
        if _FORV_6_ >= kScroll and _FORV_6_ <= nScroll then
          if isMouseIn(_UPVALUE2_.x + 1155 / _UPVALUE1_, _UPVALUE2_.y + 80 / _UPVALUE1_ + 82 / _UPVALUE1_ * (0 + 1 - 1), 125 / _UPVALUE1_, 29 / _UPVALUE1_) then
            if getElementData(localPlayer, "player:sid") == _FORV_7_.uid then
              if not lastTickCountPrzeladowanieKonopii then
                lastTickCountPrzeladowanieKonopii = 60000
              end
              if getTickCount() - lastTickCountPrzeladowanieKonopii > 60000 then
                lastTickCountPrzeladowanieKonopii = getTickCount()
                exports.ST_weed:weedReload(_FORV_7_.id, _FORV_7_.pos, _FORV_7_.interior, _FORV_7_.dimension, _FORV_7_.type, _FORV_7_.wielkosc, _FORV_7_.dojrzale, _FORV_7_.uid, _FORV_7_.organization, _FORV_7_.color, _FORV_7_.water, _FORV_7_.nick)
              else
                exports.st_gui:showPlayerNotification("Nast\196\153pny raz mo\197\188esz prze\197\130adowa\196\135 za 1 minut\196\153", "error")
              end
            else
              exports.st_gui:showPlayerNotification("Krzak nie nale\197\188y do ciebie", "error")
            end
          elseif isMouseIn(_UPVALUE2_.x + 1155 / _UPVALUE1_, _UPVALUE2_.y + 116 / _UPVALUE1_ + 82 / _UPVALUE1_ * (0 + 1 - 1), 125 / _UPVALUE1_, 29 / _UPVALUE1_) then
            if getElementData(localPlayer, "player:sid") == _FORV_7_.uid then
              if not lastTickCountPrzeladowanieKonopii then
                lastTickCountPrzeladowanieKonopii = 60000
              end
              if getTickCount() - lastTickCountPrzeladowanieKonopii > 60000 then
                lastTickCountPrzeladowanieKonopii = getTickCount()
                triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "deleteWeed", localPlayer, _FORV_7_.id)
                exports.ST_gui:destroyCustomEditbox("addUsers")
                exports.ST_gui:destroyCustomEditbox("funds")
                exports.ST_gui:destroyCustomEditbox("message")
                exports.ST_gui:destroyCustomEditbox("changeName")
                removeEventHandler("onClientRender", root, window)
                removeEventHandler("onClientKey", root, key)
                _UPVALUE0_.background = false
                _UPVALUE0_.category = false
                showCursor(false)
                for _FORV_13_, _FORV_14_ in pairs(textures) do
                  if isElement(_FORV_14_) then
                    destroyElement(_FORV_14_)
                  end
                end
                textures = {}
              else
                exports.st_gui:showPlayerNotification("Nast\196\153pny raz mo\197\188esz usun\196\133\196\135 za 1 minut\196\153", "error")
              end
            else
              exports.st_gui:showPlayerNotification("Krzak nie nale\197\188y do ciebie", "error")
            end
          end
        end
      end
    end
    if _UPVALUE0_.category == "DILERZY" then
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE9_) do
        if isMouseIn(_UPVALUE2_.x + 1070 / _UPVALUE1_, _UPVALUE2_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (0 + 1 - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_) then
          if getTickCount() - lastTickCount > 1000 then
            if _FORV_7_.buy == true then
              if _FORV_7_.status == 0 then
                triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "setStatusDealer", localPlayer, _FORV_7_.status, _FORV_7_.id)
                exports.st_gui:showPlayerNotification("Diler zacz\196\133\197\130 pracowa\196\135 dla ciebie", "success")
              elseif _FORV_7_.status == 1 or _FORV_7_.status == 2 or _FORV_7_.status == 3 or _FORV_7_.status == 4 then
                triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "resetDealer", localPlayer, _FORV_7_.id)
              end
            else
              for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE5_) do
                if _FORV_13_.level < _FORV_7_.level then
                  exports.st_gui:showPlayerNotification("Level w twojej organizacji jest za niski", "error")
                  return
                end
              end
              triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "buyNewDealer", localPlayer, _FORV_7_.id, 5000000)
            end
            lastTickCount = getTickCount()
          end
        elseif isMouseIn(_UPVALUE2_.x + 711 / _UPVALUE1_, _UPVALUE2_.y + 180 / _UPVALUE1_ + 183 / _UPVALUE1_ * (0 + 1 - 1), 140 / _UPVALUE1_, 42 / _UPVALUE1_) and getTickCount() - lastTickCount > 1000 then
          if _FORV_7_.buy and (_FORV_7_.status == 2 or _FORV_7_.status == 5 or _FORV_7_.status == 6) and getElementData(localPlayer, "player:sid") == tonumber(split(_FORV_7_.nick, ",")[2]) then
            if isElement(pedDealer) then
              exports.st_gui:showPlayerNotification("Ju\197\188 masz pokazany GPS", "error")
              return
            end
            if _FORV_7_.status == 5 or _FORV_7_.status == 6 then
              money_dealer = {
                _FORV_7_.id,
                _FORV_7_.money
              }
            else
              money_dealer = nil
            end
            exports.st_gui:showPlayerNotification("Wskazano GPS do dilera", "info")
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "setStatusDealer", localPlayer, _FORV_7_.status, _FORV_7_.id)
            pedDealer = createPed(29, _UPVALUE10_[math.random(1, #_UPVALUE10_)][1], _UPVALUE10_[math.random(1, #_UPVALUE10_)][2], _UPVALUE10_[math.random(1, #_UPVALUE10_)][3], _UPVALUE10_[math.random(1, #_UPVALUE10_)][4])
            blip = createBlipAttachedTo(pedDealer, 41)
            _UPVALUE11_ = {
              bandit_icon = dxCreateTexture("img/bandit_icon.png")
            }
            addEventHandler("onClientRender", root, tracking)
          end
          lastTickCount = getTickCount()
        end
      end
    end
    if _UPVALUE0_.category == "NAPADY" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE12_) do
        xY = xY + 1
        if not isMouseIn(_UPVALUE2_.x + 1070 / _UPVALUE1_, _UPVALUE2_.y + 135 / _UPVALUE1_ + 183 / _UPVALUE1_ * (xY - 1), 180 / _UPVALUE1_, 60 / _UPVALUE1_) or _FORV_6_.block then
        else
          for _FORV_12_, _FORV_13_ in ipairs(_FORV_6_.wymagania) do
            if _FORV_13_[3] < _FORV_13_[2] then
              exports.st_gui:showPlayerNotification("Twoja organizacja nie spe\197\130nia wymaga\197\132", "error")
              return
            end
          end
          players_organization = {}
          for _FORV_12_, _FORV_13_ in ipairs(getElementsByType("player")) do
            if getElementData(_FORV_13_, "player:organization") and getElementData(_FORV_13_, "player:organization") == getElementData(localPlayer, "player:organization") then
              table.insert(players_organization, {_FORV_13_, false})
            end
          end
          _UPVALUE0_.category = "WYB\195\147R GRACZY NAPAD"
          iloscOsobNapad = _FORV_6_.gracze[2]
          wyborNapadu = _FORV_6_.name
        end
      end
    end
    if _UPVALUE0_.category == "WYB\195\147R GRACZY NAPAD" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(players_organization) do
        xY = xY + 1
        if isMouseIn(_UPVALUE2_.x + 480 / _UPVALUE1_, _UPVALUE2_.y + 194 / _UPVALUE1_ + 53 / _UPVALUE1_ * (xY - 1), _UPVALUE2_.w - 750 / _UPVALUE1_, 45 / _UPVALUE1_) then
          if players_organization[_FORV_5_][2] == false then
            players_organization[_FORV_5_][2] = true
          else
            players_organization[_FORV_5_][2] = false
          end
        end
      end
      if isMouseIn(_UPVALUE2_.x + 650 / _UPVALUE1_, _UPVALUE2_.y + 725 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_) then
        selectedPlayersCount = 0
        for _FORV_6_, _FORV_7_ in ipairs(players_organization) do
          if _FORV_7_[2] then
            selectedPlayersCount = selectedPlayersCount + 1
            if _FORV_7_[1] == localPlayer then
              break
            end
          end
        end
        if not true then
          exports.st_gui:showPlayerNotification("Musisz zaznaczy\196\135 siebie", "error")
          return
        end
        if selectedPlayersCount > iloscOsobNapad then
          exports.st_gui:showPlayerNotification("Zbyt wielu graczy wybranych do napadu!", "error")
          return
        end
        for _FORV_7_, _FORV_8_ in ipairs(players_organization) do
          if _FORV_8_[2] then
            table.insert({}, {
              _FORV_8_[1],
              true
            })
          end
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "rozpocznijNapad", localPlayer, wyborNapadu, {})
      end
    end
    if isMouseIn(_UPVALUE2_.x + 1239 / _UPVALUE1_, _UPVALUE2_.y + 759 / _UPVALUE1_, 46 / _UPVALUE1_, 46 / _UPVALUE1_) and _UPVALUE0_.category == "CZ\197\129ONKOWIE" then
      if exports.ST_gui:getCustomEditboxText("addUsers"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 nick", "error")
        return
      end
      triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "addUserOrg", localPlayer, exports.ST_gui:getCustomEditboxText("addUsers"), (getElementData(localPlayer, "player:organization")))
    elseif isMouseIn(_UPVALUE2_.x + 1100 / _UPVALUE1_, _UPVALUE2_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "CZ\197\129ONKOWIE" then
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "opuscOrg", localPlayer)
        exports.ST_gui:destroyCustomEditbox("addUsers")
        exports.ST_gui:destroyCustomEditbox("funds")
        exports.ST_gui:destroyCustomEditbox("message")
        exports.ST_gui:destroyCustomEditbox("changeName")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        _UPVALUE0_.background = false
        _UPVALUE0_.category = false
        showCursor(false)
        for _FORV_5_, _FORV_6_ in pairs(textures) do
          if isElement(_FORV_6_) then
            destroyElement(_FORV_6_)
          end
        end
        textures = {}
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE2_.x + 935 / _UPVALUE1_, _UPVALUE2_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_) and _UPVALUE0_.category == "FUNDUSZE" then
      if blockFunds then
        return
      end
      if getTickCount() - lastTickCount > 2000 then
        if exports.ST_gui:getCustomEditboxText("funds"):len() < 1 then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153!", "error")
          return
        end
        if not exports.ST_gui:getCustomEditboxText("funds") then
          return
        end
        if not math.floor((exports.ST_gui:getCustomEditboxText("funds"))) or math.floor((exports.ST_gui:getCustomEditboxText("funds"))) < 1 then
          return
        end
        if math.floor((exports.ST_gui:getCustomEditboxText("funds"))) > getElementData(localPlayer, "player:moneyMNn") then
          exports.st_gui:showPlayerNotification("Nie posiadasz tyle pieni\196\153dzy", "error")
          return
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "amtOperationOrg", localPlayer, (math.floor((exports.ST_gui:getCustomEditboxText("funds")))))
        blockFunds = true
        lastTickCount = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj 2 sekundy", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + 1240 / _UPVALUE1_, _UPVALUE2_.y + 14 / _UPVALUE1_, 45 / _UPVALUE1_, 45 / _UPVALUE1_) and _UPVALUE0_.category == "FUNDUSZE" then
      if blockFunds then
        return
      end
      if getTickCount() - lastTickCount > 2000 then
        if exports.ST_gui:getCustomEditboxText("funds"):len() < 1 then
          exports.st_gui:showPlayerNotification("Wprowad\197\186 kwot\196\153!", "error")
          return
        end
        if not exports.ST_gui:getCustomEditboxText("funds") then
          return
        end
        if not math.floor((exports.ST_gui:getCustomEditboxText("funds"))) or math.floor((exports.ST_gui:getCustomEditboxText("funds"))) < 1 then
          return
        end
        if getElementData(localPlayer, "player:moneyMNn") + math.floor((exports.ST_gui:getCustomEditboxText("funds"))) > 999999999 then
          return
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "amtOperationOrg", localPlayer, -math.floor((exports.ST_gui:getCustomEditboxText("funds"))))
        blockFunds = true
        lastTickCount = getTickCount()
      else
        exports.st_gui:showPlayerNotification("Odczekaj 2 sekundy", "info")
      end
    elseif isMouseIn(_UPVALUE2_.x + 1000 / _UPVALUE1_, _UPVALUE2_.y + 160 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "LIDER" then
      if getTickCount() - lastTickCount > 1000 then
        if exports.ST_gui:getCustomEditboxText("message"):len() > 40 then
          exports.st_gui:showPlayerNotification("Wiadomo\197\155\196\135 powinna zawiera\196\135 do 40 znak\195\179w!", "error")
          return
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "setMessageOrg", localPlayer, (exports.ST_gui:getCustomEditboxText("message")))
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE2_.x + 1000 / _UPVALUE1_, _UPVALUE2_.y + 340 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "LIDER" then
      if getElementData(localPlayer, "org:przestepcza") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
        return
      end
      if getTickCount() - lastTickCount > 1000 then
        for _FORV_7_, _FORV_8_ in pairs({
          "1",
          "2",
          "3",
          "4",
          "5",
          "6",
          "7",
          "8",
          "9",
          "0"
        }) do
          if string.find(exports.ST_gui:getCustomEditboxText("changeName"):lower(), _FORV_8_) then
            exports.st_gui:showPlayerNotification("Nie mo\197\188esz mie\196\135 cyfr w nazwie.", "error")
            return
          end
        end
        if exports.ST_gui:getCustomEditboxText("changeName"):len() < 3 or exports.ST_gui:getCustomEditboxText("changeName"):len() > 18 then
          exports.st_gui:showPlayerNotification("Nazwa organizacji powinna zawiera\196\135 od 3 do 18 znak\195\179w!", "error")
          return
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameOrg", localPlayer, (exports.ST_gui:getCustomEditboxText("changeName")))
        exports.ST_gui:destroyCustomEditbox("addUsers")
        exports.ST_gui:destroyCustomEditbox("funds")
        exports.ST_gui:destroyCustomEditbox("message")
        exports.ST_gui:destroyCustomEditbox("changeName")
        removeEventHandler("onClientRender", root, window)
        removeEventHandler("onClientKey", root, key)
        _UPVALUE0_.background = false
        _UPVALUE0_.category = false
        showCursor(false)
        for _FORV_7_, _FORV_8_ in pairs(textures) do
          if isElement(_FORV_8_) then
            destroyElement(_FORV_8_)
          end
        end
        textures = {}
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE2_.x + 638 / _UPVALUE1_, _UPVALUE2_.y + 688 / _UPVALUE1_, 204 / _UPVALUE1_, 74 / _UPVALUE1_) and _UPVALUE0_.category == "LIDER" then
      if getElementData(localPlayer, "org:przestepcza") then
        exports.st_gui:showPlayerNotification("Nie mo\197\188esz tego zrobi\196\135", "error")
        return
      end
      if getTickCount() - lastTickCount > 1000 then
        clickDeleteOrg = clickDeleteOrg + 1
        if clickDeleteOrg >= 2 then
          triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "deleteOrg", localPlayer)
          exports.ST_gui:destroyCustomEditbox("addUsers")
          exports.ST_gui:destroyCustomEditbox("funds")
          exports.ST_gui:destroyCustomEditbox("message")
          exports.ST_gui:destroyCustomEditbox("changeName")
          removeEventHandler("onClientRender", root, window)
          removeEventHandler("onClientKey", root, key)
          _UPVALUE0_.background = false
          _UPVALUE0_.category = false
          showCursor(false)
          for _FORV_5_, _FORV_6_ in pairs(textures) do
            if isElement(_FORV_6_) then
              destroyElement(_FORV_6_)
            end
          end
          textures = {}
          lastTickCount = getTickCount()
          clickDeleteOrg = 0
        else
          exports.st_gui:showPlayerNotification("Kliknij jeszcze raz, aby potwierdzi\196\135", "info")
        end
      end
    elseif isMouseIn(_UPVALUE2_.x + 850 / _UPVALUE1_, _UPVALUE2_.y + 535 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "KOLORY" then
      if exports.ST_gui:getCustomEditboxText("RGB1"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 warto\197\155\196\135.", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("RGB2"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 warto\197\155\196\135.", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("RGB3"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 warto\197\155\196\135.", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) < 0 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) < 0 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) < 0 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB1"))) > 255 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB2"))) > 255 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      if tonumber((exports.ST_gui:getCustomEditboxText("RGB3"))) > 255 then
        exports.st_gui:showPlayerNotification("Warto\197\155\196\135 powinna wynosi\196\135 od 0 do 255", "error")
        return
      end
      triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeColor", localPlayer, exports.ST_gui:getCustomEditboxText("RGB1"), exports.ST_gui:getCustomEditboxText("RGB2"), (exports.ST_gui:getCustomEditboxText("RGB3")))
    elseif isMouseIn(_UPVALUE2_.x + 940 / _UPVALUE1_, _UPVALUE2_.y + 230 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "RANGI" then
      if exports.ST_gui:getCustomEditboxText("rank1"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wype\197\130nij wszystkie pola", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("rank1"):len() > 13 then
        exports.st_gui:showPlayerNotification("Maksymalna ilo\197\155\196\135 znak\195\179w to 13", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE5_) do
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameRank", localPlayer, 1, exports.ST_gui:getCustomEditboxText("rank1"), _FORV_7_.rank1)
      end
    elseif isMouseIn(_UPVALUE2_.x + 940 / _UPVALUE1_, _UPVALUE2_.y + 310 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "RANGI" then
      if exports.ST_gui:getCustomEditboxText("rank2"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wype\197\130nij wszystkie pola", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("rank2"):len() > 13 then
        exports.st_gui:showPlayerNotification("Maksymalna ilo\197\155\196\135 znak\195\179w to 13", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE5_) do
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameRank", localPlayer, 2, exports.ST_gui:getCustomEditboxText("rank2"), _FORV_7_.rank2)
      end
    elseif isMouseIn(_UPVALUE2_.x + 940 / _UPVALUE1_, _UPVALUE2_.y + 390 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "RANGI" then
      if exports.ST_gui:getCustomEditboxText("rank3"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wype\197\130nij wszystkie pola", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("rank3"):len() > 13 then
        exports.st_gui:showPlayerNotification("Maksymalna ilo\197\155\196\135 znak\195\179w to 13", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE5_) do
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameRank", localPlayer, 3, exports.ST_gui:getCustomEditboxText("rank3"), _FORV_7_.rank3)
      end
    elseif isMouseIn(_UPVALUE2_.x + 940 / _UPVALUE1_, _UPVALUE2_.y + 470 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "RANGI" then
      if exports.ST_gui:getCustomEditboxText("rank4"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wype\197\130nij wszystkie pola", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("rank4"):len() > 13 then
        exports.st_gui:showPlayerNotification("Maksymalna ilo\197\155\196\135 znak\195\179w to 13", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE5_) do
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameRank", localPlayer, 4, exports.ST_gui:getCustomEditboxText("rank4"), _FORV_7_.rank4)
      end
    elseif isMouseIn(_UPVALUE2_.x + 940 / _UPVALUE1_, _UPVALUE2_.y + 550 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "RANGI" then
      if exports.ST_gui:getCustomEditboxText("rank5"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wype\197\130nij wszystkie pola", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("rank5"):len() > 13 then
        exports.st_gui:showPlayerNotification("Maksymalna ilo\197\155\196\135 znak\195\179w to 13", "error")
        return
      end
      for _FORV_6_, _FORV_7_ in ipairs(_UPVALUE5_) do
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeNameRank", localPlayer, 5, exports.ST_gui:getCustomEditboxText("rank5"), _FORV_7_.rank5)
      end
    elseif isMouseIn(_UPVALUE2_.x + 1100 / _UPVALUE1_, _UPVALUE2_.y + 11 / _UPVALUE1_, 180 / _UPVALUE1_, 50 / _UPVALUE1_) and _UPVALUE0_.category == "KONOPIE" then
      if getTickCount() - lastTickCount > 1000 then
        _UPVALUE0_.category = "LOGI KONOPII"
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "tableLogsWeed", localPlayer)
      end
    elseif isMouseIn(_UPVALUE2_.x + 905 / _UPVALUE1_, _UPVALUE2_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_) and _UPVALUE0_.category == "CZ\197\129ONEK" then
      if blockFunds then
        return
      end
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeUser", localPlayer, selectUser, "usuniecie")
        blockFunds = true
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE2_.x + 1035 / _UPVALUE1_, _UPVALUE2_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_) and _UPVALUE0_.category == "CZ\197\129ONEK" then
      if blockFunds then
        return
      end
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeUser", localPlayer, selectUser, "degrad")
        blockFunds = true
        lastTickCount = getTickCount()
      end
    elseif isMouseIn(_UPVALUE2_.x + 1165 / _UPVALUE1_, _UPVALUE2_.y + 762 / _UPVALUE1_, 120 / _UPVALUE1_, 40 / _UPVALUE1_) and _UPVALUE0_.category == "CZ\197\129ONEK" then
      if blockFunds then
        return
      end
      if getTickCount() - lastTickCount > 1000 then
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "changeUser", localPlayer, selectUser, "awans")
        blockFunds = true
        lastTickCount = getTickCount()
      end
    end
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_)
  if _ARG_0_ == "showInfoOrgClient" then
    _UPVALUE0_ = _ARG_1_
    for _FORV_15_, _FORV_16_ in ipairs(_ARG_1_) do
      if _FORV_16_.typorg == "Cywilna" then
      elseif _FORV_16_.typorg == "Grupa" then
      elseif _FORV_16_.typorg == "Przestepcza" then
      end
      idOrganization = _FORV_16_.id
      upgrades = {
        {
          name = "IMPORT / EXPORT",
          level = 10,
          description = "Ulepszenie odblokowuje magazyn, dzi\196\153ki kt\195\179remu\nmo\197\188esz zabiera\196\135 porzucone pojazdy, ulepszy\196\135\nje a potem sprzeda\196\135",
          icon = textures.vehicle_icon,
          status = _FORV_16_.import_export,
          cost = 7500000
        },
        {
          name = "GRUPA PRZEST\196\152PCZA",
          level = 15,
          description = "Twoja organizacja staj\196\153 si\196\153 #ffbb00grup\196\133 przestepcz\196\133#c8c8c8,\ndzi\196\153ki temu jest mo\197\188liwo\197\155\196\135 sadzenia konopii,\nprzejmowania stref i wiele wi\196\153cej",
          icon = textures.bandit_icon,
          status = 2,
          cost = 2000000
        },
        {
          name = "WIEKSZA ILO\197\154\196\134 SLOT\195\147W",
          level = 18,
          description = "Do twojej organizacji zostanie dodane #ffbb00+5 #c8c8c8slot\195\179w.\nPo ulepszeniu sloty w twojej organizacji\nb\196\153d\196\133 wynosi\196\135 #ffbb00" .. _FORV_16_.users + 5 .. "",
          icon = textures.members_icon,
          status = 0,
          cost = 5000000
        },
        {
          name = "ZWI\196\152KSZONY LIMIT KONOPII",
          level = 23,
          description = "W twojej organizacji limit konopii zostanie zwi\196\153kszony o #ffbb00+3 #c8c8c8na\njedn\196\133 osob\196\153 z organizacji oraz #ffbb00+25 #c8c8c8na ca\197\130\196\133 organizacj\196\153",
          icon = textures.weed_icon,
          status = _FORV_16_.ulepszenie_limitkonopii,
          cost = 5000000
        }
      }
    end
    if _ARG_2_ == "zmianaRang" then
      exports.ST_gui:destroyCustomEditbox("rank1")
      exports.ST_gui:destroyCustomEditbox("rank2")
      exports.ST_gui:destroyCustomEditbox("rank3")
      exports.ST_gui:destroyCustomEditbox("rank4")
      exports.ST_gui:destroyCustomEditbox("rank5")
      for _FORV_15_, _FORV_16_ in ipairs(_UPVALUE0_) do
        exports.ST_gui:createCustomEditbox("rank1", "Ranga 1", _UPVALUE1_.x + 645 / _UPVALUE2_, _UPVALUE1_.y + 230 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "" .. _FORV_16_.rank1 .. "", "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
        exports.ST_gui:createCustomEditbox("rank2", "Ranga 2", _UPVALUE1_.x + 645 / _UPVALUE2_, _UPVALUE1_.y + 310 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "" .. _FORV_16_.rank2 .. "", "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
        exports.ST_gui:createCustomEditbox("rank3", "Ranga 3", _UPVALUE1_.x + 645 / _UPVALUE2_, _UPVALUE1_.y + 390 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "" .. _FORV_16_.rank3 .. "", "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
        exports.ST_gui:createCustomEditbox("rank4", "Ranga 4", _UPVALUE1_.x + 645 / _UPVALUE2_, _UPVALUE1_.y + 470 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "" .. _FORV_16_.rank4 .. "", "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
        exports.ST_gui:createCustomEditbox("rank5", "Ranga 5", _UPVALUE1_.x + 645 / _UPVALUE2_, _UPVALUE1_.y + 550 / _UPVALUE2_, 200 / _UPVALUE2_, 50 / _UPVALUE2_, false, "" .. _FORV_16_.rank5 .. "", "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
    end
    blockFunds = false
  elseif _ARG_0_ == "showVehicleOrgClient" then
    _UPVALUE3_ = _ARG_1_
    table_vehiclesText = #_ARG_1_
  elseif _ARG_0_ == "showUsersOrgClient" then
    _UPVALUE4_ = _ARG_1_
    for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE0_) do
      table_usersText = #_ARG_1_ .. " / " .. _FORV_13_.users
    end
    if _ARG_2_ then
      blockFunds = false
    end
  elseif _ARG_0_ == "showFundsOrgClient" then
    _UPVALUE5_ = _ARG_1_
    if _ARG_2_ then
      blockFunds = false
      for _FORV_12_, _FORV_13_ in ipairs(_UPVALUE0_) do
        _FORV_13_.kasa = _ARG_3_
      end
    end
  elseif _ARG_0_ == "showDiagramClient" then
    if _ARG_1_ then
      earnDiagram = {
        maxEarn = 0,
        minEarn = 99999999999,
        totalmoney = 0
      }
      _UPVALUE6_ = {}
      for _FORV_12_, _FORV_13_ in pairs(_ARG_1_) do
        table.insert(_UPVALUE6_, {
          totalmoney = tonumber(_FORV_13_.totalmoney),
          day = string.format("%s.%s", split(_FORV_13_.day, "-")[3], split(_FORV_13_.day, "-")[2])
        })
        earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_13_.totalmoney)
        if earnDiagram.maxEarn < tonumber(_FORV_13_.totalmoney) then
          earnDiagram.maxEarn = tonumber(_FORV_13_.totalmoney)
        elseif earnDiagram.minEarn > tonumber(_FORV_13_.totalmoney) then
          earnDiagram.minEarn = tonumber(_FORV_13_.totalmoney)
        end
      end
    end
  elseif _ARG_0_ == "tableWeedClient" then
    _UPVALUE7_ = {}
    for _FORV_14_, _FORV_15_ in ipairs(_ARG_1_[1]) do
      if _ARG_1_[2][_FORV_15_.id] then
        data = getElementData(_ARG_1_[2][_FORV_15_.id], "weed:data") or false
        if data and _FORV_15_.organization == getElementData(localPlayer, "player:organization") then
          table.insert(_UPVALUE7_, {
            id = _FORV_15_.id,
            pos = {
              _FORV_15_.pos[1],
              _FORV_15_.pos[2],
              _FORV_15_.pos[3]
            },
            water = data.water,
            dojrzale = data.dojrzale,
            uid = data.uid,
            organization = data.organization,
            type = data.type,
            nick = data.nick,
            dimension = _FORV_15_.dimension,
            interior = _FORV_15_.interior,
            wielkosc = data.wielkosc,
            color = data.rgb
          })
        end
      end
    end
  elseif _ARG_0_ == "tableLogsWeedClient" then
    _UPVALUE8_ = _ARG_1_
  elseif _ARG_0_ == "tableDealerClient" then
    _UPVALUE9_ = {
      {
        id = 1,
        level = 50,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 2,
        level = 75,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 3,
        level = 100,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 4,
        level = 125,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      }
    }
    buy1 = false
    status1 = 0
    nick1 = ""
    drugs1 = ""
    money1 = 0
    buy2 = false
    status2 = 0
    nick2 = ""
    drugs2 = ""
    money2 = 0
    buy3 = false
    status3 = 0
    nick3 = ""
    drugs3 = ""
    money3 = 0
    buy4 = false
    status4 = 0
    nick4 = ""
    drugs4 = ""
    money4 = 0
    for _FORV_12_, _FORV_13_ in ipairs(_ARG_1_) do
      if _FORV_13_.id == 1 then
        buy1 = true
        status1 = _FORV_13_.status
        nick1 = _FORV_13_.nick
        drugs1 = _FORV_13_.drugs
        money1 = _FORV_13_.money
      elseif _FORV_13_.id == 2 then
        buy2 = true
        status2 = _FORV_13_.status
        nick2 = _FORV_13_.nick
        drugs2 = _FORV_13_.drugs
        money2 = _FORV_13_.money
      elseif _FORV_13_.id == 3 then
        buy3 = true
        status3 = _FORV_13_.status
        nick3 = _FORV_13_.nick
        drugs3 = _FORV_13_.drugs
        money3 = _FORV_13_.money
      elseif _FORV_13_.id == 4 then
        buy4 = true
        status4 = _FORV_13_.status
        nick4 = _FORV_13_.nick
        drugs4 = _FORV_13_.drugs
        money4 = _FORV_13_.money
      end
      _UPVALUE9_ = {
        {
          id = 1,
          level = 50,
          status = status1,
          buy = buy1,
          nick = nick1,
          drugs = drugs1,
          money = money1
        },
        {
          id = 2,
          level = 75,
          status = status2,
          buy = buy2,
          nick = nick2,
          drugs = drugs2,
          money = money2
        },
        {
          id = 3,
          level = 100,
          status = status3,
          buy = buy3,
          nick = nick3,
          drugs = drugs3,
          money = money3
        },
        {
          id = 4,
          level = 125,
          status = status4,
          buy = buy4,
          nick = nick4,
          drugs = drugs4,
          money = money4
        }
      }
    end
    if _ARG_2_ == "status1" then
      if isTimer(_UPVALUE10_[_ARG_3_]) then
        killTimer(_UPVALUE10_[_ARG_3_])
      end
      _UPVALUE10_[_ARG_3_] = setTimer(function()
        drugs = {
          {"Amfetamina"},
          {"Kokaina"},
          {"MDMA"},
          {"Mefedron"},
          {"LSD"}
        }
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "setStatusDealer", localPlayer, 1, _UPVALUE0_, "" .. drugs[math.random(1, #drugs)][1] .. "," .. math.random(50, 350) .. "")
        outputChatBox("\226\156\148 #ffffffDiler nr." .. _UPVALUE0_ .. " czeka a\197\188 przywieziesz mu towar - #ffbb00" .. drugs[math.random(1, #drugs)][1] .. " #ffffffw ilo\197\155ci " .. math.random(50, 350) .. "#ffffffg", 0, 255, 0, true)
      end, 240000, 1)
    elseif _ARG_2_ == "status3" then
      removeEventHandler("onClientRender", root, tracking)
      for _FORV_12_, _FORV_13_ in pairs(_UPVALUE11_) do
        if isElement(_FORV_13_) then
          destroyElement(_FORV_13_)
        end
      end
      _UPVALUE11_ = {}
      dealer_drugs = nil
      if isElement(pedDealer) then
        destroyElement(pedDealer)
      end
      if isElement(blip) then
        destroyElement(blip)
      end
      if isTimer(_UPVALUE10_[_ARG_3_]) then
        killTimer(_UPVALUE10_[_ARG_3_])
      end
      _UPVALUE10_[_ARG_3_] = setTimer(function()
        drugs = {
          {
            "Amfetamina",
            (math.random(3000, 9000))
          },
          {
            "Kokaina",
            (math.random(3000, 9000))
          },
          {
            "MDMA",
            (math.random(9000, 15000))
          },
          {
            "Mefedron",
            (math.random(6000, 13000))
          },
          {
            "LSD",
            (math.random(5000, 10000))
          }
        }
        for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE0_) do
          for _FORV_8_, _FORV_9_ in ipairs(drugs) do
            if _UPVALUE1_ == _FORV_4_.id and _FORV_9_[1] == split(_FORV_4_.drugs, ",")[1] then
              moneyDrugs = _FORV_9_[2] * split(_FORV_4_.drugs, ",")[2]
            end
          end
        end
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "setStatusDealer", localPlayer, 4, _UPVALUE1_, moneyDrugs)
        outputChatBox("\226\156\148 #ffffffDiler nr." .. _UPVALUE1_ .. " czeka na ciebie z got\195\179wk\196\133", 0, 255, 0, true)
      end, 240000, 1)
    elseif _ARG_2_ == "selectDrugs" then
      for _FORV_12_, _FORV_13_ in ipairs(_ARG_1_) do
        if _FORV_13_.id == _ARG_3_ then
          dealer_drugs = {
            split(_FORV_13_.drugs, ",")[1],
            split(_FORV_13_.drugs, ",")[2],
            _ARG_3_
          }
        end
      end
    elseif _ARG_2_ == "deleteDiler" then
      removeEventHandler("onClientRender", root, tracking)
      for _FORV_12_, _FORV_13_ in pairs(_UPVALUE11_) do
        if isElement(_FORV_13_) then
          destroyElement(_FORV_13_)
        end
      end
      _UPVALUE11_ = {}
      dealer_drugs = nil
      if isElement(pedDealer) then
        destroyElement(pedDealer)
      end
      if isElement(blip) then
        destroyElement(blip)
      end
    end
  elseif _ARG_0_ == "updateOrg" then
    _UPVALUE9_ = {
      {
        id = 1,
        level = 50,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 2,
        level = 75,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 3,
        level = 100,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      },
      {
        id = 4,
        level = 125,
        status = 0,
        buy = 0,
        nick = "",
        drugs = "",
        money = 0
      }
    }
    if isElement(pedDealer) then
      destroyElement(pedDealer)
    end
    if isElement(blip) then
      destroyElement(blip)
    end
    if isTimer(_UPVALUE10_[1]) then
      killTimer(_UPVALUE10_[1])
    end
    if isTimer(_UPVALUE10_[2]) then
      killTimer(_UPVALUE10_[2])
    end
    if isTimer(_UPVALUE10_[3]) then
      killTimer(_UPVALUE10_[3])
    end
    if isTimer(_UPVALUE10_[4]) then
      killTimer(_UPVALUE10_[4])
    end
    randomTypeDrugs = 1
    randomDrugs = 1
    _UPVALUE7_ = {}
    _UPVALUE5_ = {}
    czlonkowieZaladowane = false
    _UPVALUE3_ = {}
  elseif _ARG_0_ == "tableNapadyClient" then
    db_napady = _ARG_1_
    for _FORV_21_, _FORV_22_ in ipairs(db_napady) do
      if getElementData(localPlayer, "org:przestepcza") then
        _UPVALUE12_ = {
          {
            name = "Napad na domek",
            wymagania = {
              {
                "bankomaty",
                2,
                _FORV_22_.wykonane1_bankomaty
              }
            },
            wykonane = _FORV_22_.wykonane_domki,
            zarobek = _FORV_22_.zarobek_domki,
            gracze = {2, 5},
            czas = parseDateTime(_FORV_22_.czas_domki),
            img = textures.house_icon
          },
          {
            name = "Napad na jubilera",
            wymagania = {
              {
                "bankomaty",
                3,
                _FORV_22_.wykonane1_bankomaty
              },
              {
                "napady na domek",
                4,
                _FORV_22_.wykonane1_domki
              }
            },
            wykonane = _FORV_22_.wykonane_jubiler,
            zarobek = _FORV_22_.zarobek_jubiler,
            gracze = {4, 8},
            czas = parseDateTime(_FORV_22_.czas_jubiler),
            img = textures.napad_icon
          },
          {
            name = "Napad na bank",
            wymagania = {
              {
                "bankomaty",
                5,
                _FORV_22_.wykonane1_bankomaty
              },
              {
                "napady na domek",
                6,
                _FORV_22_.wykonane1_domki
              },
              {
                "napady na jubilera",
                2,
                _FORV_22_.wykonane1_jubiler
              }
            },
            wykonane = _FORV_22_.wykonane_bank,
            zarobek = _FORV_22_.zarobek_bank,
            gracze = {5, 10},
            czas = parseDateTime(_FORV_22_.czas_bank),
            img = textures.bank_icon
          }
        }
      else
        _UPVALUE12_ = {
          {
            name = "Napad na bank",
            wymagania = {
              {
                "bankomaty",
                10,
                _FORV_22_.wykonane1_bankomaty
              }
            },
            wykonane = _FORV_22_.wykonane_bank,
            zarobek = _FORV_22_.zarobek_bank,
            gracze = {5, 10},
            czas = parseDateTime(_FORV_22_.czas_bank),
            img = textures.bank_icon
          },
          {
            name = "Napad na domek",
            wymagania = {
              {
                "bankomaty",
                5,
                _FORV_22_.wykonane1_bankomaty
              }
            },
            wykonane = _FORV_22_.wykonane_domki,
            zarobek = _FORV_22_.zarobek_domki,
            gracze = {2, 5},
            czas = parseDateTime(_FORV_22_.czas_domki),
            img = textures.house_icon,
            block = true
          },
          {
            name = "Napad na jubilera",
            wymagania = {
              {
                "bankomaty",
                6,
                _FORV_22_.wykonane1_bankomaty
              },
              {
                "napady na domek",
                5,
                _FORV_22_.wykonane1_domki
              }
            },
            wykonane = _FORV_22_.wykonane_jubiler,
            zarobek = _FORV_22_.zarobek_jubiler,
            gracze = {4, 8},
            czas = parseDateTime(_FORV_22_.czas_jubiler),
            img = textures.napad_icon,
            block = true
          }
        }
      end
    end
  elseif _ARG_0_ == "showBusinessClient" then
    db_pralnie_biznesy = _ARG_1_
    pralniaAktywna = _ARG_2_
    czas_przeladowanie_pralnia = _ARG_3_
    for _FORV_12_, _FORV_13_ in ipairs(db_pralnie_biznesy) do
      pralnie_tabela = {
        {
          name = "Pralnia",
          zysk = 40,
          moneyTime = 3000000,
          limit = 10000000,
          koszt = 2500000,
          wymaganiaWyprane = 1,
          status = _FORV_13_.status_1,
          money_wyprane = _FORV_13_.money_wyprane_1,
          money = _FORV_13_.money_1,
          limitDB = _FORV_13_.limit_1,
          wypraneAll = _FORV_13_.all_wyprane_1
        },
        {
          name = "Myjnia",
          zysk = 50,
          moneyTime = 3330000,
          limit = 20000000,
          koszt = 4000000,
          wymaganiaWyprane = 20000000,
          status = _FORV_13_.status_2,
          money_wyprane = _FORV_13_.money_wyprane_2,
          money = _FORV_13_.money_2,
          limitDB = _FORV_13_.limit_2,
          wypraneAll = _FORV_13_.all_wyprane_2
        },
        {
          name = "Sklep spo\197\188ywczy",
          zysk = 60,
          moneyTime = 3750000,
          limit = 40000000,
          koszt = 6000000,
          wymaganiaWyprane = 60000000,
          status = _FORV_13_.status_3,
          money_wyprane = _FORV_13_.money_wyprane_3,
          money = _FORV_13_.money_3,
          limitDB = _FORV_13_.limit_3,
          wypraneAll = _FORV_13_.all_wyprane_3
        },
        {
          name = "Restauracja",
          zysk = 70,
          moneyTime = 4285000,
          limit = 60000000,
          koszt = 8000000,
          wymaganiaWyprane = 120000000,
          status = _FORV_13_.status_4,
          money_wyprane = _FORV_13_.money_wyprane_4,
          money = _FORV_13_.money_4,
          limitDB = _FORV_13_.limit_4,
          wypraneAll = _FORV_13_.all_wyprane_4
        },
        {
          name = "Klub",
          zysk = 80,
          moneyTime = 5000000,
          limit = 80000000,
          koszt = 10000000,
          wymaganiaWyprane = 250000000,
          status = _FORV_13_.status_5,
          money_wyprane = _FORV_13_.money_wyprane_5,
          money = _FORV_13_.money_5,
          limitDB = _FORV_13_.limit_5,
          wypraneAll = _FORV_13_.all_wyprane_5
        },
        {
          name = "Rafineria",
          zysk = 90,
          moneyTime = 6000000,
          limit = 100000000,
          koszt = 12000000,
          wymaganiaWyprane = 500000000,
          status = _FORV_13_.status_6,
          money_wyprane = _FORV_13_.money_wyprane_6,
          money = _FORV_13_.money_6,
          limitDB = _FORV_13_.limit_6,
          wypraneAll = _FORV_13_.all_wyprane_6
        }
      }
      lacznieWyprane_pralnia = tonumber(_FORV_13_.all_wyprane_1) + tonumber(_FORV_13_.all_wyprane_2) + tonumber(_FORV_13_.all_wyprane_3) + tonumber(_FORV_13_.all_wyprane_4) + tonumber(_FORV_13_.all_wyprane_5) + tonumber(_FORV_13_.all_wyprane_6)
      exports.ST_gui:destroyCustomEditbox("money_pralnia_1")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_2")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_3")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_4")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_5")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_6")
      if tonumber(_FORV_13_.status_1) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_1", "Kwota", _UPVALUE1_.x + 250 / _UPVALUE2_, _UPVALUE1_.y + 250 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      if tonumber(_FORV_13_.status_3) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_3", "Kwota", _UPVALUE1_.x + 250 / _UPVALUE2_, _UPVALUE1_.y + 492 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      if tonumber(_FORV_13_.status_5) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_5", "Kwota", _UPVALUE1_.x + 250 / _UPVALUE2_, _UPVALUE1_.y + 734 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      if tonumber(_FORV_13_.status_2) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_2", "Kwota", _UPVALUE1_.x + 782 / _UPVALUE2_, _UPVALUE1_.y + 250 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      if tonumber(_FORV_13_.status_4) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_4", "Kwota", _UPVALUE1_.x + 782 / _UPVALUE2_, _UPVALUE1_.y + 492 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
      if tonumber(_FORV_13_.status_6) == 1 then
        exports.ST_gui:createCustomEditbox("money_pralnia_6", "Kwota", _UPVALUE1_.x + 782 / _UPVALUE2_, _UPVALUE1_.y + 734 / _UPVALUE2_, 150 / _UPVALUE2_, 50 / _UPVALUE2_, false, false, "", 1, {
          25,
          25,
          25,
          0,
          22,
          22,
          22,
          0
        })
      end
    end
  end
end)
bindKey("f4", "down", function()
  if getElementData(localPlayer, "player:organization") then
    if _UPVALUE0_.background == false then
      if getTickCount() - lastTickCount > 100 then
        addEventHandler("onClientRender", root, window)
        addEventHandler("onClientKey", root, key)
        textures = {
          info_icon = dxCreateTexture("img/info_icon.png"),
          members_icon = dxCreateTexture("img/members_icon.png"),
          vehicle_icon = dxCreateTexture("img/vehicle_icon.png"),
          funds_icon = dxCreateTexture("img/funds_icon.png"),
          lider_icon = dxCreateTexture("img/lider_icon.png"),
          colors_icon = dxCreateTexture("img/colors_icon.png"),
          rank_icon = dxCreateTexture("img/rank_icon.png"),
          improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
          weed_icon = dxCreateTexture("img/weed_icon.png"),
          death_icon = dxCreateTexture("img/death_icon.png"),
          money_icon = dxCreateTexture("img/money_icon.png"),
          user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
          organization_icon = dxCreateTexture("img/organization_icon.png"),
          message_icon = dxCreateTexture("img/message_icon.png"),
          create_icon = dxCreateTexture("img/create_icon.png"),
          bandit_icon = dxCreateTexture("img/bandit_icon.png"),
          dealer_icon = dxCreateTexture("img/dealer_icon.png"),
          napad_icon = dxCreateTexture("img/napad_icon.png"),
          house_icon = dxCreateTexture(":ST_dashboard/img/house_icon.png"),
          bank_icon = dxCreateTexture(":ST_radar/images/radar/blips/radar_tattoo.png")
        }
        clickDeleteOrg = 0
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showDiagram", localPlayer)
        triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "showInfoOrg", localPlayer)
        if getElementData(localPlayer, "org:group") then
          category = {
            {
              text = "INFORMACJE",
              img = textures.info_icon
            },
            {
              text = "CZ\197\129ONKOWIE",
              img = textures.members_icon
            },
            {
              text = "POJAZDY",
              img = textures.vehicle_icon
            },
            {
              text = "FUNDUSZE",
              img = textures.funds_icon
            },
            {
              text = "LIDER",
              img = textures.lider_icon
            },
            {
              text = "KOLORY",
              img = textures.colors_icon
            },
            {
              text = "RANGI",
              img = textures.rank_icon
            },
            {
              text = "ULEPSZENIA",
              img = textures.improvement_icon
            },
            {
              text = "KONOPIE",
              img = textures.weed_icon
            },
            {
              text = "NAPADY",
              img = textures.napad_icon
            }
          }
        elseif getElementData(localPlayer, "org:przestepcza") then
          category = {
            {
              text = "INFORMACJE",
              img = textures.info_icon
            },
            {
              text = "CZ\197\129ONKOWIE",
              img = textures.members_icon
            },
            {
              text = "POJAZDY",
              img = textures.vehicle_icon
            },
            {
              text = "FUNDUSZE",
              img = textures.funds_icon
            },
            {
              text = "LIDER",
              img = textures.lider_icon
            },
            {
              text = "KOLORY",
              img = textures.colors_icon
            },
            {
              text = "RANGI",
              img = textures.rank_icon
            },
            {
              text = "ULEPSZENIA",
              img = textures.improvement_icon
            },
            {
              text = "KONOPIE",
              img = textures.weed_icon
            },
            {
              text = "DILERZY",
              img = textures.bandit_icon
            },
            {
              text = "NAPADY",
              img = textures.napad_icon
            },
            {
              text = "Pralnie",
              img = textures.money_icon
            }
          }
        else
          category = {
            {
              text = "INFORMACJE",
              img = textures.info_icon
            },
            {
              text = "CZ\197\129ONKOWIE",
              img = textures.members_icon
            },
            {
              text = "POJAZDY",
              img = textures.vehicle_icon
            },
            {
              text = "FUNDUSZE",
              img = textures.funds_icon
            },
            {
              text = "LIDER",
              img = textures.lider_icon
            },
            {
              text = "KOLORY",
              img = textures.colors_icon
            },
            {
              text = "RANGI",
              img = textures.rank_icon
            },
            {
              text = "ULEPSZENIA",
              img = textures.improvement_icon
            },
            {
              text = "KONOPIE",
              img = textures.weed_icon
            }
          }
        end
        upgrades = {}
        _UPVALUE0_.background = true
        _UPVALUE0_.category = "INFORMACJE"
        showCursor(true)
        for _FORV_4_, _FORV_5_ in ipairs(blipsPlayers) do
          destroyElement(blipsPlayers[_FORV_5_])
        end
        for _FORV_4_, _FORV_5_ in ipairs(getElementsByType("player")) do
          if getElementData(_FORV_5_, "player:organization") == getElementData(localPlayer, "player:organization") and getElementData(_FORV_5_, "player:organization") then
            destroyBlipsAttachedTo(_FORV_5_)
            blipsPlayers[_FORV_5_] = createBlipAttachedTo(_FORV_5_, 5, 2, 255, 255, 255, 255, 0, 500)
          end
        end
        lastTickCount = getTickCount()
      end
    else
      exports.ST_gui:destroyCustomEditbox("addUsers")
      exports.ST_gui:destroyCustomEditbox("funds")
      exports.ST_gui:destroyCustomEditbox("message")
      exports.ST_gui:destroyCustomEditbox("changeName")
      exports.ST_gui:destroyCustomEditbox("RGB1")
      exports.ST_gui:destroyCustomEditbox("RGB2")
      exports.ST_gui:destroyCustomEditbox("RGB3")
      exports.ST_gui:destroyCustomEditbox("rank1")
      exports.ST_gui:destroyCustomEditbox("rank2")
      exports.ST_gui:destroyCustomEditbox("rank3")
      exports.ST_gui:destroyCustomEditbox("rank4")
      exports.ST_gui:destroyCustomEditbox("rank5")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_1")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_2")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_3")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_4")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_5")
      exports.ST_gui:destroyCustomEditbox("money_pralnia_6")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientKey", root, key)
      _UPVALUE0_.background = false
      _UPVALUE0_.category = false
      showCursor(false)
      for _FORV_4_, _FORV_5_ in pairs(textures) do
        if isElement(_FORV_5_) then
          destroyElement(_FORV_5_)
        end
      end
      textures = {}
      _UPVALUE1_ = {}
      _UPVALUE2_ = {}
    end
  end
end)
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if _UPVALUE0_.category == "CZ\197\129ONKOWIE" or _UPVALUE0_.category == "FUNDUSZE" or _UPVALUE0_.category == "KONOPIE" or _UPVALUE0_.category == "POJAZDY" then
      if nScroll == mScroll then
        return
      end
      kScroll = kScroll - 1
      nScroll = nScroll - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if _UPVALUE0_.category == "CZ\197\129ONKOWIE" then
      if nScroll >= #_UPVALUE1_ then
        return
      end
      kScroll = kScroll + 1
      nScroll = nScroll + 1
    elseif _UPVALUE0_.category == "POJAZDY" then
      if nScroll >= #_UPVALUE2_ then
        return
      end
      kScroll = kScroll + 1
      nScroll = nScroll + 1
    elseif _UPVALUE0_.category == "FUNDUSZE" then
      if nScroll >= #_UPVALUE3_ then
        return
      end
      kScroll = kScroll + 1
      nScroll = nScroll + 1
    elseif _UPVALUE0_.category == "KONOPIE" then
      if nScroll >= #_UPVALUE4_ then
        return
      end
      kScroll = kScroll + 1
      nScroll = nScroll + 1
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
function przecinek(_ARG_0_)
  if not _ARG_0_ then
    return
  end
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
function dateName(_ARG_0_)
  if string.sub(_ARG_0_, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
    return "dzi\197\155 o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "wczoraj o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "2 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "3 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "4 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "5 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  else
    return "" .. string.sub(_ARG_0_, 1, 10) .. ""
  end
end
function destroyBlipsAttachedTo(_ARG_0_)
  if getAttachedElements(_ARG_0_) then
    for _FORV_5_, _FORV_6_ in ipairs((getAttachedElements(_ARG_0_))) do
      if _FORV_6_ and isElement(_FORV_6_) and getElementType(_FORV_6_) == "blip" then
        destroyElement(_FORV_6_)
      end
    end
  end
end
function tracking()
  if isElement(pedDealer) and getScreenFromWorldPosition(getElementPosition(pedDealer)) and getScreenFromWorldPosition(getElementPosition(pedDealer)) then
    dxDrawImage(getScreenFromWorldPosition(getElementPosition(pedDealer)) - 25 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) - 65 / _UPVALUE0_, 50 / _UPVALUE0_, 50 / _UPVALUE0_, _UPVALUE1_.bandit_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(pedDealer))) .. "m", getScreenFromWorldPosition(getElementPosition(pedDealer)) + 2 - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 2, getScreenFromWorldPosition(getElementPosition(pedDealer)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)))
    dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(getElementPosition(pedDealer))) .. "m", getScreenFromWorldPosition(getElementPosition(pedDealer)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)))
    if math.floor(getDistanceBetweenPoints3D(getElementPosition(pedDealer))) < 2 then
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(pedDealer)) - 96 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 29 / _UPVALUE0_, 192 / _UPVALUE0_, 57 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(255, 196, 0, 255))
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(pedDealer)) - 95 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 30 / _UPVALUE0_, 190 / _UPVALUE0_, 55 / _UPVALUE0_, 10 / _UPVALUE0_, tocolor(30, 30, 30, 255))
      if money_dealer then
        dxDrawText("ABY ODEBRA\196\134 HAJS KLIKNIJ", getScreenFromWorldPosition(getElementPosition(pedDealer)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 93 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)))
      else
        dxDrawText("ABY PRZEKAZA\196\134 TOWAR KLIKNIJ", getScreenFromWorldPosition(getElementPosition(pedDealer)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 93 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)))
      end
      dxDrawRoundedRectangle(getScreenFromWorldPosition(getElementPosition(pedDealer)) - 10 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 58 / _UPVALUE0_, 20 / _UPVALUE0_, 20 / _UPVALUE0_, 5 / _UPVALUE0_, tocolor(70, 70, 70, 255))
      dxDrawText("Q", getScreenFromWorldPosition(getElementPosition(pedDealer)) - _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)) + 138 / _UPVALUE0_, getScreenFromWorldPosition(getElementPosition(pedDealer)) + _UPVALUE2_ / 5, getScreenFromWorldPosition(getElementPosition(pedDealer)))
      if math.floor(getDistanceBetweenPoints3D(getElementPosition(pedDealer))) < 2 and getKeyState("Q") then
        if not clickC then
          clickC = true
          if getElementData(localPlayer, "player_ping_trade") then
            return
          end
          if getElementData(localPlayer, "player_Trade") then
            return
          end
          if getElementData(localPlayer, "player_Search") then
            return
          end
          if getElementData(localPlayer, "player_offerTrade") then
            return
          end
          if money_dealer then
            removeEventHandler("onClientRender", root, tracking)
            for _FORV_15_, _FORV_16_ in pairs(_UPVALUE1_) do
              if isElement(_FORV_16_) then
                destroyElement(_FORV_16_)
              end
            end
            _UPVALUE1_ = {}
            dealer_drugs = nil
            if isElement(pedDealer) then
              destroyElement(pedDealer)
            end
            if isElement(blip) then
              destroyElement(blip)
            end
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "dealerGiveMoney", localPlayer, money_dealer)
            money_dealer = nil
          else
            triggerServerEvent("evEwenciks_as4jutrgj", resourceRoot, "deleteDrugs", localPlayer, dealer_drugs)
          end
        end
        setTimer(function()
          clickC = false
        end, 1500, 1)
      end
    end
  end
end
function parseDateTime(_ARG_0_)
  if not _ARG_0_ then
    return 0
  end
  if _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") and _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") and _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") and _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") and _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") and _ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)") then
    return os.time({
      year = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      month = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      day = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      hour = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      min = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      sec = tonumber(_ARG_0_:match("(%d+)%-(%d+)%-(%d+) (%d+):(%d+):(%d+)")),
      isdst = false
    })
  else
    return 0
  end
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
function dxDrawRoundedRectangle_(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
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
getResourceName(getThisResource(), true, 494653084)
return
