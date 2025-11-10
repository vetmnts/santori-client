table_statistics = {}
pedText = {}
earnData = {}
tick = getTickCount()
XselectSkad, YselectSkad, ZselectSkad = nil, nil, nil
XselectDokad, YselectDokad, ZselectDokad = nil, nil, nil
paymentSelect = nil
level = 1
windows = {
  main = false,
  select = false,
  course = false,
  ranking = false,
  courseGUI = false,
  upgrades = false
}
skins = {
  142,
  143,
  144,
  141,
  130,
  131,
  132,
  133,
  134,
  135,
  123,
  124,
  125,
  126,
  127,
  128,
  129,
  110,
  111,
  112,
  113,
  114,
  115,
  116,
  91,
  90,
  51,
  52,
  53,
  54,
  55,
  56
}
playerX, playerY = 0, 0
function moveBigMap(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if _ARG_2_ >= _UPVALUE0_.x and _ARG_2_ <= _UPVALUE0_.x + _UPVALUE0_.w and _ARG_3_ >= _UPVALUE0_.y and _ARG_3_ <= _UPVALUE0_.y + _UPVALUE0_.h then
      _UPVALUE1_ = _ARG_2_ * _UPVALUE2_ + playerX
      _UPVALUE3_ = _ARG_3_ * _UPVALUE2_ - playerY
      _UPVALUE4_ = true
      _UPVALUE5_ = true
    end
  elseif _ARG_0_ == "left" and _ARG_1_ == "up" then
    _UPVALUE4_ = false
  end
end
function scrollBigMap(_ARG_0_)
  if windows.courseGUI and not isMouseIn(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h) then
    return
  end
  if _ARG_0_ == "mouse_wheel_down" then
    _UPVALUE1_ = math.min(_UPVALUE1_ + 0.1, 3.2)
  elseif _ARG_0_ == "mouse_wheel_up" then
    _UPVALUE1_ = math.max(0.5, _UPVALUE1_ - 0.1)
  end
end
function getMapFromWorldPosition(_ARG_0_, _ARG_1_)
  return math.max(_UPVALUE0_.x + _UPVALUE0_.w / 2 - (playerX - _ARG_0_) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.x + _UPVALUE0_.w / 2 + (_ARG_0_ - playerX) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.x + _UPVALUE0_.w / 2)), (math.max(_UPVALUE0_.y + _UPVALUE0_.h / 2 - (_ARG_1_ - playerY) / _UPVALUE1_ * _UPVALUE2_, math.min(_UPVALUE0_.y + _UPVALUE0_.h / 2 + (playerY - _ARG_1_) / _UPVALUE1_ * _UPVALUE2_, _UPVALUE0_.y + _UPVALUE0_.h / 2)))
end
function window()
  if windows.main == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 53 / _UPVALUE1_, _UPVALUE0_.y + 147 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 294 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 50 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 210 / _UPVALUE1_, _UPVALUE0_.h - 300 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
      xY = xY + 1
      if level == _FORV_8_.levelJob then
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawImage(_UPVALUE0_.x - 48 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 45 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 1040 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 860 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_, 210 / _UPVALUE1_, 615 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(45, 45, 45, 230), false)
    dxDrawText("TAXOMETR", _UPVALUE0_.x - 165 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("KURSY: #ffbb00" .. _FORV_8_.exp1_taxo .. " #e6e6e6/ #ffbb00" .. _FORV_8_.exp_taxo .. "", _UPVALUE0_.x, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 700 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("OG\195\147\197\129 ZAROBK\195\147W: #ffbb00" .. przecinek(_FORV_8_.zarobek_taxo) .. " #e6e6e6PLN", _UPVALUE0_.x, _UPVALUE0_.y - 105 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 700 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(possitions) do
      if _FORV_7_ >= _UPVALUE2_ and _FORV_7_ <= _UPVALUE3_ then
        xY = xY + 1
        if isMouseIn(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 48 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 280 / _UPVALUE1_, 40 / _UPVALUE1_) then
          if idSelect == _FORV_7_ then
            dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 48 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 280 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 230), false)
          else
            dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 48 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 280 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(50, 50, 50, 230), false)
          end
        elseif idSelect == _FORV_7_ then
          dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 48 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 280 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 230), false)
        else
          dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_ + 48 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.w - 280 / _UPVALUE1_, 40 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(45, 45, 45, 230), false)
        end
        if _FORV_8_.bonus == true then
        end
        if level == 1 then
        elseif level == 2 then
        elseif level == 3 then
        elseif level == 4 then
        end
        dxDrawText("#ffffff" .. getZoneName(_FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], true) .. "#b8b8b8, " .. getZoneName(_FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], false) .. " #ffbb00\226\174\158 #ffffff" .. getZoneName(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], true) .. "#b8b8b8, " .. getZoneName(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], false) .. " #ffffff(#ffbb00" .. math.floor((getDistanceBetweenPoints3D(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], _FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3]))) .. "#ffffffm)", _UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y - 15 / _UPVALUE1_ + 96 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
        if _FORV_8_.bonus == true then
          dxDrawText("#00ff59" .. przecinek(math.floor((math.floor(1050 * math.floor((getDistanceBetweenPoints3D(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], _FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3]))) / 250 * 1.1) + 0) * 1.3 * 1.6 * 2 * 5)) .. " #c8c8c8PLN   ( #ffbb00" .. math.floor((getDistanceBetweenPoints3D(_FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], getElementPosition(localPlayer)))) .. "#c8c8c8m )", _UPVALUE0_.x, _UPVALUE0_.y - 13 / _UPVALUE1_ + 96 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 480 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        else
          dxDrawText("#00ad23" .. przecinek(math.floor((math.floor(1050 * math.floor((getDistanceBetweenPoints3D(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], _FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3]))) / 250 * 1.1) + 0) * 1.3 * 1.6 * 2)) .. " #c8c8c8PLN   ( #ffbb00" .. math.floor((getDistanceBetweenPoints3D(_FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], getElementPosition(localPlayer)))) .. "#c8c8c8m )", _UPVALUE0_.x, _UPVALUE0_.y - 13 / _UPVALUE1_ + 96 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 480 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(200, 200, 200, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        end
      end
    end
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 105 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    if windows.select == true then
      for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
        dxDrawText("KURS ##ffbb00" .. _FORV_8_.exp_taxo + 1 .. "", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y - 20 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      end
    else
      dxDrawText("BRAK KURSU", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y - 20 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
      dxDrawText("Z z\195\179\197\130tym kolorem pojazdu\notrzymujesz napiwki", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, false, false)
    end
  end
  if windows.select == true then
    dxDrawText("Miejsce odbioru", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 125 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("#ffffff" .. getZoneName(XselectSkad, YselectSkad, ZselectSkad, true) .. [[

#b8b8b8]] .. getZoneName(XselectSkad, YselectSkad, ZselectSkad, false), _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("Miejsce docelowe", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#ffffff" .. getZoneName(XselectDokad, YselectDokad, ZselectDokad, true) .. [[

#b8b8b8]] .. getZoneName(XselectDokad, YselectDokad, ZselectDokad, false), _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawText("Trasa", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 565 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 400 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#ffbb00" .. math.floor(trasa) .. " #ffffffm", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawText("Wynagrodzenie", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 820 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 530 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#00ad23" .. przecinek(math.floor(paymentSelect)) .. " #c8c8c8PLN", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 905 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ZATWIERD\197\185", _UPVALUE0_.x + 875 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, 180 / _UPVALUE1_, 55 / _UPVALUE1_, 255, 1)
  end
  if windows.ranking == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 53 / _UPVALUE1_, _UPVALUE0_.y + 147 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 294 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 50 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 210 / _UPVALUE1_, _UPVALUE0_.h - 300 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
      xY = xY + 1
      if level == _FORV_8_.levelJob then
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawImage(_UPVALUE0_.x - 48 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 45 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 1040 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("RANKING NAJLEPSZYCH GRACZY - #ffbb00TAXOMETR", _UPVALUE0_.x + 200 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, true, false)
    xY = 0
    for _FORV_8_, _FORV_9_ in pairs(earnData) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 1005 / _UPVALUE1_, 30 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(45, 45, 45, 255), 2)
      if _FORV_8_ == 1 then
        rgbBar = {
          255,
          178,
          0
        }
        rgbText = {
          255,
          178,
          0
        }
      elseif _FORV_8_ == 2 then
        rgbBar = {
          169,
          166,
          172
        }
        rgbText = {
          169,
          166,
          172
        }
      elseif _FORV_8_ == 3 then
        rgbBar = {
          185,
          139,
          95
        }
        rgbText = {
          185,
          139,
          95
        }
      else
        rgbBar = {
          70,
          70,
          70
        }
        rgbText = {
          150,
          150,
          150
        }
      end
      dxDrawRoundedRectangle(_UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 20 / _UPVALUE1_ + (_FORV_9_.totalmoney / earnDiagram.maxEarn * 970 / _UPVALUE1_ + 15 / _UPVALUE1_), 30 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(rgbBar[1], rgbBar[2], rgbBar[3], 255), 2)
      dxDrawText(_FORV_8_ .. "#c7c7c7.", _UPVALUE0_.x, _UPVALUE0_.y + 100 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) - 310 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(rgbText[1], rgbText[2], rgbText[3], 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font20"), "right", "top", false, false, false, true, false)
      dxDrawText(_FORV_9_.nick, _UPVALUE0_.x + 60 / _UPVALUE1_, _UPVALUE0_.y + 75 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(250, 250, 250, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal15"), "left", "top", false, false, true)
      dxDrawText(_FORV_9_.totalmoney .. " EXP", _UPVALUE0_.x, _UPVALUE0_.y + 104 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 690 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(255, 255, 255, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "top", false, false, true)
    end
    dxDrawText("TOP #ffb2003 #ffffffnajlepszych graczy otrzyma #ffb200premi\196\153 zarobk\195\179w #ffffffna nast\196\153pny tydzie\197\132 w tej pracy", _UPVALUE0_.x + 735 / _UPVALUE1_, _UPVALUE0_.y + 1180 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font14"), "center", "center", false, false, false, true, false)
  end
  if windows.courseGUI == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 45 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 1040 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawRoundedRectangle(_UPVALUE0_.x + 860 / _UPVALUE1_, _UPVALUE0_.y + 73 / _UPVALUE1_, 210 / _UPVALUE1_, 615 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(45, 45, 45, 230), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 105 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("KURS ##ffbb00" .. _FORV_8_.exp_taxo + 1 .. "", _UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "left", "center", false, false, false, true, false)
      dxDrawText("KURSY: #ffbb00" .. _FORV_8_.exp_taxo .. "", _UPVALUE0_.x, _UPVALUE0_.y - 150 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 700 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("OG\195\147\197\129 ZAROBK\195\147W: #ffbb00" .. przecinek(_FORV_8_.zarobek_taxo) .. " #e6e6e6PLN", _UPVALUE0_.x, _UPVALUE0_.y - 105 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 700 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
      dxDrawText("KURS ##ffbb00" .. _FORV_8_.exp_taxo + 1 .. "", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y - 20 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
    end
    dxDrawText("Miejsce odbioru", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 125 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawText("#ffffff" .. getZoneName(XselectSkad, YselectSkad, ZselectSkad, true) .. [[

#b8b8b8]] .. getZoneName(XselectSkad, YselectSkad, ZselectSkad, false), _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 215 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 180 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("Miejsce docelowe", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 320 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 280 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#ffffff" .. getZoneName(XselectDokad, YselectDokad, ZselectDokad, true) .. [[

#b8b8b8]] .. getZoneName(XselectDokad, YselectDokad, ZselectDokad, false), _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 415 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "left", "center", false, false, false, true, false)
    dxDrawText("Trasa", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 565 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 400 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#ffbb00" .. math.floor(trasa) .. " #ffffffm", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 650 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    dxDrawText("Wynagrodzenie", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 820 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font21"), "left", "center", false, false, false, false, false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 530 / _UPVALUE1_, 188 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("#00ad23" .. przecinek(math.floor(paymentSelect)) .. " #c8c8c8PLN", _UPVALUE0_.x + 870 / _UPVALUE1_, _UPVALUE0_.y + 905 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
    exports.ST_buttons:dxCreateButton("ANULUJ", _UPVALUE0_.x + 875 / _UPVALUE1_, _UPVALUE0_.y + 620 / _UPVALUE1_, 180 / _UPVALUE1_, 55 / _UPVALUE1_, 255, 1)
    cursorX, cursorY = getCursorPosition()
    if getKeyState("mouse1") and _UPVALUE4_ then
      if not cursorX then
      else
      end
      playerX = -(cursorX * _UPVALUE5_ * _UPVALUE7_ - _UPVALUE8_)
      playerY = cursorY * _UPVALUE6_ * _UPVALUE7_ - _UPVALUE9_
      playerX = math.max(-3000, math.min(3000, playerX))
      playerY = math.max(-3000, math.min(3000, playerY))
    end
    dxDrawImageSection(_UPVALUE11_.x, _UPVALUE11_.y, _UPVALUE11_.w, _UPVALUE11_.h, (3000 + playerX) * _UPVALUE10_ - _UPVALUE11_.w / 2 * _UPVALUE7_, (3000 - playerY) * _UPVALUE10_ - _UPVALUE11_.h / 2 * _UPVALUE7_, _UPVALUE11_.w * _UPVALUE7_, _UPVALUE11_.h * _UPVALUE7_, textures.map, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawImage(math.max(_UPVALUE11_.x + _UPVALUE11_.w / 2 - _UPVALUE11_.w / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.x + _UPVALUE11_.w / 2 + _UPVALUE11_.w / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(XselectSkad, YselectSkad))) - 38 / _UPVALUE1_ / 2, math.max(_UPVALUE11_.y + _UPVALUE11_.h / 2 - _UPVALUE11_.h / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.y + _UPVALUE11_.h / 2 + _UPVALUE11_.h / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(XselectSkad, YselectSkad))) - 38 / _UPVALUE1_ / 2, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.client_icon, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawImage(math.max(_UPVALUE11_.x + _UPVALUE11_.w / 2 - _UPVALUE11_.w / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.x + _UPVALUE11_.w / 2 + _UPVALUE11_.w / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(XselectDokad, YselectDokad))) - 38 / _UPVALUE1_ / 2, math.max(_UPVALUE11_.y + _UPVALUE11_.h / 2 - _UPVALUE11_.h / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.y + _UPVALUE11_.h / 2 + _UPVALUE11_.h / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(XselectDokad, YselectDokad))) - 38 / _UPVALUE1_ / 2, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.finish_icon, 0, 0, 0, tocolor(255, 255, 255, 255))
    dxDrawImage(math.max(_UPVALUE11_.x + _UPVALUE11_.w / 2 - _UPVALUE11_.w / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.x + _UPVALUE11_.w / 2 + _UPVALUE11_.w / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / _UPVALUE1_ / 2, math.max(_UPVALUE11_.y + _UPVALUE11_.h / 2 - _UPVALUE11_.h / 2 + math.floor(38 / _UPVALUE1_) / 2, math.min(_UPVALUE11_.y + _UPVALUE11_.h / 2 + _UPVALUE11_.h / 2 - math.floor(38 / _UPVALUE1_) / 2, getMapFromWorldPosition(getElementPosition(localPlayer)))) - 30 / _UPVALUE1_ / 2, 30 / _UPVALUE1_, 30 / _UPVALUE1_, textures.player, 0, 0, 0, tocolor(255, 255, 255, 255))
  end
  if windows.endJob == true then
    dxDrawRoundedRectangle(_UPVALUE12_.x + 199 / _UPVALUE1_, _UPVALUE12_.y + 139 / _UPVALUE1_, _UPVALUE12_.w - 398 / _UPVALUE1_, _UPVALUE12_.h - 278 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(255, 187, 0, 200))
    dxDrawRoundedRectangle(_UPVALUE12_.x + 200 / _UPVALUE1_, _UPVALUE12_.y + 140 / _UPVALUE1_, _UPVALUE12_.w - 400 / _UPVALUE1_, _UPVALUE12_.h - 280 / _UPVALUE1_, 25 / _UPVALUE1_, tocolor(33, 33, 33, 255))
    dxDrawText("CZY NA PEWNO CHCESZ ZAKO\197\131CZY\196\134\nPRAC\196\152?", _UPVALUE12_.x + 520 / _UPVALUE1_, _UPVALUE12_.y + 220 / _UPVALUE1_, _UPVALUE12_.x + 362 / _UPVALUE1_, _UPVALUE12_.y + 204 / _UPVALUE1_, tocolor(240, 240, 240, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font24"), "center", "center", false, false, false, false, false)
    exports.ST_buttons:dxCreateButton("TAK", _UPVALUE12_.x + 249 / _UPVALUE1_, _UPVALUE12_.y + 354 / _UPVALUE1_, 102 / _UPVALUE1_, 62 / _UPVALUE1_, 255, 1)
    exports.ST_buttons:dxCreateButton("NIE", _UPVALUE12_.x + 539 / _UPVALUE1_, _UPVALUE12_.y + 354 / _UPVALUE1_, 102 / _UPVALUE1_, 62 / _UPVALUE1_, 255, 1)
  end
  if windows.upgrades == true then
    dxDrawRoundedRectangle(_UPVALUE0_.x - 53 / _UPVALUE1_, _UPVALUE0_.y + 147 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 294 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x - 50 / _UPVALUE1_, _UPVALUE0_.y + 150 / _UPVALUE1_, 210 / _UPVALUE1_, _UPVALUE0_.h - 300 / _UPVALUE1_, 20 / _UPVALUE1_, tocolor(35, 35, 35, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
      xY = xY + 1
      if level == _FORV_8_.levelJob then
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(0, 255, 0, 255), false)
      else
        dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 160 / _UPVALUE1_ + 60 / _UPVALUE1_ * (xY - 1), 55 / _UPVALUE1_, 55 / _UPVALUE1_, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      end
    end
    dxDrawImage(_UPVALUE0_.x - 48 / _UPVALUE1_, _UPVALUE0_.y + 435 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.improvement_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawImage(_UPVALUE0_.x - 46 / _UPVALUE1_, _UPVALUE0_.y + 500 / _UPVALUE1_, 55 / _UPVALUE1_, 55 / _UPVALUE1_, textures.ranking_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 9 / _UPVALUE1_, _UPVALUE0_.y + 5 / _UPVALUE1_, _UPVALUE0_.w - 18 / _UPVALUE1_, _UPVALUE0_.h - 10 / _UPVALUE1_, 45 / _UPVALUE1_, tocolor(255, 187, 0, 200), false)
    dxDrawImage(_UPVALUE0_.x, _UPVALUE0_.y, _UPVALUE0_.w, _UPVALUE0_.h, textures.background, 0, 0, 0, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 62 / _UPVALUE1_, 1040 / _UPVALUE1_, 3 / _UPVALUE1_, 2 / _UPVALUE1_, tocolor(255, 187, 0, 230))
    dxDrawText("Ulepszenia", _UPVALUE0_.x - 145 / _UPVALUE1_, _UPVALUE0_.y - 120 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(230, 230, 230, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font26"), "center", "center", false, false, false, false, false)
    for _FORV_7_, _FORV_8_ in ipairs(table_statistics) do
      dxDrawText("PUNKTY ULEPSZE\197\131: #ffbf00" .. przecinek(_FORV_8_.punkty_taxo), _UPVALUE0_.x, _UPVALUE0_.y - 124 / _UPVALUE1_, _UPVALUE0_.x + math.floor(362 / _UPVALUE1_) + 690 / _UPVALUE1_, _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font23"), "right", "center", false, false, false, true, false)
    end
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(upgrades) do
      xY = xY + 1
      dxDrawRoundedRectangle(_UPVALUE0_.x + 30 / _UPVALUE1_, _UPVALUE0_.y + 80 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 1040 / _UPVALUE1_, 90 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(30, 30, 30, 230))
      dxDrawRoundedRectangle(_UPVALUE0_.x + 35 / _UPVALUE1_, _UPVALUE0_.y + 85 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 80 / _UPVALUE1_, 80 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(25, 25, 25, 230))
      dxDrawText(_FORV_8_.name .. " - #c77100" .. _FORV_8_.price .. " #9e9e9epunkt\195\179w ulepsze\197\132", _UPVALUE0_.x + 125 / _UPVALUE1_, _UPVALUE0_.y + 2 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      dxDrawText(_FORV_8_.description, _UPVALUE0_.x + 125 / _UPVALUE1_, _UPVALUE0_.y + 70 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(160, 160, 160, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
      dxDrawImage(_UPVALUE0_.x + 40 / _UPVALUE1_, _UPVALUE0_.y + 90 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 70 / _UPVALUE1_, 70 / _UPVALUE1_, _FORV_8_.icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if _FORV_8_.name == "Mniejsze potracenia za zniszczenia" then
        if 2 <= _FORV_8_.status then
          dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
        else
          exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 895 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
        end
      elseif _FORV_8_.status == 1 then
        dxDrawText("ZAKUPIONO #00ff00\226\156\148", _UPVALUE0_.x + 920 / _UPVALUE1_, _UPVALUE0_.y + 50 / _UPVALUE1_ + 194 / _UPVALUE1_ * (xY - 1), _UPVALUE0_.x + math.floor(362 / _UPVALUE1_), _UPVALUE0_.y + math.floor(204 / _UPVALUE1_), tocolor(210, 210, 210, 255), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
      else
        exports.ST_buttons:dxCreateButton("ZAKUP", _UPVALUE0_.x + 895 / _UPVALUE1_, _UPVALUE0_.y + 100 / _UPVALUE1_ + 97 / _UPVALUE1_ * (xY - 1), 150 / _UPVALUE1_, 50 / _UPVALUE1_, 255, 1)
      end
    end
  end
end
function tracking()
  if windows.course == true then
    if isElementInWater((getPedOccupiedVehicle(localPlayer))) then
      endJobAll()
      exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153, poniewa\197\188 wpad\197\130e\197\155/a\197\155 do wody", "info")
    end
    for _FORV_10_, _FORV_11_ in ipairs(pedText) do
      if _FORV_11_ and getScreenFromWorldPosition(getPedBonePosition(_FORV_11_, 8)) and getDistanceBetweenPoints3D(getCameraMatrix()) <= 15 then
        dxDrawText("Pasa\197\188er", math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_11_, 8))) + 1, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_11_, 8))) + 1, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_11_, 8))) + 1, math.floor(getScreenFromWorldPosition(getPedBonePosition(_FORV_11_, 8))) + 1, tocolor(0, 0, 0, 180), 1, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, true)
      end
    end
    if getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) and getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) then
      dxDrawText("" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2 - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 2, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      dxDrawText("#f2ff00" .. math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) .. "m", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      if trackingTEXT == "ABY ODEBRA\196\134 KLIENTA KLIKNIJ" then
        imgTracking = textures1.client_icon
      elseif trackingTEXT == "ABY ODSTAWI\196\134 KLIENTA KLIKNIJ" then
        imgTracking = textures1.finish_icon
      end
      dxDrawImage(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 25 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 65 / _UPVALUE1_, 50 / _UPVALUE1_, 50 / _UPVALUE1_, imgTracking, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if math.floor(getDistanceBetweenPoints3D(posTracking[1], posTracking[2], posTracking[3], getElementPosition(localPlayer))) < 5 then
        if getKeyState("H") then
          if trackingTEXT == "ABY ODEBRA\196\134 KLIENTA KLIKNIJ" then
            trackingTEXT = "ABY ODSTAWI\196\134 KLIENTA KLIKNIJ"
            if isElement(blip) then
              destroyElement(blip)
              blip = nil
            end
            blip = createBlip(XselectDokad, YselectDokad, ZselectDokad, 41, 2, 0, 0, 0, 0, 0, 9999)
            exports.st_gui:showPlayerNotification("Zawie\197\186 klienta we wskazane miejsce.", "info")
            posTracking = {
              XselectDokad,
              YselectDokad,
              ZselectDokad
            }
            setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 3, 1, 200)
            setTimer(function()
              setVehicleDoorOpenRatio(_UPVALUE0_, 3, 0, 200)
            end, 200, 1)
            if level == 3 then
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 4, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 4, 0, 200)
              end, 200, 1)
            elseif level == 4 then
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 4, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 4, 0, 200)
              end, 200, 1)
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 5, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 5, 0, 200)
              end, 200, 1)
            end
            setTimer(function()
              triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "warpPed", localPlayer, level, _UPVALUE0_)
              if isElement(pedClient) then
                destroyElement(pedClient)
                pedClient = nil
              end
            end, 450, 1)
          elseif trackingTEXT == "ABY ODSTAWI\196\134 KLIENTA KLIKNIJ" then
            setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 3, 1, 200)
            setTimer(function()
              setVehicleDoorOpenRatio(_UPVALUE0_, 3, 0, 200)
            end, 200, 1)
            if level == 3 then
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 4, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 4, 0, 200)
              end, 200, 1)
            elseif level == 4 then
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 4, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 4, 0, 200)
              end, 200, 1)
              setVehicleDoorOpenRatio(getPedOccupiedVehicle(localPlayer), 5, 1, 200)
              setTimer(function()
                setVehicleDoorOpenRatio(_UPVALUE0_, 5, 0, 200)
              end, 200, 1)
            end
            trackingTEXT = " "
            removeEventHandler("onClientRender", root, tracking)
            for _FORV_14_, _FORV_15_ in pairs(textures1) do
              if isElement(_FORV_15_) then
                destroyElement(_FORV_15_)
              end
            end
            textures1 = {}
            if isElement(blip) then
              destroyElement(blip)
              blip = nil
            end
            if not getPedOccupiedVehicle(localPlayer) then
              return
            end
            if getElementData(localPlayer, "player:bonusJob") and getElementData(localPlayer, "player:bonusJob").name == "Taxometr" then
              paymentSelect = math.floor(paymentSelect * getElementData(localPlayer, "player:bonusJob").addMoney)
            end
            if exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced") then
              paymentSelect = paymentSelect * exports.ST_datasystem:getCustomData(localPlayer, "player:boostJob", "synced")
            end
            for _FORV_20_, _FORV_21_ in ipairs(table_statistics) do
              if _FORV_21_.ulepszenie_zarobek_taxo == 1 then
                paymentSelect = paymentSelect * 1.1
              end
            end
            paymentSelect = math.floor(paymentSelect)
            exports.st_gui:showPlayerNotification("Pomy\197\155lnie odwioz\197\130e\197\155/a\197\155 klienta na miejsce.\nOtrzymujesz " .. math.floor(paymentSelect) .. " PLN", "money")
            for _FORV_21_, _FORV_22_ in ipairs(table_statistics) do
              if _FORV_22_.ulepszenie_zniszczenia_taxo then
                break
              end
            end
            if _FORV_22_.ulepszenie_zniszczenia_taxo == 1 then
            elseif _FORV_22_.ulepszenie_zniszczenia_taxo == 2 then
            end
            paymentSelect = paymentSelect * (1 - 0)
            if _FORV_22_.ulepszenie_zniszczenia_taxo == 1 then
              exports.st_gui:showPlayerNotification("Potr\196\133cono " .. string.format("%.1f", 0 * 100) .. "% za uszkodzenia pojazdu.", "info")
            elseif _FORV_22_.ulepszenie_zniszczenia_taxo == 2 then
            else
              exports.st_gui:showPlayerNotification("Potr\196\133cono " .. string.format("%.1f", 0 * 100) .. "% za uszkodzenia pojazdu.", "info")
            end
            if getVehicleColor(getPedOccupiedVehicle(localPlayer), true) > 210 and 180 < getVehicleColor(getPedOccupiedVehicle(localPlayer), true) and getVehicleColor(getPedOccupiedVehicle(localPlayer), true) < 20 then
              paymentSelect = paymentSelect + math.floor(paymentSelect / 10)
              exports.st_gui:showPlayerNotification("Otrzymano napiwek " .. math.floor(paymentSelect / 10) .. " PLN za z\195\179\197\130ty kolor pojazdu", "money")
            else
              exports.st_gui:showPlayerNotification("Brak napiwku za z\195\179\197\130ty kolor pojazdu", "info")
            end
            refreshPos()
            exp = 4
            if getElementData(localPlayer, "player:premium") then
              exp = exp + 2
            end
            exports.ST_levelsystem:addExp(exp)
            triggerServerEvent("addExpOrganization", localPlayer, localPlayer, 1)
            triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "wages", {
              math.floor(paymentSelect),
              432675742
            })
            endJobAll()
          end
        end
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 86 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 29 / _UPVALUE1_, 172 / _UPVALUE1_, 57 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(255, 196, 0, 255))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 85 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 30 / _UPVALUE1_, 170 / _UPVALUE1_, 55 / _UPVALUE1_, 10 / _UPVALUE1_, tocolor(30, 30, 30, 255))
        dxDrawText(trackingTEXT, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 93 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
        dxDrawRoundedRectangle(getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - 10.6 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 58 / _UPVALUE1_, 20 / _UPVALUE1_, 20 / _UPVALUE1_, 5 / _UPVALUE1_, tocolor(70, 70, 70, 255))
        dxDrawText("H", getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) - _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + 138 / _UPVALUE1_, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200) + _UPVALUE0_ / 5, getScreenFromWorldPosition(posTracking[1], posTracking[2], posTracking[3] + 0.1, 200))
      end
    end
  end
end
addEventHandler("onClientClick", root, function(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.main == true then
      for _FORV_7_, _FORV_8_ in ipairs(possitions) do
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ and isMouseIn(_UPVALUE3_.x + 30 / _UPVALUE2_, _UPVALUE3_.y + 73 / _UPVALUE2_ + 48 / _UPVALUE2_ * (0 + 1 - 1), _UPVALUE3_.w - 280 / _UPVALUE2_, 40 / _UPVALUE2_) and windows.main == true then
          if level >= 3 then
            if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID") then
              if not fourPassagers[getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID")] then
                exports.st_gui:showPlayerNotification("Aby korzysta\196\135 z tego levelu pojazd musi by\196\135 4-osobowy", "error")
                return
              end
            elseif not fourPassagers[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
              exports.st_gui:showPlayerNotification("Aby korzysta\196\135 z tego levelu pojazd musi by\196\135 4-osobowy", "error")
              return
            end
          end
          windows.select = true
          XselectSkad, YselectSkad, ZselectSkad, XXselectSkad = _FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], _FORV_8_.skad[4]
          XselectDokad, YselectDokad, ZselectDokad = _FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3]
          if level == 1 then
          elseif level == 2 then
          elseif level == 3 then
          elseif level == 4 then
          end
          paymentSelect = math.floor((math.floor(1050 * math.floor((getDistanceBetweenPoints3D(XselectDokad, YselectDokad, ZselectDokad, XselectSkad, YselectSkad, ZselectSkad))) / 250 * 1.1) + 0) * 1.3 * 1.6 * 2)
          idSelect = _FORV_7_
          odlegloscOdCb = getDistanceBetweenPoints3D(_FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3], getElementPosition(localPlayer))
          trasa = getDistanceBetweenPoints3D(_FORV_8_.dokad[1], _FORV_8_.dokad[2], _FORV_8_.dokad[3], _FORV_8_.skad[1], _FORV_8_.skad[2], _FORV_8_.skad[3])
          trackingTEXT = "ABY ODEBRA\196\134 KLIENTA KLIKNIJ"
          posTracking = {
            _FORV_8_.skad[1],
            _FORV_8_.skad[2],
            _FORV_8_.skad[3]
          }
          if _FORV_8_.bonus == true then
            paymentSelect = paymentSelect * 5
          end
        end
      end
    end
    if windows.upgrades == true then
      xY = 0
      for _FORV_6_, _FORV_7_ in ipairs(upgrades) do
        xY = xY + 1
        if isMouseIn(_UPVALUE3_.x + 895 / _UPVALUE2_, _UPVALUE3_.y + 100 / _UPVALUE2_ + 97 / _UPVALUE2_ * (xY - 1), 150 / _UPVALUE2_, 50 / _UPVALUE2_) then
          if _FORV_7_.name == "Mniejsze potracenia za zniszczenia" then
            if 2 <= _FORV_7_.status then
            else
              triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "upgrade", localPlayer, _FORV_7_.nameDatabase, _FORV_7_.price, true)
            end
          elseif _FORV_7_.status == 0 then
            triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "upgrade", localPlayer, _FORV_7_.nameDatabase, _FORV_7_.price, false)
          end
        end
      end
    end
    if isMouseIn(_UPVALUE3_.x + 875 / _UPVALUE2_, _UPVALUE3_.y + 620 / _UPVALUE2_, 180 / _UPVALUE2_, 55 / _UPVALUE2_) and windows.select == true then
      startTaxo()
    elseif isMouseIn(_UPVALUE3_.x - 46 / _UPVALUE2_, _UPVALUE3_.y + 435 / _UPVALUE2_, 55 / _UPVALUE2_, 55 / _UPVALUE2_) and (windows.main == true or windows.ranking == true) then
      windows.main = false
      windows.select = false
      idSelect = false
      windows.ranking = false
      windows.upgrades = true
    elseif isMouseIn(_UPVALUE3_.x - 46 / _UPVALUE2_, _UPVALUE3_.y + 500 / _UPVALUE2_, 55 / _UPVALUE2_, 55 / _UPVALUE2_) and (windows.main == true or windows.upgrades == true) then
      windows.main = false
      windows.select = false
      idSelect = false
      windows.ranking = true
      windows.upgrades = false
      triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "showRanking", localPlayer)
    elseif isMouseIn(_UPVALUE3_.x + 875 / _UPVALUE2_, _UPVALUE3_.y + 620 / _UPVALUE2_, 180 / _UPVALUE2_, 55 / _UPVALUE2_) and windows.courseGUI == true then
      endJobAll()
      windows.courseGUI = false
      removeEventHandler("onClientRender", root, window)
      showCursor(false)
      for _FORV_6_, _FORV_7_ in pairs(textures) do
        if isElement(_FORV_7_) then
          destroyElement(_FORV_7_)
        end
      end
      textures = {}
      exports.st_gui:showPlayerNotification("Zako\197\132czono prac\196\153", "info")
    elseif isMouseIn(_UPVALUE4_.x + 249 / _UPVALUE2_, _UPVALUE4_.y + 354 / _UPVALUE2_, 102 / _UPVALUE2_, 62 / _UPVALUE2_) and windows.endJob == true then
      endJobAll()
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
      exports.st_gui:showPlayerNotification("Pomy\197\155lnie zako\197\132czono prac\196\153", "success")
    elseif isMouseIn(_UPVALUE4_.x + 539 / _UPVALUE2_, _UPVALUE4_.y + 354 / _UPVALUE2_, 102 / _UPVALUE2_, 62 / _UPVALUE2_) and windows.endJob == true then
      showCursor(false)
      removeEventHandler("onClientRender", root, window)
      windows.endJob = false
    end
    if windows.main == true or windows.ranking == true or windows.upgrades == true then
      for _FORV_7_, _FORV_8_ in ipairs(levelJob) do
        if isMouseIn(_UPVALUE3_.x - 46 / _UPVALUE2_, _UPVALUE3_.y + 160 / _UPVALUE2_ + 60 / _UPVALUE2_ * (0 + 1 - 1), 55 / _UPVALUE2_, 55 / _UPVALUE2_) then
          for _FORV_13_, _FORV_14_ in ipairs(table_statistics) do
            if _FORV_14_.exp_taxo < _FORV_8_.exp then
              exports.st_gui:showPlayerNotification("Do tego levelu musisz wykona\196\135 " .. _FORV_8_.exp .. " kurs\195\179w", "error")
              return
            end
            if 3 <= _FORV_8_.levelJob then
              if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID") then
                if not fourPassagers[getElementData(getPedOccupiedVehicle(localPlayer), "vehicle:customID")] then
                  exports.st_gui:showPlayerNotification("Aby korzysta\196\135 z tego levelu pojazd musi by\196\135 4-osobowy", "error")
                  return
                end
              elseif not fourPassagers[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
                exports.st_gui:showPlayerNotification("Aby korzysta\196\135 z tego levelu pojazd musi by\196\135 4-osobowy", "error")
                return
              end
            end
            level = _FORV_8_.levelJob
            windows.ranking = false
            windows.main = true
          end
        end
      end
    end
  end
end)
function startTaxo()
  if getElementData(localPlayer, "player:job") then
    exports.st_gui:showPlayerNotification("Najpierw zako\197\132cz prac\196\153", "error")
    return
  end
  pedText = {}
  pedClient = createPed(math.random(1, #skins), XselectSkad, YselectSkad, ZselectSkad, XXselectSkad)
  blip = createBlip(XselectSkad, YselectSkad, ZselectSkad, 41, 2, 0, 0, 0, 0, 0, 9999)
  exports.st_gui:showPlayerNotification("Pomy\197\155lnie przyj\196\153to zg\197\130oszenie. Udaj si\196\153 do klienta.", "success")
  triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "plrJob", localPlayer, true)
  windows.main = false
  windows.select = false
  idSelect = false
  windows.course = true
  windows.courseGUI = true
  windows.upgrades = false
  bindKey("mouse_wheel_up", "down", scrollBigMap)
  bindKey("mouse_wheel_down", "down", scrollBigMap)
  if not isEventHandlerAdded("onClientClick", root, moveBigMap) then
    addEventHandler("onClientClick", root, moveBigMap)
  end
  dxSetTextureEdge(textures.map, "border", tocolor(110, 158, 204, 255))
  triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "addBanerTaxi", localPlayer)
  textures1 = {
    client_icon = dxCreateTexture("img/client.png"),
    finish_icon = dxCreateTexture("img/finish_icon.png")
  }
  addEventHandler("onClientRender", root, tracking)
end
function endJobAll()
  windows.course = false
  if isElement(pedClient) then
    destroyElement(pedClient)
    pedClient = nil
  end
  pedText = {}
  if isElement(clientMarker1) then
    destroyElement(clientMarker1)
    clientMarker = nil
  end
  if isElement(blip) then
    destroyElement(blip)
    blip = nil
  end
  if isElement(clientMarker) then
    destroyElement(clientMarker)
    clientMarker = nil
  end
  triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "plrJob", localPlayer, false)
  triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "destroyPeds", localPlayer)
  if isEventHandlerAdded("onClientRender", root, tracking) then
    removeEventHandler("onClientRender", root, tracking)
    for _FORV_3_, _FORV_4_ in pairs(textures1) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures1 = {}
  end
end
bindKey("k", "down", function()
  if not getPedOccupiedVehicle(localPlayer) then
    return
  end
  if not getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning") then
    return
  end
  if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_tuning").taxometr == 1 then
    if blockVehicles[getElementModel((getPedOccupiedVehicle(localPlayer)))] then
      exports.st_gui:showPlayerNotification("W tym poje\197\186dzie nie mo\197\188esz korzysta\196\135 z taxometru", "error")
      return
    end
    if getElementData(localPlayer, "player:lvl") < 15 then
      exports.st_gui:showPlayerNotification("Musisz posiada\196\135 15 level aby korzysta\196\135 z taxometru", "error")
      return
    end
    if getElementData(getPedOccupiedVehicle(localPlayer), "vehicle_job_Bus") then
      return
    end
    if windows.main == true or windows.ranking == true or windows.courseGUI == true or windows.upgrades == true then
      removeEventHandler("onClientRender", root, window)
      windows.main = false
      windows.select = false
      idSelect = false
      windows.ranking = false
      windows.courseGUI = false
      windows.upgrades = false
      showCursor(false)
      for _FORV_4_, _FORV_5_ in pairs(textures) do
        if isElement(_FORV_5_) then
          destroyElement(_FORV_5_)
        end
      end
      textures = {}
    else
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 2) then
        return
      end
      if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 3) then
        return
      end
      addEventHandler("onClientRender", root, window)
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        level1_icon = dxCreateTexture(":ST_jobs_settings/img/level1_icon.png"),
        level2_icon = dxCreateTexture(":ST_jobs_settings/img/level2_icon.png"),
        level3_icon = dxCreateTexture(":ST_jobs_settings/img/level3_icon.png"),
        level4_icon = dxCreateTexture(":ST_jobs_settings/img/level4_icon.png"),
        improvement_icon = dxCreateTexture(":ST_jobs_settings/img/improvement_icon.png"),
        ranking_icon = dxCreateTexture("img/ranking_icon.png"),
        map = dxCreateTexture(":ST_dashboard/img/map.png"),
        client_icon = dxCreateTexture("img/client.png"),
        finish_icon = dxCreateTexture("img/finish_icon.png"),
        player = dxCreateTexture(":ST_courier_job/img/player.png"),
        engine_icon = dxCreateTexture(":ST_tuning_mech/img/engine_icon.png"),
        dolar_icon = dxCreateTexture(":ST_jobs_settings/img/upgrades/dolar_icon.png")
      }
      showCursor(true, false)
      if getElementData(localPlayer, "player:job") == "Taksometr" then
        windows.courseGUI = true
        dxSetTextureEdge(textures.map, "border", tocolor(110, 158, 204, 255))
        bindKey("mouse_wheel_up", "down", scrollBigMap)
        bindKey("mouse_wheel_down", "down", scrollBigMap)
        if not isEventHandlerAdded("onClientClick", root, moveBigMap) then
          addEventHandler("onClientClick", root, moveBigMap)
        end
      else
        if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 1) then
          return
        end
        if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 2) then
          return
        end
        if getVehicleOccupant(getPedOccupiedVehicle(localPlayer), 3) then
          return
        end
        triggerServerEvent("evEwenciks_sdr5ydfgs", resourceRoot, "showStatisticsJobsNew", localPlayer, getElementData(localPlayer, "player:sid"))
        levelJob = {
          {
            levelJob = 1,
            exp = 0,
            level = 15,
            img = textures.level1_icon,
            money = 0
          },
          {
            levelJob = 2,
            exp = 500,
            level = 25,
            img = textures.level2_icon,
            money = 1.1
          },
          {
            levelJob = 3,
            exp = 1250,
            level = 35,
            img = textures.level3_icon,
            money = 1.2
          },
          {
            levelJob = 4,
            exp = 1800,
            level = 45,
            img = textures.level4_icon,
            money = 1.3
          }
        }
        table_ranking = {}
        if zaladowanePozycje == true then
        else
          zaladowanePozycje = true
          refreshPos()
        end
        windows.main = true
        windows.select = false
        windows.ranking = false
        windows.courseGUI = false
        idSelect = false
        windows.upgrades = false
      end
    end
  end
end)
addEvent("finishJob", true)
addEventHandler("finishJob", resourceRoot, function()
  windows.endJob = true
  addEventHandler("onClientRender", root, window)
  showCursor(true, false)
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "showStatisticsJobsNewClient" then
    table_statistics = _ARG_1_
    for _FORV_10_, _FORV_11_ in ipairs(table_statistics) do
      upgrades = {
        {
          name = "Wi\196\153kszy zarobek",
          description = "Otrzymujesz zarobek wi\196\153kszy o 10%",
          price = 700,
          icon = textures.dolar_icon,
          status = _FORV_11_.ulepszenie_zarobek_taxo,
          nameDatabase = "ulepszenie_zarobek_taxo"
        },
        {
          name = "Mniejsze potracenia za zniszczenia",
          description = "Kwota potr\196\133cona za zniszczenia zmniejsza si\196\153 o po\197\130ow\196\153. Ulepszenie #c77100" .. _FORV_11_.ulepszenie_zniszczenia_taxo .. " #a0a0a0/ #c771002",
          price = 2000,
          icon = textures.engine_icon,
          status = _FORV_11_.ulepszenie_zniszczenia_taxo,
          nameDatabase = "ulepszenie_zniszczenia_taxo"
        }
      }
    end
  elseif _ARG_0_ == "showRankingClient" then
    table_ranking = _ARG_1_
    earnDiagram = {
      maxEarn = 0,
      minEarn = 99999999999,
      totalmoney = 0
    }
    earnData = {}
    for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
      table.insert(earnData, {
        totalmoney = tonumber(_FORV_9_.exp1_taxo),
        nick = _FORV_9_.nick
      })
      earnDiagram.totalmoney = earnDiagram.totalmoney + tonumber(_FORV_9_.exp1_taxo)
      if earnDiagram.maxEarn < tonumber(_FORV_9_.exp1_taxo) then
        earnDiagram.maxEarn = tonumber(_FORV_9_.exp1_taxo)
      elseif earnDiagram.minEarn > tonumber(_FORV_9_.exp1_taxo) then
        earnDiagram.minEarn = tonumber(_FORV_9_.exp1_taxo)
      end
    end
  elseif _ARG_0_ == "pedText" then
    pedText = {
      _ARG_1_,
      _ARG_2_,
      _ARG_3_
    }
  end
end)
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
bindKey("mouse_wheel_down", "both", function()
  if windows.main == true then
    scrollUp()
  end
end)
bindKey("mouse_wheel_up", "both", function()
  if windows.main == true then
    scrollDown()
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
  if _UPVALUE0_ >= #possitions then
    return
  end
  _UPVALUE1_ = _UPVALUE1_ + 1
  _UPVALUE0_ = _UPVALUE0_ + 1
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
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
getResourceName(getThisResource(), true, 343900296)
return
